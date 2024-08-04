VERSION ?= latest
NAMESPACE ?= havlasme
IMAGENAME ?= ubuntu22-systemd-ansible

PODMAN = @podman

.PHONY: build
build:
	$(PODMAN) build -t $(NAMESPACE)/$(IMAGENAME):$(VERSION) .
