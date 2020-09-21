Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7899427223A
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:22:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E9CD120502;
	Mon, 21 Sep 2020 11:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M8J5LJ2DGJZI; Mon, 21 Sep 2020 11:22:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 2143020500;
	Mon, 21 Sep 2020 11:22:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F196EC0051;
	Mon, 21 Sep 2020 11:22:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9946C0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C8F398683A
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yTqymynHvfy6 for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:22:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65BB786812
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:22:41 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id r7so17120365ejs.11
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hUlbZThuj5etaf+babxSJzhQjwbLaOi/wOfX/kpZKzg=;
 b=BCyDPsx3dv59RiP//P0F/K4Z9uEUPYTyJz9Fge98iEUiErkepQvrWZIiGQ6kmpy2nO
 f4zfy0ehHPXDSXfxLlAit/IqpZNwPjDXEnhTvImduTH+7ZH4yqcY3CEgrDc8vfg6wQfG
 qLcTcx4R2wdvfDuP44zQFZDEUli/PoWHcylU+RRJxQE+YwNfp0BECCsgMM223dIhJ/Zv
 kOkb5WWt4Ldm915z/+35Eg4v0mnFvS7lFREL2WJgC0ca2fMz2ql7/KSclZm+pXiE6P8N
 XM3cBUtUP+BSLpI8UmKr+wcLnr5HDe/cLPfvHxiHtHbGr414ve+MKRZj3+aJm39sl6Ui
 27mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hUlbZThuj5etaf+babxSJzhQjwbLaOi/wOfX/kpZKzg=;
 b=IUZNwctNojWQ1td++TB0o5l9db3SW2g2gZ0LD9l8bx8UxZ/9WMZsGZMXepSyQ9ssih
 9ofONF5Mp0RU737yhUPQWu22HHC5MUZRHKVnrmojPOK9vdkJWe/RWoypLDaIDFEJ4XV7
 V8wdJ4e8jMkxumebYAT5VK4VQqvXX3RQ1FTdo0y6VM5fUYXuNKSxuOKnbFfM1AIsfIVi
 UETChHjAR5f/lMDj27Xq3ILME6zcau1G4wj8dAQUDVEYgCC8hR/iZldZ4cID6B2MoMnn
 ikTSk0v/DCtYOMZ0L00OdZwvvp+jLiAHiup9SY8pP28VTEIj1pyEL5o3PmqCLW2Vro0g
 m0JQ==
X-Gm-Message-State: AOAM533ipQctZV86XtQEt2j8sqgDxs0GnrZHUWWxjFf+UXLyjgW3QcwA
 spk0oW/SiY1BS/sWjpxtMEzgETIUwh1JoDUCqb0=
X-Google-Smtp-Source: ABdhPJyO4mOjdYXfY6r2zpIRIXZS4wWsHu9GKiyp9RTExdWXUCy6b6lJbLYT9ucD/GBROEBa5qdoAg==
X-Received: by 2002:adf:df05:: with SMTP id y5mr56370192wrl.39.1600685770049; 
 Mon, 21 Sep 2020 03:56:10 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:09 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:11 +0300
Message-Id: <20200921105526.1056983-2-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 01/16] net: bridge: mdb: use extack in
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

