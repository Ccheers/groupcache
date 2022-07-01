API_PROTO_FILES=$(shell find ./api -name *.proto)

.PHONY: api
api:
	protoc --proto_path=. \
                   --go_out=paths=source_relative:. \
    			   --go-grpc_out=paths=source_relative:. \
                   $(API_PROTO_FILES)