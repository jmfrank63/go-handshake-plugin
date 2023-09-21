FROM --platform=${BUILDPLATFORM:-linux/amd64} golang:1.19-buster AS builder

ARG TARGETPLATFORM TARGETOS TARGETARCH

# Copy your source code into the container
COPY . /app
WORKDIR /app

# Set up the environment for cross-compiling
ENV CGO_ENABLED=1
ENV GOOS=linux
ENV GOARCH=arm64
ENV GO111MODULE=on

# Run the build
RUN GOOS=$TARGETOS GOARCH=$TARGETARCH GOFLAGS="-buildvcs=false -trimpath" make build GOTAGS="openssl nofuse" IPFS_PLUGINS=$IPFS_PLUGINS
