Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5F736C0A0
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F704608E6;
	Tue, 27 Apr 2021 08:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zSFs6IJGuVTr; Tue, 27 Apr 2021 08:08:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFF4E60B1F;
	Tue, 27 Apr 2021 08:08:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7C6B4C0034;
	Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 871F0C000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6975B40285
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id klCeWOeUC4kY for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 17:04:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7666C400C5
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 17:04:57 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id l22so57611587ljc.9
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 10:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=gzQDdQ618Jx3kzdjnFlYcMdSiOavctKmFQ8g/5KX7GA=;
 b=uq1FHOyIjawGvTLS4Jqu5xKTO74wCskKAAgWI4HOIaiQtlmIN3asnrE6CGoqYDageY
 roWg5fZLf/xqzTxEvtiqLOtu7pyNrBxPaZmAZ8K6x2xJGZkmpkyFrwuNQLLkGYhFOFte
 W37JiN4CiUXrrTOLwx2NeyavFs8wuYFMucJ+mj3hzM1xGrNaS1IbYVg+xklCz61ZpAPY
 RpL2BgMq81x2E9J0PCAQFvcX2sTguJQi848TgK8r6AZUJ5+V8ofGNaIW6NSc9I8pWnyG
 zL6KF6ZNadKfbyVhIZCIVxyTFfCjqIoUYNpumBGOHtGmE2ve44wXACWxyYvDCnYhdB+5
 B1rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=gzQDdQ618Jx3kzdjnFlYcMdSiOavctKmFQ8g/5KX7GA=;
 b=fWV15pm874dbnsQVxPGsnySFYcqe/QMTjRDtdmB/s9WqPo8eBhZhotulaJyfUvd5zw
 /1npULpvwOXaOxmKV661WLZuYTBH4j0c0TfgeTdbWgx3lNCsIGcCr1s8ltfcPNmIu3Pk
 c2BtVrJcSXq0Dk+iw39F/2GFIkGVe+2tgJ72gs76b6v6ftZr4rhpXpQbdDFaTvsUXY1H
 lCmwIpbQ3kez5Ee0AiEYEbnv9dDezwG0+NA0ju+Scta2ObCr3O4tuPX691Q1SkT3UlCb
 h5+x1ofSm+V4RC0wto20jjHydOP+xQfyEJPfsdWTfw4IoCmw8aQlIzJlMXTvC4lR8VJx
 Tq9A==
X-Gm-Message-State: AOAM531bPSYmKyaoDnx0rFJgHov9HgOfsFOKUYbkUN6QpkxDQvPikY3p
 d3BvOJoKUEUfSm6GCgo/zWl2jA==
X-Google-Smtp-Source: ABdhPJzVnp6iB9poyGk0MI1D6PC44k8j/S9TEtbBs47jLnvBteFxwn0mPPOcmZ/nS1yjuP32bl2v5w==
X-Received: by 2002:a2e:9b51:: with SMTP id o17mr13479013ljj.315.1619456695317; 
 Mon, 26 Apr 2021 10:04:55 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id c18sm59140ljd.66.2021.04.26.10.04.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 10:04:54 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 26 Apr 2021 19:04:11 +0200
Message-Id: <20210426170411.1789186-10-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210426170411.1789186-1-tobias@waldekranz.com>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 nikolay@nvidia.com, roopa@nvidia.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [RFC net-next 9/9] net: dsa: mv88e6xxx: Forward offloading
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

Allow the DSA tagger to generate FORWARD frames for offloaded skbs
sent from a bridge that we offload, allowing the switch to handle any
frame replication that may be required. This also means that source
address learning takes place on packets sent from the CPU, meaning
that return traffic no longer needs to be flooded as unknown unicast.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c | 17 ++++++++++++++++
 net/dsa/tag_dsa.c                | 33 ++++++++++++++++++++++++--------
 2 files changed, 42 insertions(+), 8 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 6975cf16da65..00ed1aa2a55a 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -6077,6 +6077,21 @@ static int mv88e6xxx_crosschip_lag_leave(struct dsa_switch *ds, int sw_index,
 	return err_sync ? : err_pvt;
 }
 
+static void *mv88e6xxx_dfwd_add_station(struct dsa_switch *ds, int port,
+					struct net_device *sb_dev)
+{
+	struct dsa_port *dp = dsa_to_port(ds, port);
+	struct mv88e6xxx_chip *chip = ds->priv;
+
+	if (!mv88e6xxx_has_pvt(chip))
+		return ERR_PTR(-EOPNOTSUPP);
+
+	if (sb_dev == dp->bridge_dev)
+		return sb_dev;
+
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
 static const struct dsa_switch_ops mv88e6xxx_switch_ops = {
 	.get_tag_protocol	= mv88e6xxx_get_tag_protocol,
 	.change_tag_protocol	= mv88e6xxx_change_tag_protocol,
@@ -6138,6 +6153,7 @@ static const struct dsa_switch_ops mv88e6xxx_switch_ops = {
 	.crosschip_lag_change	= mv88e6xxx_crosschip_lag_change,
 	.crosschip_lag_join	= mv88e6xxx_crosschip_lag_join,
 	.crosschip_lag_leave	= mv88e6xxx_crosschip_lag_leave,
+	.dfwd_add_station	= mv88e6xxx_dfwd_add_station,
 };
 
 static int mv88e6xxx_register_switch(struct mv88e6xxx_chip *chip)
@@ -6156,6 +6172,7 @@ static int mv88e6xxx_register_switch(struct mv88e6xxx_chip *chip)
 	ds->ops = &mv88e6xxx_switch_ops;
 	ds->ageing_time_min = chip->info->age_time_coeff;
 	ds->ageing_time_max = chip->info->age_time_coeff * U8_MAX;
+	ds->num_tx_queues = 2;
 
 	/* Some chips support up to 32, but that requires enabling the
 	 * 5-bit port mode, which we do not support. 640k^W16 ought to
diff --git a/net/dsa/tag_dsa.c b/net/dsa/tag_dsa.c
index 7e7b7decdf39..09cdf77697b2 100644
--- a/net/dsa/tag_dsa.c
+++ b/net/dsa/tag_dsa.c
@@ -46,6 +46,7 @@
  */
 
 #include <linux/etherdevice.h>
+#include <linux/dsa/mv88e6xxx.h>
 #include <linux/list.h>
 #include <linux/slab.h>
 
@@ -126,7 +127,22 @@ static struct sk_buff *dsa_xmit_ll(struct sk_buff *skb, struct net_device *dev,
 				   u8 extra)
 {
 	struct dsa_port *dp = dsa_slave_to_port(dev);
+	u16 pvid = dp->pvid;
+	enum dsa_cmd cmd;
 	u8 *dsa_header;
+	u8 tag_dev, tag_port;
+
+	if (DSA_SKB_CB(skb)->sb_dev) {
+		cmd = DSA_CMD_FORWARD;
+		if (mv88e6xxx_dst_bridge_to_dsa(dp->ds->dst,
+						DSA_SKB_CB(skb)->sb_dev,
+						&tag_dev, &tag_port))
+			return NULL;
+	} else {
+		cmd = DSA_CMD_FROM_CPU;
+		tag_dev = dp->ds->index;
+		tag_port = dp->index;
+	}
 
 	if (skb->protocol == htons(ETH_P_8021Q)) {
 		if (extra) {
@@ -134,10 +150,10 @@ static struct sk_buff *dsa_xmit_ll(struct sk_buff *skb, struct net_device *dev,
 			memmove(skb->data, skb->data + extra, 2 * ETH_ALEN);
 		}
 
-		/* Construct tagged FROM_CPU DSA tag from 802.1Q tag. */
+		/* Construct tagged DSA tag from 802.1Q tag. */
 		dsa_header = skb->data + 2 * ETH_ALEN + extra;
-		dsa_header[0] = (DSA_CMD_FROM_CPU << 6) | 0x20 | dp->ds->index;
-		dsa_header[1] = dp->index << 3;
+		dsa_header[0] = (cmd << 6) | 0x20 | tag_dev;
+		dsa_header[1] = tag_port << 3;
 
 		/* Move CFI field from byte 2 to byte 1. */
 		if (dsa_header[2] & 0x10) {
@@ -148,12 +164,13 @@ static struct sk_buff *dsa_xmit_ll(struct sk_buff *skb, struct net_device *dev,
 		skb_push(skb, DSA_HLEN + extra);
 		memmove(skb->data, skb->data + DSA_HLEN + extra, 2 * ETH_ALEN);
 
-		/* Construct untagged FROM_CPU DSA tag. */
+		/* Construct untagged DSA tag. */
 		dsa_header = skb->data + 2 * ETH_ALEN + extra;
-		dsa_header[0] = (DSA_CMD_FROM_CPU << 6) | dp->ds->index;
-		dsa_header[1] = dp->index << 3;
-		dsa_header[2] = 0x00;
-		dsa_header[3] = 0x00;
+
+		dsa_header[0] = (cmd << 6) | tag_dev;
+		dsa_header[1] = tag_port << 3;
+		dsa_header[2] = pvid >> 8;
+		dsa_header[3] = pvid & 0xff;
 	}
 
 	return skb;
-- 
2.25.1

