FROM tomcat:7

RUN wget -O /opt/jmx_prometheus_javaagent-0.1.0.jar https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.1.0/jmx_prometheus_javaagent-0.1.0.jar
RUN wget -O /opt/tomcat.yml https://raw.githubusercontent.com/OpsMx/restapp/master/prometheus/tomcat.yml

COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
