Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6363B3D771F
	for <lists.bridge@lfdr.de>; Tue, 27 Jul 2021 15:46:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD94782784;
	Tue, 27 Jul 2021 13:46:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ASz-XXUXSEPh; Tue, 27 Jul 2021 13:46:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4651482848;
	Tue, 27 Jul 2021 13:46:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 240FCC001F;
	Tue, 27 Jul 2021 13:46:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 993BCC000E
 for <bridge@lists.linux-foundation.org>; Tue, 27 Jul 2021 13:46:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B300401E0
 for <bridge@lists.linux-foundation.org>; Tue, 27 Jul 2021 13:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6tETrPvPLyU for <bridge@lists.linux-foundation.org>;
 Tue, 27 Jul 2021 13:46:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4E3A400BF
 for <bridge@lists.linux-foundation.org>; Tue, 27 Jul 2021 13:46:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E47C561A87;
 Tue, 27 Jul 2021 13:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627393568;
 bh=9H8HDtceOWX0HErN0jrka6eIPHxbylKQXGn4e6zyVkc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=diaYH+MvOwfh0PPJg85uJIFwe3o2Xet+oUONDnrnUnNCvGH3k6OiCxqdtITU1cJ5w
 F2N+Dc++1+bOEHDGk8WVFM4ydCC0jMIsegl0BgxT9UDbl8ioSEgAhg7h2ZT2EO7dmC
 +PCmOoYaMG5qDpedR3cdleYbEh3jvPubi7hNhWkJ1EIMiJubiyedOcMbBAs5gUYWKY
 O7KGbpldbcZNSwOesIi6khBPZDcCpDSpsN43dYfID5Ryve+saZ/0Mtb7T48MlpKhZp
 0F6zYVa75pMV5oEYG3PVT/VmW8mBDZbjpY8nUP85QFNB8egNeg/RMGrXBfH9jZnDsp
 cydxr/K6Y98KA==
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Jul 2021 15:44:51 +0200
Message-Id: <20210727134517.1384504-6-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210727134517.1384504-1-arnd@kernel.org>
References: <20210727134517.1384504-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Arnd Bergmann <arnd@arndb.de>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next v3 05/31] bridge: use ndo_siocdevprivate
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

Cc: Roopa Prabhu <roopa@nvidia.com>
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>
Cc: bridge@lists.linux-foundation.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/bridge/br_device.c  |  1 +
 net/bridge/br_ioctl.c   | 37 +++++++++++++++++++++++++------------
 net/bridge/br_private.h |  2 ++
 3 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 00daf35f54d5..1952bb433ca7 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -455,6 +455,7 @@ static const struct net_device_ops br_netdev_ops = {
 	.ndo_change_rx_flags	 = br_dev_change_rx_flags,
 	.ndo_change_mtu		 = br_change_mtu,
 	.ndo_do_ioctl		 = br_dev_ioctl,
+	.ndo_siocdevprivate	 = br_dev_siocdevprivate,
 #ifdef CONFIG_NET_POLL_CONTROLLER
 	.ndo_netpoll_setup	 = br_netpoll_setup,
 	.ndo_netpoll_cleanup	 = br_netpoll_cleanup,
diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index 2db800fc27ca..9f924fe43641 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -106,15 +106,32 @@ static int add_del_if(struct net_bridge *br, int ifindex, int isadd)
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
+
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
@@ -171,7 +188,7 @@ static int old_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 			return -ENOMEM;
 
 		get_port_ifindices(br, indices, num);
-		if (copy_to_user((void __user *)args[1], indices, num*sizeof(int)))
+		if (copy_to_user(argp, indices, num * sizeof(int)))
 			num =  -EFAULT;
 		kfree(indices);
 		return num;
@@ -232,7 +249,7 @@ static int old_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 
 		rcu_read_unlock();
 
-		if (copy_to_user((void __user *)args[1], &p, sizeof(p)))
+		if (copy_to_user(argp, &p, sizeof(p)))
 			return -EFAULT;
 
 		return 0;
@@ -282,8 +299,7 @@ static int old_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 	}
 
 	case BRCTL_GET_FDB_ENTRIES:
-		return get_fdb_entries(br, (void __user *)args[1],
-				       args[2], args[3]);
+		return get_fdb_entries(br, argp, args[2], args[3]);
 	}
 
 	if (!ret) {
@@ -320,7 +336,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 
 		args[2] = get_bridge_ifindices(net, indices, args[2]);
 
-		ret = copy_to_user((void __user *)args[1], indices, args[2]*sizeof(int))
+		ret = copy_to_user(uarg, indices, args[2]*sizeof(int))
 			? -EFAULT : args[2];
 
 		kfree(indices);
@@ -335,7 +351,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
 			return -EPERM;
 
-		if (copy_from_user(buf, (void __user *)args[1], IFNAMSIZ))
+		if (copy_from_user(buf, uarg, IFNAMSIZ))
 			return -EFAULT;
 
 		buf[IFNAMSIZ-1] = 0;
@@ -383,9 +399,6 @@ int br_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 	struct net_bridge *br = netdev_priv(dev);
 
 	switch (cmd) {
-	case SIOCDEVPRIVATE:
-		return old_dev_ioctl(dev, rq, cmd);
-
 	case SIOCBRADDIF:
 	case SIOCBRDELIF:
 		return add_del_if(br, rq->ifr_ifindex, cmd == SIOCBRADDIF);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 1c57877270f7..572c28ae41b8 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -852,6 +852,8 @@ br_port_get_check_rtnl(const struct net_device *dev)
 
 /* br_ioctl.c */
 int br_dev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
+int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq,
+			  void __user *data, int cmd);
 int br_ioctl_deviceless_stub(struct net *net, unsigned int cmd,
 			     void __user *arg);
 
-- 
2.29.2

