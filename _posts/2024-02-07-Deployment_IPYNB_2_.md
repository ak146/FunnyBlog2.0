---
toc: True
comments: True
layout: notebook
title: Deployment
description: Deployment theory
courses: {'compsci': {'week': 13}}
type: hacks
---

## Theory and background for Deployment

- Deployment is mainly used for backend, this is because in order to deploy our main website to test our backend.
- Any APIs or anything that is used in python will be tested in the backend
- We are going to be deploying our CPT project (make sure its your team one and not your individual used for the spotcheck)
- 

## Tools (Varun)

- #### AWS EC2:  
    It is called at Elastics Compute Clund and it offers a secure and resizable compute power for your application needs. In our case, EC2 instance are low-cost and maintance free scalable computing power which can be accessable from anywhere as it is hosted in cloud. 
    ![image.png](image.png)
    (you can launch a new instance by a mouse click)

    In simpler terms its where you host your application so you don't have to run in locally.

- #### CORS
    It is known as Cross-Orgin Resorce sharing. In simple terms it is a set of rules that dictates how webpages from one domain can request and interact with resources hosted on another domain.

- #### Docker
    Docker and docker-compose are tools used to host a Web Application. Docker is a tool which is used to automate the deployment of applications in lightweight containers so that applications can work efficently in different environments. A container is a software package whcih consists of all dependencics requred to run an application. Docker helps to run applications with their sutable frameworks (flask)

- #### Nginx
     is an open-source software that serves as a web server, reverse proxy, and performs other functions to help locate and manage Web Applications on a server.


- #### Certbot
     Its a free tool that automatically obtains and manages secure HTTPS certificates from Let's Encrypt, ensuring reliable and secure web traffic. Certbot allows your site to get a certificate in order for the http request to be secure (https). An SSL Certificate is a digital certificate that authenticates a website's identity and enables an encrypted connection.


- #### DNS
     Domain Name Services, allows assigning user-friendly names to web servers. The Ip of the EC2 instance is changed to a readable url eg.(nighhawkcoders.com)



## Overview - Steps for Deployment (Nandan)

1. First thing that you need is a backend server. Backend server basically allows you to test your APIs and helps deploy your website. This is the first important step.
2. EC2 Setup (This will have the most information):
Log in to AWS IAM User: Start by logging into your AWS account with your IAM user credentials.

Launch a New EC2 Instance: Once logged in, search for EC2 and launch a new instance. You'll be guided through the setup process.

Choose an Amazon Machine Image (AMI): An AMI is like a template for your virtual machine. Pick Ubuntu as your operating system, ensuring it's the latest version approved by your teacher.

Select Free Tier for Memory and Disk: Opt for the Free Tier options to avoid unnecessary costs since this instance is for testing purposes only.

Configure Security Settings: Make sure to enable access for HTTP and HTTPS if your application will use these protocols. This ensures your web application can run smoothly.

Name Your Security Group (.pem) File: This file is crucial for accessing your instance securely via SSH. Name it after yourself or your team for easy identification.

Connect to Instance: Once the instance is set up, you can connect to it. This allow you to interact with your virtual machine.


3. Deployment process:

You run through an EC2 using the steps above, and then after this you connect to an instance in which it helps deploy your website. An instance can contain many backend websites, in this case it would contain other classmate's backends data for testing. 

EC2 is connected through a cloud. You do this by going into instances in order to gain a connection. After getting this instance, you click on it and click the connect button in order to gain a connection. 





## Demo will be shown on screen by Torin and Arnav
