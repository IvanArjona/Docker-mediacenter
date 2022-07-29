# Install requirements
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

# Install docker
curl -sSL https://get.docker.com | sh

# Add user to docker group
sudo usermod -aG docker pi

# Install docker compose
sudo pip3 install docker-compose

# Autostart docker
sudo systemctl enable docker
sudo systemctl start docker
