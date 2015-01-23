# Bunde up CSS with dependencies.
build: node_modules
	@./node_modules/.bin/duo index.css

# Install dependencies from npm.
node_modules: package.json
	@npm install

# Clean non-checked-in files.
clean:
	@rm -rf node_modules

# Phony targets.
.PHONY: build clean
