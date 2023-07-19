FROM golang

WORKDIR /code

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main .

CMD [ "/code/main" ]