include theos/makefiles/common.mk

TWEAK_NAME = HideLSMusicControls
HideLSMusicControls_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += hidelsmusiccontrolsprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
