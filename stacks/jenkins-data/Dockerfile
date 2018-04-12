
FROM debian:jessie



# Create the jenkins user

RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins



# Create the folders and volume mount points

RUN mkdir -p /var/log/jenkins

RUN mkdir -p /var/jenkins_home

RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/jenkins_home

VOLUME ["/opt/jenkins_home", "/var/jenkins_home"]



USER jenkins

CMD ["echo", "Volumenes montados"]
