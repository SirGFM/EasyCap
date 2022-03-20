#!/bin/bash

EZCAP_DIR=$(dirname $(realpath $0))

mplayer -vf yadif,screenshot -demuxer rawvideo -rawvideo "pal:format=uyvy:fps=30" -aspect 4:3 ${EZCAP_DIR}/somagic-easycap_1.1/.video
