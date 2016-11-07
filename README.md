

# 1. Tomcat8 with Oracle JDK 8 #

1- To create a new Apache Tomcat 8.5.6 with the latest Oracle JDK 8 docker image
	
	- Download the dockerfile and setenv.sh
	- You may add/remove or change settings in the setenv.sh that suits your application

2- run the following docker command assming that the above 2 files are in a the tomcat8 directory

	docker build -t registry.example-domain.com:5000/tomcat:v8.5.6 tomcat8/

3- fter you build the docker image you need to push it to your own private registry

	docker push registry.example-domain.com:5000/tomcat:v8.5.6

4- Create the following directories locally on the server you're deploying the images on:

	mkdir -p /opt/tomcat/webapps --> this is where you deploy .war files 

	mkdir -p /var/log/tomcat --> will allow you to manage the logs locally on your server

5- running the docker container:

	docker run --name App_Name -p 192.168.10.77:8080:8080 \
	-v /opt/tomcat/webapps:/opt/AppServer/tomcat/webapps \
	-v /var/logs/tomcat:/opt/AppServer/tomcat/logs \
	registry.example-domain.com:5000/tomcat:v8.5.6
