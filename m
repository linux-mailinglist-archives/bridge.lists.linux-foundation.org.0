Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CA72AAAD7
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 13:16:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31D2786978;
	Sun,  8 Nov 2020 12:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mjom3Mjz7-T7; Sun,  8 Nov 2020 12:16:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A398C86155;
	Sun,  8 Nov 2020 12:16:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9847CC1AD5;
	Sun,  8 Nov 2020 12:16:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 381A4C0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 233FB86A83
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qSZyEsOgLrtl for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 22:18:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 71FF3865D6
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:26 +0000 (UTC)
Received: from localhost.localdomain
 (HSI-KBW-46-223-126-90.hsi.kabel-badenwuerttemberg.de [46.223.126.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEFC121556;
 Fri,  6 Nov 2020 22:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604701106;
 bh=zfW+TstbaETCjrecVXCK2p+9uJMUmc8aN3NLStSQrjM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0+NDqiGAoaCCJhFts1rR200TkCd/gvtVzXpkBVmN5w7aYl97WcN+0oY3wBoZqBqGW
 3F0gisLN/XVWNo8Xk4PtuyDrHuXyTQndBIFv0SmwZq2zOKLIPxKyo15BnVOPBRB8Oh
 Dln9WnKUO8/Ivp5n2dSR3tdfIYmdp0Ds4CprnUqc=
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org
Date: Fri,  6 Nov 2020 23:17:26 +0100
Message-Id: <20201106221743.3271965-12-arnd@kernel.org>
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
Subject: [Bridge] [RFC net-next 11/28] hamachi: use ndo_siocdevprivate
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

hamachi has one command that overloads the ifreq argument
and requires a conversion to ndo_siocdevprivate in order to
make compat mode work, so split it from ndo_ioctl.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/packetengines/hamachi.c | 63 ++++++++++++--------
 1 file changed, 38 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/packetengines/hamachi.c b/drivers/net/ethernet/packetengines/hamachi.c
index d058a63602a9..f6980fac8407 100644
--- a/drivers/net/ethernet/packetengines/hamachi.c
+++ b/drivers/net/ethernet/packetengines/hamachi.c
@@ -546,7 +546,9 @@ static int read_eeprom(void __iomem *ioaddr, int location);
 static int mdio_read(struct net_device *dev, int phy_id, int location);
 static void mdio_write(struct net_device *dev, int phy_id, int location, int value);
 static int hamachi_open(struct net_device *dev);
-static int netdev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
+static int hamachi_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
+static int hamachi_siocdevprivate(struct net_device *dev, struct ifreq *rq,
+				  void __user *data, int cmd);
 static void hamachi_timer(struct timer_list *t);
 static void hamachi_tx_timeout(struct net_device *dev, unsigned int txqueue);
 static void hamachi_init_ring(struct net_device *dev);
@@ -571,7 +573,8 @@ static const struct net_device_ops hamachi_netdev_ops = {
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_set_mac_address 	= eth_mac_addr,
 	.ndo_tx_timeout		= hamachi_tx_timeout,
-	.ndo_do_ioctl		= netdev_ioctl,
+	.ndo_do_ioctl		= hamachi_ioctl,
+	.ndo_siocdevprivate	= hamachi_siocdevprivate,
 };
 
 
@@ -1867,7 +1870,36 @@ static const struct ethtool_ops ethtool_ops_no_mii = {
 	.get_drvinfo = hamachi_get_drvinfo,
 };
 
-static int netdev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
+/* private ioctl: set rx,tx intr params */
+static int hamachi_siocdevprivate(struct net_device *dev, struct ifreq *rq,
+				  void __user *data, int cmd)
+{
+	struct hamachi_private *np = netdev_priv(dev);
+	u32 *d = (u32 *)&rq->ifr_ifru;
+
+	if (!netif_running(dev))
+		return -EINVAL;
+
+	if (cmd != SIOCDEVPRIVATE+3)
+		return -EOPNOTSUPP;
+
+	/* Should add this check here or an ordinary user can do nasty
+	 * things. -KDU
+	 *
+	 * TODO: Shut down the Rx and Tx engines while doing this.
+	 */
+	if (!capable(CAP_NET_ADMIN))
+		return -EPERM;
+	writel(d[0], np->base + TxIntrCtrl);
+	writel(d[1], np->base + RxIntrCtrl);
+	printk(KERN_NOTICE "%s: tx %08x, rx %08x intr\n", dev->name,
+		(u32) readl(np->base + TxIntrCtrl),
+		(u32) readl(np->base + RxIntrCtrl));
+
+	return 0;
+}
+
+static int hamachi_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 {
 	struct hamachi_private *np = netdev_priv(dev);
 	struct mii_ioctl_data *data = if_mii(rq);
@@ -1876,28 +1908,9 @@ static int netdev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 	if (!netif_running(dev))
 		return -EINVAL;
 
-	if (cmd == (SIOCDEVPRIVATE+3)) { /* set rx,tx intr params */
-		u32 *d = (u32 *)&rq->ifr_ifru;
-		/* Should add this check here or an ordinary user can do nasty
-		 * things. -KDU
-		 *
-		 * TODO: Shut down the Rx and Tx engines while doing this.
-		 */
-		if (!capable(CAP_NET_ADMIN))
-			return -EPERM;
-		writel(d[0], np->base + TxIntrCtrl);
-		writel(d[1], np->base + RxIntrCtrl);
-		printk(KERN_NOTICE "%s: tx %08x, rx %08x intr\n", dev->name,
-		  (u32) readl(np->base + TxIntrCtrl),
-		  (u32) readl(np->base + RxIntrCtrl));
-		rc = 0;
-	}
-
-	else {
-		spin_lock_irq(&np->lock);
-		rc = generic_mii_ioctl(&np->mii_if, data, cmd, NULL);
-		spin_unlock_irq(&np->lock);
-	}
+	spin_lock_irq(&np->lock);
+	rc = generic_mii_ioctl(&np->mii_if, data, cmd, NULL);
+	spin_unlock_irq(&np->lock);
 
 	return rc;
 }
-- 
2.27.0

