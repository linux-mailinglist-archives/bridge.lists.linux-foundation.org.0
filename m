Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D212AAAD4
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 13:16:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 348972044B;
	Sun,  8 Nov 2020 12:16:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KSH3rcVR3Qld; Sun,  8 Nov 2020 12:16:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 7837920492;
	Sun,  8 Nov 2020 12:16:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E1CAC016F;
	Sun,  8 Nov 2020 12:16:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD1BDC0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B6DD287516
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id puUDHiQWtYjk for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 22:18:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1CEF887456
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:18:12 +0000 (UTC)
Received: from localhost.localdomain
 (HSI-KBW-46-223-126-90.hsi.kabel-badenwuerttemberg.de [46.223.126.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BE34206F9;
 Fri,  6 Nov 2020 22:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604701091;
 bh=BR+zYR3Dm83q9tUsfJZzsFi0e5w5L0IGNArcvO9ow8I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bi+lDzBo1ePiWdn/VM2k639J0e48uV9m25v+HdVm1B5ZrTJOGAAsnmK2eb1wd6bUC
 UaecT3Awtytx7aWt3xk23Z4rBeuTBeU7JtA2uQvht8OKRuLCMZ5q+WXJZ/bDwUKQmY
 ShaAoDaSb5UQRzAaWbQ2gN7MuG6UGmQPkHGImBo0=
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org
Date: Fri,  6 Nov 2020 23:17:21 +0100
Message-Id: <20201106221743.3271965-7-arnd@kernel.org>
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
Subject: [Bridge] [RFC net-next 06/28] bridge: use ndo_siocdevprivate
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

The bridge driver has an old set of ioctls using the SIOCDEVPRIVATE
namespace that have never worked in compat mode and are explicitly
forbidden already.

Move them over to ndo_siocdevprivate and fix compat mode for these,
because we can.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/bridge/br_device.c  |  1 +
 net/bridge/br_ioctl.c   | 36 ++++++++++++++++++++++++------------
 net/bridge/br_private.h |  2 ++
 3 files changed, 27 insertions(+), 12 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 6f742fee874a..c272fa57110d 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -409,6 +409,7 @@ static const struct net_device_ops br_netdev_ops = {
 	.ndo_change_rx_flags	 = br_dev_change_rx_flags,
 	.ndo_change_mtu		 = br_change_mtu,
 	.ndo_do_ioctl		 = br_dev_ioctl,
+	.ndo_siocdevprivate	 = br_dev_siocdevprivate,
 #ifdef CONFIG_NET_POLL_CONTROLLER
 	.ndo_netpoll_setup	 = br_netpoll_setup,
 	.ndo_netpoll_cleanup	 = br_netpoll_cleanup,
diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index 2db800fc27ca..7fbfeb735bad 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -106,15 +106,31 @@ static int add_del_if(struct net_bridge *br, int ifindex, int isadd)
  * This interface is deprecated because it was too difficult
  * to do the translation for 32/64bit ioctl compatibility.
  */
-static int old_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
+int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user *data, int cmd)
 {
 	struct net_bridge *br = netdev_priv(dev);
 	struct net_bridge_port *p = NULL;
 	unsigned long args[4];
+	void __user *argp;
 	int ret = -EOPNOTSUPP;
 
-	if (copy_from_user(args, rq->ifr_data, sizeof(args)))
-		return -EFAULT;
+	if (in_compat_syscall()) {
+		unsigned int cargs[4];
+		if (copy_from_user(cargs, data, sizeof(cargs)))
+			return -EFAULT;
+
+		args[0] = cargs[0];
+		args[1] = cargs[1];
+		args[2] = cargs[2];
+		args[3] = cargs[3];
+
+		argp = compat_ptr(args[1]);
+	} else {
+		if (copy_from_user(args, data, sizeof(args)))
+			return -EFAULT;
+
+		argp = (void __user *)args[1];
+	}
 
 	switch (args[0]) {
 	case BRCTL_ADD_IF:
@@ -171,7 +187,7 @@ static int old_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 			return -ENOMEM;
 
 		get_port_ifindices(br, indices, num);
-		if (copy_to_user((void __user *)args[1], indices, num*sizeof(int)))
+		if (copy_to_user(argp, indices, num*sizeof(int)))
 			num =  -EFAULT;
 		kfree(indices);
 		return num;
@@ -232,7 +248,7 @@ static int old_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 
 		rcu_read_unlock();
 
-		if (copy_to_user((void __user *)args[1], &p, sizeof(p)))
+		if (copy_to_user(argp, &p, sizeof(p)))
 			return -EFAULT;
 
 		return 0;
@@ -282,8 +298,7 @@ static int old_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 	}
 
 	case BRCTL_GET_FDB_ENTRIES:
-		return get_fdb_entries(br, (void __user *)args[1],
-				       args[2], args[3]);
+		return get_fdb_entries(br, argp, args[2], args[3]);
 	}
 
 	if (!ret) {
@@ -320,7 +335,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 
 		args[2] = get_bridge_ifindices(net, indices, args[2]);
 
-		ret = copy_to_user((void __user *)args[1], indices, args[2]*sizeof(int))
+		ret = copy_to_user(uarg, indices, args[2]*sizeof(int))
 			? -EFAULT : args[2];
 
 		kfree(indices);
@@ -335,7 +350,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
 			return -EPERM;
 
-		if (copy_from_user(buf, (void __user *)args[1], IFNAMSIZ))
+		if (copy_from_user(buf, uarg, IFNAMSIZ))
 			return -EFAULT;
 
 		buf[IFNAMSIZ-1] = 0;
@@ -383,9 +398,6 @@ int br_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 	struct net_bridge *br = netdev_priv(dev);
 
 	switch (cmd) {
-	case SIOCDEVPRIVATE:
-		return old_dev_ioctl(dev, rq, cmd);
-
 	case SIOCBRADDIF:
 	case SIOCBRDELIF:
 		return add_del_if(br, rq->ifr_ifindex, cmd == SIOCBRADDIF);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 345118e35c42..a788fcdd2adf 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -778,6 +778,8 @@ br_port_get_check_rtnl(const struct net_device *dev)
 
 /* br_ioctl.c */
 int br_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
+int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq,
+			  void __user *data, int cmd);
 int br_ioctl_deviceless_stub(struct net *net, unsigned int cmd,
 			     void __user *arg);
 
-- 
2.27.0

