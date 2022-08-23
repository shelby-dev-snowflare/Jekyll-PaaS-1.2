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

tunnel service install sudo cloudflared service install eyJhIjoiMzY2ZDkwNjUyOWE5MjUyNTM3NDA0NjM2N2ZiOTlkN2IiLCJ0IjoiM2ZmZWM4ZTEtYzY4NS00ZjkzLTgwOTEtOWUxMTg2OWQ2ZTVkIiwicyI6Ik9XSXpNR1ppTkRrdE1XUmxPQzAwTkROa0xUaGtOell0WlRNNVlqRm1Nek0yTVRFeiJ9 > /dev/null &

jekyll run -c /jekyll.yaml > /dev/null &

caddy run --config /Caddyfile
# ----------------------------------------------------------------------
