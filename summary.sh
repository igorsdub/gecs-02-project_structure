#!/usr/bin/bash

head -n 17 $1 | tail -n 8 | grep Title
head -n 17 $1 | tail -n 8 | grep Author
head -n 17 $1 | tail -n 8 | grep Language
head -n 17 $1 | tail -n 8 | grep Release
