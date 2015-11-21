#!/bin/sh
BASH_FOLDER=$(cd $(dirname $0) && pwd)
ln -fs $BASH_FOLDER/bash_profile ~/.bash_profile
ln -fs $BASH_FOLDER/bashrc ~/.bashrc
ln -fs $BASH_FOLDER/bash_logout ~/.bash_logout
