#!/bin/bash

if [ "$(date +%H)" -ge 19 ]; then
  hyprshade on blue-light-filter
fi
