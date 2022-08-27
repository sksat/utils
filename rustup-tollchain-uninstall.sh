#!/bin/bash

rustup toolchain list | grep "$1" | xargs -i rustup toolchain uninstall {}
