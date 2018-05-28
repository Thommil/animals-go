FROM golang:latest

WORKDIR /go
ENV GOPATH /go

RUN mkdir -p $GOPATH/bin/config
RUN go get -v github.com/thommil/animals-go-auth

#Change IN location below to set specific configuration file from local filesystem
COPY config/animals-go-auth.json $GOPATH/bin/config
#OR
#Change IN location below to set specific configuration file from an URL
#ADD https://raw.githubusercontent.com/thommil/animals-go/master/config/animals-go-auth.json $GOPATH/bin/config

CMD ["animals-go-auth"]