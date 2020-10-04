# Docker mediacenter

- Transmission: Torrent client
- Emby: Medicanter
- Sonarr: Download tv series
- Radarr: Download movies
- Jackett: Tracker provider

## Initial requirements

Install dependencies

```
sudo apt-get update && sudo apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common \
     vim \
     fail2ban \
     ntfs-3g
```

Install Docker

```
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
echo "deb [arch=armhf] https://download.docker.com/linux/debian \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update && sudo apt-get install -y --no-install-recommends docker-ce docker-compose
```

Save docker temp files in the hard drive

```
sudo vim /etc/default/docker
export DOCKER_TMPDIR="/mnt/storage/docker-tmp"
```

Add user to docker group

```
sudo usermod -a -G docker pi
docker-compose up -d
```

Mount disk

```
sudo fdisk -l
ls -l /dev/disk/by-uuid/
echo UUID="{UUID}" /mnt/storage defaults,auto 0 0 | sudo tee /etc/fstab
mount -a (o reiniciar)
```

## Run docker compose

`docker-compose up -d`
