# Docker mediacenter

- Transmission: Torrent client
- Jellyfin: Medicanter
- Sonarr: Download tv series
- Radarr: Download movies
- Jackett: Tracker provider

## Initial requirements

Clone project

```bash
git clone https://github.com/IvanArjona/Docker-mediacenter.git
```
Install docker and all its dependiencies

```bash
./setup.sh
```

Mount disk

```bash
# List disk partitions
sudo lsblk -o UUID,NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL,MODEL

echo UUID="{UUID}" /mnt/storage ext4 defaults,auto 0 0 | sudo tee /etc/fstab
mount -a
```

Save docker temp files in the hard drive

```bash
echo export DOCKER_TMPDIR=\"/mnt/storage/docker-tmp\" >> /etc/default/docker
```

Mount smb disk
```bash
mkdir /mnt/storage
//192.168.1.1/sda1 /mnt/storage cifs guest,vers=1.0 0 0 >> /etc/fstab
mount -a
```

# Run docker compose

```
docker-compose up -d
```
