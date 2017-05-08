jekyll-skeleton
===============

Jekyll scaffolding to start new websites.

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [jekyll-skeleton](#jekyll-skeleton)
- [Features](#features)
- [Design Philosophy](#design-philosophy)
- [Commands](#commands)
    - [Install](#install)
    - [Serve](#serve)
- [Adding posts](#adding-posts)
- [Plugins](#plugins)
- [Final structure](#final-structure)

<!-- markdown-toc end -->

# Features

- Automatically generates at each `build`:
  - <http://sitemaps.org> compliant sitemap 
  - [Atom](https://tools.ietf.org/html/rfc4287) feed at
    `/feed.xml`.
- [SASS](http://sass-lang.com/) and easy customization of Bootstrap 4
  variables.
- Automatically adds metadata tags for Search Engines and Social
  Networks
  - Page title, with site title or description appended
  - Page description
  - Canonical URL
  - Next and previous URLs on paginated pages
  - JSON-LD Site and post metadata for richer indexing
  - Open Graph title, description, site title, and URL (for Facebook, LinkedIn, etc.)
  - Twitter Summary Card metadata
	
# Design Philosophy

**jekyll-skeleton** has been built with the following principles in
mind:

- Integrates Bower to manage libraries, assets, and utilities.
- Bootstrap 4 integrated.
- Gem theme independent.
- Optimized for multilanguage.
- Follows `jekyll-seo-tag` usage suggestions to integrate author
  information.

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

# Adding posts

    ---
    title:       # jekyll-seo-tag - The title of the post, page, or document
    description: # jekyll-seo-tag - A short description of the page's content
    image:       # jekyll-seo-tag - URL to an image associated with the post, page, or document (e.g., /assets/page-pic.jpg)
    author:      # jekyll-seo-tag - Page-, post-, or document-specific author information (see below)
    lang:        # jekyll-seo-tag - Page-, post-, or document-specific language information
    ---

# Plugins

Included plugins:

- <https://github.com/toshimaru/jekyll-toc>  A liquid filter plugin
  for Jekyll which generates a table of contents.
- <https://github.com/jekyll/jekyll-sitemap> Jekyll plugin to silently
  generate a sitemaps.org compliant sitemap for your Jekyll site.
- <https://github.com/gjtorikian/html-proofer> Test your rendered HTML
  files to make sure they're accurate.
- <https://github.com/jekyll/jekyll-feed> A Jekyll plugin to generate
  an Atom (RSS-like) feed of your Jekyll posts

# Final structure


<kbd></kbd>

~~~

~~~

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
<span >$</span> <kbd>tree -L 2 _site/</kbd>
_site/
├── assets
│   └── main.css
├── bower_components
│   ├── bootstrap
│   ├── jquery
│   └── tether
├── bower.json
├── feed.xml
├── Gemfile
├── Gemfile.lock
├── index.html
├── LICENSE
├── README.md
├── robots.txt
└── sitemap.xml

5 directories, 10 files
</samp>
</pre>
