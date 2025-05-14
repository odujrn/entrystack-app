# Entrystack App

Entrystack App is a simple Java-based multi-module application built using Maven. It includes a frontend web module, deployed via a fully automated CI/CD pipeline using Jenkins and Apache Tomcat.

## 🚀 Features

- Multi-module Maven project (web frontend)
- Automated CI/CD pipeline with Jenkins
- Deploys to Apache Tomcat server automatically
- SCM Polling enabled – auto-build and deploy on Git changes
- Java 17 support

---

## 🛠️ Technologies Used

- Java 17
- Apache Maven 3.9.9
- Jenkins
- Apache Tomcat 9
- Git & GitHub
- Amazon Linux

---

## ⚙️ CI/CD Pipeline

The CI/CD pipeline is fully automated:

1. Developer pushes changes to GitHub.
2. Jenkins polls the repository using `Poll SCM` (`* * * * *`) every minute.
3. Jenkins job triggers a Maven build.
4. WAR file is created and deployed to the Tomcat server using `manager-script`.

---

## 🧰 Jenkins Installation & Setup

Follow Jenkins' official guides:
- [Install Jenkins on Linux](https://www.jenkins.io/doc/book/installing/linux/)
- [Install Jenkins on AWS](https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/)

### Commands to Install Jenkins:
```bash
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
amazon-linux-extras install epel
sudo amazon-linux-extras install java-openjdk11 -y
yum install java-11-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
java -version
javac -version
systemctl status jenkins


🧱 Maven Installation
Refer to: https://maven.apache.org/install.html

COMMANDS:
sudo su && cd /opt
wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz
tar -xzvf apache-maven-3.9.9-bin.tar.gz
mv apache-maven-3.9.9 maven
vim ~/.bash_profile

JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto.x86_64
M2_HOME=/opt/maven
M2=$M2_HOME/bin
PATH=$PATH:$HOME/bin:$JAVA_HOME:$M2_HOME:$M2

source ~/.bash_profile
mvn -v


🌐 Apache Tomcat Setup
Refer to: https://tomcat.apache.org/download-90.cgi

COMMANDS:
sudo su && cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.76/bin/apache-tomcat-9.0.76.tar.gz
tar -xvzf apache-tomcat-9.0.76.tar.gz
mv apache-tomcat-9.0.76 tomcat

Configure Tomcat Users:
Edit /opt/tomcat/conf/tomcat-users.xml:


<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<role rolename="manager-jmx"/>
<role rolename="manager-status"/>
<user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status"/>
<user username="deployer" password="deployer" roles="manager-script"/>
<user username="tomcat" password="s3cret" roles="manager-gui"/>

cd /opt/tomcat/bin
./shutdown.sh
./startup.sh


🔁 Jenkins Job Configuration
Set GitHub repository URL

Add Maven goals: clean install

Add post-build action: Deploy WAR/EAR to a container

Provide Tomcat credentials (deployer user)

WAR file path: webapp/target/*.war

Enable SCM Polling: * * * * * (every minute)

