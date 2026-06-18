# REPLACE 192.168.50.134 WITH YOUR LOCAL IP!

killall -9 ffmpeg
ffmpeg \
-f kmsgrab \
-i - \
-vaapi_device /dev/dri/renderD128 \
-vf 'hwmap=derive_device=vaapi,scale_vaapi=format=nv12' \
-c:v h264_vaapi \
-f mpegts \
udp://192.168.50.134:9999 >batstream.log 2>&1 &
