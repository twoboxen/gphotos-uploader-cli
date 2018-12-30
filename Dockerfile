FROM golang:1.9

WORKDIR /go/src/app

RUN go get -u github.com/nmrshll/gphotos-uploader-cli
RUN go install -v github.com/nmrshll/gphotos-uploader-cli

CMD ["app"]
