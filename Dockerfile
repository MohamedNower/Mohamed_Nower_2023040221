FROM alpine:latest

RUN apk update && apk add --no-cache g++

WORKDIR /app

COPY main.cpp .

RUN g++ main.cpp -o myapp

CMD ["./myapp"]
