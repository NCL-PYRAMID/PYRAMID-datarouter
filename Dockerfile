FROM ubuntu:20.04

# Set an env variable so application knows it's in a docker container
ENV APP_PLATFORM="docker"

WORKDIR /mvdir
COPY run.sh .

#RUN ["apt", "update"]
#RUN ["apt", "install", "wbritish", "-y"]

CMD ["/bin/bash", "run.sh"]
