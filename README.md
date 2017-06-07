jekyll-skeleton
===============

[![Build Status](https://travis-ci.org/marcanuy/jekyll-skeleton.svg?branch=master)](https://travis-ci.org/marcanuy/jekyll-skeleton)

Jekyll scaffolding to start new websites. <https://marcanuy.github.io/jekyll-skeleton/>

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [jekyll-skeleton](#jekyll-skeleton)
- [Overview](#overview)
- [Features](#features)
- [Design Philosophy](#design-philosophy)
- [Commands](#commands)
    - [Install](#install)
    - [Serve](#serve)
- [Usage](#usage)
    - [Adding a new language](#adding-a-new-language)
    - [Adding posts](#adding-posts)
- [Plugins](#plugins)
- [Final structure](#final-structure)
- [Questions](#questions)
- [Screenshots](#screenshots)
    - [English homepage](#english-homepage)
    - [Spanish homepage](#spanish-homepage)
    - [German post](#german-post)

<!-- markdown-toc end -->

# Overview

This is a basic Jekyll site created with `jekyll new --blank` (without
themes, or example posts) to serve as a starting point for any
website.

Its purpose is to quickly start new websites cloning this repo and
customizing to your needs, having already all the features I was
adding and configuring every time I created a new Jekyll instance.

Live demo looks so "*minimalistic*" because it does not use any theme
and its only goal is to show the design of the website navigation and
how to add posts/categories.

Its structure uses the design described
in
[How To Add Bootstrap 4 To Jekyll The Right Way](https://simpleit.rocks/how-to-add-bootstrap-4-to-jekyll-the-right-way/),
[Multilingual Jekyll Without Plugins](https://simpleit.rocks/multilingual-jekyll-without-plugins/) and
[How To Implement Breadcrumbs On A Jekyll Site With Nested Categories](https://simpleit.rocks/how-to-create-breadcrumbs-with-hierarchical-categories-in-jekyll/)
articles
applied on a blank Jekyll instance with the suggestions provided by
the plugins below.

Just clone this repo and start building yours.

	git clone git@github.com:marcanuy/jekyll-skeleton.git

# Features

- Automatically generates at each <kbd>jekyll build</kbd>:
  - <http://sitemaps.org> compliant sitemap at `/sitemap.xml`
  - [Atom](https://tools.ietf.org/html/rfc4287) feed at
    `/feed.xml`.
- [SASS](http://sass-lang.com/) and easy customization of Bootstrap 4
  variables in `/assets/main.scss` and `/_sass/_variables.scss`.
- Automatically adds metadata tags for Search Engines and Social
  Networks
  - Page title, with site title or description appended
	
		<head>
		   <title>...</title>
		</head>
	
  - Page description
	  
		<head>
			<meta name="description" content="..."/>
		</head>
		
  - Canonical URL
  
		<link rel="canonical" href="..."/>
  
  - Next and previous URLs on paginated pages
  - JSON-LD Site and post metadata for richer indexing
  
		<meta property="fb:app_id" content="1822851531277021"/>
		<script type="application/ld+json">
		{"@context": "http://schema.org",
		"@type": "WebPage",
		"headline": "...",
		"description": "...",
		"url": "..."}</script>
		
  - Open Graph title, description, site title, and URL (for Facebook,
    LinkedIn, etc.)
	
		<meta property="og:title" content="..."/>
		<meta name="description" content="..."/>
		<meta property="og:description" content="..."/>
		<meta property="og:url" content="..."/>
		<meta property="og:site_name" content="..."/>
		<meta property="og:type" content="..."/>
		<meta property="article:published_time" content="..."/>
		<meta property="fb:app_id" content="..."/>
	
  - Twitter Summary Card metadata

		<meta name="twitter:card" content="summary"/>
		<meta name="twitter:site" content="..."/>
		<meta name="twitter:creator" content="..."/>
		
  - Multilanguage
	- Language navigation menu for each page to all the other
      translation versions
		
	    	<a hreflang="es" href="http://example.com/es/foobar" />
		    <a hreflang="de" href="http://example.com/de/foobar" />
			<a hreflang="en" href="http://example.com/en/foobar" />
			
	- [Alternate link elements](https://www.w3.org/TR/html5/links.html#rel-alternate) in the `head` section of HTML
	
			<link rel="alternate" hreflang="es" href="http://example.com/es" />
			<link rel="alternate" hreflang="de" href="http://example.com/de" />
			<link rel="alternate" hreflang="en" href="http://example.com/en" />

- Redirects from default language subfolder to site homepage (`/en` -> `/`)
- [Breadcrumbs](https://www.w3.org/TR/html5/common-idioms.html#rel-up) for pages and posts
        
            <!-- url: /jekyll-skeleton/en/example-post -->
            <ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/jekyll-skeleton/"><i class="fa fa-home" aria-hidden="true"></i></a></li>
				<li class="breadcrumb-item ">
				<a href="/jekyll-skeleton/en">en</a> 
				</li>
				<li class="breadcrumb-item active">
				Example Post
				</li>
			</ol>

# Design Philosophy

**jekyll-skeleton** has been built with the following principles in
mind:

- Uses [Yarn](https://github.com/yarnpkg/yarn) to manage libraries, assets, and utilities.
  - Bootstrap 4.
  - Font Awesome.
- Gem theme independent.
- Optimized for multilanguage.
- Follows `jekyll-seo-tag` usage suggestions.

# Commands

## Install

~~~ bash
git clone https://github.com/marcanuy/jekyll-skeleton
cd jekyll-seleton
make install
~~~

## Serve

~~~ bash
make serve
~~~

# Usage

## Adding a new language

Add the language to `_config.yml`:

	defaults:
	  #languages
	  -
		scope:
		  path: ""
		values:
		  lang: "en"
		  layout: default
	  -
		scope:
		  path: "es"
		values:
		  lang: "es"

Its name to `_data/locales.yml` and an equivalent to each page in the
language in `/_data/map.yml`:

	-
	  en: index.html
	  es: es/index.html
	-
	  en: about.html
	  es: es/acerca.html

## Adding posts

Add a post in each language located in the language subdirectory:
`/en`, `es`, etc.

The following properties in posts front-matter are used:

    ---
    title:       # jekyll-seo-tag - The title of the post, page, or document
    description: # jekyll-seo-tag - A short description of the page's content
    image:       # jekyll-seo-tag - URL to an image associated with the post, page, or document (e.g., /assets/page-pic.jpg)
    author:      # jekyll-seo-tag - Page-, post-, or document-specific author information (see below)
    lang:        # jekyll-seo-tag - Page-, post-, or document-specific language information
    ---

# Plugins

*Jekyll-skeleton* uses the following plugins:

- <https://github.com/toshimaru/jekyll-toc>  A liquid filter plugin
  for Jekyll which generates a table of contents.
- <https://github.com/jekyll/jekyll-sitemap> Jekyll plugin to silently
  generate a sitemaps.org compliant sitemap for your Jekyll site.
- <https://github.com/gjtorikian/html-proofer> Test your rendered HTML
  files to make sure they're accurate.
- <https://github.com/jekyll/jekyll-feed> A Jekyll plugin to generate
  an Atom (RSS-like) feed of your Jekyll posts
- <https://github.com/jekyll/jekyll-redirect-from> Specify multiple
  redirections URLs for pages and posts.

If you want to host a site derived from this repo in Github, you can
follow this guide: [Automated Deployment Of Jekyll Websites To Github Pages With A Git Push To Github ](https://simpleit.rocks/automated-deployment-of-jekyll-websites-to-github-pages-with-a-git-push-to-github/).

# Final structure

<pre>
<samp>
<span >$</span> <kbd>make build</kbd>
rm -fr _site/
rm -fr assets/vendor/ #from yarn
rm -fr assets/fonts #fontawesome dependency
rm -fr .sass_cache
bundle install --path vendor/bundler
Warning: the running version of Bundler (1.13.6) is older than the version that created the lockfile (1.15.0). We suggest you upgrade to the latest version of Bundler by running `gem install bundler`.
Using concurrent-ruby 1.0.5
Using i18n 0.8.1
Using minitest 5.10.2
Using thread_safe 0.3.6
Using public_suffix 2.0.5
Using colorator 1.1.0
Using colored 1.2
Using ffi 1.9.18
Using forwardable-extended 2.6.0
Using mercenary 0.3.6
Using mini_portile2 2.1.0
Using parallel 1.11.2
Using yell 2.0.7
Using sass 3.4.24
Using rb-fsevent 0.9.8
Using kramdown 1.13.2
Using liquid 3.0.6
Using rouge 1.11.1
Using safe_yaml 1.0.4
Using bundler 1.13.6
Using tzinfo 1.2.3
Using addressable 2.5.1
Using ethon 0.10.1
Using rb-inotify 0.9.8
Using pathutil 0.14.0
Using nokogiri 1.7.2
Using jekyll-sass-converter 1.5.0
Using activesupport 5.1.1
Using typhoeus 0.8.0
Using listen 3.0.8
Using jekyll-toc 0.2.1
Using html-proofer 3.7.2
Using jekyll-watch 1.5.0
Using jekyll 3.4.3
Using jekyll-feed 0.9.2
Using jekyll-redirect-from 0.12.1
Using jekyll-seo-tag 2.2.3
Using jekyll-sitemap 1.1.1
Bundle complete! 7 Gemfile dependencies, 38 gems now installed.
Bundled gems are installed into ./vendor/bundler.
yarn install
yarn install v0.24.5
[1/4] Resolving packages...
success Already up-to-date.
Done in 0.38s.
mkdir -p assets/vendor/
cp node_modules/font-awesome/css/font-awesome.min.css assets/vendor/
cp -r node_modules/font-awesome/fonts assets
cp node_modules/jquery/dist/jquery.min.js assets/vendor/
cp node_modules/tether/dist/js/tether.min.js assets/vendor/
cp node_modules/bootstrap/dist/js/bootstrap.min.js assets/vendor/
bundle exec jekyll build
Configuration file: /tmp/jekyll-skeleton/_config.yml
            Source: /tmp/jekyll-skeleton
       Destination: /tmp/jekyll-skeleton/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
                    done in 5.474 seconds.
 Auto-regeneration: disabled. Use --watch to enable.

<span >$</span> <kbd>tree -L 3 _site/</kbd>
_site/
├── assets
│   ├── fonts
│   │   ├── FontAwesome.otf
│   │   ├── fontawesome-webfont.eot
│   │   ├── fontawesome-webfont.svg
│   │   ├── fontawesome-webfont.ttf
│   │   ├── fontawesome-webfont.woff
│   │   └── fontawesome-webfont.woff2
│   ├── main.css
│   └── vendor
│       ├── bootstrap.min.js
│       ├── font-awesome.min.css
│       ├── jquery.min.js
│       └── tether.min.js
├── de
│   ├── beispiel-post.html
│   ├── index.html
│   └── unterkategorie1
│       ├── index.html
│       └── post-in-unterkategorie.html
├── deploy_key.enc
├── en
│   ├── example-post.html
│   ├── index.html
│   └── subcategory1
│       ├── index.html
│       └── post-in-subdirectory.html
├── es
│   ├── index.html
│   ├── post-ejemplo.html
│   └── subcategoria1
│       ├── index.html
│       └── post-en-subdirectorio.html
├── feed.xml
├── index.html
├── LICENSE
├── package.json
├── README.md
├── robots.txt
├── sitemap.xml
└── yarn.lock

9 directories, 32 files

<span >$</span> <kbd>make check</kbd>
bundle exec jekyll doctor
Configuration file: /tmp/jekyll-skeleton/_config.yml
  Your test results are in. Everything looks fine.
bundle exec htmlproofer --check-html \
	--http-status-ignore 999 \
	--internal-domains marcanuy.github.io,localhost:4000 \
	--assume-extension \
	_site
Running ["ScriptCheck", "LinkCheck", "HtmlCheck", "ImageCheck"] on ["_site"] on *.html... 


Checking 14 external links...
Ran on 13 files!


HTML-Proofer finished successfully.

</samp>
</pre>

# Questions

Feel free to open issues and/or contributing!

# Screenshots

## English homepage

![English](http://imgur.com/fIi9WUcl.png) 

## Spanish homepage

![Spanish](http://imgur.com/d670IESl.png ) 

## German post

![Deutsch](http://imgur.com/kPQPuuhl.png ) 
