#!/bin/bash

update() {
	old_path=$PWD
	cd $1
	git checkout master
	git pull
	cd $old_path
}

git pull
git submodule sync --recursive

update Binaries
update Content
update Content/Maps
update Documentation
update Plugins
