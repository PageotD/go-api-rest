.PHONY: build run swagger.gen swagger.validate swagger.doc

build:
	@echo "Building the app"
	GOFLAGS=-mod=mod go build -o bin/go-api-rest internal/main.go 

run:
	@echo "Running the app"
	GOFLAGS=-mod=mod go run internal/main.go

swagger.gen:
	@echo "Generating Go code"
	GOFLAGS=-mod=mod go generate github.com/PageotD/go-api-rest/internal github.com/PageotD/go-api-rest/pkg/swagger

swagger.validate:
	@echo "Validating swagger"
	${HOME}/go/bin/swagger validate pkg/swagger/swagger.yml

swagger.doc:
	@echo "Generating Swagger documentation"
	docker run -i yousan/swagger-yaml-to-html < pkg/swagger/swagger.yml > doc/index.html

clean:
	@echo "Cleaning up"
	rm -f bin/go-api-rest doc/index.html