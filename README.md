# TCS_iON_internship
Name Of The Student: Aswin Manoj
Internship Project Topic: Set up docker container for application development using blockchain network and deploy it on AWS Cloud.
Name of the Organization: TCS iON


1.	Firstly, we create AWS account (Free Tier) with the Amazon Linux EC2 instance. From that we get the host name and which is used to login to base OS as ubuntu using putty.

2.	Then, we start update the ubuntu system and install the dependencies using the following commands:
i)	sudo apt-get update
ii)	sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
Then, we start customizing the processes according to our project needs, i.e., identify and develop the docker file.

3.	We add docker’s official GPG Key and setting up the latest repository.

4.	Then, we install the docker engine by using the command: sudo apt-get install -y docker-ce docker-ce-cli containerd.io

5.	To test the version and installation of docker, we use the commands: 
i)	sudo docker –version
ii)	sudo docker run hello-world

6.	Downloading, Installing and configuring Docker Compose: In order to install the docker compose we can use pip to install it by following commands:
i)	sudo apt install python-pip3
ii)	sudo pip3 install docker-compose

7.	To check the version, we use the command: $sudo docker-compose –version

8.	Now, we create the docker file with all the required specifications for the virtual application development environment on AWS cloud.

9.	Then we build docker image for the same by using the following command:
$sudo docker build -t dockertest .
Here, -t specifies the tag name and dot (.) specifies the current directory.
Now, when the image is  built, we would execute the image as below:
$sudo docker run -t dockertest /bin/bash

10.	Test the version and configure AWS Compose on cloud and create the docker compose.yml container.

11.	To run the container, we use the following command: 
$sudo docker-compose up  

12.	Finally we host the docker image created above in AWS and test the same.
