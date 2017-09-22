all: build inspect

build:
	docker-compose build

inspect:
	docker image inspect case_1.image_a > inspect_a.json
	docker image inspect case_1.image_b > inspect_b.json
	docker image inspect case_1.image_c > inspect_c.json

clean:
	rm inspect_*.json

.PHONY: build all inspect clean
