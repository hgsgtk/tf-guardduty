.DEFAULT_GOAL := help
.PHONY: fmt tfsec tfsec.init help

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

fmt: ## format terraform code
	terraform fmt -recursive

tfsec.init:
	@if [ -z `which tfsec 2> /dev/null` ]; then \
		go get -u github.com/tfsec/tfsec/cmd/tfsec; \
	fi

tfsec: tfsec.init  ## check terraform security by tfsec
	tfsec .
