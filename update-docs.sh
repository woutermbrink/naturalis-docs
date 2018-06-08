#!/bin/bash

function updatedocs {
    git checkout --quiet $1
    if [[ $1 == 'master' ]]; then
        version=latest
    else
        version=$1
    fi
    echo 'Updating docs.museum.naturalis.nl/'$version
    sed -e '/baseURL/s/$/\/'$version'/g' config.yaml > config-$version.yaml
    hugo --quiet -D --config config-$version.yaml -s ./
    sudo mkdir -p /var/www/docs.museum.naturalis.nl/$version
    sudo rsync -ah --delete ./public/ /var/www/docs.museum.naturalis.nl/$version
}

echo 'Start updating docs.museum.naturalis.nl'
buildjob=hugo-build-$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 6 | head -n 1)
git clone --quiet https://github.com/MakeExpose/naturalis-docs /tmp/$buildjob
cd /tmp/$buildjob
git checkout --quiet master
git submodule update --init --quiet
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `;
do
    git branch --quiet --track ${branch#remotes/origin/} $branch
done
# Loop over branches and tags
for c in `git branch --list | sed -e 's/* //g' -e 's/  //g'`;
do
    updatedocs $c
done
for c in `git tag`;
do
    updatedocs $c
done
echo 'Done!'
