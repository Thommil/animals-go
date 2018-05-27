FROM golang:latest

WORKDIR /go
ENV GOPATH /go

RUN mkdir -p $GOPATH/bin/config
RUN go get -v github.com/thommil/animals-go-ws
COPY config/animals-go-ws.json $GOPATH/bin/config

CMD ["animals-go-ws"]