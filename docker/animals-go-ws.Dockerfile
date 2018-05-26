FROM golang:1.8

WORKDIR /go
ENV GOPATH /go

RUN go get -v github.com/thommil/animals-go-ws
RUN cp /go/src/github.com/thommil/animals-go-ws/config/animals-go-ws.json /go/bin

CMD ["animals-go-ws"]