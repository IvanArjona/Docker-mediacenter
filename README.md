# Docker mediacenter

- Transmission: Torrent client
- Emby: Medicanter
- Sonarr: Download tv series
- Radarr: Download movies
- Jackett: Tracker provider

## Initial requirements

Install dependencies

```
sudo apt install -y raspberrypi-kernel \
     raspberrypi-kernel-headers \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common \
     ntfs-3g \
     git \
     python3 \
     python3-pip
```

Install docker
```
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi

# Install docker compose
sudo pip3 install docker-compose
```

Autostart
```
sudo systemctl enable docker
sudo systemctl start docker
```

Save docker temp files in the hard drive

```
sudo vi /etc/default/docker
export DOCKER_TMPDIR="/mnt/storage/docker-tmp"
```

Add user to docker group

```
sudo usermod -a -G docker pi
docker-compose up -d
```

Mount disk

```
# List disk partitions
sudo lsblk -o UUID,NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL,MODEL

echo UUID="{UUID}" /mnt/storage ext4 defaults,auto 0 0 | sudo tee /etc/fstab
mount -a
```

Clone project
```
git clone https://github.com/IvanArjona/Docker-mediacenter.git
```

## Run docker compose

```
cd Docker-mediacenter
docker-compose up -d
```
