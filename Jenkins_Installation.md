## Steps For installation of jenkins :
```bash
apt update -y
apt upgrade -y
```
### Install git and docker
```bash 
apt install git docker* ssh -y
systemctl start docker;systemctl enable docker;
systemctl status docker
```
### To check Java version 
```bash
java --version
```
### Install Java packages :
```bash
apt install openjdk-11-jre -y
apt install openjdk-17-jre
apt install curl -y
apt update -y
```
### Now Download the packages
```bash
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
```
```bash
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
```
### Now Install Jenkins
```bash
apt-get install jenkins -y
systemctl status jenkins
ufw status
ufw allow 8080
ufw enable
ufw status
```
### Run the below command for show admin password which is required.
```bash
cat /var/lib/jenkins/secrets/initialAdminPassword
       ff36448799454e4f9b77a870d2479ac4     
```
### Click on Installed Suggested Plugins :
















    

