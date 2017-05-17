#!/bin/sh

DIR=$(dirname "$0")

cd $DIR/..

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf _site
mkdir _site
git worktree prune
rm -rf .git/worktrees/_site/

echo "Checking out gh-pages branch into _site"
git worktree add -B gh-pages _site origin/gh-pages

echo "Removing existing files"
rm -rf _site/*

echo "Generating site"
bundle exec jekyll build

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"
