Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A39F27225C
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7EDDE867DA;
	Mon, 21 Sep 2020 11:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WdwZqngKu7Hv; Mon, 21 Sep 2020 11:25:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8A7986812;
	Mon, 21 Sep 2020 11:25:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 99D08C0051;
	Mon, 21 Sep 2020 11:25:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4718DC0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F32286887
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sp3QRwkyK6CW for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:25:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1933F86758
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:25:28 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id k25so10767636ljk.0
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sbHsP3+rb6n8HpEyq3TxWopOvaJM25/6iBadHf2ysoI=;
 b=N8IjIoTywGIim4Unc1pfDYz0Ob4JCW9eLhw35iR4ubQqGwJ99pIAcAjfzCe2Xj4x6J
 Qq7KWCHxlTgAaVrCrHtX+rCodIG2PTZJOpyOynUSuWnvc6Sl2cTlEWDRfRnB+yAOZbK+
 klMrfjec2Z3k1yNvGd1+4aofXKFanscWjx9A4OG0WMD9jZEHJfLgLskJuUa42pBLry/5
 M29GGE9xbaWYfWzPy9XpZAgFUuOxFoLSOpZ4bGP5a8jjPbwoooPU7vYzWmeXbGsiDfI4
 iJvighYF+JPk3/hC1bM8Xr5QmXMvUJBepEiS4+/kkSd0VfRs1801k+Z2rUvIvj4xTliR
 KKPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sbHsP3+rb6n8HpEyq3TxWopOvaJM25/6iBadHf2ysoI=;
 b=k1tq7NZmgveanowyn4cnm/4RKzxaEOq3JEifieqG82xLv4W/qC7QmT4KWwvVyMue4J
 sdnLTRB8IDOjTisS1K0hd3OdLVgXekb4vhqEVNlwTs8Zn0tsvJQMJhRMVeIBxysfQzL4
 8TQfq4VGJkkFx1F8BONYv7tvcYvm9xxD4kUFiz7LqaeJi7aLmr1bq2g8vn4NgtQrmy1P
 XQciOYLxv4hj6Te3On5sT5IEgFLKL486ryOswAJiDzODVKpXKzFzmWhe2zF8hJ3KhmrU
 QnYsMeiDaVRwFFMMF8qZx3NEFA8IYfnBZiRFwtam66MGRCOlnJXJKvNaRUGI+X++Qqyq
 xDtA==
X-Gm-Message-State: AOAM532iY74JZ8xjbBijKkojUqmjU1F0Tpl6MbbaMNGtkZG2buRBaM9T
 kRIRD4P8dBe4pl4RtZP4Eu2j9QNxpUEMi275kGw=
X-Google-Smtp-Source: ABdhPJwrHUGsPHBvW8eUgboCExe6sjY3dXTOWbCCyJyr3G5VgoWDsA3TwKIkR7JrefKxHMY9XRn4mw==
X-Received: by 2002:adf:fd8d:: with SMTP id d13mr53335781wrr.104.1600685772402; 
 Mon, 21 Sep 2020 03:56:12 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:11 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:13 +0300
Message-Id: <20200921105526.1056983-4-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 03/16] net: bridge: mdb: use extack in
	br_mdb_add() and br_mdb_add_group()
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

Pass and use extack all the way down to br_mdb_add_group().

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_mdb.c | 54 +++++++++++++++++++++++++++++++++++----------
 1 file changed, 42 insertions(+), 12 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 92ab7369fee0..1df62d887953 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -723,7 +723,8 @@ static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 }
 
 static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
-			    struct br_ip *group, struct br_mdb_entry *entry)
+			    struct br_ip *group, struct br_mdb_entry *entry,
+			    struct netlink_ext_ack *extack)
 {
 	struct net_bridge_mdb_entry *mp;
 	struct net_bridge_port_group *p;
@@ -742,10 +743,14 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 	/* host join */
 	if (!port) {
 		/* don't allow any flags for host-joined groups */
-		if (entry->state)
+		if (entry->state) {
+			NL_SET_ERR_MSG_MOD(extack, "Flags are not allowed for host groups");
 			return -EINVAL;
-		if (mp->host_joined)
+		}
+		if (mp->host_joined) {
+			NL_SET_ERR_MSG_MOD(extack, "Group is already joined by host");
 			return -EEXIST;
+		}
 
 		br_multicast_host_join(mp, false);
 		br_mdb_notify(br->dev, mp, NULL, RTM_NEWMDB);
@@ -756,16 +761,20 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 	for (pp = &mp->ports;
 	     (p = mlock_dereference(*pp, br)) != NULL;
 	     pp = &p->next) {
-		if (p->port == port)
+		if (p->port == port) {
+			NL_SET_ERR_MSG_MOD(extack, "Group is already joined by port");
 			return -EEXIST;
+		}
 		if ((unsigned long)p->port < (unsigned long)port)
 			break;
 	}
 
 	p = br_multicast_new_port_group(port, group, *pp, entry->state, NULL,
 					MCAST_EXCLUDE);
-	if (unlikely(!p))
+	if (unlikely(!p)) {
+		NL_SET_ERR_MSG_MOD(extack, "Couldn't allocate new port group");
 		return -ENOMEM;
+	}
 	rcu_assign_pointer(*pp, p);
 	if (entry->state == MDB_TEMPORARY)
 		mod_timer(&p->timer, now + br->multicast_membership_interval);
@@ -776,7 +785,8 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 
 static int __br_mdb_add(struct net *net, struct net_bridge *br,
 			struct net_bridge_port *p,
-			struct br_mdb_entry *entry)
+			struct br_mdb_entry *entry,
+			struct netlink_ext_ack *extack)
 {
 	struct br_ip ip;
 	int ret;
@@ -784,7 +794,7 @@ static int __br_mdb_add(struct net *net, struct net_bridge *br,
 	__mdb_entry_to_br_ip(entry, &ip);
 
 	spin_lock_bh(&br->multicast_lock);
-	ret = br_mdb_add_group(br, p, &ip, entry);
+	ret = br_mdb_add_group(br, p, &ip, entry, extack);
 	spin_unlock_bh(&br->multicast_lock);
 
 	return ret;
@@ -808,17 +818,37 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	br = netdev_priv(dev);
 
-	if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
+	if (!netif_running(br->dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "Bridge device is not running");
 		return -EINVAL;
+	}
+
+	if (!br_opt_get(br, BROPT_MULTICAST_ENABLED)) {
+		NL_SET_ERR_MSG_MOD(extack, "Bridge's multicast processing is disabled");
+		return -EINVAL;
+	}
 
 	if (entry->ifindex != br->dev->ifindex) {
 		pdev = __dev_get_by_index(net, entry->ifindex);
-		if (!pdev)
+		if (!pdev) {
+			NL_SET_ERR_MSG_MOD(extack, "Port net device doesn't exist");
 			return -ENODEV;
+		}
 
 		p = br_port_get_rtnl(pdev);
-		if (!p || p->br != br || p->state == BR_STATE_DISABLED)
+		if (!p) {
+			NL_SET_ERR_MSG_MOD(extack, "Net device is not a bridge port");
 			return -EINVAL;
+		}
+
+		if (p->br != br) {
+			NL_SET_ERR_MSG_MOD(extack, "Port belongs to a different bridge device");
+			return -EINVAL;
+		}
+		if (p->state == BR_STATE_DISABLED) {
+			NL_SET_ERR_MSG_MOD(extack, "Port is in disabled state");
+			return -EINVAL;
+		}
 		vg = nbp_vlan_group(p);
 	} else {
 		vg = br_vlan_group(br);
@@ -830,12 +860,12 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (br_vlan_enabled(br->dev) && vg && entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			entry->vid = v->vid;
-			err = __br_mdb_add(net, br, p, entry);
+			err = __br_mdb_add(net, br, p, entry, extack);
 			if (err)
 				break;
 		}
 	} else {
-		err = __br_mdb_add(net, br, p, entry);
+		err = __br_mdb_add(net, br, p, entry, extack);
 	}
 
 	return err;
-- 
2.25.4

