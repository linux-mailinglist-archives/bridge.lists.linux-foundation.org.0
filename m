Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC71434390
	for <lists.bridge@lfdr.de>; Wed, 20 Oct 2021 04:36:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5917240018;
	Wed, 20 Oct 2021 02:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YWGIQ7rn5syM; Wed, 20 Oct 2021 02:36:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8F9A340238;
	Wed, 20 Oct 2021 02:36:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B422C0022;
	Wed, 20 Oct 2021 02:36:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4470AC000D
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 02:36:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2020A83139
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 02:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bYcD5bVYrfC5 for <bridge@lists.linux-foundation.org>;
 Wed, 20 Oct 2021 02:36:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B17183126
 for <bridge@lists.linux-foundation.org>; Wed, 20 Oct 2021 02:36:18 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id t184so8178972pgd.8
 for <bridge@lists.linux-foundation.org>; Tue, 19 Oct 2021 19:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uP74WpUfIxkFQrw13QDTf0eyIC/o9Ip6dzTaEPhVPzY=;
 b=HXX1pftRzORTj8Px5lEdsuaix32dXDrAzRrLMT4qb8+nQ19QkoDo8IfUJcH4WFm2M2
 aP3znHPiJ5Z/OgRt4qlU3oMrhzz4HzGOAGwAg1kLxCIyEDDPI7NnhBtaMKrHSIRsN62O
 w5bA1Y8ada/17UO6bUAl6Tt94fm9GpBGooLZS5L57b0Ob0BqBs9q8VtXOa+s4HtkIH2n
 ui7iyGpclZKWSTd+JOUTkRwnuSRDiTCAxdKg0ASSHQHlie+1syy4orPzNuORgS2XKcC8
 VpH5mcKmTw/rdk3BNIWWyhkebhZALuh4LG3OoNx1SIAYToi/UEOSyhp02XFZsrT7zIAi
 YbZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uP74WpUfIxkFQrw13QDTf0eyIC/o9Ip6dzTaEPhVPzY=;
 b=rCutueyGCTrjqI94kMd0Mf7g0aewpMKY4GD1xnHYWK3Q6Ou5U2nvrshKxVGRqRyzj0
 rULX9RZ6ZjPfJeEK79hIHidkMiVmreU2zyLly81JWfw5XPah4HT9p42rzLSnN3MyKeDj
 AHNNujMSgsFtV7DTKKnXQzyWZiU0NU5bQGYTcj5nnBaW5qzVU2tgvLR0hIOhO//5ifPA
 0v8XNxwKzdBl7Cm3LdE1c0x2Cmz11vHphWhTQB/H+ophMZAVNgHa35dxGi3ijhrZczgO
 Ah1Mih4g9hlyy1qW5/490aYAWGy/5n963i7fkr/tW4SmdqrwP6JKdPnk0IsF+MueSSEl
 p67w==
X-Gm-Message-State: AOAM532J/cdUPEEs0bRxkV2zlksruFAVndQ1ZXTHeH5VoiycqIUbcYTo
 oTin8ZN0QQUeYzaqzByo+Rs=
X-Google-Smtp-Source: ABdhPJwtuBEQXDL1cCrt1KWlpUZ29vCJwIMVSQE/rzbHQCUkD77aNjUwGn3r0qw7dg1aNj4G4l59sA==
X-Received: by 2002:a62:1887:0:b0:44c:872e:27ed with SMTP id
 129-20020a621887000000b0044c872e27edmr3448411pfy.71.1634697377682; 
 Tue, 19 Oct 2021 19:36:17 -0700 (PDT)
Received: from Laptop-X1.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id w2sm524699pfq.207.2021.10.19.19.36.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 19:36:17 -0700 (PDT)
From: Hangbin Liu <liuhangbin@gmail.com>
To: netdev@vger.kernel.org
Date: Wed, 20 Oct 2021 10:36:04 +0800
Message-Id: <20211020023604.695416-1-liuhangbin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Hangbin Liu <liuhangbin@gmail.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net] net: bridge: mcast: QRI must be less than QI
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

Based on RFC3376 8.3:
The number of seconds represented by the [Query Response Interval]
must be less than the [Query Interval].

Fixes: d902eee43f19 ("bridge: Add multicast count/interval sysfs entries")
Signed-off-by: Hangbin Liu <liuhangbin@gmail.com>
---
 net/bridge/br_multicast.c    | 27 +++++++++++++++++++++++++++
 net/bridge/br_netlink.c      |  8 ++++++--
 net/bridge/br_private.h      |  4 ++++
 net/bridge/br_sysfs_br.c     |  6 ++----
 net/bridge/br_vlan_options.c |  8 ++++++--
 5 files changed, 45 insertions(+), 8 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index f3d751105343..1a865d08a87f 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4522,6 +4522,33 @@ int br_multicast_set_mld_version(struct net_bridge_mcast *brmctx,
 }
 #endif
 
+/* RFC3376 8.3: The number of seconds represented by the
+ * [Query Response Interval] must be less than the [Query Interval].
+ */
+int br_multicast_set_qi(struct net_bridge_mcast *brmctx, unsigned long val,
+			struct netlink_ext_ack *extack)
+{
+	if (val > brmctx->multicast_query_response_interval) {
+		brmctx->multicast_query_interval = val;
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid QI, must greater than QRI");
+		return -EINVAL;
+	}
+}
+
+int br_multicast_set_qri(struct net_bridge_mcast *brmctx, unsigned long val,
+			 struct netlink_ext_ack *extack)
+{
+	if (val < brmctx->multicast_query_interval) {
+		brmctx->multicast_query_response_interval = val;
+		return 0;
+	} else {
+		NL_SET_ERR_MSG(extack, "Invalid QRI, must less than QI");
+		return -EINVAL;
+	}
+}
+
 /**
  * br_multicast_list_adjacent - Returns snooped multicast addresses
  * @dev:	The bridge port adjacent to which to retrieve addresses
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 5c6c4305ed23..2b32d7d2ce31 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1357,13 +1357,17 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 	if (data[IFLA_BR_MCAST_QUERY_INTVL]) {
 		u64 val = nla_get_u64(data[IFLA_BR_MCAST_QUERY_INTVL]);
 
-		br->multicast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
+		err = br_multicast_set_qi(&br->multicast_ctx, clock_t_to_jiffies(val), extack);
+		if (err)
+			return err;
 	}
 
 	if (data[IFLA_BR_MCAST_QUERY_RESPONSE_INTVL]) {
 		u64 val = nla_get_u64(data[IFLA_BR_MCAST_QUERY_RESPONSE_INTVL]);
 
-		br->multicast_ctx.multicast_query_response_interval = clock_t_to_jiffies(val);
+		err = br_multicast_set_qri(&br->multicast_ctx, clock_t_to_jiffies(val), extack);
+		if (err)
+			return err;
 	}
 
 	if (data[IFLA_BR_MCAST_STARTUP_QUERY_INTVL]) {
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 37ca76406f1e..5019c601f689 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -906,6 +906,10 @@ int br_multicast_set_igmp_version(struct net_bridge_mcast *brmctx,
 int br_multicast_set_mld_version(struct net_bridge_mcast *brmctx,
 				 unsigned long val);
 #endif
+int br_multicast_set_qi(struct net_bridge_mcast *brmctx, unsigned long val,
+			struct netlink_ext_ack *extack);
+int br_multicast_set_qri(struct net_bridge_mcast *brmctx, unsigned long val,
+			 struct netlink_ext_ack *extack);
 struct net_bridge_mdb_entry *
 br_mdb_ip_get(struct net_bridge *br, struct br_ip *dst);
 struct net_bridge_mdb_entry *
diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index d9a89ddd0331..f794652f8592 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -658,8 +658,7 @@ static ssize_t multicast_query_interval_show(struct device *d,
 static int set_query_interval(struct net_bridge *br, unsigned long val,
 			      struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
-	return 0;
+	return br_multicast_set_qi(&br->multicast_ctx, clock_t_to_jiffies(val), extack);
 }
 
 static ssize_t multicast_query_interval_store(struct device *d,
@@ -682,8 +681,7 @@ static ssize_t multicast_query_response_interval_show(
 static int set_query_response_interval(struct net_bridge *br, unsigned long val,
 				       struct netlink_ext_ack *extack)
 {
-	br->multicast_ctx.multicast_query_response_interval = clock_t_to_jiffies(val);
-	return 0;
+	return br_multicast_set_qri(&br->multicast_ctx, clock_t_to_jiffies(val), extack);
 }
 
 static ssize_t multicast_query_response_interval_store(
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index 8ffd4ed2563c..71e94ff9d926 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -521,14 +521,18 @@ static int br_vlan_process_global_one_opts(const struct net_bridge *br,
 		u64 val;
 
 		val = nla_get_u64(tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_INTVL]);
-		v->br_mcast_ctx.multicast_query_interval = clock_t_to_jiffies(val);
+		err = br_multicast_set_qi(&v->br_mcast_ctx, clock_t_to_jiffies(val), extack);
+		if (err)
+			return err;
 		*changed = true;
 	}
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL]) {
 		u64 val;
 
 		val = nla_get_u64(tb[BRIDGE_VLANDB_GOPTS_MCAST_QUERY_RESPONSE_INTVL]);
-		v->br_mcast_ctx.multicast_query_response_interval = clock_t_to_jiffies(val);
+		err = br_multicast_set_qri(&v->br_mcast_ctx, clock_t_to_jiffies(val), extack);
+		if (err)
+			return err;
 		*changed = true;
 	}
 	if (tb[BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL]) {
-- 
2.31.1

