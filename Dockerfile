FROM golang:1.24.4

WORKDIR /app

COPY . .

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o my_app

CMD ["my_app"] 