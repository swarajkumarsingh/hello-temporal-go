start_worker:
	cd worker
	go run main.go

start_starter:
	cd starter
	go run main.go

install:
	go mod tidy