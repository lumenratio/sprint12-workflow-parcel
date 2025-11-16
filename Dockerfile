FROM golang:1.24

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /parcel ./...

CMD ["/parcel"]