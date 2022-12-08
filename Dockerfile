# syntax=docker/dockerfile:1

# syntax=docker/dockerfile:1

FROM golang:1.19

RUN mkdir /forum
WORKDIR /forum

# Download necessary Go modules
COPY go.mod ./
COPY go.sum ./

# download all packages in mod file
RUN go mod download

# upload the entire 'forum' application
ADD . /forum
RUN go mod tidy

# Dockerfile is in the 'mainForum' folder
RUN cd /forum

# Next build a static application binary named 'binaryForum'
RUN go build -o binaryForum

# The port that connects to docker daemon
EXPOSE 8080
LABEL version="1.0"
LABEL description="Project forum Created by Sonal, Nathan, Kingsley, Helena"

# Tell Docker to execute the 'binaryForum' command when this image is used to start a container.
ENTRYPOINT [ "/forum/binaryForum" ]



