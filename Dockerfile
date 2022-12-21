FROM golang:1.19

WORKDIR /usr/src/app
COPY . .
RUN go mod init sajin-hello-world
RUN go mod tidy
RUN go mod download
RUN go build -o app main.go
EXPOSE 8093
CMD /usr/src/app/app
