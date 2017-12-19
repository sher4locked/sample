FROM tomcat:7

RUN wget -O /opt/jmx_prometheus_javaagent-0.1.0.jar https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.1.0/jmx_prometheus_javaagent-0.1.0.jar
RUN wget -O /opt/tomcat.yml https://raw.githubusercontent.com/OpsMx/restapp/master/prometheus/tomcat.yml

CMD ["echo $JAVA_OPTS"]
ENV [JAVA_OPTS=-javaagent:./jmx_prometheus_javaagent-0.1.0.jar=9090:tomcat.yml]
CMD ["echo $JAVA_OPTS"]

CMD ["catalina.sh", "stop"]
CMD ["sleep 100"]
CMD ["catalina.sh", "run"]
