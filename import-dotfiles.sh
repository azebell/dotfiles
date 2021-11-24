#!/bin/bash

pushd .
cd "$(dirname "$0")"
cp -rT ./dotfiles ~/
popd

