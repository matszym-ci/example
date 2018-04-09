FROM jenkins/jenkins:lts

RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN rm get-docker.sh
