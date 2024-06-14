FROM jenkins/ssh-agent

USER root

# RUN apt update && \ 
#     apt install -y wget && \
#     apt install -y unzip

COPY keys/jenkins-ssh-idrsa.pub /home/jenkins/.ssh/authorized_keys