# Build

```
git clone  https://github.com/yoloz/docker-transmission-daemon.git
cd docker-transmission-daemon
docker build -t youl/transmission-daemon .
```

# Pull 

`docker pull youl/transmission-daemon`

# Start a container

```bash
docker run -d --name="transmission" \
  -e USERNAME="test" \
  -e PASSWORD="test" \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  -v /home/${USER}/downloads:/root/Downloads \
  youl/transmission-daemon
```
