FROM golang:latest

RUN mkdir /app

COPY . /app

WORKDIR /app

CMD go run main.go
