.PHONY: native-deps
native-deps:
	brew bundle

.PHONY: gitbook-deps
gitbook-deps:
	cd gitbook-deps && yarn install && mkdir -p cache && GITBOOK_DIR=cache yarn run gitbook fetch 3.2

.PHONY: book-deps
book-deps:
	./scripts/gitbook.sh install

.PHONY: build
build:
	./scripts/gitbook.sh build

.PHONY: serve
serve:
	./scripts/gitbook.sh serve --open
