#!/bin/sh

cd $(dirname "$0")
cd build/install

if [ ! -f "ColdFusion_10_WWEJ_linux64.bin" ]
then
	wget http://download.macromedia.com/pub/coldfusion/updates/10/installers/ColdFusion_10_WWEJ_linux64.bin
	chmod 755 ColdFusion_10_WWEJ_linux64.bin
fi

if [ ! -f "cf10_mdt_updt.jar" ]
then
	wget http://download.macromedia.com/pub/coldfusion/10/cf10_mdt_updt.jar
fi

if [ ! -f "hotfix_013.jar" ]
then
	wget http://download.adobe.com/pub/adobe/coldfusion/hotfix_013.jar
fi
