Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D79D2721C4
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37F1385712;
	Mon, 21 Sep 2020 11:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FA0VowOwAaFH; Mon, 21 Sep 2020 11:04:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F91085815;
	Mon, 21 Sep 2020 11:04:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 33093C0890;
	Mon, 21 Sep 2020 11:04:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 95B2EC0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 610662048C
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cUB5BzSXleo0 for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:04:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 18D422001A
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:04:23 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s13so11681786wmh.4
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bxPAfkMVy6JlXcHDeD1UCjmRzrKUYXMq6ZLwzFZuayk=;
 b=AR4hSoYtaPdKzN0yMkkDmNFsBED6HFZduTEoY1yuHhCn6DiD5MhUS3ozwMz8139I2+
 Un7KqvBIuQtQwbZFihRnaRjzZfWiup2tlkdTc1b+nTsFBAbJ7n4IG4ekHbnKeqpwKLbL
 Bd0felh25HJT2gOAqlLQ+nMnCm5k5RkVFSQLeqyHAOULGSxGzgrJ7MiuZhwO/tbhs8Q0
 BkLpk/qEkZKAoBLCt5rlK/FXClArDVk0lkV5K1RJkOGfjxUzbLdxmH5npU8BFrpK85KM
 rqctLDsCMtC82V30moi2iNNBFj/Egt3qdmrT6LntGH6IEsmv2tWOvncuhU4vtU/A/MVF
 ekYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bxPAfkMVy6JlXcHDeD1UCjmRzrKUYXMq6ZLwzFZuayk=;
 b=GojHStdB3sX3WMUOGK9zACgZYBhHJAW4mXz/BsB0O2qRbwTmfsVArKVDd2ZRaAFxP2
 nNtIhPAhY/oacEWS9UQZO7iTzJZwIweDIz0f05+XSeKv41znHdEa5NrjkUeIM+bwjvoF
 r53hA9j3hxxnvS6yc3bm/nOFzvIw94PeSHeUPa4TMl/sRnVfnjXovGRAAbpYQUc2WURi
 GUviAqJgfUH+1gNHjlV0kI6E/uMxqNnw2V23Yv5dg50qOtD/pVJlEzI/JC2HdEeIGoOU
 Iw55goMXWckuVZbYi0ESu8PtCZaWP8LMMkkA1yHmmsbjA7aaC93ofH/M08xjTgigdsaA
 gxNg==
X-Gm-Message-State: AOAM532TS47HjHc9oQOak7ErJNViBxxIcyd8yopWgAc5bgdhAbwvw/6W
 lQehB5Vpg7pS32Xz+356afLonRcV7pzEcaKVsX0Cqw==
X-Google-Smtp-Source: ABdhPJw/UWvP6O0k4rR9AcuJ5b7YgGJCr5+rm4Oir9jbmJqNF/9Rg31MCZrnAiwkCegSxuMi1WRxyQ==
X-Received: by 2002:a1c:32c6:: with SMTP id y189mr29401121wmy.51.1600685778257; 
 Mon, 21 Sep 2020 03:56:18 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:17 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:18 +0300
Message-Id: <20200921105526.1056983-9-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 08/16] net: bridge: mdb: add support for
	add/del/dump of entries with source
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

Add new mdb attributes (MDBE_ATTR_SOURCE for setting,
MDBA_MDB_EATTR_SOURCE for dumping) to allow add/del and dump of mdb
entries with a source address (S,G). New S,G entries are created with
filter mode of MCAST_INCLUDE. The same attributes are used for IPv4 and
IPv6, they're validated and parsed based on their protocol.
S,G host joined entries which are added by user are not allowed yet.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |   2 +
 net/bridge/br_mdb.c            | 142 ++++++++++++++++++++++++++-------
 net/bridge/br_private.h        |  14 ++++
 3 files changed, 130 insertions(+), 28 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index dc52f8cffa0d..3e6377c865eb 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -457,6 +457,7 @@ enum {
 	MDBA_MDB_EATTR_TIMER,
 	MDBA_MDB_EATTR_SRC_LIST,
 	MDBA_MDB_EATTR_GROUP_MODE,
+	MDBA_MDB_EATTR_SOURCE,
 	__MDBA_MDB_EATTR_MAX
 };
 #define MDBA_MDB_EATTR_MAX (__MDBA_MDB_EATTR_MAX - 1)
@@ -542,6 +543,7 @@ enum {
  */
 enum {
 	MDBE_ATTR_UNSPEC,
+	MDBE_ATTR_SOURCE,
 	__MDBE_ATTR_MAX,
 };
 #define MDBE_ATTR_MAX (__MDBE_ATTR_MAX - 1)
diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 907df6d695ec..7f9ca5c20120 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -64,17 +64,27 @@ static void __mdb_entry_fill_flags(struct br_mdb_entry *e, unsigned char flags)
 		e->flags |= MDB_FLAGS_FAST_LEAVE;
 }
 
-static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip)
+static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip,
+				 struct nlattr **mdb_attrs)
 {
 	memset(ip, 0, sizeof(struct br_ip));
 	ip->vid = entry->vid;
 	ip->proto = entry->addr.proto;
-	if (ip->proto == htons(ETH_P_IP))
+	switch (ip->proto) {
+	case htons(ETH_P_IP):
 		ip->dst.ip4 = entry->addr.u.ip4;
+		if (mdb_attrs && mdb_attrs[MDBE_ATTR_SOURCE])
+			ip->src.ip4 = nla_get_in_addr(mdb_attrs[MDBE_ATTR_SOURCE]);
+		break;
 #if IS_ENABLED(CONFIG_IPV6)
-	else
+	case htons(ETH_P_IPV6):
 		ip->dst.ip6 = entry->addr.u.ip6;
+		if (mdb_attrs && mdb_attrs[MDBE_ATTR_SOURCE])
+			ip->src.ip6 = nla_get_in6_addr(mdb_attrs[MDBE_ATTR_SOURCE]);
+		break;
 #endif
+	}
+
 }
 
 static int __mdb_fill_srcs(struct sk_buff *skb,
@@ -172,30 +182,41 @@ static int __mdb_fill_info(struct sk_buff *skb,
 	if (nla_put_nohdr(skb, sizeof(e), &e) ||
 	    nla_put_u32(skb,
 			MDBA_MDB_EATTR_TIMER,
-			br_timer_value(mtimer))) {
-		nla_nest_cancel(skb, nest_ent);
-		return -EMSGSIZE;
-	}
+			br_timer_value(mtimer)))
+		goto nest_err;
 	switch (mp->addr.proto) {
 	case htons(ETH_P_IP):
-		dump_srcs_mode = !!(p && mp->br->multicast_igmp_version == 3);
+		dump_srcs_mode = !!(mp->br->multicast_igmp_version == 3);
+		if (mp->addr.src.ip4) {
+			if (nla_put_in_addr(skb, MDBA_MDB_EATTR_SOURCE,
+					    mp->addr.src.ip4))
+				goto nest_err;
+			break;
+		}
 		break;
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
-		dump_srcs_mode = !!(p && mp->br->multicast_mld_version == 2);
+		dump_srcs_mode = !!(mp->br->multicast_mld_version == 2);
+		if (!ipv6_addr_any(&mp->addr.src.ip6)) {
+			if (nla_put_in6_addr(skb, MDBA_MDB_EATTR_SOURCE,
+					     &mp->addr.src.ip6))
+				goto nest_err;
+			break;
+		}
 		break;
 #endif
 	}
-	if (dump_srcs_mode &&
+	if (p && dump_srcs_mode &&
 	    (__mdb_fill_srcs(skb, p) ||
-	     nla_put_u8(skb, MDBA_MDB_EATTR_GROUP_MODE, p->filter_mode))) {
-		nla_nest_cancel(skb, nest_ent);
-		return -EMSGSIZE;
-	}
-
+	     nla_put_u8(skb, MDBA_MDB_EATTR_GROUP_MODE, p->filter_mode)))
+		goto nest_err;
 	nla_nest_end(skb, nest_ent);
 
 	return 0;
+
+nest_err:
+	nla_nest_cancel(skb, nest_ent);
+	return -EMSGSIZE;
 }
 
 static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
@@ -395,12 +416,18 @@ static size_t rtnl_mdb_nlmsg_size(struct net_bridge_port_group *pg)
 
 	switch (pg->addr.proto) {
 	case htons(ETH_P_IP):
+		/* MDBA_MDB_EATTR_SOURCE */
+		if (pg->addr.src.ip4)
+			nlmsg_size += nla_total_size(sizeof(__be32));
 		if (pg->port->br->multicast_igmp_version == 2)
 			goto out;
 		addr_size = sizeof(__be32);
 		break;
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
+		/* MDBA_MDB_EATTR_SOURCE */
+		if (!ipv6_addr_any(&pg->addr.src.ip6))
+			nlmsg_size += nla_total_size(sizeof(struct in6_addr));
 		if (pg->port->br->multicast_mld_version == 1)
 			goto out;
 		addr_size = sizeof(struct in6_addr);
@@ -670,7 +697,48 @@ static bool is_valid_mdb_entry(struct br_mdb_entry *entry,
 	return true;
 }
 
+static bool is_valid_mdb_source(struct nlattr *attr, __be16 proto,
+				struct netlink_ext_ack *extack)
+{
+	switch (proto) {
+	case htons(ETH_P_IP):
+		if (nla_len(attr) != sizeof(struct in_addr)) {
+			NL_SET_ERR_MSG_MOD(extack, "IPv4 invalid source address length");
+			return false;
+		}
+		if (ipv4_is_multicast(nla_get_in_addr(attr))) {
+			NL_SET_ERR_MSG_MOD(extack, "IPv4 multicast source address is not allowed");
+			return false;
+		}
+		break;
+#if IS_ENABLED(CONFIG_IPV6)
+	case htons(ETH_P_IPV6): {
+		struct in6_addr src;
+
+		if (nla_len(attr) != sizeof(struct in6_addr)) {
+			NL_SET_ERR_MSG_MOD(extack, "IPv6 invalid source address length");
+			return false;
+		}
+		src = nla_get_in6_addr(attr);
+		if (ipv6_addr_is_multicast(&src)) {
+			NL_SET_ERR_MSG_MOD(extack, "IPv6 multicast source address is not allowed");
+			return false;
+		}
+		break;
+	}
+#endif
+	default:
+		NL_SET_ERR_MSG_MOD(extack, "Invalid protocol used with source address");
+		return false;
+	}
+
+	return true;
+}
+
 static const struct nla_policy br_mdbe_attrs_pol[MDBE_ATTR_MAX + 1] = {
+	[MDBE_ATTR_SOURCE] = NLA_POLICY_RANGE(NLA_BINARY,
+					      sizeof(struct in_addr),
+					      sizeof(struct in6_addr)),
 };
 
 static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
@@ -728,6 +796,10 @@ static int br_mdb_parse(struct sk_buff *skb, struct nlmsghdr *nlh,
 				       br_mdbe_attrs_pol, extack);
 		if (err)
 			return err;
+		if (mdb_attrs[MDBE_ATTR_SOURCE] &&
+		    !is_valid_mdb_source(mdb_attrs[MDBE_ATTR_SOURCE],
+					 entry->addr.proto, extack))
+			return -EINVAL;
 	} else {
 		memset(mdb_attrs, 0,
 		       sizeof(struct nlattr *) * (MDBE_ATTR_MAX + 1));
@@ -744,8 +816,22 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 	struct net_bridge_port_group *p;
 	struct net_bridge_port_group __rcu **pp;
 	unsigned long now = jiffies;
+	u8 filter_mode;
 	int err;
 
+	/* host join errors which can happen before creating the group */
+	if (!port) {
+		/* don't allow any flags for host-joined groups */
+		if (entry->state) {
+			NL_SET_ERR_MSG_MOD(extack, "Flags are not allowed for host groups");
+			return -EINVAL;
+		}
+		if (!br_multicast_is_star_g(group)) {
+			NL_SET_ERR_MSG_MOD(extack, "Groups with sources cannot be manually host joined");
+			return -EINVAL;
+		}
+	}
+
 	mp = br_mdb_ip_get(br, group);
 	if (!mp) {
 		mp = br_multicast_new_group(br, group);
@@ -756,11 +842,6 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 
 	/* host join */
 	if (!port) {
-		/* don't allow any flags for host-joined groups */
-		if (entry->state) {
-			NL_SET_ERR_MSG_MOD(extack, "Flags are not allowed for host groups");
-			return -EINVAL;
-		}
 		if (mp->host_joined) {
 			NL_SET_ERR_MSG_MOD(extack, "Group is already joined by host");
 			return -EEXIST;
@@ -783,8 +864,11 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 			break;
 	}
 
+	filter_mode = br_multicast_is_star_g(group) ? MCAST_EXCLUDE :
+						      MCAST_INCLUDE;
+
 	p = br_multicast_new_port_group(port, group, *pp, entry->state, NULL,
-					MCAST_EXCLUDE);
+					filter_mode);
 	if (unlikely(!p)) {
 		NL_SET_ERR_MSG_MOD(extack, "Couldn't allocate new port group");
 		return -ENOMEM;
@@ -800,12 +884,13 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 static int __br_mdb_add(struct net *net, struct net_bridge *br,
 			struct net_bridge_port *p,
 			struct br_mdb_entry *entry,
+			struct nlattr **mdb_attrs,
 			struct netlink_ext_ack *extack)
 {
 	struct br_ip ip;
 	int ret;
 
-	__mdb_entry_to_br_ip(entry, &ip);
+	__mdb_entry_to_br_ip(entry, &ip, mdb_attrs);
 
 	spin_lock_bh(&br->multicast_lock);
 	ret = br_mdb_add_group(br, p, &ip, entry, extack);
@@ -875,18 +960,19 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (br_vlan_enabled(br->dev) && vg && entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			entry->vid = v->vid;
-			err = __br_mdb_add(net, br, p, entry, extack);
+			err = __br_mdb_add(net, br, p, entry, mdb_attrs, extack);
 			if (err)
 				break;
 		}
 	} else {
-		err = __br_mdb_add(net, br, p, entry, extack);
+		err = __br_mdb_add(net, br, p, entry, mdb_attrs, extack);
 	}
 
 	return err;
 }
 
-static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
+static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry,
+			struct nlattr **mdb_attrs)
 {
 	struct net_bridge_mdb_entry *mp;
 	struct net_bridge_port_group *p;
@@ -897,7 +983,7 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry)
 	if (!netif_running(br->dev) || !br_opt_get(br, BROPT_MULTICAST_ENABLED))
 		return -EINVAL;
 
-	__mdb_entry_to_br_ip(entry, &ip);
+	__mdb_entry_to_br_ip(entry, &ip, mdb_attrs);
 
 	spin_lock_bh(&br->multicast_lock);
 	mp = br_mdb_ip_get(br, &ip);
@@ -971,10 +1057,10 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if (br_vlan_enabled(br->dev) && vg && entry->vid == 0) {
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			entry->vid = v->vid;
-			err = __br_mdb_del(br, entry);
+			err = __br_mdb_del(br, entry, mdb_attrs);
 		}
 	} else {
-		err = __br_mdb_del(br, entry);
+		err = __br_mdb_del(br, entry, mdb_attrs);
 	}
 
 	return err;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index a23d2bae56e1..0f54a7a7c186 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -873,6 +873,20 @@ static inline bool br_multicast_querier_exists(struct net_bridge *br,
 	}
 }
 
+static inline bool br_multicast_is_star_g(const struct br_ip *ip)
+{
+	switch (ip->proto) {
+	case htons(ETH_P_IP):
+		return ipv4_is_zeronet(ip->src.ip4);
+#if IS_ENABLED(CONFIG_IPV6)
+	case htons(ETH_P_IPV6):
+		return ipv6_addr_any(&ip->src.ip6);
+#endif
+	default:
+		return false;
+	}
+}
+
 static inline int br_multicast_igmp_type(const struct sk_buff *skb)
 {
 	return BR_INPUT_SKB_CB(skb)->igmp;
-- 
2.25.4

