FROM golang:1.20.5-bullseye
RUN mkdir /work
WORKDIR /work

RUN apt-get update && apt-get install -y git
COPY ./lib /work

# Substitute BIN for your bin directory.
# Substitute VERSION for the current released version.
RUN BIN="/usr/local/bin" && \
    VERSION="1.28.1" && \
    curl -sSL \
    "https://github.com/bufbuild/buf/releases/download/v${VERSION}/buf-$(uname -s)-$(uname -m)" \
    -o "${BIN}/buf" && \
    chmod +x "${BIN}/buf"


### connnect buf https://github.com/bufbuild/connect-go
RUN go mod tidy & \
  go install github.com/bufbuild/buf/cmd/buf@latest & \
  go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest & \
  go install google.golang.org/protobuf/cmd/protoc-gen-go@latest & \
  go install github.com/bufbuild/connect-go/cmd/protoc-gen-connect-go@latest

RUN export PATH="$(go env GOBIN):${PATH}" && export PATH="$(go env GOPATH)/bin:${PATH}"

RUN git clone https://github.com/grpc/grpc-dart.git /google && \
  cp -r /google/example/googleapis/lib/src/generated/google /work/api/google