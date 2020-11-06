Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEFB2AAAD1
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 13:16:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A96C12002F;
	Sun,  8 Nov 2020 12:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IKg7jHm3NBi9; Sun,  8 Nov 2020 12:16:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 46DD320491;
	Sun,  8 Nov 2020 12:16:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 377BDC016F;
	Sun,  8 Nov 2020 12:16:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C3583C0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BD96286A83
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vFXxp6pTB9Yz for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 22:18:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28CE9865D6
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:06 +0000 (UTC)
Received: from localhost.localdomain
 (HSI-KBW-46-223-126-90.hsi.kabel-badenwuerttemberg.de [46.223.126.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6656E20B1F;
 Fri,  6 Nov 2020 22:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604701085;
 bh=m0RjMsn6WwofvvE4NYY1pS3GxXmUo66/XIWhjld9ez8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lZjFdbVKp25Qrql+efzzWsBxMC4g7cW6WMF5FzNZXxrLxsGCulsVre9Ry02k9fFSi
 5z1FSAfrv26byYbPUYzDCxhfGlOr0j/0sN3hH5d48y25AJj96u+XUtOzuoY5WRV71+
 CX6vrZapw6I+N1D/39DJFi0LvQmJa55SRHnLlDic=
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org
Date: Fri,  6 Nov 2020 23:17:19 +0100
Message-Id: <20201106221743.3271965-5-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201106221743.3271965-1-arnd@kernel.org>
References: <20201106221743.3271965-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 08 Nov 2020 12:15:58 +0000
Cc: Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
 bridge@lists.linux-foundation.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [Bridge] [RFC net-next 04/28] hostap: use ndo_siocdevprivate
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

From: Arnd Bergmann <arnd@arndb.de>

hostap has a combination of iwpriv ioctls that do not work at
all, and two SIOCDEVPRIVATE commands that work natively but
lack a compat conversion handler.

For the moment, move them over to the new ndo_siocdevprivate
interface and return an error for compat mode.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/intersil/hostap/hostap.h |  3 +-
 .../wireless/intersil/hostap/hostap_ioctl.c   | 30 +++++++++++++++----
 .../wireless/intersil/hostap/hostap_main.c    |  3 ++
 3 files changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/net/wireless/intersil/hostap/hostap.h b/drivers/net/wireless/intersil/hostap/hostap.h
index c4b81ff7d7e4..0c41efa252f0 100644
--- a/drivers/net/wireless/intersil/hostap/hostap.h
+++ b/drivers/net/wireless/intersil/hostap/hostap.h
@@ -93,6 +93,7 @@ extern const struct iw_handler_def hostap_iw_handler_def;
 extern const struct ethtool_ops prism2_ethtool_ops;
 
 int hostap_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd);
-
+int hostap_siocdevprivate(struct net_device *dev, struct ifreq *ifr,
+		 void __user *data, int cmd);
 
 #endif /* HOSTAP_H */
diff --git a/drivers/net/wireless/intersil/hostap/hostap_ioctl.c b/drivers/net/wireless/intersil/hostap/hostap_ioctl.c
index 514c7b01dbf6..7b6471e44255 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_ioctl.c
+++ b/drivers/net/wireless/intersil/hostap/hostap_ioctl.c
@@ -3952,7 +3952,8 @@ const struct iw_handler_def hostap_iw_handler_def =
 	.get_wireless_stats = hostap_get_wireless_stats,
 };
 
-
+/* Private ioctls (iwpriv) that have not yet been converted
+ * into new wireless extensions API */
 int hostap_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
 {
 	struct iwreq *wrq = (struct iwreq *) ifr;
@@ -3964,9 +3965,6 @@ int hostap_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
 	local = iface->local;
 
 	switch (cmd) {
-		/* Private ioctls (iwpriv) that have not yet been converted
-		 * into new wireless extensions API */
-
 	case PRISM2_IOCTL_INQUIRE:
 		if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
 		else ret = prism2_ioctl_priv_inquire(dev, (int *) wrq->u.name);
@@ -4020,11 +4018,31 @@ int hostap_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
 					       wrq->u.ap_addr.sa_data);
 		break;
 #endif /* PRISM2_NO_KERNEL_IEEE80211_MGMT */
+	default:
+		ret = -EOPNOTSUPP;
+		break;
+	}
+
+	return ret;
+}
 
+/* Private ioctls that are not used with iwpriv;
+ * in SIOCDEVPRIVATE range */
+int hostap_siocdevprivate(struct net_device *dev, struct ifreq *ifr,
+			  void __user *data, int cmd)
+{
+	struct iwreq *wrq = (struct iwreq *)ifr;
+	struct hostap_interface *iface;
+	local_info_t *local;
+	int ret = 0;
 
-		/* Private ioctls that are not used with iwpriv;
-		 * in SIOCDEVPRIVATE range */
+	iface = netdev_priv(dev);
+	local = iface->local;
+
+	if (in_compat_syscall()) /* not implemented yet */
+		return -EOPNOTSUPP;
 
+	switch (cmd) {
 #ifdef PRISM2_DOWNLOAD_SUPPORT
 	case PRISM2_IOCTL_DOWNLOAD:
 		if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
diff --git a/drivers/net/wireless/intersil/hostap/hostap_main.c b/drivers/net/wireless/intersil/hostap/hostap_main.c
index de97b3304115..54f67b682b6a 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_main.c
+++ b/drivers/net/wireless/intersil/hostap/hostap_main.c
@@ -797,6 +797,7 @@ static const struct net_device_ops hostap_netdev_ops = {
 	.ndo_open		= prism2_open,
 	.ndo_stop		= prism2_close,
 	.ndo_do_ioctl		= hostap_ioctl,
+	.ndo_siocdevprivate	= hostap_siocdevprivate,
 	.ndo_set_mac_address	= prism2_set_mac_address,
 	.ndo_set_rx_mode	= hostap_set_multicast_list,
 	.ndo_tx_timeout 	= prism2_tx_timeout,
@@ -809,6 +810,7 @@ static const struct net_device_ops hostap_mgmt_netdev_ops = {
 	.ndo_open		= prism2_open,
 	.ndo_stop		= prism2_close,
 	.ndo_do_ioctl		= hostap_ioctl,
+	.ndo_siocdevprivate	= hostap_siocdevprivate,
 	.ndo_set_mac_address	= prism2_set_mac_address,
 	.ndo_set_rx_mode	= hostap_set_multicast_list,
 	.ndo_tx_timeout 	= prism2_tx_timeout,
@@ -821,6 +823,7 @@ static const struct net_device_ops hostap_master_ops = {
 	.ndo_open		= prism2_open,
 	.ndo_stop		= prism2_close,
 	.ndo_do_ioctl		= hostap_ioctl,
+	.ndo_siocdevprivate	= hostap_siocdevprivate,
 	.ndo_set_mac_address	= prism2_set_mac_address,
 	.ndo_set_rx_mode	= hostap_set_multicast_list,
 	.ndo_tx_timeout 	= prism2_tx_timeout,
-- 
2.27.0

