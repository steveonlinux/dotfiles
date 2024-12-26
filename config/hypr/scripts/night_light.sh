#!/bin/bash

if [ "$(date +%H)" -ge 19 ] || [ "$(date +%H)" -le 6 ]; then
  hyprshade on blue-light-filter
fi
