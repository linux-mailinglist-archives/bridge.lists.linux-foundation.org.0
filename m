Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47637273BE4
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 09:30:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D6CD85B78;
	Tue, 22 Sep 2020 07:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3wr2xWdDIcuA; Tue, 22 Sep 2020 07:30:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E136185BCD;
	Tue, 22 Sep 2020 07:30:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D42ABC0051;
	Tue, 22 Sep 2020 07:30:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 63587C0051
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 54C0586382
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MFsCqMj9xkQc for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 07:30:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C2AB2847E6
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:45 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k15so15831928wrn.10
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hUlbZThuj5etaf+babxSJzhQjwbLaOi/wOfX/kpZKzg=;
 b=sXqAL1VPVXSd8E62OpeZO+39n+bjtGih31vcfFNElGnYR86bWHAdxoIuKc/edMBRN+
 G4qvUyG0PmNXYiw+b6m29FfmShaDflGTlovFS+i2njyHz9eA0EgrtM25pDFpcpgBPkJq
 /w74rpH2CC5X185AjxuZYXbo4eOBQAU+b6Deyq6EjkeEL2H5Xpxs2LG7hWtBHrhX1Kb7
 wLV8mmZvC2Yjb4jZpIkMaj1ysEUSLjj8JHIwy05N5jm3nqlWhZ6NLgjtMnB31tDjghkv
 5h4P5REgWG9oSGvfDCAyHpQKeo7AfhI+O17Hq5t070EvXaRL1LaYN+AoMCq3a/QiSOj2
 kLUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hUlbZThuj5etaf+babxSJzhQjwbLaOi/wOfX/kpZKzg=;
 b=sv40vN30vuZWFmdfBV2k+3D1a80WjqncT6mwveolUTOmGyoG1ylgjAck4lLKFrHLBu
 Kz2a9nyeUWoJFkICsN1qsSSqfF9ga/6TFPJTCXCaLzTH/vWuoZSNW/zkNYN9Pka3CXli
 7No7fyIjMS5ZVhHnc0OGnUBeac5UN0iTwDOsVr2+Fj1Oqs/Y90LvAcILLeSeOrabDzr6
 dvOlX5vRUV9Nt1EfskVSymcpUWyS56Q5xZ/regMLFx/s2w8NhcPPTKXAxEGhKeM2IMb4
 BmWLX5DOW1xumQvnDv2wHjSvmmUjupH4Z/I+dYPnZtvgzP8rd+SyvkK+gJ85YDujKrLt
 BFzg==
X-Gm-Message-State: AOAM5331DzTPr1j3vaa4zFrji7HISK++5hcAKgQ3eUicYsCsRt14vEkw
 0Ehzsa1fZJOr7tomdcB9M6CgdBrYEnURRZcIL+haWg==
X-Google-Smtp-Source: ABdhPJxeoE/ykmZFUu76mKlOd65+t4QOciHLyHJzkmJkm7368FuV9BpkIew0BG/3qFHFM3MoGoYz/Q==
X-Received: by 2002:adf:e289:: with SMTP id v9mr3786703wri.14.1600759844166;
 Tue, 22 Sep 2020 00:30:44 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s26sm3258287wmh.44.2020.09.22.00.30.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 00:30:43 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 22 Sep 2020 10:30:12 +0300
Message-Id: <20200922073027.1196992-2-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922073027.1196992-1-razor@blackwall.org>
References: <20200922073027.1196992-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 01/16] net: bridge: mdb: use extack in
	br_mdb_parse()
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

We can drop the pr_info() calls and just use extack to return a
meaningful error to user-space when br_mdb_parse() fails.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_mdb.c | 60 +++++++++++++++++++++++++++++----------------
 1 file changed, 39 insertions(+), 21 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 00f1651a6aba..d4031f5554f7 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -629,33 +629,50 @@ void br_rtr_notify(struct net_device *dev, struct net_bridge_port *port,
 	rtnl_set_sk_err(net, RTNLGRP_MDB, err);
 }
 
-static bool is_valid_mdb_entry(struct br_mdb_entry *entry)
+static bool is_valid_mdb_entry(struct br_mdb_entry *entry,
+			       struct netlink_ext_ack *extack)
 {
-	if (entry->ifindex == 0)
+	if (entry->ifindex == 0) {
+		NL_SET_ERR_MSG_MOD(extack, "Zero entry ifindex is not allowed");
 		return false;
+	}
 
 	if (entry->addr.proto == htons(ETH_P_IP)) {
-		if (!ipv4_is_multicast(entry->addr.u.ip4))
+		if (!ipv4_is_multicast(entry->addr.u.ip4)) {
+			NL_SET_ERR_MSG_MOD(extack, "IPv4 entry group address is not multicast");
 			return false;
-		if (ipv4_is_local_multicast(entry->addr.u.ip4))
+		}
+		if (ipv4_is_local_multicast(entry->addr.u.ip4)) {
+			NL_SET_ERR_MSG_MOD(extack, "IPv4 entry group address is local multicast");
 			return false;
+		}
 #if IS_ENABLED(CONFIG_IPV6)
 	} else if (entry->addr.proto == htons(ETH_P_IPV6)) {
-		if (ipv6_addr_is_ll_all_nodes(&entry->addr.u.ip6))
+		if (ipv6_addr_is_ll_all_nodes(&entry->addr.u.ip6)) {
+			NL_SET_ERR_MSG_MOD(extack, "IPv6 entry group address is link-local all nodes");
 			return false;
+		}
 #endif
-	} else
+	} else {
+		NL_SET_ERR_MSG_MOD(extack, "Unknown entry protocol");
 		return false;
-	if (entry->state != MDB_PERMANENT && entry->state != MDB_TEMPORARY)
+	}
+
+	if (entry->state != MDB_PERMANENT && entry->state != MDB_TEMPORARY) {
+		NL_SET_ERR_MSG_MOD(extack, "Unknown entry state");
 		return false;
-	if (entry->vid >= VLAN_VID_MASK)
+	}
+	if (entry->vid >= VLAN_VID_MASK) {
+		NL_SET_ERR_MSG_MOD(extack, "Invalid entry VLAN id");
 		return false;
+	}
 
 	return true;
 }
 
 static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
-			struct net_device **pdev, struct br_mdb_entry **pentry)
+			struct net_device **pdev, struct br_mdb_entry **pentry,
+			struct netlink_ext_ack *extack)
 {
 	struct net *net = sock_net(skb->sk);
 	struct br_mdb_entry *entry;
@@ -671,36 +688,37 @@ static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	bpm = nlmsg_data(nlh);
 	if (bpm->ifindex == 0) {
-		pr_info("PF_BRIDGE: br_mdb_parse() with invalid ifindex\n");
+		NL_SET_ERR_MSG_MOD(extack, "Invalid bridge ifindex");
 		return -EINVAL;
 	}
 
 	dev = __dev_get_by_index(net, bpm->ifindex);
 	if (dev == NULL) {
-		pr_info("PF_BRIDGE: br_mdb_parse() with unknown ifindex\n");
+		NL_SET_ERR_MSG_MOD(extack, "Bridge device doesn't exist");
 		return -ENODEV;
 	}
 
 	if (!(dev->priv_flags & IFF_EBRIDGE)) {
-		pr_info("PF_BRIDGE: br_mdb_parse() with non-bridge\n");
+		NL_SET_ERR_MSG_MOD(extack, "Device is not a bridge");
 		return -EOPNOTSUPP;
 	}
 
 	*pdev = dev;
 
-	if (!tb[MDBA_SET_ENTRY] ||
-	    nla_len(tb[MDBA_SET_ENTRY]) != sizeof(struct br_mdb_entry)) {
-		pr_info("PF_BRIDGE: br_mdb_parse() with invalid attr\n");
+	if (!tb[MDBA_SET_ENTRY]) {
+		NL_SET_ERR_MSG_MOD(extack, "Missing MDBA_SET_ENTRY attribute");
 		return -EINVAL;
 	}
-
-	entry = nla_data(tb[MDBA_SET_ENTRY]);
-	if (!is_valid_mdb_entry(entry)) {
-		pr_info("PF_BRIDGE: br_mdb_parse() with invalid entry\n");
+	if (nla_len(tb[MDBA_SET_ENTRY]) != sizeof(struct br_mdb_entry)) {
+		NL_SET_ERR_MSG_MOD(extack, "Invalid MDBA_SET_ENTRY attribute length");
 		return -EINVAL;
 	}
 
+	entry = nla_data(tb[MDBA_SET_ENTRY]);
+	if (!is_valid_mdb_entry(entry, extack))
+		return -EINVAL;
 	*pentry = entry;
+
 	return 0;
 }
 
@@ -797,7 +815,7 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct net_bridge *br;
 	int err;
 
-	err = br_mdb_parse(skb, nlh, &dev, &entry);
+	err = br_mdb_parse(skb, nlh, &dev, &entry, extack);
 	if (err < 0)
 		return err;
 
@@ -892,7 +910,7 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct net_bridge *br;
 	int err;
 
-	err = br_mdb_parse(skb, nlh, &dev, &entry);
+	err = br_mdb_parse(skb, nlh, &dev, &entry, extack);
 	if (err < 0)
 		return err;
 
-- 
2.25.4

