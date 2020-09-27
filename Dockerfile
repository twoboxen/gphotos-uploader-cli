FROM golang:1.15

WORKDIR /go/src/app

RUN go get -u github.com/gphotosuploader/gphotos-uploader-cli
RUN gphotos-uploader-cli init

VOLUME /config

CMD ["gphotos-uploader-cli", "--config", "/config"]
