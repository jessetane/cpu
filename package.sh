#!/usr/bin/env bash
#
# package.sh for cpu
#

name() {
  echo "cpu"
}

version() {
  echo "0.0.4"
}

repository() {
  echo "https://github.com/jessetane/cpu"
}

dependencies() {
  echo "argue 0.0.5"
}

fetch() {
  git clone "$(repository)" "$src"
}

update() {
  git fetch --all
  git fetch --tags
}

build() {
  mkdir -p "$lib"/"$build"
  cd "$lib"/"$build"
  cp -R "$src"/.git ./
  git reset --hard "$version"
}
