---
toc: True
comments: True
title: The Internet
description: Exploring the Internet
courses: {'compsci': {'week': 13}}
type: hacks
---

# Understanding the Internet

The internet is a vast network of interconnected computers and devices that allows for the exchange of information and communication on a global scale. It is a fundamental part of modern life, influencing the way we work, socialize, and access information. Let's explore how the internet works and its key functionalities.

## How the Internet Works

### 1. **Network Infrastructure:**
   - The internet is a network of networks, comprised of millions of devices connected through various technologies such as cables, fiber optics, and wireless connections.
   - The internet is decentralized, meaning that there is no central authority that controls it. Instead, it is made up of many smaller networks that are connected to each other. This allows for greater flexibility and resilience in the face of disasters or attacks.

### 2. **Protocols:**
   - Communication on the internet relies on protocols, which are standardized sets of rules that govern data transmission. For example, HTTP is used for web browsing.
   - Protocols are used to ensure that data is transmitted reliably and efficiently. They also allow for interoperability between different devices and networks. For example, HTTP allows web browsers to communicate with web servers. This means that you can access any website from any device as long as it supports HTTP. This is why you can use your phone to browse the internet even though it doesn't have a keyboard or mouse. HTTPS is a secure version of HTTP that encrypts data before sending it over the network. This prevents eavesdroppers from intercepting sensitive information such as passwords or credit card numbers. There are many other versions of HTTP, each with its own purpose and features.







```python
GET /index.html HTTP/1.1
Host: www.example.com
```

# IP Addresses:
Every device connected to the internet is assigned a unique identifier called an IP address. This address helps in routing data to the correct destination.
www.example.com -> 192.168.1.1
This is similar to how your home address is used to deliver mail to your house. IP addresses are typically represented in a 32-bit format, with each 8-bit segment separated by a period. However, with the growth of the internet, the number of available IP addresses is running out. To solve this problem, a new standard called IPv6 was introduced, which uses a 128-bit format.

## Popcorn Hack 1

Log into your AWS account. Which type of ip address is used in the AWS server?

# Data Packets & Transfering:
Information is broken down into small packets for efficient transmission. These packets travel independently across the network and are reassembled at their destination. There are many examples on how data sends their packets but the most common one is messaging with your friends. 

Data packets are like letters that are sent through the mail. They contain information about the sender, recipient, and contents of the letter. Similarly, data packets contain information about the source and destination of the data, as well as the data itself. This allows for efficient transmission of information over the internet.
An example of a data packet is shown below:

<img src = "{{site.baseurl}}/images/Chart.png" width = "800" height = "450">

## Bandwith

Bandwith measures how fast data sends to the recipent. Think about cars, they go in miles per hour, but in this case, as we are talking about computers, we measure this in bits per second. In a car the slower the miles per hour, the slower the car. Same logic applies here as well, when the bandwith is lower, the data takes a longer time to send resulting in lag. 

## Routing

Routing in simple terms is the path in which the sender sends a message and the router helps give a "route" to the sender through a series of packets. Without a router, packets cannot be sent and devices won't be able to communicate with each other.  




### Popcorn Hack 

<img src = "{{site.baseurl}}/images/PopcornHack1.png" width = "800" height = "450">



# Brief Overview into Domains and Subdomains

Domain name: For example in https://docs.google.com/, google is the domain name
Subdomain name: In the same example as above, docs is the subdomain name. 

# Protocols and Transfering of Data (Briefly Explained)

<img src = "{{site.baseurl}}/images/computer protocols.png" width = "800" height = "450">

The OSI Model consists of 7 steps in which devices communicate with each other. Each step contains its own different steps and going over them will take a long time, so review over them after the lesson is over. 

In the Narrow Waist, there are 4 layers in which devices communicate with each other. 

The Network Access Layer there is a connection between a hardware device (ethernet and others) and its connected to a physical device like a computer in order to send packets and information that way. 

The Internet Layer, is the layer which is built off the Network Access Layer in which packets are sent via the IP addresses. These packets contain metadata in which there is information stored inside. (Routers also play a role!) 

Internet Scalability: Based on what we learned, the internet is very scalable, its able to send information (via packets) to many devices which are all part of a LAN or Local Area Network. These LANs are part of a router in which the intranet is. LANs can also exchange information with each other.  

TCP (Transmission Control Protocol):

Reliable Delivery: TCP makes sure that data sent between devices arrives safely and in the right order.

Connection Setup: Before sending data, TCP sets up a connection between devices.

Checks and Corrections: It double-checks to confirm data is sent and received correctly. If anything gets lost, it sends it again.

Efficiency: It controls how fast data moves so that a fast sender doesn't overwhelm a slow receiver.


TCP guarantees the safe and ordered delivery of data, similar to a registered mail service. It's often used for applications like web browsing, email, file transfer, and etc. 



UDP (User Datagram Protocol):
Not So Safe Delivery: UDP doesn't promise that your data will arrive or be in the right order.

No Handshake: It doesn't say "hello" before sending data; it just shoots out the packets without checking if they reached the other side.

Less Checking: It doesn't spend time correcting errors like TCP does, which makes it faster.

Speed Matters: UDP is used in things like online games, live videos, and voice calls where being fast matters more than making sure every piece of data gets there perfectly.



Think of UDP as a protocol that's akin to sending a postcard; it's fast and efficient, but there's no confirmation that the postcard arrived at its destination, and it might get lost or arrive out of order.

DNS (Domain Name System)
Internet Phone Book: DNS is like an internet directory that matches human-readable website names (like "google.com") to their actual computer-friendly addresses called IP addresses (like "192.168.1.1").

Translation Service: It translates website names into IP addresses so devices can find and connect to the correct websites or services on the internet.
Routing Requests: When you type a website name in a browser, DNS helps your device locate the right server by providing the IP address associated with that name.

Simplifying Access: Instead of remembering complicated strings of numbers, DNS makes it easier for people to access websites using simple and memorable names.




# Wrap-Up / Popcorn Hack

## Information Retrieval:
The internet serves as a vast repository of information. Search engines like Google help users find relevant content by indexing and ranking web pages.
Question: How does a search engine determine the relevance of web pages?

## Entertainment:
Streaming services for music, movies, and games provide entertainment options, accessible to users at any time.
Question: Briefly explain how streaming services deliver content to users in real-time.

## Collaboration:
Tools like Google Docs and cloud storage services facilitate collaboration, allowing individuals and teams to work on projects together, regardless of location.
Question: How does cloud storage ensure data availability and accessibility?


## Conclusion
In summary, the internet is a dynamic and ever-evolving network that plays a crucial role in our daily lives. Understanding its basic components and functionalities is essential for navigating the digital landscape effectively.
