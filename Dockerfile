FROM alpine
ENV SHELL /bin/sh
WORKDIR /git
RUN apk update; apk add git inotify-tools rsync openssh-client
COPY entrypoint.sh /bin/entrypoint.sh
COPY doit.sh /bin/doit.sh
ENTRYPOINT /bin/entrypoint.sh

