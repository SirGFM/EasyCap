#!/bin/bash

rm -f /socap/somagic-easycap_1.1/.video
/socap/somagic-easycap_1.1/somagic-init || (echo 'failed to load the firmware' ; exit 1)
mkfifo /socap/somagic-easycap_1.1/.video || (echo 'failed to create the fifo' ; exit 1)
chmod 0766 /socap/somagic-easycap_1.1/.video || (echo 'failed to set fifo permission' ; exit 1)
echo 'Done! Run ./watch.sh on the host...'
/socap/somagic-easycap_1.1/./somagic-capture 1>/socap/somagic-easycap_1.1/.video
[ $? -eq 0 ] || (echo 'failed to capture the video' ; exit 1)
rm -f /socap/somagic-easycap_1.1/.video
