all: build inspect

build:
	cd case_1; make build
	cd case_2; make build

inspect:
	cd case_1; make inspect
	cd case_2; make inspect
