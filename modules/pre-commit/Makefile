## Install pre-commit (only supported for MacOS and Linux)
pre-commit/install:
	ifeq ($(PROJECT_HARNESS_OS),$(filter $(PROJECT_HARNESS_OS),darwin Darwin Linux))
		ifeq (, $(shell which pre-commit))
			$(error "No 'pre-commit' installed, consider installing it > https://pre-commit.com/")
		endif
		@echo "install dependencies"
		@env
		@bin/pre-commit.sh
	else
		echo "platfrom $(PROJECT_HARNESS_OS) not supported to release from"
		exit -1
	endif

## Validate project
pre-commit/validate:
ifeq ($(PROJECT_HARNESS_OS),$(filter $(PROJECT_HARNESS_OS),darwin Darwin Linux))
	@echo "install dependencies"
	@env
	@bin/pre-commit.sh
else
	echo "platfrom $(PROJECT_HARNESS_OS) not supported to release from"
	exit -1
endif
	@echo "Project Validate"
