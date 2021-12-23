Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5825447E1D2
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 11:55:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E8D18148F;
	Thu, 23 Dec 2021 10:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DN94k4DKtxbj; Thu, 23 Dec 2021 10:55:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EA756815CA;
	Thu, 23 Dec 2021 10:55:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A9886C006E;
	Thu, 23 Dec 2021 10:55:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F1604C0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 10:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF24B60E7A
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 10:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQo17WXrwFLx for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 10:55:44 +0000 (UTC)
X-Greylist: delayed 15:44:41 by SQLgrey-1.8.0
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [217.70.183.198])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 70AAD60E30
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 10:55:42 +0000 (UTC)
Received: (Authenticated sender: repk@triplefau.lt)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id EEAD8C0009;
 Thu, 23 Dec 2021 10:55:38 +0000 (UTC)
Date: Thu, 23 Dec 2021 12:00:37 +0100
From: Remi Pommarel <repk@triplefau.lt>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <YcRW1ckSr3ZSCDf9@pilgrim>
References: <20211222191320.17662-1-repk@triplefau.lt>
 <CAK8P3a18b63GoPKiTey8KpEusyffbN97gxP+NM3fyZnOYXv5zg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a18b63GoPKiTey8KpEusyffbN97gxP+NM3fyZnOYXv5zg@mail.gmail.com>
Cc: Networking <netdev@vger.kernel.org>, bridge@lists.linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: fix ioctl old_deviceless
	bridge argument
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

On Wed, Dec 22, 2021 at 10:52:20PM +0100, Arnd Bergmann wrote:
> On Wed, Dec 22, 2021 at 8:13 PM Remi Pommarel <repk@triplefau.lt> wrote:
[...]
> 
> The intention of my broken patch was to make it work for compat mode as I did
> in br_dev_siocdevprivate(), as this is now the only bit that remains broken.
> 
> This could be done along the lines of the patch below, if you see any value in
> it. (not tested, probably not quite right).

Oh ok, because SIOC{S,G}IFBR compat ioctl was painfully done with
old_bridge_ioctl() I didn't think those needed compat. So I adapted and
fixed your patch to get that working.

Here is my test results.

With my initial patch only :
  - 64bit busybox's brctl (working)
    # brctl show
    bridge name     bridge id               STP enabled     interfaces
    br0             8000.000000000000       n

  - CONFIG_COMPAT=y + 32bit busybox's brctl (not working)
    # brctl show
    brctl: SIOCGIFBR: Invalid argument

With both my intial patch and the one below :
  - 64bit busybox's brctl (working)
    # brctl show
    bridge name     bridge id               STP enabled     interfaces
    br0             8000.000000000000       n

  - CONFIG_COMPAT=y + 32bit busybox's brctl (working)
    # brctl show
    bridge name     bridge id               STP enabled     interfaces
    br0             8000.000000000000       n

If you think this has enough value to fix those compatility issues I can
either send the below patch as a V2 replacing my initial one for net
or sending it as a separate patch for net-next. What would you rather
like ?

Thanks

-- 
Remi

diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index ca02db813c72..cbb373acf294 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -101,37 +101,56 @@ static int add_del_if(struct net_bridge *br, int ifindex, int isadd)
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
@@ -300,6 +319,9 @@ int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user
 
 	case BRCTL_GET_FDB_ENTRIES:
 		return get_fdb_entries(br, argp, args[2], args[3]);
+
+	default:
+		ret = -EOPNOTSUPP;
 	}
 
 	if (!ret) {
@@ -312,12 +334,15 @@ int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user
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
@@ -336,7 +361,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 
 		args[2] = get_bridge_ifindices(net, indices, args[2]);
 
-		ret = copy_to_user((void __user *)args[1], indices,
+		ret = copy_to_user(argp, indices,
 				   args[2]*sizeof(int)) ? -EFAULT : args[2];
 
 		kfree(indices);
@@ -351,7 +376,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
 			return -EPERM;
 
-		if (copy_from_user(buf, (void __user *)args[1], IFNAMSIZ))
+		if (copy_from_user(buf, argp, IFNAMSIZ))
 			return -EFAULT;
 
 		buf[IFNAMSIZ-1] = 0;
diff --git a/net/socket.c b/net/socket.c
index d9d036cad388..f5b107c5cb32 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -3278,21 +3278,6 @@ static int compat_ifr_data_ioctl(struct net *net, unsigned int cmd,
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
@@ -3304,9 +3289,6 @@ static int compat_sock_ioctl_trans(struct file *file, struct socket *sock,
 		return sock_ioctl(file, cmd, (unsigned long)argp);
 
 	switch (cmd) {
-	case SIOCSIFBR:
-	case SIOCGIFBR:
-		return old_bridge_ioctl(argp);
 	case SIOCWANDEV:
 		return compat_siocwandev(net, argp);
 	case SIOCGSTAMP_OLD:
@@ -3335,6 +3317,8 @@ static int compat_sock_ioctl_trans(struct file *file, struct socket *sock,
 	case SIOCGSTAMP_NEW:
 	case SIOCGSTAMPNS_NEW:
 	case SIOCGIFCONF:
+	case SIOCSIFBR:
+	case SIOCGIFBR:
 		return sock_ioctl(file, cmd, arg);
 
 	case SIOCGIFFLAGS:
