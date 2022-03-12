# peer2profit
peer2profit via proxy in docker

# Howto (Ubuntu 20.04):

Build:
```
apt update && \
apt upgrade -y && \
apt install docker docker-compose git -y && \
git clone https://github.com/igluko/peer2profit.git && \
cd peer2profit && \
docker build . -t peer2profit \
```

Run container
```
chmod +x run
./run
```

Get containers list:
```
docker ps -a
```
```
CONTAINER ID   IMAGE         COMMAND                  CREATED        STATUS        PORTS     NAMES
a8dd1ae1afc4   peer2profit   "/bin/sh -c 'proxych…"   15 hours ago   Up 15 hours             elated_poincare
```

Get logs by id:
```
docker logs a8dd1ae1afc4
```
```
...
2022-02-15T14:54:35Z | Configuration received successfully.
2022-02-15T14:54:35Z | External interface IP: 172.17.0.2, DNS: 8.8.8.8
2022-02-15T14:54:35Z | Service started.
...
```
Done.

