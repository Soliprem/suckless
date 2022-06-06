#!/bin/sh
for i in */; do
	cd "$i" || return 1
	sudo make install
	cd ..
done
