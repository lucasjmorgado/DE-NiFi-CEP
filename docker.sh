#Docker Create and Exec

docker pull ubuntu
docker run -t -d --name ubuntu-nifi ubuntu
docker exec -it ubuntu-nifi bash

#NiFi Install
curl -o https://archive.apache.org/dist/nifi/1.15.3/nifi-1.15.3-bin.tar.gz
tar -xvf nifi-1.15.3-bin.tar.gz

#Java Install
sudo apt install openjdk-17-jdk
export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64

#NiFi start
./nifi-1.15.3/bin/nifi.sh start