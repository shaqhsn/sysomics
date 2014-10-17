#!/bin/sh

if [ "$1" != "" ]; then
  PREFIX=$1
else
	echo "Error"
	exit 1
fi

JASTUB=/System/Library/Frameworks/JavaVM.framework/Resources/MacOS/JavaApplicationStub
JASTUB_FIX=${PREFIX}/Contents/MacOS/JavaApplicationStub

if file ${JASTUB} | grep x86_64; then 
  echo lipo ${JASTUB} -remove x86_64 -output ${JASTUB_FIX}
  lipo ${JASTUB} -remove x86_64 -output ${JASTUB_FIX}
else
  echo cp ${JASTUB} ${JASTUB_FIX}
  cp ${JASTUB} ${JASTUB_FIX}
fi

echo 
echo "Successfully Finished!"
