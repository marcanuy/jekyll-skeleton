jekyll-skeleton
===============

Jekyll scaffolding to start new websites.

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [jekyll-skeleton](#jekyll-skeleton)
- [Design Philosophy](#design-philosophy)
- [Commands](#commands)
    - [Install](#install)
    - [Serve](#serve)
- [Adding posts](#adding-posts)
- [Plugins](#plugins)

<!-- markdown-toc end -->

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

