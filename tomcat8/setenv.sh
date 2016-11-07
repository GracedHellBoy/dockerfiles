
export CATALINA_HOME=/opt/AppServer/tomcat
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export PATH=${JAVA_HOME}/bin:${CATALINA_HOME}:${PATH}
export JAVA_OPTS="$JAVA_OPTS -Xms1024M -Xmx2048M"
export CATALINA_PID=${CATALINA_HOME}/catalina.pid