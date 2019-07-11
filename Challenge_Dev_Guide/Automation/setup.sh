#Docker
sudo apt-get update

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y \
    docker-ce=5:18.09.7~3-0~ubuntu-bionic \
    docker-ce-cli \
    containerd.io

#Docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#App Armor
sudo wget https://github.com/C-Sto/WACTF_Pub/raw/master/Challenge_Dev_Guide/docker-host-apparmor.txt -O /etc/apparmor.d/docker-host-apparmor.txt

sudo apt-get install -y apparmor-utils

sudo aa-enforce /etc/apparmor.d/docker-host-apparmor.txt

sudo aa-status | grep docker

sudo docker run hello-world

mkdir wactf
cd wactf
wget https://github.com/C-Sto/WACTF_Pub/raw/master/Challenge_Dev_Guide/docker-compose.yml

mkdir your-challenge
cd your-challenge
files="Dockerfile README.md app.py requirements.txt"
for file in $files; do wget https://github.com/C-Sto/WACTF_Pub/raw/master/Challenge_Dev_Guide/your-challenge/$file; done
cd ..

mkdir some-other-challenge
cd some-other-challenge
files="Dockerfile app.js package.json"
for file in $files; do wget https://github.com/C-Sto/WACTF_Pub/raw/master/Challenge_Dev_Guide/some-other-challenge/$file; done
cd ..

mkdir some-other-challenge-2
cd some-other-challenge-2
files="Dockerfile app.php"
for file in $files; do wget https://github.com/C-Sto/WACTF_Pub/raw/master/Challenge_Dev_Guide/some-other-challenge-2/$file; done
cd ..

echo Run sudo docker-compose up to make it run and be happy.