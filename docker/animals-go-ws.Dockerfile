FROM golang:latest

WORKDIR /go
ENV GOPATH /go

RUN mkdir -p $GOPATH/bin/config
RUN go get -v github.com/thommil/animals-go-ws

#Change IN location below to set specific configuration file
ADD https://raw.githubusercontent.com/thommil/animals-go/master/config/animals-go-ws.json $GOPATH/bin/config

CMD ["animals-go-ws"]