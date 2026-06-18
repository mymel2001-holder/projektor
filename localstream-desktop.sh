ffmpeg -f avfoundation -video_size 1280x720 -framerate 30 -i "2" -vcodec libx264 -preset ultrafast -tune zerolatency -acodec aac -b:a 128k -f mpegts "udp://$1:5001?pkt_size=1316" >lsd.log 2>&1 &
