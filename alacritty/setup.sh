#!/bin/bash -e

cd $(dirname $BASH_SOURCE)

DIR=~/.config/alacritty

. ../lib/setup-base.sh

link_files_in . -t $DIR