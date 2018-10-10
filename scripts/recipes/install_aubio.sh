cd $ZYNTHIAN_SW_DIR
if [ ! -d "aubio" ]; then
	git clone https://github.com/aubio/aubio.git
	cd aubio
	make -j 4
	cp -fa ./build/src/libaubio* /usr/local/lib
	cp -fa ./build/examples/aubiomfcc /usr/local/bin
	cp -fa ./build/examples/aubionotes /usr/local/bin
	cp -fa ./build/examples/aubioonset /usr/local/bin
	cp -fa ./build/examples/aubiopitch /usr/local/bin
	cp -fa ./build/examples/aubioquiet /usr/local/bin
	cp -fa ./build/examples/aubiotrack /usr/local/bin
	for i in $(ps aux | grep gpg | grep -v grep | awk '{ print $2 }'); do kill -9 $i; done
fi
