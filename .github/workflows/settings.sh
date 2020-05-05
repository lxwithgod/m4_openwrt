#!/bin/sh
# THIS SCIPRT ONLY RUN ONCE. Base on /etc/firstboot_${board}

uci set luci.main.mediaurlbase="/luci-static/darkmatter"

uci batch <<EOF
set system.@system[0].hostname=NEO
set system.@system[0].zonename='Asia/Shanghai'
set system.@system[0].timezone='CST-8'
EOF
echo CST-8 > /etc/TZ

uci commit
