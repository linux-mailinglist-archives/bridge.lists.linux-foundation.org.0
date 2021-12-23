Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DDE47E571
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 16:27:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4D7A4163C;
	Thu, 23 Dec 2021 15:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oR9aW1_ideso; Thu, 23 Dec 2021 15:27:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7AE2C4163B;
	Thu, 23 Dec 2021 15:27:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4F55FC006E;
	Thu, 23 Dec 2021 15:27:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0C142C0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF47260EFF
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YbLbWjIKYCkK for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 15:27:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [217.70.183.198])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0831B60EE6
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:14 +0000 (UTC)
Received: (Authenticated sender: repk@triplefau.lt)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id EEBA5C0007;
 Thu, 23 Dec 2021 15:27:10 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: netdev@vger.kernel.org
Date: Thu, 23 Dec 2021 16:31:38 +0100
Message-Id: <20211223153139.7661-2-repk@triplefau.lt>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211223153139.7661-1-repk@triplefau.lt>
References: <20211223153139.7661-1-repk@triplefau.lt>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Arnd Bergmann <arnd@arndb.de>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Remi Pommarel <repk@triplefau.lt>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net 1/2] net: bridge: fix ioctl old_deviceless
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

Commit 561d8352818f ("bridge: use ndo_siocdevprivate") changed the
source and destination arguments of copy_{to,from}_user in bridge's
old_deviceless() from args[1] to uarg breaking SIOC{G,S}IFBR ioctls.

Commit cbd7ad29a507 ("net: bridge: fix ioctl old_deviceless bridge
argument") fixed only BRCTL_{ADD,DEL}_BRIDGES commands leaving
BRCTL_GET_BRIDGES one untouched.

The fixes BRCTL_GET_BRIDGES as well and has been tested with busybox's
brctl.

Example of broken brctl:
$ brctl show
bridge name     bridge id               STP enabled     interfaces
brctl: can't get bridge name for index 0: No such device or address

Example of fixed brctl:
$ brctl show
bridge name     bridge id               STP enabled     interfaces
br0             8000.000000000000       no

Fixes: 561d8352818f ("bridge: use ndo_siocdevprivate")
Signed-off-by: Remi Pommarel <repk@triplefau.lt>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_ioctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index db4ab2c2ce18..891cfcf45644 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -337,7 +337,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
 
 		args[2] = get_bridge_ifindices(net, indices, args[2]);
 
-		ret = copy_to_user(uarg, indices,
+		ret = copy_to_user((void __user *)args[1], indices,
 				   array_size(args[2], sizeof(int)))
 			? -EFAULT : args[2];
 
-- 
2.33.0

