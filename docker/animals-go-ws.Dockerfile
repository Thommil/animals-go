FROM golang:1.8

WORKDIR /go
ENV GOPATH /go

RUN go get -v github.com/thommil/animals-go-ws

CMD ["animals-go-ws"]