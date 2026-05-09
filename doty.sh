#!/bin/sh

rm -f /etc/config/qmodem_ttl
rm -f /etc/init.d/qmodem_ttl
rm -f /usr/lib/lua/luci/model/cbi/qmodem/modem_ttl.lua
rm -f /etc/nftables.d/*.nft

mkdir -p /usr/lib/lua/luci/model/cbi/qmodem
mkdir -p /etc/nftables.d

wget -q -O /etc/config/qmodem_ttl https://raw.githubusercontent.com/dotywrt/ttl64-qm/main/etc/config/qmodem_ttl

wget -q -O /etc/init.d/qmodem_ttl https://raw.githubusercontent.com/dotywrt/ttl64-qm/main/etc/init.d/qmodem_ttl

wget -q -O /usr/lib/lua/luci/model/cbi/qmodem/modem_ttl.lua https://raw.githubusercontent.com/dotywrt/ttl64-qm/main/usr/lib/lua/luci/model/cbi/qmodem/modem_ttl.lua

wget -q -O /etc/nftables.d/ttl64.nft https://raw.githubusercontent.com/dotywrt/ttl64-qm/refs/heads/main/etc/nftables.d/ttl64.nft

chmod 0664 /etc/config/qmodem_ttl
chmod 0755 /etc/init.d/qmodem_ttl
chmod 0644 /usr/lib/lua/luci/model/cbi/qmodem/modem_ttl.lua
chmod 0644 /etc/nftables.d/ttl64.nft

chown root:root /etc/config/qmodem_ttl
chown root:root /etc/init.d/qmodem_ttl
chown root:root /usr/lib/lua/luci/model/cbi/qmodem/modem_ttl.lua
chown root:root /etc/nftables.d/ttl64.nft
