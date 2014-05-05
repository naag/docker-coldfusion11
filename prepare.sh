#!/bin/sh

cd $(dirname "$0")
cd build/install

if [ ! -f "ColdFusion_11_WWEJ_linux64.bin" ]
then
	wget http://trials3.adobe.com/AdobeProducts/CSTD/11/linux64/ColdFusion_11_WWEJ_linux64.bin
	chmod 755 ColdFusion_11_WWEJ_linux64.bin
fi
