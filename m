Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EA82AAACC
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 13:16:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D199204A6;
	Sun,  8 Nov 2020 12:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YrmIMQOb9pmy; Sun,  8 Nov 2020 12:16:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B214C2044B;
	Sun,  8 Nov 2020 12:16:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 80D54C016F;
	Sun,  8 Nov 2020 12:16:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6FB0BC0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 671F487456
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vGMgEOPP8iTM for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 22:17:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AA1FD87226
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:17:57 +0000 (UTC)
Received: from localhost.localdomain
 (HSI-KBW-46-223-126-90.hsi.kabel-badenwuerttemberg.de [46.223.126.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D39F12087E;
 Fri,  6 Nov 2020 22:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604701077;
 bh=nzhWms5vuZRRAWciYsS79GiwdEaX2soiPILlN+tvJKA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LdAmxG3U4urOY/6fkI9PqtC/me9sbsLzKpCacBAVSQ/mcwfsBbJ4cpC4CV4Do2xrD
 aiTjAMSgGGO4/NxcBJ06LS16EiMsTOYV/EZfLjxjGYBvjTuJczVP43Oc9wqc9TIfm8
 Eb7FTqm+alG3Y0CDPbAs1NPN3j4EHKQIzrGpyYf0=
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org
Date: Fri,  6 Nov 2020 23:17:16 +0100
Message-Id: <20201106221743.3271965-2-arnd@kernel.org>
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
Subject: [Bridge] [RFC net-next 01/28] net: split out SIOCDEVPRIVATE
	handling from dev_ioctl
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

SIOCDEVPRIVATE ioctl commands are mainly used in really old
drivers, and they have a number of problems:

- They hide behind the normal .ndo_do_ioctl function that
  is also used for other things in modern drivers, so it's
  hard to spot a driver that actually uses one of these

- Since drivers use a number different calling conventions,
  it is impossible to support compat mode for them in
  a generic way.

- With all drivers using the same 16 commands codes, there
  is no way to introspect the data being passed through
  things like strace.

Add a new net_device_ops callback pointer, to address the
first two of these. Separating them from .ndo_do_ioctl
makes it easy to grep for drivers with a .ndo_siocdevprivate
callback, and the unwieldy name hopefully makes it easier
to spot in code review.

By passing the ifreq structure and the ifr_data pointer
separately, it is no longer necessary to overload these,
and the driver can use either one for a given command.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/netdevice.h |  3 +++
 net/core/dev_ioctl.c      | 25 ++++++++++++++++++++++---
 2 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index d1b7fb1241b3..93f980e1d69b 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1301,6 +1301,9 @@ struct net_device_ops {
 	int			(*ndo_validate_addr)(struct net_device *dev);
 	int			(*ndo_do_ioctl)(struct net_device *dev,
 					        struct ifreq *ifr, int cmd);
+	int			(*ndo_siocdevprivate)(struct net_device *dev,
+						struct ifreq *ifr,
+						void __user *data, int cmd);
 	int			(*ndo_set_config)(struct net_device *dev,
 					          struct ifmap *map);
 	int			(*ndo_change_mtu)(struct net_device *dev,
diff --git a/net/core/dev_ioctl.c b/net/core/dev_ioctl.c
index 5822737a78f4..58daf41a4a08 100644
--- a/net/core/dev_ioctl.c
+++ b/net/core/dev_ioctl.c
@@ -269,6 +269,23 @@ static int dev_do_ioctl(struct net_device *dev,
 	return err;
 }
 
+static int dev_siocdevprivate(struct net_device *dev,
+			      struct ifreq *ifr, unsigned int cmd)
+{
+	const struct net_device_ops *ops = dev->netdev_ops;
+	void __user *data = ifr->ifr_data;
+
+	if (ops->ndo_siocdevprivate) {
+		if (netif_device_present(dev))
+			return ops->ndo_siocdevprivate(dev, ifr, data, cmd);
+		else
+			return -ENODEV;
+	}
+
+	/* fall back to do_ioctl for drivers not yet converted */
+	return dev_do_ioctl(dev, ifr, cmd);
+}
+
 /*
  *	Perform the SIOCxIFxxx calls, inside rtnl_lock()
  */
@@ -346,9 +363,11 @@ static int dev_ifsioc(struct net *net, struct ifreq *ifr, unsigned int cmd)
 	 *	Unknown or private ioctl
 	 */
 	default:
-		if ((cmd >= SIOCDEVPRIVATE &&
-		    cmd <= SIOCDEVPRIVATE + 15) ||
-		    cmd == SIOCBONDENSLAVE ||
+		if (cmd >= SIOCDEVPRIVATE &&
+		    cmd <= SIOCDEVPRIVATE + 15)
+			return dev_siocdevprivate(dev, ifr, cmd);
+
+		if (cmd == SIOCBONDENSLAVE ||
 		    cmd == SIOCBONDRELEASE ||
 		    cmd == SIOCBONDSETHWADDR ||
 		    cmd == SIOCBONDSLAVEINFOQUERY ||
-- 
2.27.0

