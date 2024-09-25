# base the image on official golang image
FROM golang:1.22.5 as base

# set the workdir
WORKDIR /app

# copy and download dependencies
COPY go.mod .
RUN go mod download

# copy the application source
COPY . .

# build the appliation
RUN go build -o main .

# execution stage
FROM gcr.io/distroless/base

# copy the built binary and the static folder
COPY --from=base /app/main .
COPY --from=base /app/static ./static

# expose port 8080
EXPOSE 8080

# execute the application command
CMD [ "./main" ]