###################
# Install freqcpu #
###################

PREFIX=/usr

install:
	cp -rf freqcpu $(PREFIX)/bin/
	chmod +x $(PREFIX)/bin/freqcpu
	cp -rf freqcpu.1 $(PREFIX)/share/man/man1/
	cp -rf freqcpu.service /etc/systemd/system/
	
uninstall:
	rm -rf $(PREFIX)/bin/freqcpu
	rm -rf $(PREFIX)/share/man/man1/freqcpu.1
	rm -rf /etc/systemd/system/freqcpu.service
