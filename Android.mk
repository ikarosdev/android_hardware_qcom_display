#Enables the listed display HAL modules

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
	display-hals := libhwcomposer liboverlay libgralloc libcopybit libgenlock
	display-hals += libqcomui
	include $(call all-named-subdir-makefiles,$(display-hals))
endif
