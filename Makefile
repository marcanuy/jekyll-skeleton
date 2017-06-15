SHELL := /bin/bash # needed for prettyurls
BUNDLE := bundle
YARN := yarn
ASSETS_DIR = assets
VENDOR_DIR = $(ASSETS_DIR)/vendor/
JEKYLL := $(BUNDLE) exec jekyll
HTMLPROOF := $(BUNDLE) exec htmlproofer
DOMAIN = marcanuy.github.io
PROJECT_DEPS := Gemfile package.json

.PHONY: all clean install update

all : serve

check:
	$(JEKYLL) doctor
	$(HTMLPROOF) --check-html \
		--http-status-ignore 999 \
		--internal-domains $(DOMAIN),localhost:4000 \
		--assume-extension \
		_site

install: $(PROJECT_DEPS)
	$(BUNDLE) install --path vendor/bundler
	$(YARN) install

update: $(PROJECT_DEPS)
	$(BUNDLE) update
	$(YARN) upgrade

include-yarn-deps:
	mkdir -p $(VENDOR_DIR)
	cp node_modules/font-awesome/css/font-awesome.min.css $(VENDOR_DIR)
	cp -r node_modules/font-awesome/fonts $(ASSETS_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(VENDOR_DIR)
	cp node_modules/tether/dist/js/tether.min.js $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(VENDOR_DIR)

build: clean install include-yarn-deps
	$(JEKYLL) build

serve: clean install include-yarn-deps
	JEKYLL_ENV=production $(JEKYLL) serve
clean:
	rm -fr _site/
	rm -fr $(VENDOR_DIR) #from yarn
	rm -fr $(ASSETS_DIR)/fonts #fontawesome dependency
	rm -fr .sass_cache
