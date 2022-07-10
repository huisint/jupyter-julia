IMAGE := $(or $(IMAGE), jupyter-julia)
NAME := $(or $(NAME), huisint)
BUILD_DATE := $(shell date "+%Y%m%d")
VERSION := $(or $(VERSION), $(shell cat version.txt))
TAG_VERSION := $(VERSION)-$(BUILD_DATE)
BUILD_ARGS := $(or $(BUILD_ARGS), $(shell echo "--platform linux/amd64"))
MAJOR := $(word 1,$(subst ., ,$(VERSION)))
MINOR := $(word 2,$(subst ., ,$(VERSION)))


build:
	docker build -t $(NAME)/$(IMAGE) docker

buildx: 
	docker login
	docker buildx build $(BUILD_ARGS) --push \
		-t $(NAME)/$(IMAGE):latest \
		-t $(NAME)/$(IMAGE):${TAG_VERSION} \
		-t $(NAME)/$(IMAGE):${VERSION} \
		-t $(NAME)/$(IMAGE):$(MAJOR) \
		-t $(NAME)/$(IMAGE):$(MAJOR).$(MINOR) \
		docker
