# udev-notify - Show notifications when any USB device is plugged/unplugged

VERSION := 0.2.r3

INSTALL	:= install
RM	:= rm
LS	:= ls

install:
	$(INSTALL) -Dm755 udev-notify $(DESTDIR)/usr/bin/udev-notify
	$(INSTALL) -Dm644 LICENSE $(DESTDIR)/usr/share/licenses/udev-notify/LICENSE
	for ICON in $$($(LS) icons) ; do \
	$(INSTALL) -Dm644 icons/$$ICON $(DESTDIR)/usr/share/udev-notify/icons/$$ICON ; \
	done
	for SOUND in $$($(LS) sounds) ; do \
	$(INSTALL) -Dm644 sounds/$$SOUND $(DESTDIR)/usr/share/udev-notify/sounds/$$SOUND ; \
	done
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
