export ARCHS=armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = ItunesRadioUnlimited
ItunesRadioUnlimited_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

LaunchNotifier_FRAMEWORKS = Radio UIKit CoreGraphics Foundation
LaunchNotifier_PRIVATE_FRAMEWORKS = Radio