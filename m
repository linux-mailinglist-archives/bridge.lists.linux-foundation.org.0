Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9255225F706
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 12:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 346E985EAF;
	Mon,  7 Sep 2020 10:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 06TgkBZyxhwL; Mon,  7 Sep 2020 10:00:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3EC9385F08;
	Mon,  7 Sep 2020 10:00:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1B9F4C0891;
	Mon,  7 Sep 2020 10:00:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 659CEC0859
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 43A03204EB
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4+tU4fZxhW6L for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 10:00:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 355BC204E7
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:23 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a17so15121429wrn.6
 for <bridge@lists.linux-foundation.org>; Mon, 07 Sep 2020 03:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hT9vU1lKXpIUXAGJ5O2ZQpnKTxvjgUKuVdaVH35xDc4=;
 b=Jm1ni1OvKfnoy3LID8MkqdbXAolRGKTQO1t3F1t+tJdaNUtsSndZFr/YjvNFukESiH
 ONePuR8ewsfOZxP+Meflh1eGjS0e4fiu/mPERDCt91uui3vaH3XrJT2hQejhRYZ2gnnb
 f9VPosaVHiRETbpG6UoW3wuKv9EX4bGEd/lPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hT9vU1lKXpIUXAGJ5O2ZQpnKTxvjgUKuVdaVH35xDc4=;
 b=RAFPdDf8qh3kFI3xvwWsshvR9IY/DrRpb7UlKaR0JTlx5p3n5wSNxqUrjt1IRRKmAk
 Dss0qSj1bFrlm8CODrUiXfzpkC16Enk34Ebi0OD7Pb2hjVSDCirpMcmt0o7OMgSQ2f2t
 3LY3LgXKrGj3T3tiYJvnedZisJiD7ZS7Oh+y4ptbznJZiv7WQ6tVQ/5AfVKfd22O0Ybm
 9XsTNZUXUxTHbPEQYrfHJ0wdWYcqU1Zi24M5Up+KIqqLyfUNqXszGNnDU7P1uGpyN/Of
 /2MH78/RO22/5mwsXolxiU4MjF5PZO4oEm+hPLybpEdjkpG5Gnc15sLZLSkpqDwW4HPG
 kyDQ==
X-Gm-Message-State: AOAM530HMU/PKM3FXKIerZpOYhq818PTvRuYnZD+Rv2BfeC/Q7gy/6sz
 gHe4Mz+7rM9LwQYs1p45PGhbvA==
X-Google-Smtp-Source: ABdhPJzXQg8KoKJzI9SeZC1K1FAGjbyqIhb107KXfYsCmlyw7SeIoZfS3eGAiGS9UTqWsboUOPBkDA==
X-Received: by 2002:a5d:5583:: with SMTP id i3mr6169894wrv.119.1599472821729; 
 Mon, 07 Sep 2020 03:00:21 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 9sm6686289wmf.7.2020.09.07.03.00.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:00:21 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Sep 2020 12:56:11 +0300
Message-Id: <20200907095619.11216-8-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v4 07/15] net: bridge: mdb: push
	notifications in __br_mdb_add/del
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

This change is in preparation for using the mdb port group entries when
sending a notification, so their full state and additional attributes can
be filled in.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 9dc12ce61018..24f6ccf98657 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -681,7 +681,7 @@ static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 }
 
 static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
-			    struct br_ip *group, unsigned char state)
+			    struct br_ip *group, struct br_mdb_entry *entry)
 {
 	struct net_bridge_mdb_entry *mp;
 	struct net_bridge_port_group *p;
@@ -700,12 +700,13 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 	/* host join */
 	if (!port) {
 		/* don't allow any flags for host-joined groups */
-		if (state)
+		if (entry->state)
 			return -EINVAL;
 		if (mp->host_joined)
 			return -EEXIST;
 
 		br_multicast_host_join(mp, false);
+		__br_mdb_notify(br->dev, NULL, entry, RTM_NEWMDB);
 
 		return 0;
 	}
@@ -719,13 +720,14 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 			break;
 	}
 
-	p = br_multicast_new_port_group(port, group, *pp, state, NULL,
+	p = br_multicast_new_port_group(port, group, *pp, entry->state, NULL,
 					MCAST_EXCLUDE);
 	if (unlikely(!p))
 		return -ENOMEM;
 	rcu_assign_pointer(*pp, p);
-	if (state == MDB_TEMPORARY)
+	if (entry->state == MDB_TEMPORARY)
 		mod_timer(&p->timer, now + br->multicast_membership_interval);
+	__br_mdb_notify(br->dev, port, entry, RTM_NEWMDB);
 
 	return 0;
 }
@@ -754,7 +756,7 @@ static int __br_mdb_add(struct net *net, struct net_bridge *br,
 	__mdb_entry_to_br_ip(entry, &ip);
 
 	spin_lock_bh(&br->multicast_lock);
-	ret = br_mdb_add_group(br, p, &ip, entry->state);
+	ret = br_mdb_add_group(br, p, &ip, entry);
 	spin_unlock_bh(&br->multicast_lock);
 	return ret;
 }
@@ -799,12 +801,9 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 			err = __br_mdb_add(net, br, entry);
 			if (err)
 				break;
-			__br_mdb_notify(dev, p, entry, RTM_NEWMDB);
 		}
 	} else {
 		err = __br_mdb_add(net, br, entry);
-		if (!err)
-			__br_mdb_notify(dev, p, entry, RTM_NEWMDB);
 	}
 
 	return err;
@@ -832,6 +831,7 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
 	if (entry->ifindex == mp->br->dev->ifindex && mp->host_joined) {
 		br_multicast_host_leave(mp, false);
 		err = 0;
+		__br_mdb_notify(br->dev, NULL, entry, RTM_DELMDB);
 		if (!mp->ports && netif_running(br->dev))
 			mod_timer(&mp->timer, jiffies);
 		goto unlock;
@@ -894,13 +894,9 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			entry->vid = v->vid;
 			err = __br_mdb_del(br, entry);
-			if (!err)
-				__br_mdb_notify(dev, p, entry, RTM_DELMDB);
 		}
 	} else {
 		err = __br_mdb_del(br, entry);
-		if (!err)
-			__br_mdb_notify(dev, p, entry, RTM_DELMDB);
 	}
 
 	return err;
-- 
2.25.4

