#!/bin/bash
set -e

export PATH=`pwd`/prefix/bin:$PATH
6502-gcc helloworld.c -O2 -o helloworld
semi65x/semi65x -l 0x200 ./helloworld


6502-gcc helloworld.c -Os -o helloworld_small
wc helloworld
wc helloworld_small

6502-gcc float.c -O2 -o float
6502-gcc float.c -Os -o float_small
semi65x/semi65x -l 0x200 ./float
wc float*
du -shc float*
