#install openclash
opkg remove dnsmasq && wget -O /root/openclash.ipk https://github.com/vernesong/OpenClash/releases/download/v0.45.157-beta/luci-app-openclash_0.45.157-beta_all.ipk && opkg install openclash.ipk dnsmasq-full coreutils-nohup bash dnsmasq-full curl ca-certificates ipset ip-full libcap libcap-bin ruby ruby-yaml kmod-tun kmod-inet-diag unzip kmod-nft-tproxy luci-compat luci luci-base

#install paswall2
-x86
wget -O /root/passwall2.ipk https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.21-3/luci-app-passwall2_1.21-3_all.ipk && wget -O /root/passwall.zip https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.21-3/passwall2_packages_ipk_x86_64.zip && unzip passwall.zip && opkg install *.ipk
-s905x
wget -O /root/passwall2.ipk https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.21-3/luci-app-passwall2_1.21-3_all.ipk && wget -O /root/passwall.zip https://github.com/xiaorouji/openwrt-passwall2/releases/download/1.21-3/passwall2_packages_ipk_aarch64_cortex-a53.zip && unzip passwall.zip && opkg install *.ipk

#release ram
wget -P /root "https://github.com/sukoco93/skc93/blob/main/free.sh" && chmod +x /root/free.sh && mv /root/free.sh /sbin && sed -i '$ i\*/5 * * * * /sbin/free.sh' /etc/crontabs/root && chmod 755 /etc/crontabs/root && /etc/init.d/cron restart && rm -rf /usr/lib/lua/luci/controller/release_ram.lua && wget -O /usr/lib/lua/luci/controller/release_ram.lua https://github.com/sukoco93/skc93/blob/main/release_ram.lua

#Speedtest-CLI
-s905x
wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-aarch64.tgz -O /tmp/speedtestaarch64.tgz && tar -xzvf /tmp/speedtestaarch64.tgz -C /usr/bin/ && chmod +x /usr/bin/speedtest && speedtest
-x86-64
wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz -O /tmp/speedtestx86.tgz && tar -xzvf /tmp/speedtestx86.tgz -C /usr/bin/ && chmod +x /usr/bin/speedtest && speedtest

#filemanager-2.5.3
wget -O /root/filemanager.ipk https://github.com/sukoco93/skc93/blob/main/luci-app-tinyfilemanager_2.5.3-20231119_all.ipk && opkg install filemanager.ipk

#fix-editor
rm -rf /usr/lib/lua/luci/view/openclash/oceditor.htm && wget -O /usr/lib/lua/luci/view/openclash/oceditor.htm https://github.com/sukoco93/skc93/blob/main/oceditor.htm && rm -rf /usr/lib/lua/luci/controller/openclash.lua && wget -O /usr/lib/lua/luci/controller/openclash.lua https://github.com/sukoco93/skc93/blob/main/openclash.lua
