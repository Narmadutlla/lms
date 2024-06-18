curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
sudo docker container run -dt --name sonarqube --restart=always -p 9000:9000 sonarqube
sudo docker container run -dt --name nexus --restart=always -p 8081:8081 sonatype/nexus3

  jenkins
sudo apt update -y
sudo apt install openjdk-17* 
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null


sudo apt-get update -y && sudo apt-get install jenkins -y


for running jenins
sudo usermod -aG docker-Jenkins 
  sudo visudo 
jenkins ALL=(ALL) NOPASSWD: /usr/bin/docker
sudo systemctl restart Jenkins
