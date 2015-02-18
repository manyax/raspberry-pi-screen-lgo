#first check if I am root
if ! [ $(id -u) = 0 ]; then
   echo "You must be root to do this." 1>&2
   exit 100
else

	#install fbi
	apt-get install fbi
	#copy stuff
	echo "Copy files ..."
	cp bin/eal-boot.png /etc/
	cp bin/splash-screen /etc/init.d/
	chmod a+x /etc/init.d/splash-screen 
	echo "Insert service splash-screen"
	insserv /etc/init.d/splash-screen >/dev/null
	echo "All done"
	echo ""
	echo " add 'quiet logo.nologo' in /boot/cmdline.txt"
	echo " add 'disable_splash=1' in /boot/config.txt
	echo ""
	echo "After that reboot"
fi
	
	