Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 034F318CCEA
	for <lists.bridge@lfdr.de>; Fri, 20 Mar 2020 12:25:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D475587EAF;
	Fri, 20 Mar 2020 11:25:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dgM1EULcGstN; Fri, 20 Mar 2020 11:25:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id D03E587E71;
	Fri, 20 Mar 2020 11:25:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94DC8C07FF;
	Fri, 20 Mar 2020 11:25:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 86DDBC07FF
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68858233B9
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 268Yo4D1Ma5K for <bridge@lists.linux-foundation.org>;
 Fri, 20 Mar 2020 11:25:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D5F9A22773
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:32 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id r24so6005447ljd.4
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 04:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sOOkzeTqqaHxaR5h7BnNLL0MzJvuklzqG0SZvx8hCjU=;
 b=hjfvDdMLFArtIxyheiidxvlCqOu5M0rXA4MzX8fr+EwlmSHiil1/dh5qu2hg1mUsxf
 CO3eFSmCUyzlZYpBw8M7UbxpSOxGQcIx3SeCxXHui/3SSu+YVjT6c3RhkAjtwQn28Wpz
 Vy2rM3ELo/qdNXTuWncRsJywdpbytFZp64k6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sOOkzeTqqaHxaR5h7BnNLL0MzJvuklzqG0SZvx8hCjU=;
 b=L0qNZSvNKXEX3Uad2DbdXHMflIQH4teO6izGxOFi+WTYTSEND3EHEGcBM49JkLRTWu
 gZsSF8PvUGgjcFcRm2R2qSidO5Ubdbbp24LridRSS1rSfhUaAKUk5KATt6iK86umYgXV
 DZAvzqaTNG95wT2e4dIsIAmpl4z4vr5abZ6aH67lXDmkviMtCNp7y2UBa3p6B36FOO6V
 juFtnW/54XsBxf9I5VNX7I/hWwgosfUV/PNMxBcsO5JB7qD9zQObl89dcHNKecSz/KBF
 QXoMO7qfHgQoZ2qqZbfQhfPTpxObpUp+9uoXkGJYhq9KyxAZlDNMjlCDG7UZsjYxmXl7
 wnxg==
X-Gm-Message-State: ANhLgQ19SaKw2ij+5uO/VNQlZU4AfTZaGLaokVChbrCj8eG0YI/Oh9bc
 ozXlaHCVqziKnQzQ/Fmy+sEGvg==
X-Google-Smtp-Source: ADFU+vuGYUBGTkMTG3LVjWjyZGypJzURbzVJNm3Q+3oSwjFRgfWYjyjoXchpK2XwamUhj2rWUP+RTA==
X-Received: by 2002:a2e:8043:: with SMTP id p3mr4974070ljg.270.1584703530780; 
 Fri, 20 Mar 2020 04:25:30 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id l17sm3808616lje.81.2020.03.20.04.25.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 04:25:30 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri, 20 Mar 2020 13:23:02 +0200
Message-Id: <20200320112303.81904-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320112303.81904-1-nikolay@cumulusnetworks.com>
References: <20200320112303.81904-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 1/2] net: bridge: vlan options: nest the
	tunnel id into a tunnel info attribute
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

While discussing the new API, Roopa mentioned that we'll be adding more
tunnel attributes and options in the future, so it's better to make it a
nested attribute, since this is still in net-next we can easily change it
and nest the tunnel id attribute under BRIDGE_VLANDB_ENTRY_TUNNEL_INFO.

The new format is:
 [BRIDGE_VLANDB_ENTRY]
     [BRIDGE_VLANDB_ENTRY_TUNNEL_INFO]
         [BRIDGE_VLANDB_TINFO_ID]

Any new tunnel attributes can be nested under
BRIDGE_VLANDB_ENTRY_TUNNEL_INFO.

Suggested-by: Roopa Prabhu <roopa@cumulusnetworks.com>
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/if_bridge.h | 16 ++++++++++++++-
 net/bridge/br_vlan.c           |  2 +-
 net/bridge/br_vlan_options.c   | 37 ++++++++++++++++++++++++++++------
 3 files changed, 47 insertions(+), 8 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 9dd1b1fa3291..f3624fbf8fe0 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -203,12 +203,26 @@ enum {
 	BRIDGE_VLANDB_ENTRY_INFO,
 	BRIDGE_VLANDB_ENTRY_RANGE,
 	BRIDGE_VLANDB_ENTRY_STATE,
-	BRIDGE_VLANDB_ENTRY_TUNNEL_ID,
+	BRIDGE_VLANDB_ENTRY_TUNNEL_INFO,
 	BRIDGE_VLANDB_ENTRY_STATS,
 	__BRIDGE_VLANDB_ENTRY_MAX,
 };
 #define BRIDGE_VLANDB_ENTRY_MAX (__BRIDGE_VLANDB_ENTRY_MAX - 1)
 
+/* [BRIDGE_VLANDB_ENTRY] = {
+ *     [BRIDGE_VLANDB_ENTRY_TUNNEL_INFO] = {
+ *         [BRIDGE_VLANDB_TINFO_ID]
+ *         ...
+ *     }
+ * }
+ */
+enum {
+	BRIDGE_VLANDB_TINFO_UNSPEC,
+	BRIDGE_VLANDB_TINFO_ID,
+	__BRIDGE_VLANDB_TINFO_MAX,
+};
+#define BRIDGE_VLANDB_TINFO_MAX (__BRIDGE_VLANDB_TINFO_MAX - 1)
+
 /* [BRIDGE_VLANDB_ENTRY] = {
  *     [BRIDGE_VLANDB_ENTRY_STATS] = {
  *         [BRIDGE_VLANDB_STATS_RX_BYTES]
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 4398f3796665..f9092c71225f 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1888,7 +1888,7 @@ static const struct nla_policy br_vlan_db_policy[BRIDGE_VLANDB_ENTRY_MAX + 1] =
 					    .len = sizeof(struct bridge_vlan_info) },
 	[BRIDGE_VLANDB_ENTRY_RANGE]	= { .type = NLA_U16 },
 	[BRIDGE_VLANDB_ENTRY_STATE]	= { .type = NLA_U8 },
-	[BRIDGE_VLANDB_ENTRY_TUNNEL_ID] = { .type = NLA_U32 },
+	[BRIDGE_VLANDB_ENTRY_TUNNEL_INFO] = { .type = NLA_NESTED },
 };
 
 static int br_vlan_rtm_process_one(struct net_device *dev,
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 138e180cf4d8..b39427f75457 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -12,12 +12,21 @@
 static bool __vlan_tun_put(struct sk_buff *skb, const struct net_bridge_vlan *v)
 {
 	__be32 tid = tunnel_id_to_key32(v->tinfo.tunnel_id);
+	struct nlattr *nest;
 
 	if (!v->tinfo.tunnel_dst)
 		return true;
 
-	return !nla_put_u32(skb, BRIDGE_VLANDB_ENTRY_TUNNEL_ID,
-			    be32_to_cpu(tid));
+	nest = nla_nest_start(skb, BRIDGE_VLANDB_ENTRY_TUNNEL_INFO);
+	if (!nest)
+		return false;
+	if (nla_put_u32(skb, BRIDGE_VLANDB_TINFO_ID, be32_to_cpu(tid))) {
+		nla_nest_cancel(skb, nest);
+		return false;
+	}
+	nla_nest_end(skb, nest);
+
+	return true;
 }
 
 static bool __vlan_tun_can_enter_range(const struct net_bridge_vlan *v_curr,
@@ -45,7 +54,8 @@ bool br_vlan_opts_fill(struct sk_buff *skb, const struct net_bridge_vlan *v)
 size_t br_vlan_opts_nl_size(void)
 {
 	return nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_ENTRY_STATE */
-	       + nla_total_size(sizeof(u32)); /* BRIDGE_VLANDB_ENTRY_TUNNEL_ID */
+	       + nla_total_size(0) /* BRIDGE_VLANDB_ENTRY_TUNNEL_INFO */
+	       + nla_total_size(sizeof(u32)); /* BRIDGE_VLANDB_TINFO_ID */
 }
 
 static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
@@ -85,14 +95,19 @@ static int br_vlan_modify_state(struct net_bridge_vlan_group *vg,
 	return 0;
 }
 
+static const struct nla_policy br_vlandb_tinfo_pol[BRIDGE_VLANDB_TINFO_MAX + 1] = {
+	[BRIDGE_VLANDB_TINFO_ID]	= { .type = NLA_U32 },
+};
+
 static int br_vlan_modify_tunnel(const struct net_bridge_port *p,
 				 struct net_bridge_vlan *v,
 				 struct nlattr **tb,
 				 bool *changed,
 				 struct netlink_ext_ack *extack)
 {
+	struct nlattr *tun_tb[BRIDGE_VLANDB_TINFO_MAX + 1], *attr;
 	struct bridge_vlan_info *vinfo;
-	int cmdmap;
+	int cmdmap, err;
 	u32 tun_id;
 
 	if (!p) {
@@ -104,12 +119,22 @@ static int br_vlan_modify_tunnel(const struct net_bridge_port *p,
 		return -EINVAL;
 	}
 
+	attr = tb[BRIDGE_VLANDB_ENTRY_TUNNEL_INFO];
+	err = nla_parse_nested(tun_tb, BRIDGE_VLANDB_TINFO_MAX, attr,
+			       br_vlandb_tinfo_pol, extack);
+	if (err)
+		return err;
+
+	if (!tun_tb[BRIDGE_VLANDB_TINFO_ID]) {
+		NL_SET_ERR_MSG_MOD(extack, "Missing tunnel id attribute");
+		return -ENOENT;
+	}
 	/* vlan info attribute is guaranteed by br_vlan_rtm_process_one */
 	vinfo = nla_data(tb[BRIDGE_VLANDB_ENTRY_INFO]);
 	cmdmap = vinfo->flags & BRIDGE_VLAN_INFO_REMOVE_TUN ? RTM_DELLINK :
 							      RTM_SETLINK;
 	/* when working on vlan ranges this represents the starting tunnel id */
-	tun_id = nla_get_u32(tb[BRIDGE_VLANDB_ENTRY_TUNNEL_ID]);
+	tun_id = nla_get_u32(tun_tb[BRIDGE_VLANDB_TINFO_ID]);
 	/* tunnel ids are mapped to each vlan in increasing order,
 	 * the starting vlan is in BRIDGE_VLANDB_ENTRY_INFO and v is the
 	 * current vlan, so we compute: tun_id + v - vinfo->vid
@@ -137,7 +162,7 @@ static int br_vlan_process_one_opts(const struct net_bridge *br,
 		if (err)
 			return err;
 	}
-	if (tb[BRIDGE_VLANDB_ENTRY_TUNNEL_ID]) {
+	if (tb[BRIDGE_VLANDB_ENTRY_TUNNEL_INFO]) {
 		err = br_vlan_modify_tunnel(p, v, tb, changed, extack);
 		if (err)
 			return err;
-- 
2.25.1

