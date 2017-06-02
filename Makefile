SHELL := /bin/bash # needed for prettyurls
BUNDLE := bundle
BOWER := bower
VENDOR_DIR = assets/vendor/
JEKYLL := $(BUNDLE) exec jekyll
HTMLPROOF := $(BUNDLE) exec htmlproofer

PROJECT_DEPS := Gemfile bower.json

.PHONY: all clean install update

all : serve

check:
	$(JEKYLL) doctor
	$(HTMLPROOF) --check-html \
		--http-status-ignore 999 \
		--internal-domains localhost:4000 \
		--assume-extension \
		_site

install: $(PROJECT_DEPS)
	$(BUNDLE) install --path vendor/bundler
	$(BOWER) install

update: $(PROJECT_DEPS)
	$(BUNDLE) update
	$(BOWER) update

include-bower-deps:
	mkdir -p $(VENDOR_DIR)
	cp bower_components/font-awesome/css/font-awesome.min.css $(VENDOR_DIR)
	cp -r bower_components/font-awesome/fonts $(VENDOR_DIR)
	cp bower_components/jquery/dist/jquery.min.js $(VENDOR_DIR)
	cp bower_components/tether/dist/js/tether.min.js $(VENDOR_DIR)
	cp bower_components/bootstrap/dist/js/bootstrap.min.js $(VENDOR_DIR)

build: install include-bower-deps
	$(JEKYLL) build

serve: install include-bower-deps
	JEKYLL_ENV=production $(JEKYLL) serve
