Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E39F41B822
	for <lists.bridge@lfdr.de>; Tue, 28 Sep 2021 22:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E9AAF40175;
	Tue, 28 Sep 2021 20:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9CLeLQ0k6lEp; Tue, 28 Sep 2021 20:08:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 372AE405E9;
	Tue, 28 Sep 2021 20:08:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E8696C0022;
	Tue, 28 Sep 2021 20:08:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CACB1C000D
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 20:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC43182977
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 20:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eDVg9Xmt10Bs for <bridge@lists.linux-foundation.org>;
 Tue, 28 Sep 2021 20:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B803A827AF
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 20:08:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E49B611BD;
 Tue, 28 Sep 2021 20:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632859717;
 bh=iGeBtWmkRfAzSRTb77ICIIphC0rlNZhpBjX8dqGzNdE=;
 h=Date:From:To:Cc:Subject:From;
 b=QSz+7uuGhjxu5ImIZDs39zDTwyBDTiFHsi1eRagbHh6ByUCOO2mPsQUxgrEenKiAt
 B4aiqepgKIVeEeiai4Sjb+z7aN5rLt2Q/iDTcXC3+dw8jDRSdS6djC2vgsnP6K1pae
 jByhOq3eFccW+h7ol0y5x6IoyZZaHoTqfVdc6Jbcp8pBjYr9KTYic09JTBHS36yOS0
 iF8zDfOU9YzJ0uLSiB/6NVZ6MCA/pt3tXQJ+KkPRZV1FBcca3BTugcf0RPzSbZGMNR
 jahze2rOThLQIVYyKSCdBBF9Merdt1Ax0+h5xbxWFk/h8pbgjydpLXIoAmrCs+4ea6
 WztIrCREd/tUw==
Date: Tue, 28 Sep 2021 15:12:39 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210928201239.GA267176@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: [Bridge] [PATCH][net-next] net: bridge: Use array_size() helper in
 copy_to_user()
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

Use array_size() helper instead of the open-coded version in
copy_to_user(). These sorts of multiplication factors need
to be wrapped in array_size().

Link: https://github.com/KSPP/linux/issues/160
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 net/bridge/br_ioctl.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index 793b0db9d9a3..49c268871fc1 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -71,7 +71,8 @@ static int get_fdb_entries(struct net_bridge *br, void __user *userbuf,
 
 	num = br_fdb_fillbuf(br, buf, maxnum, offset);
 	if (num > 0) {
-		if (copy_to_user(userbuf, buf, num*sizeof(struct __fdb_entry)))
+		if (copy_to_user(userbuf, buf,
+				 array_size(num, sizeof(struct __fdb_entry))))
 			num = -EFAULT;
 	}
 	kfree(buf);
@@ -188,7 +189,7 @@ int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq, void __user
 			return -ENOMEM;
 
 		get_port_ifindices(br, indices, num);
-		if (copy_to_user(argp, indices, num * sizeof(int)))
+		if (copy_to_user(argp, indices, array_size(num, sizeof(int))))
 			num =  -EFAULT;
 		kfree(indices);
 		return num;
@@ -336,7 +337,8 @@ static int old_deviceless(struct net *net, void __user *uarg)
 
 		args[2] = get_bridge_ifindices(net, indices, args[2]);
 
-		ret = copy_to_user(uarg, indices, args[2]*sizeof(int))
+		ret = copy_to_user(uarg, indices,
+				   array_size(args[2], sizeof(int)))
 			? -EFAULT : args[2];
 
 		kfree(indices);
-- 
2.27.0

