FROM golang:latest

WORKDIR /go
ENV GOPATH /go

RUN go get -v github.com/thommil/animals-go-ws
RUN cp $GOPATH/src/github.com/thommil/animals-go-ws/config/animals-go-ws.json $GOPATH/bin

CMD ["animals-go-ws"]