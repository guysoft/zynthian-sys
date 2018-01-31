cd $ZYNTHIAN_SW_DIR
if [ ! -d "jpmidi" ]; then
	# wget http://juliencoder.de/jpmidi/jpmidi-0.2.tar.gz
	wget https://github.com/jerash/jpmidi/archive/master.tar.gz
	mv master.tar.gz jpmidi-0.2.tar.gz
	tar xfvz jpmidi-0.2.tar.gz
	cd jpmidi
	./configure
	make -j 4
	cp /src/jpmidi /usr/local/bin
	cd ..
	rm -f jpmidi-0.2.tar.gz
fi
