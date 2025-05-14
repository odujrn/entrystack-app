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
