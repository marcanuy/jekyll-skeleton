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

Its structure is influenced
by
[How To Add Bootstrap 4 To Jekyll The Right Way](https://simpleit.rocks/how-to-add-bootstrap-4-to-jekyll-the-right-way/) and
[Multilingual Jekyll Without Plugins](https://simpleit.rocks/multilingual-jekyll-without-plugins/) articles
applied
on a blank Jekyll instance with the suggestions provided by the plugins below.

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
			
	- Alternate link elements in the `head` section of HTML
	
			<link rel="alternate" hreflang="es" href="http://example.com/es" />
			<link rel="alternate" hreflang="de" href="http://example.com/de" />
			<link rel="alternate" hreflang="en" href="http://example.com/en" />

# Design Philosophy

**jekyll-skeleton** has been built with the following principles in
mind:

- Integrates Bower to manage libraries, assets, and utilities.
- Bootstrap 4 integrated.
- Gem theme independent.
- Optimized for multilanguage.
- Follows `jekyll-seo-tag` usage suggestions.

# Commands

## Install

~~~ bash
git clone https://github.com/marcanuy/jekyll-skeleton
cd jekyll-seleton
bower install
bundle install --path=vendor/bundle
~~~

## Serve

~~~ bash
bundle exec jekyll serve
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

If you want to host a site derived from this repo in Github, you can
follow this guide: [Automated Deployment Of Jekyll Websites To Github Pages With A Git Push To Github ](https://simpleit.rocks/automated-deployment-of-jekyll-websites-to-github-pages-with-a-git-push-to-github/).

# Final structure

<pre>
<samp>
<span >$</span> <kbd>bundle exec jekyll build</kbd>
Configuration file: /tmp/jekyll-skeleton/_config.yml
            Source: /tmp/jekyll-skeleton
       Destination: /tmp/jekyll-skeleton/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
                    done in 3.897 seconds.
 Auto-regeneration: disabled. Use --watch to enable.
<span >$</span> <kbd>tree -L 3 _site/</kbd>*
_site/
├── assets
│   └── main.css
├── bower_components
│   ├── bootstrap
│   ├── jquery
│   └── tether
├── bower.json
├── de
│   ├── beispiel-post.html
│   ├── index.html
│   └── unterkategorie1
│       ├── index.html
│       └── post-in-unterkategorie.html
├── deploy_key.enc
├── en
│   ├── example-post.html
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
├── Gemfile
├── Gemfile.lock
├── index.html
├── LICENSE
├── README.md
├── robots.txt
└── sitemap.xml

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
