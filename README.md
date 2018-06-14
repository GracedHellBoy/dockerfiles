

# 1. Tomcat8 with Oracle JDK 8 #

1- To create a new Apache Tomcat 8.5.31 with the latest Oracle JDK 8 docker image
	
	- Download the dockerfile and setenv.sh
	- Change the WAR_FILE to point to your app.war in the dockerfile
	- You may add/remove or change settings in the setenv.sh that suits your application

2- run the following docker command assming that the above 2 files are in a the tomcat8 directory

	docker build . -t registry.example-domain.com:5000/app:ver

3- after you build the docker image you need to push it to your own private registry

	docker push registry.example-domain.com:5000/app:ver


5- running the docker container:

	docker -d run --name App_Name -p 8080:8080 registry.example-domain.com:5000/app:ver
	
	

	
