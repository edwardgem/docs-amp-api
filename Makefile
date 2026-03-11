OPENAPI_SRC ?= /Users/edwardc/Projects/docs-backend-docgen/output/openapi.draft.yaml

.PHONY: sync build check

sync:
	./scripts/sync_openapi.sh "$(OPENAPI_SRC)"

build:
	./scripts/build_site.sh

check: build
	test -f openapi/v1.yaml
	echo "docs-amp-api check=ok"
