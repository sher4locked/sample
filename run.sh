#echo $JAVA_OPTS
#export $JAVA_OPTS=-javaagent:./jmx_prometheus_javaagent-0.1.0.jar=9090:tomcat.yml

wget -O /opt/jmx_prometheus_javaagent-0.1.0.jar https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.1.0/jmx_prometheus_javaagent-0.1.0.jar

wget -O /opt/tomcat.yml https://raw.githubusercontent.com/OpsMx/restapp/master/prometheus/tomcat.yml

export JAVA_OPTS="$JAVA_OPTS -javaagent:./jmx_prometheus_javaagent-0.1.0.jar=9090:tomcat.yml"

#echo $JAVA_OPTS
#echo $TOMCAT_HOME

#echo '$JAVA_OPTS=-javaagent:./jmx_prometheus_javaagent-0.1.0.jar=9090:tomcat.yml' >> /usr/local/tomcat/bin/catalina.sh

while true; do
  sleep 1000
done
