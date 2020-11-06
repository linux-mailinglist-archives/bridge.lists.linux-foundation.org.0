Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FCD2AAAD9
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 13:16:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4CA886168;
	Sun,  8 Nov 2020 12:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7GSJtQyNJkoW; Sun,  8 Nov 2020 12:16:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DC6186208;
	Sun,  8 Nov 2020 12:16:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 21D45C1AD5;
	Sun,  8 Nov 2020 12:16:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8695C0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D25E720474
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PhR4p1u7fZAU for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 22:18:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E973120440
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:34 +0000 (UTC)
Received: from localhost.localdomain
 (HSI-KBW-46-223-126-90.hsi.kabel-badenwuerttemberg.de [46.223.126.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C48121D7F;
 Fri,  6 Nov 2020 22:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604701114;
 bh=AjIS9Fwp+9zwOieexErSSkVefl0S4aqIyIhbjJBo8ns=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XbeSOZuoctGdFTTctZYTPX/FZjuaNYEXLdm25I7crH1V5VQZOVT0UApSiH/I5+cwP
 t7VZxDeNGE7nZoOrCDqGufbZQlQCAgH5NLZroopgIQ8g/RH2lVRa8Mh+NPVk/qh+Eq
 nczzE6xnkVg8lqpFXIG6tp/IDPcrq7vgbV6Sme/E=
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org
Date: Fri,  6 Nov 2020 23:17:29 +0100
Message-Id: <20201106221743.3271965-15-arnd@kernel.org>
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
Subject: [Bridge] [RFC net-next 14/28] fddi: use ndo_siocdevprivate
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

The skfddi driver has a private ioctl and passes the data correctly
through ifr_data, but the use of a pointer in s_skfp_ioctl is
broken in compat mode.

Change the driver to use ndo_siocdevprivate and disallow calling
it in compat mode until a conversion handler is added.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/fddi/skfp/skfddi.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/fddi/skfp/skfddi.c b/drivers/net/fddi/skfp/skfddi.c
index 69c29a2ef95d..fe3b1d041142 100644
--- a/drivers/net/fddi/skfp/skfddi.c
+++ b/drivers/net/fddi/skfp/skfddi.c
@@ -103,7 +103,8 @@ static struct net_device_stats *skfp_ctl_get_stats(struct net_device *dev);
 static void skfp_ctl_set_multicast_list(struct net_device *dev);
 static void skfp_ctl_set_multicast_list_wo_lock(struct net_device *dev);
 static int skfp_ctl_set_mac_address(struct net_device *dev, void *addr);
-static int skfp_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
+static int skfp_siocdevprivate(struct net_device *dev, struct ifreq *rq,
+			       void __user *data, int cmd);
 static netdev_tx_t skfp_send_pkt(struct sk_buff *skb,
 				       struct net_device *dev);
 static void send_queued_packets(struct s_smc *smc);
@@ -164,7 +165,7 @@ static const struct net_device_ops skfp_netdev_ops = {
 	.ndo_get_stats		= skfp_ctl_get_stats,
 	.ndo_set_rx_mode	= skfp_ctl_set_multicast_list,
 	.ndo_set_mac_address	= skfp_ctl_set_mac_address,
-	.ndo_do_ioctl		= skfp_ioctl,
+	.ndo_siocdevprivate	= skfp_siocdevprivate,
 };
 
 /*
@@ -932,9 +933,9 @@ static int skfp_ctl_set_mac_address(struct net_device *dev, void *addr)
 
 
 /*
- * ==============
- * = skfp_ioctl =
- * ==============
+ * =======================
+ * = skfp_siocdevprivate =
+ * =======================
  *   
  * Overview:
  *
@@ -954,16 +955,19 @@ static int skfp_ctl_set_mac_address(struct net_device *dev, void *addr)
  */
 
 
-static int skfp_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
+static int skfp_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user *data, int cmd)
 {
 	struct s_smc *smc = netdev_priv(dev);
 	skfddi_priv *lp = &smc->os;
 	struct s_skfp_ioctl ioc;
 	int status = 0;
 
-	if (copy_from_user(&ioc, rq->ifr_data, sizeof(struct s_skfp_ioctl)))
+	if (copy_from_user(&ioc, data, sizeof(struct s_skfp_ioctl)))
 		return -EFAULT;
 
+	if (in_compat_syscall())
+		return -EOPNOTSUPP;
+
 	switch (ioc.cmd) {
 	case SKFP_GET_STATS:	/* Get the driver statistics */
 		ioc.len = sizeof(lp->MacStat);
-- 
2.27.0

