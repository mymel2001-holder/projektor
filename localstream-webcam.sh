ffmpeg -f avfoundation -video_size 1280x720 -framerate 30 -i "0:1" -vcodec libx264 -preset ultrafast -tune zerolatency -acodec aac -b:a 128k -f mpegts "udp://$1:5000?pkt_size=1316" >webcam.log 2>&1 &
