echo $JAVA_OPTS
export $JAVA_OPTS=-javaagent:./jmx_prometheus_javaagent-0.1.0.jar=9090:tomcat.yml
 echo $JAVA_OPTS
 echo $TOMCAT_HOME

$TOMCAT_HOME/bin/catalina.sh stop
sleep 100
$TOMCAT_HOME/bin/catalina.sh run
 
