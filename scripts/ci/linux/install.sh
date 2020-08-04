#!/bin/bash

# get OF root
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export OF_ROOT=${DIR}/../../../../..

mkdir /tmp/fbx20195_fbxsdk_linux
cd /tmp/fbx20195_fbxsdk_linux
wget 
https://www.autodesk.com/content/dam/autodesk/www/adn/fbx/20195/fbx20195_fbxsdk_linux.tar.gz
tar xvfz fbx20195_fbxsdk_linux.tar.gz
mkdir installed
chmod +x fbx20195_fbxsdk_linux
./fbx20195_fbxsdk_linux ./installed
mkdir -p ${OF_ROOT}/addons/ofxFBX/libs/fbxsdk_2019.5/lib/linuxmkdir -p ${OF_ROOT}/addons/ofxFBX/libs/fbxsdk_2019.5/lib/linux64
cp ./installed/lib/gcc/x86/debug/libfbxsdk.a
${OF_ROOT}/addons/ofxFBX/libs/fbxsdk_2019.5/lib/linux/libfbxsdk.a
cp ./installed/lib/gcc/x64/debug/libfbxsdk.a
${OF_ROOT}/addons/ofxFBX/libs/fbxsdk_2019.5/lib/linux64/libfbxsdk.a
