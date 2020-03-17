FROM golang:latest
ENV GOPATH /go
COPY . /go/src/app
RUN go get -u -t -d -v ./...

RUN go get -u -t -d -v go.undefinedlabs.com/scopeagent
WORKDIR $GOPATH/src/go.undefinedlabs.com/scopeagent
RUN git checkout no-module-package-name

WORKDIR $GOPATH/src/app
CMD ["go", "test", "-v", "./..."]
