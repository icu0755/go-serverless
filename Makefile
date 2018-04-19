build: deps
	make recompile

recompile:
	env GOOS=linux go build -o main main.go

deps:
	go get github.com/aws/aws-lambda-go/lambda
	go get github.com/aws/aws-lambda-go/events

start-local:
	sam local start-api
