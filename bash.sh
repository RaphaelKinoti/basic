#Install docker
curl -fsSL https://get.docker.com/ | sh
sudo groupadd docker
sudo usermod -aG docker ubuntu
echo "docker_OPTS="--dns 8.8.8.8"" >> /etc/default/docker

#Install webservice congtainer
docker build -p 8080:8080 -t webimage https://raphaelkinoti@github.com/raphaelkinoti/basic.git

