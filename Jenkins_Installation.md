## Steps For Installation of jenkins In Ubuntu Machine :
```bash
sudo apt update -y
sudo apt upgrade -y
```
### Install git and docker
```bash 
sudo apt install git docker* ssh -y
sudo systemctl start docker
sudo systemctl enable docker;
sudo systemctl status docker
```
### To check Java version 
```bash
java --version
```
### **Install Java packages :**
```bash
sudo apt install openjdk-11-jre -y
sudo apt install openjdk-17-jre
sudo apt install curl -y
sudo apt update -y
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
sudo apt-get install jenkins -y
sudo systemctl status jenkins
sudo ufw status
sudo ufw allow 8080
sudo ufw enable
sudo sudo ufw status
```
### Run the below command for show admin password which is required.
```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
    - Password
    ff36448799454e4f9b77a870d2479ac4
```bash
sudo visudo
    - Now add the below lines in your sudoers file :
jenkins ALL=(ALL) NOPASSWD: ALL
```
   
### Now Configuration of Jenkins On Web UI
* Follow the Below Steps.
     - Copy above Password 
     - On web Browser URL Enter IP Address and port number
     - http://192.168.30.60:8080
     - Then we will see the jenkins web UI
     - Paste above Copied Password 
     - Click on Installed Suggested Plugins
     - Create first admin user
     - Enter username
     - Enter Password
     - Confirm Password
     - Enter Full name 
     - Enter Email-Address
     - Then click on save and continue


   
* Instance Configuration
   - Then click on save and Finish
* Jenkins is Ready
### Welcomes to Jenkins !
* Click on New Item
   - Enter the item name 
   - Click on free style project
   - Then click on ok
* General
  - Enter the Project Discription
  - Click on check box of GitHub Project
  - Enter the Project URL
* Source code Management
  - Add Repository
  - Paste Repository URL
* Build Triggers
   - Click on Poll SCM
   - Enter the following Schedule or whatever you want
```bash
   H/15 * * * *
```
* Build Steps
  - Click on Execute Shell 
  - Add following in that shell
```bash
sudo apt-get install apache2 -y
sudo systemctl start apache2 
sudo systemctl enable apache2
sudo systemctl restart apache2 
sudo git clone https://github.com/shivshankar7977/shiv_Page.git /var/www/html
```
  - Then Click on apply and save  
-----


  - If you want to build again then Replace above commands with Following Commands.
```bash
sudo apt-get install apache2 -y
sudo systemctl start apache2 
sudo systemctl enable apache2
cd /var/www/html/.git/
sudo rm -rf *
cd ..
sudo rm -rf .git/
sudo rm -rf *
cd 
sudo systemctl restart apache2 
sudo git clone https://github.com/shivshankar7977/shiv_Page.git /var/www/html
```
* Then Click On Build Now
* Then Click on Console Output
