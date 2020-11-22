GOCMD=go
GOMOD=${GOCMD} mod
GOTEST=${GOCMD} test
PACKAGE=github.com/dkanomad/pokeapi-go

all: deps test

deps: tidy vend

test:
	${GOTEST} -v ./...

test-client:
	${GOTEST} -v ./.

tidy:
	${GOMOD} tidy -v

vend:
	${GOMOD} vendor -v
