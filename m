Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4C3139549
	for <lists.bridge@lfdr.de>; Mon, 13 Jan 2020 16:53:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 678D6873CE;
	Mon, 13 Jan 2020 15:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9a9qJ6Uo0wUp; Mon, 13 Jan 2020 15:53:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97768873DE;
	Mon, 13 Jan 2020 15:53:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7523BC1D80;
	Mon, 13 Jan 2020 15:53:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 58EE8C077D
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3F8B3859D5
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id te3BKK0qtezZ for <bridge@lists.linux-foundation.org>;
 Mon, 13 Jan 2020 15:53:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EFC3857F8
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:14 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id o13so10645209ljg.4
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 07:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GFVS9DTPdsp61/zl9IK27D/N5+n6YcObmh7VS0kCtmc=;
 b=bURUqiF5arCvJZ31Q18EVkGfIppGYSmfhuf16CLIhrcsMGahYRF75pdJE/GFlvOa5Z
 pPzg/v1KYT5JnemlR3HAsPPCqqmRbkQtHax4bfLN7KJUEuuAXvUTPUXnd2n0Ddmz8pdd
 wVolM590Yzp5TYUPqbMGQssX1Kp5wLfaXiWWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GFVS9DTPdsp61/zl9IK27D/N5+n6YcObmh7VS0kCtmc=;
 b=ovNP81f05YbbvAkBKmp8tRK9VW3QKv2SNOlWN+FR9RaJGzmE5FrZO8d3R5dKwKWlqG
 ZdoYx1jCfVZqqrMOeE2mcoIa+eEHKZ4Kewv3Ckbh3e3S7Y7SsfFigPkrqJWGMqcxb9Oz
 7DYgnBdILjfmVOjEO5UWrLWlYX5lvMeYsZpvnoj/IL/lrPcnVyU7XxmdBdpivK3fT5Q8
 CE7hYNRI5ItlnGfdEUTVkG/DkqzZO3gEn8frl/df+Lo0jhRDHnV34o0TVcTOq2IhBkGX
 09gtaDpoosR58jlFVGc+4j3nCCIcrhaBJdEd8/ugAQpErp5gj2dTYvADqcz21vMgbbwM
 vX9Q==
X-Gm-Message-State: APjAAAUls4VrIigkojZYT2jnwe4H52y8JI/9+fg0e+bRVvqOoQmMZv4/
 wR7VaVWYRUcvVu54iqg1KWdfpw==
X-Google-Smtp-Source: APXvYqw44BrgKBRRhTFt/KLgUpE6nXNAwKPnVTSoDd3VsihnOr4s68hYk94kDBht/kSEJq78vtJp6Q==
X-Received: by 2002:a2e:2c04:: with SMTP id s4mr11566035ljs.35.1578930792271; 
 Mon, 13 Jan 2020 07:53:12 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e20sm6175658ljl.59.2020.01.13.07.53.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 07:53:11 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 13 Jan 2020 17:52:31 +0200
Message-Id: <20200113155233.20771-7-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 6/8] net: bridge: vlan: add rtm range
	support
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

Add a new vlandb nl attribute - BRIDGE_VLANDB_ENTRY_RANGE which causes
RTM_NEWVLAN/DELVAN to act on a range. Dumps now automatically compress
similar vlans into ranges. This will be also used when per-vlan options
are introduced and vlans' options match, they will be put into a single
range which is encapsulated in one netlink attribute. We need to run
similar checks as br_process_vlan_info() does because these ranges will
be used for options setting and they'll be able to skip
br_process_vlan_info().

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_vlan.c           | 86 ++++++++++++++++++++++++++++------
 2 files changed, 73 insertions(+), 14 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 4da04f77d9ee..ac38f0b674b8 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -189,6 +189,7 @@ enum {
 enum {
 	BRIDGE_VLANDB_ENTRY_UNSPEC,
 	BRIDGE_VLANDB_ENTRY_INFO,
+	BRIDGE_VLANDB_ENTRY_RANGE,
 	__BRIDGE_VLANDB_ENTRY_MAX,
 };
 #define BRIDGE_VLANDB_ENTRY_MAX (__BRIDGE_VLANDB_ENTRY_MAX - 1)
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index bd75cee48ad3..4f911742bf5f 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1506,7 +1506,8 @@ void br_vlan_port_event(struct net_bridge_port *p, unsigned long event)
 	}
 }
 
-static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 flags)
+static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 vid_range,
+			      u16 flags)
 {
 	struct bridge_vlan_info info;
 	struct nlattr *nest;
@@ -1525,6 +1526,11 @@ static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 flags)
 	if (nla_put(skb, BRIDGE_VLANDB_ENTRY_INFO, sizeof(info), &info))
 		goto out_err;
 
+	if (vid_range && vid < vid_range &&
+	    !(flags & BRIDGE_VLAN_INFO_PVID) &&
+	    nla_put_u16(skb, BRIDGE_VLANDB_ENTRY_RANGE, vid_range))
+		goto out_err;
+
 	nla_nest_end(skb, nest);
 
 	return true;
@@ -1534,14 +1540,22 @@ static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 flags)
 	return false;
 }
 
+/* check if v_curr can enter a range ending in range_end */
+static bool br_vlan_can_enter_range(const struct net_bridge_vlan *v_curr,
+				    const struct net_bridge_vlan *range_end)
+{
+	return v_curr->vid - range_end->vid == 1 &&
+	       range_end->flags == v_curr->flags;
+}
+
 static int br_vlan_dump_dev(const struct net_device *dev,
 			    struct sk_buff *skb,
 			    struct netlink_callback *cb)
 {
+	struct net_bridge_vlan *v, *range_start = NULL, *range_end = NULL;
 	struct net_bridge_vlan_group *vg;
 	int idx = 0, s_idx = cb->args[1];
 	struct nlmsghdr *nlh = NULL;
-	struct net_bridge_vlan *v;
 	struct net_bridge_port *p;
 	struct br_vlan_msg *bvm;
 	struct net_bridge *br;
@@ -1576,22 +1590,49 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 	bvm->ifindex = dev->ifindex;
 	pvid = br_get_pvid(vg);
 
+	/* idx must stay at range's beginning until it is filled in */
 	list_for_each_entry_rcu(v, &vg->vlan_list, vlist) {
 		if (!br_vlan_should_use(v))
 			continue;
-		if (idx < s_idx)
-			goto skip;
-		if (!br_vlan_fill_vids(skb, v->vid, br_vlan_flags(v, pvid))) {
-			err = -EMSGSIZE;
-			break;
+		if (idx < s_idx) {
+			idx++;
+			continue;
 		}
-skip:
-		idx++;
+
+		if (!range_start) {
+			range_start = v;
+			range_end = v;
+			continue;
+		}
+
+		if (v->vid == pvid || !br_vlan_can_enter_range(v, range_end)) {
+			u16 flags = br_vlan_flags(range_start, pvid);
+
+			if (!br_vlan_fill_vids(skb, range_start->vid,
+					       range_end->vid, flags)) {
+				err = -EMSGSIZE;
+				break;
+			}
+			/* advance number of filled vlans */
+			idx += range_end->vid - range_start->vid + 1;
+
+			range_start = v;
+		}
+		range_end = v;
 	}
-	if (err)
-		cb->args[1] = idx;
-	else
-		cb->args[1] = 0;
+
+	/* err will be 0 and range_start will be set in 3 cases here:
+	 * - first vlan (range_start == range_end)
+	 * - last vlan (range_start == range_end, not in range)
+	 * - last vlan range (range_start != range_end, in range)
+	 */
+	if (!err && range_start &&
+	    !br_vlan_fill_vids(skb, range_start->vid, range_end->vid,
+			       br_vlan_flags(range_start, pvid)))
+		err = -EMSGSIZE;
+
+	cb->args[1] = err ? idx : 0;
+
 	nlmsg_end(skb, nlh);
 
 	return err;
@@ -1647,13 +1688,14 @@ static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
 static const struct nla_policy br_vlan_db_policy[BRIDGE_VLANDB_ENTRY_MAX + 1] = {
 	[BRIDGE_VLANDB_ENTRY_INFO]	= { .type = NLA_EXACT_LEN,
 					    .len = sizeof(struct bridge_vlan_info) },
+	[BRIDGE_VLANDB_ENTRY_RANGE]	= { .type = NLA_U16 },
 };
 
 static int br_vlan_rtm_process_one(struct net_device *dev,
 				   const struct nlattr *attr,
 				   int cmd, struct netlink_ext_ack *extack)
 {
-	struct bridge_vlan_info *vinfo, *vinfo_last = NULL;
+	struct bridge_vlan_info *vinfo, vrange_end, *vinfo_last = NULL;
 	struct nlattr *tb[BRIDGE_VLANDB_ENTRY_MAX + 1];
 	struct net_bridge_vlan_group *vg;
 	struct net_bridge_port *p = NULL;
@@ -1684,6 +1726,7 @@ static int br_vlan_rtm_process_one(struct net_device *dev,
 		NL_SET_ERR_MSG_MOD(extack, "Missing vlan entry info");
 		return -EINVAL;
 	}
+	memset(&vrange_end, 0, sizeof(vrange_end));
 
 	vinfo = nla_data(tb[BRIDGE_VLANDB_ENTRY_INFO]);
 	if (vinfo->flags & (BRIDGE_VLAN_INFO_RANGE_BEGIN |
@@ -1694,6 +1737,21 @@ static int br_vlan_rtm_process_one(struct net_device *dev,
 	if (!br_vlan_valid_id(vinfo->vid, extack))
 		return -EINVAL;
 
+	if (tb[BRIDGE_VLANDB_ENTRY_RANGE]) {
+		vrange_end.vid = nla_get_u16(tb[BRIDGE_VLANDB_ENTRY_RANGE]);
+		/* validate user-provided flags without RANGE_BEGIN */
+		vrange_end.flags = BRIDGE_VLAN_INFO_RANGE_END | vinfo->flags;
+		vinfo->flags |= BRIDGE_VLAN_INFO_RANGE_BEGIN;
+
+		/* vinfo_last is the range start, vinfo the range end */
+		vinfo_last = vinfo;
+		vinfo = &vrange_end;
+
+		if (!br_vlan_valid_id(vinfo->vid, extack) ||
+		    !br_vlan_valid_range(vinfo, vinfo_last, extack))
+			return -EINVAL;
+	}
+
 	switch (cmd) {
 	case RTM_NEWVLAN:
 		cmdmap = RTM_SETLINK;
-- 
2.21.0

