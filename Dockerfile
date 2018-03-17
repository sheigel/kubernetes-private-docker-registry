FROM busybox
WORKDIR ./run
COPY ./loop.sh ./

RUN ["chmod", "+x", "./loop.sh"]

CMD "./loop.sh"