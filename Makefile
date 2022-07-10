# udev-notify - Show notifications when any USB device is plugged/unplugged

VERSION := 0.1.r5

INSTALL	:= install
RM	:= rm

install:
	$(RM) -rf $(DESTDIR)/usr/bin/udev-notify
	$(RM) -rf $(DESTDIR)/usr/share/udev-notify
	$(RM) -rf $(DESTDIR)/usr/share/licenses/udev-notify
	$(RM) -rf $(DESTDIR)/etc/udev/rules.d/99-udev-notify.rules
	$(INSTALL) -Dm755 udev-notify $(DESTDIR)/usr/bin/udev-notify
	$(INSTALL) -Dm644 LICENSE $(DESTDIR)/usr/share/licenses/udev-notify/LICENSE
	$(INSTALL) -Dm644 sounds/plug_sound.wav $(DESTDIR)/usr/share/udev-notify/sounds/plug_sound.wav
	$(INSTALL) -Dm644 sounds/unplug_sound.wav $(DESTDIR)/usr/share/udev-notify/sounds/unplug_sound.wav
	$(INSTALL) -Dm644 99-udev-notify.rules $(DESTDIR)/etc/udev/rules.d/99-udev-notify.rules

uninstall:
	$(RM) -rfv $(DESTDIR)/usr/bin/udev-notify
	$(RM) -rfv $(DESTDIR)/usr/share/udev-notify
	$(RM) -rfv $(DESTDIR)/usr/share/licenses/udev-notify
	$(RM) -rfv $(DESTDIR)/etc/udev/rules.d/99-udev-notify.rules
	$(RM) -rfv $(DESTDIR)/etc/udev-notify.conf
	$(RM) -rfv $(DESTDIR)/var/tmp/udev-notify-devices
	$(RM) -rfv $(DESTDIR)/var/lock/.udev-notify-devices.lock

.PHONY: install uninstall
