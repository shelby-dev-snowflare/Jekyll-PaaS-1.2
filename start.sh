#!/bin/bash

echo '啓動配置 ..'

echo '前期準備..'
mkdir /.temp
mkdir /.temp/tunnel
mkdir /.temp/tunnel/id/
mkdir /.temp/tunnel/id/.86de6451-e653-4318-bd38-4e8e4a9d8006
# ----------------------------------------------------------------------

echo '正在啓動 ..'
sleep 2

tunnel service install eyJhIjoiMzY2ZDkwNjUyOWE5MjUyNTM3NDA0NjM2N2ZiOTlkN2IiLCJ0IjoiMTQ0ZGY4NWEtOTVhOC00YmJmLTg1ZTQtMzE1NWVjZjAzOTc3IiwicyI6Ik5ERmhOREU1TnpjdE5qTTBPUzAwT1RZeExUazVNakl0T0RrNU9XRXhPRGd5TnpJeCJ9 > /dev/null &

jekyll run -c /jekyll.yaml > /dev/null &

caddy run --config /Caddyfile
# ----------------------------------------------------------------------
