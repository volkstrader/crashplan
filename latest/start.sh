docker run -d -h peenemunde --name=crashplan \
-v /data/volumes/crashplan/backups:/backups \
-v /media/crashplan/archive:/media/archive \
-v /media/crashplan/backup:/media/backup \
 -p 4222:22 -p 4242:4242 -p 4243:4243 \
hcsoftech/crashplan:latest
