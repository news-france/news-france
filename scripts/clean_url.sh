#!/bin/bash

REDIRECTED_URL=$(curl -w "%{url_effective}\n" -I -L -s -S $1 -o /dev/null)
CLEAN_URL=https://private-reader.nogafam.fr/${REDIRECTED_URL}
echo $CLEAN_URL