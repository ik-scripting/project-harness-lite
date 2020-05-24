.SILENT:
export OS ?= $(shell uname -s | tr '[:upper:]' '[:lower:]')
export PROJECT_HARNESS_PATH ?= $(shell 'pwd')
export SELF ?= $(MAKE)
export PROJECT_HARNESS_OS ?= $(OS)
export PROJECT_HARNESS_ARCH ?= $(shell uname -m | sed 's/x86_64/amd64/g')

ifeq ($(CURDIR),$(realpath $(PROJECT_HARNESS_PATH)))
# Only execute this section if we're actually in the `build-harness` project itself
# List of targets the `readme` target should call before generating the readme
endif

# Import Makefiles into current context
include $(PROJECT_HARNESS_PATH)/Makefile.*
include $(PROJECT_HARNESS_PATH)/modules/*/Makefile*
ifneq ($(wildcard $(PROJECT_HARNESS_EXTENSIONS_PATH)/modules/*/Makefile*),)
-include $(PROJECT_HARNESS_EXTENSIONS_PATH)/modules/*/Makefile*
endif
