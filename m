Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCF22721B3
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:01:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 293E820502;
	Mon, 21 Sep 2020 11:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T52gMC0qfC0j; Mon, 21 Sep 2020 11:01:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 7B4E7204CA;
	Mon, 21 Sep 2020 11:01:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5D060C0051;
	Mon, 21 Sep 2020 11:01:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7014C0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:01:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B14C204E5
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XE8siYnWTy3N for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:01:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 126CA204DC
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:01:42 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z1so12268285wrt.3
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HukKeZEePLGYcfWW3UN/WsRcjshJ3r821tIfQZy/ZXg=;
 b=zBzNWb7VdE9Q36qyv7OwhfmFqotkR2aY5W7WVgs+kaLvTlgIHTkL3yIzSdhix26eXK
 N14rE7Juhg5xYmRliNHv+HRGD9HG7jMjR8+iEKAWLhdWoa1kck/5UI6roONW7mGhEEt4
 v6jPHNV3RB4HZ1c6LQDjY/SWlkbXgdfk4f9qMFME/aV2C94DtnckPz5F0MJ5xE1+LiBR
 qFfsdVbz3xDgB9evtN1bC9N8ujlEpF7olz3hfkGsrsYte95xOkcJxWtrWHOboURLBG+P
 VltAISB7auya4dUR9tlRNAafzyW/c/gH8HMNx6ntb6aGX7F7GsJG+hF6brWJnXJhvgzo
 fZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HukKeZEePLGYcfWW3UN/WsRcjshJ3r821tIfQZy/ZXg=;
 b=MEcvKqcNX85v4qxxicSBQVujS3yPxObty+EJ29st//YoACA1OiwK8HaI31U6svz27E
 xOwgDN8CxpBjNK3tByw6TTl5bPE0mEHfCwRdeJinZ/PKiGW7RZbH50ynXWvfKxWjgSuq
 jK73dkziUYwbH1cCsbey/HOeeKmyjosKLHbMLH3wEF6QjiNDlHMdd0N98S2v+xoArju6
 KUMfoC/Fs0rwlDNYcYUiV7KS3gOeC2U4w2pCAUWz29ifcrRkJ/PqBl1qT5XTS+WuOBzR
 HW+LXZPPkLqs8Biq14HQbpzQs40dqKhvWCjpNPozxvkzRoN+YU+/PQCq++nMV+s3ziHg
 nh2A==
X-Gm-Message-State: AOAM533x5l0b1ELbxodixKVJDpat3zvE64icPhGB9MWA1GHyM03d1e7f
 ZPE/BBHyuXZ+U+Hw253F/OCpp5YzwMWL42P2lNo=
X-Google-Smtp-Source: ABdhPJyMsHr2H8QAJEKGoAm1iP0xUuCideYBH3Cc/NTldklnevdWpO2QqGn5je9v0fqOu6Yu/N7bPA==
X-Received: by 2002:adf:912b:: with SMTP id j40mr51850322wrj.42.1600685771267; 
 Mon, 21 Sep 2020 03:56:11 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:10 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:12 +0300
Message-Id: <20200921105526.1056983-3-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 02/16] net: bridge: mdb: move all port and
	bridge checks to br_mdb_add
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

To avoid doing duplicate device checks and searches (the same were done
in br_mdb_add and __br_mdb_add) pass the already found port to __br_mdb_add
and pull the bridge's netif_running and enabled multicast checks to
br_mdb_add. This would also simplify the future extack errors.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_mdb.c | 24 +++++++-----------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index d4031f5554f7..92ab7369fee0 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -775,31 +775,18 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 }
 
 static int __br_mdb_add(struct net *net, struct net_bridge *br,
+			struct net_bridge_port *p,
 			struct br_mdb_entry *entry)
 {
 	struct br_ip ip;
-	struct net_device *dev;
-	struct net_bridge_port *p = NULL;
 	int ret;
 
-	if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
-		return -EINVAL;
-
-	if (entry->ifindex != br->dev->ifindex) {
-		dev = __dev_get_by_index(net, entry->ifindex);
-		if (!dev)
-			return -ENODEV;
-
-		p = br_port_get_rtnl(dev);
-		if (!p || p->br != br || p->state == BR_STATE_DISABLED)
-			return -EINVAL;
-	}
-
 	__mdb_entry_to_br_ip(entry, &ip);
 
 	spin_lock_bh(&br->multicast_lock);
 	ret = br_mdb_add_group(br, p, &ip, entry);
 	spin_unlock_bh(&br->multicast_lock);
+
 	return ret;
 }
 
@@ -821,6 +808,9 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	br = netdev_priv(dev);
 
+	if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
+		return -EINVAL;
+
 	if (entry->ifindex != br->dev->ifindex) {
 		pdev = __dev_get_by_index(net, entry->ifindex);
 		if (!pdev)
@@ -840,12 +830,12 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (br_vlan_enabled(br->dev) && vg && entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			entry->vid = v->vid;
-			err = __br_mdb_add(net, br, entry);
+			err = __br_mdb_add(net, br, p, entry);
 			if (err)
 				break;
 		}
 	} else {
-		err = __br_mdb_add(net, br, entry);
+		err = __br_mdb_add(net, br, p, entry);
 	}
 
 	return err;
-- 
2.25.4

