#!/bin/sh

git tag -d 1.0.0
git push origin :refs/tags/1.0.0
git tag 1.0.0
git push --tag
git tag

# keep version 1
