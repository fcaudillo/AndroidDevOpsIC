FROM jenkinsci/jenkins:2.112-alpine

USER root

RUN mkdir /var/log/jenkins

RUN mkdir /var/cache/jenkins

RUN chown -R jenkins:jenkins /var/log/jenkins

RUN chown -R jenkins:jenkins /var/cache/jenkins

RUN apk update

RUN apk add docker

USER jenkins

ENV DOCKER_HOST="tcp://192.168.2.12:2375"

ENV JAVA_OPTS="-Xmx2192m"
