#
# Component Makefile
#

COMPONENT_ADD_INCLUDEDIRS := .
COMPONENT_SRCDIRS := .

ifdef CONFIG_QPC_QSPY_ENABLE
CFLAGS += -DQ_SPY
endif