#!/usr/bin/env bash

# Script which lists deliberately installed apps
# Source: https://askubuntu.com/a/492343

comm -23 <(apt-mark showmanual | sort -u) \
    <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
