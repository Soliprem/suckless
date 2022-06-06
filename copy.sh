#!/bin/bash
for i in */; do
	cd "$i" || exit 1
	cp config.h config.def.h
	cd ..
done
