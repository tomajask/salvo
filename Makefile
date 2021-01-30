IMAGE_NAME = salvo

build:
	docker build -t salvo .

help: build
	docker run --rm -it salvo salvo --help
	

run: build
	docker run --rm -it salvo salvo $(ARGS)
