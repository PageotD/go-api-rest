https://dev.to/aurelievache/learning-go-by-examples-part-2-create-an-http-rest-api-server-in-go-1cdm

Install swagger
```bash
go install github.com/go-swagger/go-swagger/cmd/swagger@latest
```

Get YAML to HTML: https://raw.githubusercontent.com/yousan/swagger-yaml-to-html/master/swagger-yaml-to-html.py

Make
bin/go-api-rest
curl localhost:8080/healthz
curl localhost:8080/hello/PageotD
curl -O localhost:8080/gopher/dr-who