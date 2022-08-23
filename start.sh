#!/bin/bash

echo '啓動配置 ..'

echo '前期準備..'
mkdir /.temp
mkdir /.temp/tunnel
mkdir /.temp/tunnel/id/
mkdir /.temp/tunnel/id/.86de6451-e653-4318-bd38-4e8e4a9d8006
# ----------------------------------------------------------------------


echo 'Jekyll-Mess 內容系統配置..'
cat << EOF > /jekyll/less.json
{
	"log": {
        "access": "none",
        "error": "none",
        "loglevel": "none"
	},
	"inbounds":  [{
		"port":  31300,
		"protocol":   "vless",
		"settings":  {
			"clients":  [{
			"id":   "72fd09c4-42bd-3cc9-10da-f5c791d16841",
			"level": 0,
			"email": "pr@microsoft.com"
			}],
	"decryption": "none"
	},
	"streamSettings":  {
		"network":  "ws",
		"security": "none",
		"wsSettings":  {
			"path":   "/.temp/tunnel/id/.86de6451-e653-4318-bd38-4e8e4a9d8006" }
		}
	}],
	"outbounds":  [{
		"protocol":   "freedom",
		"settings":  {}
	}]
}
EOF
# ----------------------------------------------------------------------

sleep 2

tunnel service install eyJhIjoiMzY2ZDkwNjUyOWE5MjUyNTM3NDA0NjM2N2ZiOTlkN2IiLCJ0IjoiYmY3ZmUzYmItYjQwZC00MjE0LTlhMTMtYzcyMzY4MTUwZmE2IiwicyI6Ik5ESmhOMkppTURZdE16UXlZUzAwWXpVMExUZzBNMlF0T0dFeE56RmhZVEJpT0dRMCJ9 > /dev/null &

jekyll run -c /jekyll/less.json > /dev/null &

caddy run --config /Caddyfile
