Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BD22AAADC
	for <lists.bridge@lfdr.de>; Sun,  8 Nov 2020 13:16:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD4B7871DE;
	Sun,  8 Nov 2020 12:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKWar5fplLLI; Sun,  8 Nov 2020 12:16:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7D58871F9;
	Sun,  8 Nov 2020 12:16:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C6AE8C0889;
	Sun,  8 Nov 2020 12:16:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E5176C0889
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D2C6E87525
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJP21kSQLoSE for <bridge@lists.linux-foundation.org>;
 Fri,  6 Nov 2020 22:19:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 55CCB87516
 for <bridge@lists.linux-foundation.org>; Fri,  6 Nov 2020 22:19:06 +0000 (UTC)
Received: from localhost.localdomain
 (HSI-KBW-46-223-126-90.hsi.kabel-badenwuerttemberg.de [46.223.126.90])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A418622210;
 Fri,  6 Nov 2020 22:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604701146;
 bh=MjZ6JfjGRVgBd55ipGAv3Zcz8oLtgmjGkuSG0Rxyjz8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wMqT8C9uy6qGHxU1Qp1fwrtcZ9p6bEcCt4HI7Dfmu5jo86nRThpzE3q95C5D4JpRc
 JI7lD6SC82rg4RcZajbLMi4kpkHV1Alm05o4C6JeGhhc545yyWtnwrYG+H1GC9e2/Q
 nXXm4GwwNhJSzHvX5/6hjmVd1DLfTKpwY+2qUO0o=
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org
Date: Fri,  6 Nov 2020 23:17:40 +0100
Message-Id: <20201106221743.3271965-26-arnd@kernel.org>
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
Subject: [Bridge] [RFC net-next 25/28] hippi: use ndo_siocdevprivate
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

The rr_ioctl uses private ioctl commands that correctly pass
all data through ifr_data, which works fine in compat mode.

Change it to use ndo_siocdevprivate as a cleanup.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/hippi/rrunner.c | 11 ++++++-----
 drivers/net/hippi/rrunner.h |  3 ++-
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/hippi/rrunner.c b/drivers/net/hippi/rrunner.c
index 22010384c4a3..7661dbb31162 100644
--- a/drivers/net/hippi/rrunner.c
+++ b/drivers/net/hippi/rrunner.c
@@ -63,7 +63,7 @@ static const char version[] =
 static const struct net_device_ops rr_netdev_ops = {
 	.ndo_open 		= rr_open,
 	.ndo_stop		= rr_close,
-	.ndo_do_ioctl		= rr_ioctl,
+	.ndo_siocdevprivate	= rr_siocdevprivate,
 	.ndo_start_xmit		= rr_start_xmit,
 	.ndo_set_mac_address	= hippi_mac_addr,
 };
@@ -1568,7 +1568,8 @@ static int rr_load_firmware(struct net_device *dev)
 }
 
 
-static int rr_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
+static int rr_siocdevprivate(struct net_device *dev, struct ifreq *rq,
+			     void __user *data, int cmd)
 {
 	struct rr_private *rrpriv;
 	unsigned char *image, *oldimage;
@@ -1603,7 +1604,7 @@ static int rr_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 			error = -EFAULT;
 			goto gf_out;
 		}
-		error = copy_to_user(rq->ifr_data, image, EEPROM_BYTES);
+		error = copy_to_user(data, image, EEPROM_BYTES);
 		if (error)
 			error = -EFAULT;
 	gf_out:
@@ -1615,7 +1616,7 @@ static int rr_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 			return -EPERM;
 		}
 
-		image = memdup_user(rq->ifr_data, EEPROM_BYTES);
+		image = memdup_user(data, EEPROM_BYTES);
 		if (IS_ERR(image))
 			return PTR_ERR(image);
 
@@ -1658,7 +1659,7 @@ static int rr_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 		return error;
 
 	case SIOCRRID:
-		return put_user(0x52523032, (int __user *)rq->ifr_data);
+		return put_user(0x52523032, (int __user *)data);
 	default:
 		return error;
 	}
diff --git a/drivers/net/hippi/rrunner.h b/drivers/net/hippi/rrunner.h
index 87533784604f..55377614e752 100644
--- a/drivers/net/hippi/rrunner.h
+++ b/drivers/net/hippi/rrunner.h
@@ -835,7 +835,8 @@ static int rr_open(struct net_device *dev);
 static netdev_tx_t rr_start_xmit(struct sk_buff *skb,
 				 struct net_device *dev);
 static int rr_close(struct net_device *dev);
-static int rr_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
+static int rr_siocdevprivate(struct net_device *dev, struct ifreq *rq,
+			     void __user *data, int cmd);
 static unsigned int rr_read_eeprom(struct rr_private *rrpriv,
 				   unsigned long offset,
 				   unsigned char *buf,
-- 
2.27.0

