# Use

build `docker build github.com/yoloz/docker-transmission-daemon/alpine` or pull `docker pull 796c7a/transmission-daemon`

# Start a container

```bash
sudo docker run -d --name="transmission" \
  -e USERNAME="test" \
  -e PASSWORD="test" \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  -v ${USER}/downloads:/root/Downloads \
  796c7a/transmission-daemon
```
