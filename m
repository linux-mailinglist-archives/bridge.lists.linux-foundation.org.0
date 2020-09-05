Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD6B25E66E
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8EB132E1FF;
	Sat,  5 Sep 2020 08:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0IIwBiS+LWSb; Sat,  5 Sep 2020 08:24:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0E95D2E1D2;
	Sat,  5 Sep 2020 08:24:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E5247C0052;
	Sat,  5 Sep 2020 08:24:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87794C0052
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7730A86D3A
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GL1V5hrEZ-m8 for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:24:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B8CE86A0B
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:52 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id c15so9620635wrs.11
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hT9vU1lKXpIUXAGJ5O2ZQpnKTxvjgUKuVdaVH35xDc4=;
 b=EBr3Ufe2kSwQ0O5N9Hd0ouzduAEvBYT7hQoQ3gaOqKxrRNZHUcGDLu89Gv/IB1uvgq
 2fehdJRQK2W6/QQHe2LJPedQaqlMSObVhXYiF3XgYJkOv/RvJ95GR+v8eumSSNstnLvW
 WjGgnmVP+/3V6Bs31QWw5amxBYghd2HlzSDJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hT9vU1lKXpIUXAGJ5O2ZQpnKTxvjgUKuVdaVH35xDc4=;
 b=n07LJoEWqBulwyC2aXyvIxdm7yRmbgkIoOTQfBRx2nMolrAnIyDCWTgU71fHkxbA3R
 XnN2+qUJa1ki9UJwPKXKPP40chQvF6yScR/96vUKYeXxf60Hw4X48oJNnr8mJalDxIdS
 kNO+vp67NgNU1AE9p6GKzM9Fs9TVLPOMEEYo64hSXBuP1Dx7solHh8XbZjUYXhzf7Hu7
 M2QMIyUgAgB1+g/OpTsj/Z0fuXUKdqEZYz4crF8wor8noUNS8sGvI2wdAhVX821VROLD
 Ilplr+wcB3LBCpvs12FMzOeyBu3qmqQe3ycUo415psIde4nEkxo93WTNhPAbYxKN/cjb
 vTUg==
X-Gm-Message-State: AOAM5322/JvXoipE+Eey47O54p+ipb+MJ65rxbZclLyhucQujVHhh77u
 lVhf5tmcGENApFMf2A9ePag2c8KsqlNg2fYr
X-Google-Smtp-Source: ABdhPJwa5kD/O/w6Tc/DH06e8PDC+aszyfMMYU/BDaMPvWJTX63D9RAjNVXQgk7amVw8/7Wd9R/EZA==
X-Received: by 2002:adf:edd2:: with SMTP id v18mr10938045wro.242.1599294290846; 
 Sat, 05 Sep 2020 01:24:50 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.24.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:24:50 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:24:02 +0300
Message-Id: <20200905082410.2230253-8-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 07/15] net: bridge: mdb: push
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

