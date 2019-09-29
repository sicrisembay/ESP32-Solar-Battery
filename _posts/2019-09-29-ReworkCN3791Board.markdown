---
layout: post
title: "Making LiFePo4 compatible charger"
subtitle: "I reworked a Li-ion battery charging board to become compatible with LiFePo4 battery and 6V Solar Panel"
author: "Sicris Rey Embay"
header-img: "assets/images/2019-09-18/4.jpg"
---

<p>I am starting with CN3791 MPPT Solar Panel Regulator Controller from <a href="https://www.aliexpress.com/item/32900911894.html?spm=a2g0s.12269583.0.0.35ff1ee3CZAhjE">
Aliexpress</a>.  This Li-ion battery charger variant is specifically made for 9V solar panel.</p>

<p><image src="{{ site.baseurl }}/assets/images/2019-09-29/IMG_20190929_125010.jpg" width="100%" alt="CN3791 Li-ion charger for 9V solar panel" /></p>

<p>I've created a schematic diagram of this board.
<object data="{{ site.baseurl }}/assets/images/2019-09-29/CN3791_schematic.pdf" width="100%" height="600em" type="application/pdf">
</object></p>

<p>To make this board compatible with LiFePo4 battery and 6V Solar Panel, two components (U1 and R2) are replaced.</p>

<p>Step1: Using hot air soldering tool, I removed the CN3791 (U1) chip.</p>

<p><image src="{{ site.baseurl }}/assets/images/2019-09-29/IMG_20190919_195100.jpg" width="100%" alt="CN3791 Li-ion charger for 9V solar panel" /></p>

<p>Step2: I hand soldered CN3801 into U1 pads. </p>

<p><image src="{{ site.baseurl }}/assets/images/2019-09-29/IMG_20190919_195810.jpg" width="100%" alt="CN3791 Li-ion charger for 9V solar panel" /></p>

<p>Step3: Replace R2 resistor.  CN3791 and CN3801 uses the same formula to calculate the R2 value with a given R1 value (178K). </p>
<p><img src="http://latex.codecogs.com/gif.latex?Vmp=1.205(1+R1/R2)" border="0"/></p>
<p>The 6V solar panel that I purchased has a Vmp of 5.3V.</p>
<p><img src="http://latex.codecogs.com/gif.latex?5.3V=1.205(1+178K/R2)" border="0"/></p>
<p><img src="http://latex.codecogs.com/gif.latex?R2=52.38K" border="0"/></p>
<p>I use 51K resistor.  Vmp is 5.4V.</p>