#
# Copyright 2021-2023 Rafał Wabik - IceG - From eko.one.pl forum
#
# Licensed to the GNU General Public License v3.0.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-Nvr4G-lite
LUCI_TITLE:=LuCI JS Support for Nvr4G-lite
MAINTAINER:=NaiYu <yfit@theync.cn>
LUCI_DESCRIPTION:=LuCI JS interface for the Nvr4G-lite. The package allows you to view the parameters of the mobile internet connection.
LUCI_DEPENDS:=+sms-tool +comgt
LUCI_PKGARCH:=all
PKG_VERSION:=1.0.50-20230705

include $(TOPDIR)/feeds/luci/luci.mk

# 指定语言包文件和路径
POFILES := zh_Hans.po
PODIR := $(TOPDIR)/po

# 引入语言包文件
I18N_PO_FILES += $(addprefix $(PODIR)/, $(POFILES))

# call BuildPackage - OpenWrt buildroot signature
$(eval $(call BuildPackage,luci-app-Nvr4G-lite))


