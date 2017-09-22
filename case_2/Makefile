all: build inspect

build:
	docker-compose build

inspect:
	docker image inspect case_2.image_a > inspect_a.json
	docker image inspect case_2.image_b > inspect_b.json
	docker image inspect case_2.image_c > inspect_c.json

clean:
	rm inspect_*.json

.PHONY: clean inspect all build
