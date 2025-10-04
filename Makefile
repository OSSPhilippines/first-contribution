# Simple cross-platform builds for the Go static server

BINARY := first-contribution
DIST := dist

.DEFAULT_GOAL := build

.PHONY: build release clean run mod ensure-dist build-os-arch

ensure-dist:
	@mkdir -p $(DIST)

# Initialize go.mod if missing, then tidy deps
mod:
	@if [ ! -f go.mod ]; then \
		echo "Initializing go.mod (module: example.com/first-contribution)"; \
		go mod init example.com/first-contribution; \
	fi
	@go mod tidy

# Build for host platform
build: mod ensure-dist
	@echo "Building host binary..."
	@go build -o $(DIST)/$(BINARY) .
	@echo "OK -> $(DIST)/$(BINARY)"

# Build all target OS/ARCH combos
release: mod ensure-dist
	@$(MAKE) build-os-arch OS=linux ARCH=amd64
	@$(MAKE) build-os-arch OS=linux ARCH=arm64
	@$(MAKE) build-os-arch OS=windows ARCH=amd64
	@$(MAKE) build-os-arch OS=windows ARCH=arm64
	@$(MAKE) build-os-arch OS=darwin ARCH=amd64
	@$(MAKE) build-os-arch OS=darwin ARCH=arm64
	@echo "All artifacts are in $(DIST)/"

# Internal: build one OS/ARCH pair
build-os-arch:
	@echo "=> $(OS)/$(ARCH)"
	@GOOS=$(OS) GOARCH=$(ARCH) go build -o $(DIST)/$(BINARY)_$(OS)_$(ARCH)$$( [ "$(OS)" = windows ] && echo ".exe" ) .

# Run locally
run: mod
	@go run .

# Remove build artifacts
clean:
	@rm -rf $(DIST)
	@echo "Cleaned $(DIST)/"
