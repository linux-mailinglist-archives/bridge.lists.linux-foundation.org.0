Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E26D147E576
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 16:27:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88E2F4093B;
	Thu, 23 Dec 2021 15:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3rTPMYmtp7Or; Thu, 23 Dec 2021 15:27:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id B31C540A02;
	Thu, 23 Dec 2021 15:27:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7DFFFC006E;
	Thu, 23 Dec 2021 15:27:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BC3EAC0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABAD960EFF
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MVVH4G87DAAC for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 15:27:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D5CA60EE6
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:23 +0000 (UTC)
Received: (Authenticated sender: repk@triplefau.lt)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B04FB2000F;
 Thu, 23 Dec 2021 15:27:18 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: netdev@vger.kernel.org
Date: Thu, 23 Dec 2021 16:31:39 +0100
Message-Id: <20211223153139.7661-3-repk@triplefau.lt>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211223153139.7661-1-repk@triplefau.lt>
References: <20211223153139.7661-1-repk@triplefau.lt>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Arnd Bergmann <arnd@arndb.de>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Remi Pommarel <repk@triplefau.lt>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net 2/2] net: bridge: Get SIOCGIFBR/SIOCSIFBR ioctl
	working in compat mode
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

In compat mode SIOC{G,S}IFBR ioctls were only supporting
BRCTL_GET_VERSION returning an artificially version to spur userland
tool to use SIOCDEVPRIVATE instead. But some userland tools ignore that
and use SIOC{G,S}IFBR unconditionally as seen with busybox's brctl.

Example of non working 32-bit brctl with CONFIG_COMPAT=y:
$ brctl show
brctl: SIOCGIFBR: Invalid argument

Example of fixed 32-bit brctl with CONFIG_COMPAT=y:
$ brctl show
bridge name     bridge id               STP enabled     interfaces
br0

Signed-off-by: Remi Pommarel <repk@triplefau.lt>
Co-developed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/bridge/br_ioctl.c | 75 ++++++++++++++++++++++++++++---------------
 net/socket.c          | 20 ++----------
 2 files changed, 52 insertions(+), 43 deletions(-)

diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index 891cfcf45644..5f3c1cf7f6ad 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -102,37 +102,56 @@ static int add_del_if(struct net_bridge *br, int ifindex, int isadd)
 	return ret;
 }
 
+#define BR_UARGS_MAX 4
+static int br_dev_read_uargs(unsigned long *args, size_t nr_args,
+			     void __user **argp, void __user *data)
+{
+	int ret;
+
+	if (nr_args < 2 || nr_args > BR_UARGS_MAX)
+		return -EINVAL;
+
+	if (in_compat_syscall()) {
+		unsigned int cargs[BR_UARGS_MAX];
+		int i;
+
+		ret = copy_from_user(cargs, data, nr_args * sizeof(*cargs));
+		if (ret)
+			goto fault;
+
+		for (i = 0; i < nr_args; ++i)
+			args[i] = cargs[i];
+
+		*argp = compat_ptr(args[1]);
+	} else {
+		ret = copy_from_user(args, data, nr_args * sizeof(*args));
+		if (ret)
+			goto fault;
+		*argp = (void __user *)args[1];
+	}
+
+	return 0;
+fault:
+	return -EFAULT;
+}
+
 /*
  * Legacy ioctl's through SIOCDEVPRIVATE
  * This interface is deprecated because it was too difficult
  * to do the translation for 32/64bit ioctl compatibility.
  */
-int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user *data, int cmd)
+int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq,
+			  void __user *data, int cmd)
 {
 	struct net_bridge *br = netdev_priv(dev);
 	struct net_bridge_port *p = NULL;
 	unsigned long args[4];
 	void __user *argp;
-	int ret = -EOPNOTSUPP;
-
-	if (in_compat_syscall()) {
-		unsigned int cargs[4];
-
-		if (copy_from_user(cargs, data, sizeof(cargs)))
-			return -EFAULT;
-
-		args[0] = cargs[0];
-		args[1] = cargs[1];
-		args[2] = cargs[2];
-		args[3] = cargs[3];
-
-		argp = compat_ptr(args[1]);
-	} else {
-		if (copy_from_user(args, data, sizeof(args)))
-			return -EFAULT;
+	int ret;
 
-		argp = (void __user *)args[1];
-	}
+	ret = br_dev_read_uargs(args, ARRAY_SIZE(args), &argp, data);
+	if (ret)
+		return ret;
 
 	switch (args[0]) {
 	case BRCTL_ADD_IF:
@@ -301,6 +320,9 @@ int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user
 
 	case BRCTL_GET_FDB_ENTRIES:
 		return get_fdb_entries(br, argp, args[2], args[3]);
+
+	default:
+		ret = -EOPNOTSUPP;
 	}
 
 	if (!ret) {
@@ -313,12 +335,15 @@ int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user
 	return ret;
 }
 
-static int old_deviceless(struct net *net, void __user *uarg)
+static int old_deviceless(struct net *net, void __user *data)
 {
 	unsigned long args[3];
+	void __user *argp;
+	int ret;
 
-	if (copy_from_user(args, uarg, sizeof(args)))
-		return -EFAULT;
+	ret = br_dev_read_uargs(args, ARRAY_SIZE(args), &argp, data);
+	if (ret)
+		return ret;
 
 	switch (args[0]) {
 	case BRCTL_GET_VERSION:
@@ -337,7 +362,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 
 		args[2] = get_bridge_ifindices(net, indices, args[2]);
 
-		ret = copy_to_user((void __user *)args[1], indices,
+		ret = copy_to_user(argp, indices,
 				   array_size(args[2], sizeof(int)))
 			? -EFAULT : args[2];
 
@@ -353,7 +378,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
 			return -EPERM;
 
-		if (copy_from_user(buf, (void __user *)args[1], IFNAMSIZ))
+		if (copy_from_user(buf, argp, IFNAMSIZ))
 			return -EFAULT;
 
 		buf[IFNAMSIZ-1] = 0;
diff --git a/net/socket.c b/net/socket.c
index 7f64a6eccf63..6b2a898055ca 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -3233,21 +3233,6 @@ static int compat_ifr_data_ioctl(struct net *net, unsigned int cmd,
 	return dev_ioctl(net, cmd, &ifreq, data, NULL);
 }
 
-/* Since old style bridge ioctl's endup using SIOCDEVPRIVATE
- * for some operations; this forces use of the newer bridge-utils that
- * use compatible ioctls
- */
-static int old_bridge_ioctl(compat_ulong_t __user *argp)
-{
-	compat_ulong_t tmp;
-
-	if (get_user(tmp, argp))
-		return -EFAULT;
-	if (tmp == BRCTL_GET_VERSION)
-		return BRCTL_VERSION + 1;
-	return -EINVAL;
-}
-
 static int compat_sock_ioctl_trans(struct file *file, struct socket *sock,
 			 unsigned int cmd, unsigned long arg)
 {
@@ -3259,9 +3244,6 @@ static int compat_sock_ioctl_trans(struct file *file, struct socket *sock,
 		return sock_ioctl(file, cmd, (unsigned long)argp);
 
 	switch (cmd) {
-	case SIOCSIFBR:
-	case SIOCGIFBR:
-		return old_bridge_ioctl(argp);
 	case SIOCWANDEV:
 		return compat_siocwandev(net, argp);
 	case SIOCGSTAMP_OLD:
@@ -3290,6 +3272,8 @@ static int compat_sock_ioctl_trans(struct file *file, struct socket *sock,
 	case SIOCGSTAMP_NEW:
 	case SIOCGSTAMPNS_NEW:
 	case SIOCGIFCONF:
+	case SIOCSIFBR:
+	case SIOCGIFBR:
 		return sock_ioctl(file, cmd, arg);
 
 	case SIOCGIFFLAGS:
-- 
2.33.0

