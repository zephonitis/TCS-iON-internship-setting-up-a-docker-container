FROM ubuntu:18.04
RUN apt update
RUN apt -y upgrade
RUN ["apt-get", "install", "-y", "vim"]
RUN ["apt-get", "install", "-y", "git"]
RUN apt -y install python3 python3-pip
RUN apt install -y libssl-dev
RUN pip3 -no-cache-dir install \
pyopenssl
ndg-httpsclient
pyasnl
# Install Java
RUN apt update
RUN apt install -y default-jdk
WORKDIR "/root"
#Install and Ccnfigure Apache Tomcat
RUN mkdir /usr/local/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.16/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run

 
