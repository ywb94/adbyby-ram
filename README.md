Adbyby Run In Ram
===


简介
---

 本项目是 adbyby 在 OpenWrt RAM中运行的版本  
 
 本项目只支持ar71xx及ramips平台
 
 预编译IPK请在本项目releases页面下载

特性
---

软件包包含 adbyby的luci控制界面  

对FLASH空间需求很小，开机后在线下载adbyby并在ram中运行，不占用flash空间

每次重启会自动更新至最新规则



编译
---

 - 从 OpenWrt 的 [SDK][S] 编译（编译环境：Ubuntu 64位系统），如果是第一次编译，还需下载OpenWrt所需依赖软件
   ```bash
   sudo apt-get install gawk libncurses5-dev libz-dev zlib1g-dev  git ccache
   ```
 
 - 下载路由器对应平台的SDK

   ```bash
   # 以 ar71xx 平台为例
   tar xjf OpenWrt-SDK-15.05-ar71xx-generic_gcc-4.8-linaro_uClibc-0.9.33.2.Linux-x86_64.tar.bz2
   cd OpenWrt-SDK-*
   # 安装 feeds
   ./scripts/feeds update packages
   # 获取 Makefile
   git clone https://github.com/ywb94/adbyby-ram.git package/adbyby-ram
   # 选择要编译的包 
   #luci ->3. Applications-> luci-app-adbyby-ram         原始版本

   make menuconfig
   
    
   # 开始编译
    make package/adbyby-ram/compile V=99
   ```

   
安装
--- 
   
   #安装软件包
   opkg install /tmp/luci-app-adbyby*_all.ipk 
   ```

问题和建议反馈
---
请点击本页面上的“Issues”反馈使用问题或建议

截图  
---

  [S]: https://wiki.openwrt.org/doc/howto/obtain.firmware.sdk
