

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
	
	
	
# Notes: #

1- ckeck version:

	docker exec App_Name /opt/AppServer/tomcat/bin/version.sh
	
	Server version: Apache Tomcat/8.5.31
	Server built:   Apr 27 2018 20:24:25 UTC
	Server number:  8.5.31.0
	OS Name:        Linux
	OS Version:     4.9.87-linuxkit-aufs
	Architecture:   amd64
	JVM Version:    1.8.0_171-b11
	JVM Vendor:     Oracle Corporation
	
2- check process:

	docker exec WebAppX ps aux |grep java 
	
	root         1  0.5 10.7 4617684 219400 ?      Ssl  16:26   0:14 /usr/lib/jvm/java-8-oracle/bin/java -	Djava.util.logging.config.file=/opt/AppServer/tomcat/conf/logging.properties -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager -Xms1024M -Xmx1024M -Djdk.tls.ephemeralDHKeySize=2048 -Djava.protocol.handler.pkgs=org.apache.catalina.webresources -Dorg.apache.catalina.security.SecurityListener.UMASK=0027 -Dignore.endorsed.dirs= -classpath /opt/AppServer/tomcat/bin/bootstrap.jar:/opt/AppServer/tomcat/bin/tomcat-juli.jar -Dcatalina.base=/opt/AppServer/tomcat -Dcatalina.home=/opt/AppServer/tomcat -Djava.io.tmpdir=/opt/AppServer/tomcat/temp org.apache.catalina.startup.Bootstrap start

	
	

	
