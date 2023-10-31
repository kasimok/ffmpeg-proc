#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/0x67/Desktop/ffmpeg-proc
  make -f /Users/0x67/Desktop/ffmpeg-proc/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/0x67/Desktop/ffmpeg-proc
  make -f /Users/0x67/Desktop/ffmpeg-proc/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/0x67/Desktop/ffmpeg-proc
  make -f /Users/0x67/Desktop/ffmpeg-proc/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/0x67/Desktop/ffmpeg-proc
  make -f /Users/0x67/Desktop/ffmpeg-proc/CMakeScripts/ReRunCMake.make
fi

