FROM artifactory-dev.jfrogbeta.com/docker-release/docker-framework:latest

MAINTAINER Mark Galpin markg@jfrog.com
LABEL producer="JFrog, Inc."
ADD war/*.war /home/exec/tomcat/webapps/swampup.war
RUN /bin/bash -c ls -al > /tmp/hi

CMD /bin/bash -c cd /home/exec; /home/exec/tomcat/bin/catalina.sh run
