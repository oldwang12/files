yum -y install docker
systemctl start docker
systemctl enable docker

mkdir x-ui && cd x-ui
docker run -itd --network=host \
    -v $PWD/db/:/etc/x-ui/ \
    -v $PWD/cert/:/root/cert/ \
    --name x-ui --restart=unless-stopped \
    bearking0425/x-ui:latest
  
