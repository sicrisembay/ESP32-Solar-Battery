# Schematic Review — ESP32-C6-Solar-Battery

| Item     | Value                                                      |
|----------|------------------------------------------------------------|
| Date     | 2026-11-09                                                 |
| Branch   | `1s-LiFePo4-solar-charger`                                 |
| Commit   | `c64ab40` (v1.2 1S LiFePo4 solar charger)                  |
| Files    | [ESP32-C6-Solar-Battery.kicad_sch](./ESP32-C6-Solar-Battery.kicad_sch), [LiFePo4_Solar.kicad_sch](./LiFePo4_Solar.kicad_sch) |
| Tools    | KiCad 10 `kicad-cli` (ERC + netlist export), datasheet checks |

## Scope

The board is the charger board only: solar input → CN3801 MPPT charger (3 A) → 1S LiFePO4 battery with HY2112 protection and an INA219 current monitor. The ESP32-C6 is a separate board connected through J204 (LOAD) and J205 (I2C).

Overall the wiring is sound and most parts are well chosen. The main problems are the LMV331 comparator's supply voltage, the MPPT setting vs. the stated input range, and the lack of a cold-charge cutoff.

## Electrical Rules Check (ERC)

KiCad 10 ERC result: 3 errors and 141 warnings. Nothing serious.

- [ ] **3 "power pin not driven" errors:** add `PWR_FLAG` symbols on `GND`, `Solar_V+` and the battery rail.
- [ ] **The battery rail has two names:** `VDD_3V2` and `INA219_VIN-` are attached to the same net. Give it one clear name such as `VBAT_SYS`.
- [ ] **The library tables won't work on another machine:**
  - [sym-lib-table](./sym-lib-table) uses an absolute path (`D:/01_work/03_workspace/...`). Use `${KIPRJMOD}/../Common/ESP32-Solar-Battery.kicad_sym` instead.
  - There's no `fp-lib-table`, so `ESP32-Solar-Battery:tie-cable-hole` (H107/H108) can't be found. Add one that points to `${KIPRJMOD}/../Common/ESP32-Solar-Battery.pretty`.
- **Symbol mismatch (`lib_symbol_mismatch`) and off-grid warnings** come from KiCad 10 library updates and are cosmetic.

## 🔴 Must fix

### 1. U201 (LMV331) is powered from `Solar_V+`

The LMV331's absolute maximum supply is 5.5 V. The schematic note says "Input: 6.0V – 12.0V", and even a 6 V panel reaches about 7 V with no load.

**Fix:** replace it with a higher-voltage comparator that has an open-collector output, such as **LM397** (5–30 V, SOT-23-5; check that the pinout matches). Alternatively, power the LMV331 from a clamped or regulated supply.

**Status: ✅ Resolved in the schematic.** U201 was replaced with a **TL331** (`Comparator:TL331`, 2–36 V, open-collector). The circuit logic is unchanged: the NTC divider still drives IN+ and the R203/R204 reference still drives IN−. Two follow-ups remain:

- [x] **The PCB needs rerouting at U201.** The TL331 SOT-23-5 pinout is **not** the same as the LMV331's. TI's datasheet (SLVS238, Figure 5-1) puts **IN− on pin 1 and IN+ on pin 3**, the reverse of the LMV331. ✅ Rerouted; DRC now shows 0 shorts and 0 unconnected pads.
- [ ] **Buy a part with the TI pinout.** Order TI **TL331IDBVR** (or TL331BIDBVR), or check the datasheet of any second-source "TL331". Some clones use the LMV331 pin order, which would swap the inputs and invert the over-temperature cutoff. Add the MPN/LCSC number to U201.

## 🟠 Should fix

### 2. The MPPT setting conflicts with the 6–12 V input note

R205/R206 (100 k / 30 k) fix the panel operating point at 5.22 V, which is only right for a 6 V panel. A 12 V-class panel (maximum-power voltage about 14–18 V) would be pulled down to about 5.2 V when weak and lose most of its power.

**Fix:** either state that the board is for 6 V panels only, or make the divider panel-specific (or selectable).

**Status: ✅ Resolved.** A top-silkscreen label ("6V panels only") was added next to the solar connector J201.

- [x] **Schematic note updated:** "Input: 6.0V - 12.0V" was reworded to "Input: 6 V panel only (Vmp ≈ 5.2 V)", so it now matches the silkscreen.

### 3. There's no cold-charge cutoff

LiFePO4 must not be charged below about 0 °C, which matters for an outdoor solar device. The NTC circuit (U201) only stops charging when hot (about 53 °C). Also, if J202 is unplugged, charging continues with no temperature protection.

**Fix:** add a window comparator (e.g., a dual comparator), or add a transistor that lets an ESP32 GPIO pull the MPPT pin low to stop charging.

**Status: ⚪ Accepted (won't fix).** The board is only deployed in the Philippines, where ambient temperature doesn't drop below 0 °C, so no cold-charge cutoff is needed. If the board is ever used in a colder climate, revisit this.

- [ ] **Remaining minor point:** the over-temperature protection fails open. If the NTC (J202) is unplugged or broken, the TL331's IN+ goes high and charging continues with no hot cutoff. Consider soldering the NTC directly or adding a firmware check.

### 4. Q204/Q205 (IRLR8726 clone) gate drive is marginal

The HY2112 drives the gates at battery voltage, about 2.1–3.6 V. The IRLR8726's gate threshold can be as high as 2.35 V, and its on-resistance is only specified at ≥4.5 V. Near empty the FETs may barely turn on. The HY2112 also senses overcurrent through the FETs' on-resistance, so its trip point will drift.

**Fix:** use FETs specified at 2.5 V gate drive (e.g., an FS8205A-type dual or a low-threshold 20 V part).

### 5. The HY2112 variant isn't specified

The value is just "HY2112", but the variants range from 3.65 to 3.90 V overcharge trip. The 3.65 V variant is too close to the charger's 3.6 V ±1% output.

**Fix:** use the 3.75 V version, e.g. **HY2112-BB**:

| Overcharge trip | Overcharge release | Overdischarge trip | Overdischarge release | Discharge overcurrent trip |
|---|---|---|---|---|
| 3.75 V | 3.60 V | 2.10 V | 2.30 V | 150 mV |

### 6. The ESP32-C6 and INA219 run directly from the battery

The ESP32-C6 needs 3.0–3.6 V and the INA219 needs 3.0–5.5 V, but the HY2112 only cuts off at about 2.1 V. Between 2.1 and 3.0 V both are out of spec, and the ESP32 will brown out and reset repeatedly.

**Fix:** have the firmware put the ESP32 into deep sleep at about 3.0 V (using the INA219 reading), or add a regulator or a load switch with a higher cutoff.

## 🟡 Minor points

- [ ] **L201 runs hot at 3 A.** The part is ZD1050-470M on a Sunlord MWSA1005S footprint. Equivalent 47 µH 10×10 mm parts are rated about 3.2 A RMS / 4 A saturation with about 127 mΩ resistance, which means about 1.1 W of loss at 3 A. The ZD1050 datasheet couldn't be found, so check its ratings, choose a lower-resistance part, or reduce the charge current. At 6 V the board will rarely reach 3 A anyway.
- [ ] **D206 (series Schottky) is needed** to stop the battery feeding back to the panel through Q201's internal diode. It does cost about 1 W at 3 A.
- [ ] **C203, C209 and C210 have no voltage rating.** C202 and C208 (VT1V470M0605) are 35 V, which is fine. Specify the ceramics at ≥25 V for the input side, and allow for capacitance loss under voltage on the 10 µF 0805.
- [ ] **D202 leakage:** an SD103AW leaks a few µA when hot, and that current goes into the MPPT node and shifts the panel set point slightly. A low-leakage diode (e.g., BAS116) would also work.
- [ ] **No reverse-polarity protection** on the solar (J201) or battery (J203) input. The keyed VH connectors make this low risk.
- [ ] **The ESP32 can't see charge status.** `~CHRG` and `~DONE` only drive LEDs; routing them to J205 is cheap.
- [ ] **INA219 firmware setting:** with the 0.03 Ω shunt (R219), 3 A gives 90 mV, so the gain must be set to /4 (±160 mV).

## ✅ Looks good

- **Battery protection:** the HY2112 wiring (100 Ω/100 nF supply filter, 1 kΩ on CS) and the back-to-back FET arrangement are correct.
- **Charger:** the CN3801 compensation (120 Ω + 220 nF on COM), the 100 nF gate-drive capacitor (VCC–VG), the 0.04 Ω sense resistor for 3 A, and the 35 V bulk capacitors are all right.
- **INA219:** the 10 Ω/100 nF input filter matches the datasheet, and the address is 0x40.
- **Fuse:** F201 sits before the shunt, so it also protects the load path.
