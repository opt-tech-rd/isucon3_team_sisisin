SUBDIR := webapp/go

all: build start

build:
	$(MAKE) -C ${SUBDIR}

start:
	cd "$(PWD)/${SUBDIR}" && ./torb
