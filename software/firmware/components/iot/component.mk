#
# Component Makefile
#

COMPONENT_ADD_INCLUDEDIRS := . wifi mqtt_client

COMPONENT_SRCDIRS := . wifi mqtt_client

COMPONENT_EMBED_TXTFILES := mqtt_client/cert_default/default.ca.pem
COMPONENT_EMBED_TXTFILES += mqtt_client/cert_default/default.crt
COMPONENT_EMBED_TXTFILES += mqtt_client/cert_default/default.key

ifdef CONFIG_QPC_QSPY_ENABLE
CFLAGS += -DQ_SPY
endif