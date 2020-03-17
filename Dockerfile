FROM golang:latest
ENV GOPATH /go
COPY . /go/src/app
WORKDIR /go/src/app
RUN go get -t -d -v ./...
CMD ["go", "test", "-v", "./..."]