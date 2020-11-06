Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA502AAACF
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 13:16:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A202786610;
	Sun,  8 Nov 2020 12:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6_-JJcmGK6Dz; Sun,  8 Nov 2020 12:16:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2624985F6A;
	Sun,  8 Nov 2020 12:16:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18204C0889;
	Sun,  8 Nov 2020 12:16:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A5C95C0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 946E087516
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QMYw-qDT+2hO for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 22:18:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F398587456
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:17 +0000 (UTC)
Received: from localhost.localdomain
 (HSI-KBW-46-223-126-90.hsi.kabel-badenwuerttemberg.de [46.223.126.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 427922087E;
 Fri,  6 Nov 2020 22:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604701097;
 bh=ejrB3sfP8Vhn5+VAUXi+L6LpDodKnVmFjv0rU9L8csY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o/hvgIT92Bk0M83Xab3GbNkl+xpVG4NHaBN01+8U6H+Er1kiG4YsX3i4m4ZP00e2y
 2mkHLMu1fUhv43aUCI7R9In7ltd2PSh6WT6PJ7Fex8Xg8/YNd0P6InD5wUyOKpnuDY
 Utxsq02pbsuZJdJjZeYJsUConVTbwpD/SQvJysOI=
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org
Date: Fri,  6 Nov 2020 23:17:23 +0100
Message-Id: <20201106221743.3271965-9-arnd@kernel.org>
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
Subject: [Bridge] [RFC net-next 08/28] tulip: use ndo_siocdevprivate
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

The tulip driver has a debugging method over ioctl built-in, but it
does not actually check the command type, which may end up leading
to random behavior when trying to run other ioctls on it.

Change the driver to use ndo_siocdevprivate and limit the execution
further to the first private command code. If anyone still has tools
to run these debugging commands, they might have to be patched for
it if they pass different ioctl command.

The function has existed in this form since the driver was merged in
Linux-1.1.86.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/dec/tulip/de4x5.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/dec/tulip/de4x5.c b/drivers/net/ethernet/dec/tulip/de4x5.c
index 683e328b5461..59a85f5b35fb 100644
--- a/drivers/net/ethernet/dec/tulip/de4x5.c
+++ b/drivers/net/ethernet/dec/tulip/de4x5.c
@@ -902,7 +902,7 @@ static int     de4x5_close(struct net_device *dev);
 static struct  net_device_stats *de4x5_get_stats(struct net_device *dev);
 static void    de4x5_local_stats(struct net_device *dev, char *buf, int pkt_len);
 static void    set_multicast_list(struct net_device *dev);
-static int     de4x5_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
+static int     de4x5_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user *data, int cmd);
 
 /*
 ** Private functions
@@ -1084,7 +1084,7 @@ static const struct net_device_ops de4x5_netdev_ops = {
     .ndo_start_xmit	= de4x5_queue_pkt,
     .ndo_get_stats	= de4x5_get_stats,
     .ndo_set_rx_mode	= set_multicast_list,
-    .ndo_do_ioctl	= de4x5_ioctl,
+    .ndo_siocdevprivate	= de4x5_siocdevprivate,
     .ndo_set_mac_address= eth_mac_addr,
     .ndo_validate_addr	= eth_validate_addr,
 };
@@ -5357,7 +5357,7 @@ de4x5_dbg_rx(struct sk_buff *skb, int len)
 ** this function is only used for my testing.
 */
 static int
-de4x5_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
+de4x5_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user *data, int cmd)
 {
     struct de4x5_private *lp = netdev_priv(dev);
     struct de4x5_ioctl *ioc = (struct de4x5_ioctl *) &rq->ifr_ifru;
@@ -5371,6 +5371,9 @@ de4x5_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
     } tmp;
     u_long flags = 0;
 
+    if (cmd != SIOCDEVPRIVATE || in_compat_syscall())
+	    return -EOPNOTSUPP;
+
     switch(ioc->cmd) {
     case DE4X5_GET_HWADDR:           /* Get the hardware address */
 	ioc->len = ETH_ALEN;
-- 
2.27.0

