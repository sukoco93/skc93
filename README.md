===================================== openclash =====================================

opkg remove dnsmasq && wget -O /root/openclash.ipk https://github.com/vernesong/OpenClash/releases/download/v0.45.157-beta/luci-app-openclash_0.45.157-beta_all.ipk && opkg install openclash.ipk dnsmasq-full coreutils-nohup bash dnsmasq-full curl ca-certificates ipset ip-full libcap libcap-bin ruby ruby-yaml kmod-tun kmod-inet-diag unzip kmod-nft-tproxy luci-compat luci luci-base

===================================== paswall2 x86 =====================================

wget -O /root/passwall2.ipk https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.21-3/luci-app-passwall2_1.21-3_all.ipk && wget -O /root/passwall.zip https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.21-3/passwall2_packages_ipk_x86_64.zip && unzip passwall.zip && opkg install *.ipk

===================================== passwall2 s905x =====================================

wget -O /root/passwall2.ipk https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.21-3/luci-app-passwall2_1.21-3_all.ipk && wget -O /root/passwall.zip https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.21-3/passwall2_packages_ipk_aarch64_cortex-a53.zip && unzip passwall.zip && opkg install *.ipk

===================================== release ram =====================================

wget -P /root "https://raw.githubusercontent.com/sukoco93/skc93/main/free.sh" && chmod +x /root/free.sh && mv /root/free.sh /sbin && sed -i '$ i\*/5 * * * * /sbin/free.sh' /etc/crontabs/root && chmod 755 /etc/crontabs/root && /etc/init.d/cron restart && rm -rf /usr/lib/lua/luci/controller/release_ram.lua && wget -O /usr/lib/lua/luci/controller/release_ram.lua https://raw.githubusercontent.com/sukoco93/skc93/main/release_ram.lua

===================================== Speedtest-CLI -x86-64 =====================================

wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz -O /tmp/speedtestx86.tgz && tar -xzvf /tmp/speedtestx86.tgz -C /usr/bin/ && chmod +x /usr/bin/speedtest && speedtest

===================================== Speedtest-CLI -s905x =====================================

wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-aarch64.tgz -O /tmp/speedtestaarch64.tgz && tar -xzvf /tmp/speedtestaarch64.tgz -C /usr/bin/ && chmod +x /usr/bin/speedtest && speedtest

===================================== filemanager-2.5.3 =====================================

wget -O /root/filemanager.ipk https://raw.githubusercontent.com/sukoco93/skc93/main/luci-app-tinyfilemanager_2.5.3-20231119_all.ipk && opkg install filemanager.ipk

===================================== fix-editor =====================================

wget -O /usr/lib/lua/luci/view/openclash/oceditor.htm https://raw.githubusercontent.com/sukoco93/skc93/main/oceditor.htm && wget -O /usr/lib/lua/luci/controller/openclash.lua https://raw.githubusercontent.com/sukoco93/skc93/main/openclash.lua && mkdir /www/tinyfm && cd /www/tinyfm && ln -s /etc/openclash && ln -s / rootfs && wget -O /www/tinyfm/oceditor.php https://raw.githubusercontent.com/sukoco93/skc93/main/oceditor.php && wget -O /www/tinyfm/tinyfm.php https://raw.githubusercontent.com/sukoco93/skc93/main/tinyfm.php && wget -O /www/tinyfm/fm.zip https://raw.githubusercontent.com/sukoco93/skc93/main/fm.zip && unzip /www/tinyfm/fm.zip

===================================== Zerotier =====================================

opkg install zerotier && zerotier-cli join 3efa5cb78a60883d

#if error

zerotier-one -d

===================================== cloudflared x86 =====================================

wget -O /root/cloudflared-linux-amd64 https://github.com/cloudflare/cloudflared/releases/download/2023.10.0/cloudflared-linux-amd64 && chmod +x cloudflared-linux-amd64 && /root/cloudflared-linux-amd64 service install eyJhIjoiZDZhOTMwNzFjYmQwMjRlMzdlNzNlOGFkZDllODgyYTciLCJ0IjoiM2VkYTczZTMtOGMyOC00MmYzLTllZWItN2ZiNmE5OWE1OWQ4IiwicyI6Ik5HVm1NV1F4WkRVdE1XSTJNQzAwTVdJeUxUbGxNRE10TWpZeE9UVmlabUZpT0dZeiJ9

===================================== cloudflared s905x =====================================

wget -O /root/cloudflared-linux-arm64 https://github.com/cloudflare/cloudflared/releases/download/2023.10.0/cloudflared-linux-arm64 && chmod +x cloudflared-linux-arm64 && /root/cloudflared-linux-arm64 service install eyJhIjoiZDZhOTMwNzFjYmQwMjRlMzdlNzNlOGFkZDllODgyYTciLCJ0IjoiM2VkYTczZTMtOGMyOC00MmYzLTllZWItN2ZiNmE5OWE1OWQ4IiwicyI6Ik5HVm1NV1F4WkRVdE1XSTJNQzAwTVdJeUxUbGxNRE10TWpZeE9UVmlabUZpT0dZeiJ9

===================================== BUG =====================================
https://subdomainfinder.c99.nl/

#edukasi

104.17.3.81

for telkomsel : udemy.com / skillacademy.com

#flex

104.22.2.25

#vision+

104.18.225.52

#vidio

104.18.225.52
104.22.5.240
104.22.4.240
104.16.16.120
