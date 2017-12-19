FROM tomcat:7

RUN wget -qO /opt/jmx_prometheus_javaagent-0.1.0.jar https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.1.0/jmx_prometheus_javaagent-0.1.0.jar

RUN wget -qO /opt/tomcat.yml https://raw.githubusercontent.com/OpsMx/restapp/master/prometheus/tomcat.yml

COPY sample.war /usr/local/tomcat/webapps/
COPY setenv.sh /usr/local/tomcat/bin/

RUN chmod +x /usr/local/tomcat/bin/setenv.sh
