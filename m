Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A993CE741
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 19:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15C57402C2;
	Mon, 19 Jul 2021 17:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K9vJqfA91_5S; Mon, 19 Jul 2021 17:10:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1C7024034C;
	Mon, 19 Jul 2021 17:10:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E35C4C001F;
	Mon, 19 Jul 2021 17:10:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 561D5C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D292402E9
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VjYV512pdJ3P for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 17:10:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B515C402F2
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:12 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id h8so25013029eds.4
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 10:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0cS0ncWc6bcud+3qIs2YIyb5eyTBqx/ONuOdJC+NdZ8=;
 b=UszvjO2bAF8To5WUKaEzDzCq0pmMgN/8dpu4fz8lD0zmDqPyKcT1SPHVb8LEuiaxKA
 aFK2V8By8nwabDkVkvuRa2KANVRNZWPD2otll2rSq8a79oQ46lDyW5W578d4yzPDvL7K
 NH9UPI6fbpeRKvT1G/5YafzafB2Bm2UuAq9MVVRytvIUB0xQKCD4hjR79zGtqrLzl/Vy
 NK6SYxzWBelUXjoJCflVm8EFPJBdcG1g/u06lp0Zzwp+BZ3l8KL/ohJ5rQPkMRO/NLz9
 ChsvE1MeoBnRNoXCIpa9lCZ6OddOX0tolZEkveTyQZVY99tt2jXnbtvlvuGDrOiLt7sy
 mZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0cS0ncWc6bcud+3qIs2YIyb5eyTBqx/ONuOdJC+NdZ8=;
 b=V4w3IBT+CiczKSbm/N8fPys4/egACKdA2gVPlPapfOps6wHVFxxHZ14r4cG8h3xewL
 Nl99cHuShx41NazC/h7iwZAZzqcJBswEOhcgMuZRNj4qc83mdt7Xopf6KjBzJE4EHVJt
 7LNJl74QPdYmBNBbbtLtXIV8WojEqmvh40p35xzk2i/Ea/zEKV1vVGcJNSEDLDsXxraz
 ms0TUYEQ7xg5PBPysaPsTjjj3nEIw5TEIAVypr/AEWxas9KCKzhPctYSr1vOcx5VXoij
 KdVahFB2RfU2q6yUlgRg6dpXNP/xkj6jmQSRLlMCKQxNVjoi/UxSzcS+kj1a8lGAjCXj
 AuZQ==
X-Gm-Message-State: AOAM530/1GIj5WFI7z6F19pclXJ2kdCcY/GQijl5o8LPa6UCw4qPdHRZ
 /MBardfx+p/+r2fyscHgFvpXpw==
X-Google-Smtp-Source: ABdhPJyS+jybb2Yn3IdrVTn1U3OuNfySNDv14l/F42JYIT7JS/v+HCbFpFRqLJ8/0pHAlOxVOxIKoA==
X-Received: by 2002:a50:fd17:: with SMTP id i23mr35868122eds.270.1626714610878; 
 Mon, 19 Jul 2021 10:10:10 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id nc29sm6073896ejc.10.2021.07.19.10.10.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 10:10:10 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 19 Jul 2021 20:06:37 +0300
Message-Id: <20210719170637.435541-16-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719170637.435541-1-razor@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 15/15] net: bridge: vlan: add mcast
	snooping control
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

Add a new global vlan option which controls whether multicast snooping
is enabled or disabled for a single vlan. It controls the vlan private
flag: BR_VLFLAG_GLOBAL_MCAST_ENABLED.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  1 +
 net/bridge/br_multicast.c      | 16 ++++++++++++++++
 net/bridge/br_private.h        |  7 +++++++
 net/bridge/br_vlan_options.c   | 24 +++++++++++++++++++++++-
 4 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 2203eb749d31..f7997a3f7f82 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -548,6 +548,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_UNSPEC,
 	BRIDGE_VLANDB_GOPTS_ID,
 	BRIDGE_VLANDB_GOPTS_RANGE,
+	BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index fb5e5df571fd..976491951c82 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -3988,6 +3988,22 @@ int br_multicast_toggle_vlan_snooping(struct net_bridge *br, bool on,
 	return 0;
 }
 
+bool br_multicast_toggle_global_vlan(struct net_bridge_vlan *vlan, bool on)
+{
+	ASSERT_RTNL();
+
+	/* BR_VLFLAG_GLOBAL_MCAST_ENABLED relies on eventual consistency and
+	 * requires only RTNL to change
+	 */
+	if (on == !!(vlan->priv_flags & BR_VLFLAG_GLOBAL_MCAST_ENABLED))
+		return false;
+
+	vlan->priv_flags ^= BR_VLFLAG_GLOBAL_MCAST_ENABLED;
+	br_multicast_toggle_vlan(vlan, on);
+
+	return true;
+}
+
 void br_multicast_stop(struct net_bridge *br)
 {
 	ASSERT_RTNL();
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index e0a982275a93..af1f5c1c6b88 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -922,6 +922,7 @@ void br_multicast_toggle_one_vlan(struct net_bridge_vlan *vlan, bool on);
 void br_multicast_toggle_vlan(struct net_bridge_vlan *vlan, bool on);
 int br_multicast_toggle_vlan_snooping(struct net_bridge *br, bool on,
 				      struct netlink_ext_ack *extack);
+bool br_multicast_toggle_global_vlan(struct net_bridge_vlan *vlan, bool on);
 
 static inline bool br_group_is_l2(const struct br_ip *group)
 {
@@ -1295,6 +1296,12 @@ static inline int br_multicast_toggle_vlan_snooping(struct net_bridge *br,
 {
 	return -EOPNOTSUPP;
 }
+
+static inline bool br_multicast_toggle_global_vlan(struct net_bridge_vlan *vlan,
+						   bool on)
+{
+	return false;
+}
 #endif
 
 /* br_vlan.c */
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 827bfc319599..4ef975b20185 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -262,7 +262,9 @@ int br_vlan_process_options(const struct net_bridge *br,
 bool br_vlan_global_opts_can_enter_range(const struct net_bridge_vlan *v_curr,
 					 const struct net_bridge_vlan *r_end)
 {
-	return v_curr->vid - r_end->vid == 1;
+	return v_curr->vid - r_end->vid == 1 &&
+	       ((v_curr->priv_flags ^ r_end->priv_flags) &
+		BR_VLFLAG_GLOBAL_MCAST_ENABLED) == 0;
 }
 
 bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
@@ -281,6 +283,12 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	    nla_put_u16(skb, BRIDGE_VLANDB_GOPTS_RANGE, vid_range))
 		goto out_err;
 
+#ifdef CONFIG_BRIDGE_IGMP_SNOOPING
+	if (nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING,
+		       !!(v_opts->priv_flags & BR_VLFLAG_GLOBAL_MCAST_ENABLED)))
+		goto out_err;
+#endif
+
 	nla_nest_end(skb, nest);
 
 	return true;
@@ -295,6 +303,9 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 	return NLMSG_ALIGN(sizeof(struct br_vlan_msg))
 		+ nla_total_size(0) /* BRIDGE_VLANDB_GLOBAL_OPTIONS */
 		+ nla_total_size(sizeof(u16)) /* BRIDGE_VLANDB_GOPTS_ID */
+#ifdef CONFIG_BRIDGE_IGMP_SNOOPING
+		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING */
+#endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
 
@@ -349,12 +360,23 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 					   struct netlink_ext_ack *extack)
 {
 	*changed = false;
+#ifdef CONFIG_BRIDGE_IGMP_SNOOPING
+	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING]) {
+		u8 mc_snooping;
+
+		mc_snooping = nla_get_u8(tb[BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING]);
+		if (br_multicast_toggle_global_vlan(v, !!mc_snooping))
+			*changed = true;
+	}
+#endif
+
 	return 0;
 }
 
 static const struct nla_policy br_vlan_db_gpol[BRIDGE_VLANDB_GOPTS_MAX + 1] = {
 	[BRIDGE_VLANDB_GOPTS_ID]	= { .type = NLA_U16 },
 	[BRIDGE_VLANDB_GOPTS_RANGE]	= { .type = NLA_U16 },
+	[BRIDGE_VLANDB_GOPTS_MCAST_SNOOPING]	= { .type = NLA_U8 },
 };
 
 int br_vlan_rtm_process_global_options(struct net_device *dev,
-- 
2.31.1

