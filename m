Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B15BB4FB639
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 10:41:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2120441588;
	Mon, 11 Apr 2022 08:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2u6rrTupYdq; Mon, 11 Apr 2022 08:41:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 24CE441582;
	Mon, 11 Apr 2022 08:41:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C290CC008C;
	Mon, 11 Apr 2022 08:41:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1C7F6C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 19A6841560
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1fERhatZud3c for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 08:41:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A9DC4155C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 08:41:17 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id c15so19149487ljr.9
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 01:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=wVQ0HARhc+FxCf/O5hQemDc31KPNUzAFgjRud4EVmj0=;
 b=IiYlIzzw6xSpVMIsEs9TF4kFV5ijoit+JbuIYRGVRHxl40fbt6p6r5Trxu6a5OYBWy
 a+6Phbq3A0pk0VkfqfpE4xJ943Z3EGR7sjRuAxznHf1wdsRFaVJ+gCAb/SCDtsxK0ERt
 aUgZ1sIjquH45Y0I5NONMMRHNSIuikRZN6GcOezI/K1BsYGwVffvhxQCDJdq5PZ0KRMz
 9B2TANhwKr5y1Fh5kD7s8VhKVoXD1fOQYIdXbcVycBAZd9Az29dhTeDdyx7jk5jIHuFj
 Vf1Mq00iKP2sWsmh4W2mPJut+jKflmjfhkthOMEoaBAi+wzu7kJGpNi53sQXT1qbSQ4k
 IBCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=wVQ0HARhc+FxCf/O5hQemDc31KPNUzAFgjRud4EVmj0=;
 b=tImXTX0OQfT3R2BQ4H+uTb0+BM5BhxMP0XDgRQIgF6eK8q46u1iA23rKKuao07FV61
 D1c4OGhuQmh7wZgytbMmJMc/YDgwSLc7MsVDg6OEFM+t3jrWsSU3EzWoKJRBrlmaWl/N
 AMPnebT9FENlfeprfFb+Db+mVeEncpKQKQGt6jA1zC8Z3afpHwih9E1eyS9x731s+sSU
 Do71OX8g3sTXdTf3oX4ULh0tndyiSBDULrP7nJvdMYN5pwpA2KEbxh32BM0Z7l8lzzfe
 x27FUDedhem/C5Sp3XYoU96HNuERxGoZFlIv3aEfmNu197FId1QFUz48k+JChs8FLiO9
 lU1w==
X-Gm-Message-State: AOAM531iutLCXnD0anFEkWYropX9F93mqzRhOrD/f9MWFOX5nL5GeQ9W
 HQygWqlbJQ7XnM1a9ywY9jg=
X-Google-Smtp-Source: ABdhPJxM9YmQOWvSk+ddKlvNVI1IhjkzfoUxCeNXbLrRJnzRjCTfLe7xe5IKjjeB7JJdnlvTnIWyKg==
X-Received: by 2002:a2e:91d7:0:b0:24b:6981:15a6 with SMTP id
 u23-20020a2e91d7000000b0024b698115a6mr271533ljg.141.1649666476040; 
 Mon, 11 Apr 2022 01:41:16 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 x24-20020a056512047800b0046b9dafd55bsm549080lfd.164.2022.04.11.01.41.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 01:41:15 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Date: Mon, 11 Apr 2022 10:40:53 +0200
Message-Id: <20220411084054.298807-2-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411084054.298807-1-troglobit@gmail.com>
References: <20220223172407.175865-1-troglobit@gmail.com>
 <20220411084054.298807-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Joachim Wiberg <troglobit@gmail.com>, "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v2 net-next 1/2] net: bridge: add support for host
	l2 mdb entries
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

This patch expands on the earlier work on layer-2 mdb entries by adding
support for host entries.  Due to the fact that host joined entries do
not have any flag field, we infer the permanent flag when reporting the
entries to userspace, which otherwise would be listed as 'temp'.

Before patch:

    ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee permanent
    Error: bridge: Flags are not allowed for host groups.
    ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee
    Error: bridge: Only permanent L2 entries allowed.

After patch:

    ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee permanent
    ~# bridge mdb show
    dev br0 port br0 grp 01:00:00:c0:ff:ee permanent vid 1

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_mdb.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 4556d913955b..fdcc641fc89a 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -251,14 +251,16 @@ static int __mdb_fill_info(struct sk_buff *skb,
 	__mdb_entry_fill_flags(&e, flags);
 	e.ifindex = ifindex;
 	e.vid = mp->addr.vid;
-	if (mp->addr.proto == htons(ETH_P_IP))
+	if (mp->addr.proto == htons(ETH_P_IP)) {
 		e.addr.u.ip4 = mp->addr.dst.ip4;
 #if IS_ENABLED(CONFIG_IPV6)
-	else if (mp->addr.proto == htons(ETH_P_IPV6))
+	} else if (mp->addr.proto == htons(ETH_P_IPV6)) {
 		e.addr.u.ip6 = mp->addr.dst.ip6;
 #endif
-	else
+	} else {
 		ether_addr_copy(e.addr.u.mac_addr, mp->addr.dst.mac_addr);
+		e.state = MDB_PG_FLAGS_PERMANENT;
+	}
 	e.addr.proto = mp->addr.proto;
 	nest_ent = nla_nest_start_noflag(skb,
 					 MDBA_MDB_ENTRY_INFO);
@@ -873,8 +875,8 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 		return -EINVAL;
 
 	/* host join errors which can happen before creating the group */
-	if (!port) {
-		/* don't allow any flags for host-joined groups */
+	if (!port && !br_group_is_l2(&group)) {
+		/* don't allow any flags for host-joined IP groups */
 		if (entry->state) {
 			NL_SET_ERR_MSG_MOD(extack, "Flags are not allowed for host groups");
 			return -EINVAL;
-- 
2.25.1

