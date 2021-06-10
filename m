Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2806C3A2994
	for <lists.bridge@lfdr.de>; Thu, 10 Jun 2021 12:45:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BAEB40399;
	Thu, 10 Jun 2021 10:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m-6I1n4KwoBm; Thu, 10 Jun 2021 10:45:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0AA514000B;
	Thu, 10 Jun 2021 10:45:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0AC48C0029;
	Thu, 10 Jun 2021 10:45:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 75241C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 10:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64BD083CEA
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 10:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jWlLzn_eEc-G for <bridge@lists.linux-foundation.org>;
 Thu, 10 Jun 2021 10:45:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CFAB83CA1
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 10:45:48 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id g20so43445074ejt.0
 for <bridge@lists.linux-foundation.org>; Thu, 10 Jun 2021 03:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OHs+5yapG1eHIgZGuzyj7K/JjrXGKBa3D/k+j6h/h8k=;
 b=bzshpus1Tg6X0zN0cY6Fa23oCQq8kf/CmBfNQgHl+CWbazGST9PmfBqX1tlV4zc6Xf
 1W3uO3bebMb9PqtCVMpo6KUtl0MDSJ8UGHZiEplDapH2JLGt3BbjS3FCqxyLKcA63ma0
 AN7/gxLXP+rTgWWmLEzsrIUXkmagqUc3g44KyzkVrZDQLXuAcaLZ/9otMUQnkZm7ZsfA
 84rgd6WZZA3s1jSXW7JBsHVnOHsejmd/oK+DV4liQIhuwJxreTmCL9/m75UeKPxeKPP5
 IjrfOKCiuhfxciBi/02Jn1thKuOu1nMQ8Vpysnuk9U76Ud1u2G/hutcqYpmgA4K8uCxV
 tgXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHs+5yapG1eHIgZGuzyj7K/JjrXGKBa3D/k+j6h/h8k=;
 b=R2aDY+AdqwI4nZQNdMzcjF7SlTCa/jUhYPF+wMZnzl88hSRjQ++5fE4olZzh6+VVtD
 EMr1hFC5FCL0uvN83uHIFpjC3pZwgOujfE26hM9Byz9e/Pv6VeV2jGkxm7yh1Wb6USTA
 pvM9+yeZNgAvAEvkB6H9WF6AltJIsgprXlNBGVKgadq5OkgeX6OOBqugdiFonFC5f60M
 oY5j09x2oKCqxmqxFDYYxLmPFb+Kmv+wXHcJ0uUTngC0CIsYXsBbS14O/eqmPabRkpCM
 6wQ0BiplgSxYItKA+lk7OlJ7NW5ok/PHMRaVYRq93xZ4IZE40xqX7BU6+R9yiI4DQ+XU
 vHTw==
X-Gm-Message-State: AOAM533XF3vlX7A1rjj9fEPxUzC3YSG3odewbKgcdUzougvRMP1Cv9zU
 EFox6JProQSSRMwH69elL73kAQ==
X-Google-Smtp-Source: ABdhPJzj+VvmRfwnYXmVqS+uA82hQa6Bq5zcWe8gnJgIbFcHl+aw57ZmZXX1ZrF6hToTHWBK0Nl3fA==
X-Received: by 2002:a17:906:3888:: with SMTP id
 q8mr3820063ejd.15.1623321946521; 
 Thu, 10 Jun 2021 03:45:46 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id y1sm866526ejl.7.2021.06.10.03.45.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 03:45:46 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu, 10 Jun 2021 13:45:36 +0300
Message-Id: <20210610104537.119538-2-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610104537.119538-1-razor@blackwall.org>
References: <20210610104537.119538-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net 1/2] net: bridge: fix vlan tunnel dst null
	pointer dereference
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

This patch fixes a tunnel_dst null pointer dereference due to lockless
access in the tunnel egress path. When deleting a vlan tunnel the
tunnel_dst pointer is set to NULL without waiting a grace period (i.e.
while it's still usable) and packets egressing are dereferencing it
without checking. Use READ/WRITE_ONCE to annotate the lockless use of
tunnel_id, use RCU for accessing tunnel_dst and make sure it is read
only once and checked in the egress path. The dst is already properly RCU
protected so we don't need to do anything fancy than to make sure
tunnel_id and tunnel_dst are read only once and checked in the egress path.

Fixes: 11538d039ac6 ("bridge: vlan dst_metadata hooks in ingress and egress paths")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_private.h     |  4 ++--
 net/bridge/br_vlan_tunnel.c | 38 +++++++++++++++++++++++--------------
 2 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 7ce8a77cc6b6..e013d33f1c7c 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -90,8 +90,8 @@ struct bridge_mcast_stats {
 #endif
 
 struct br_tunnel_info {
-	__be64			tunnel_id;
-	struct metadata_dst	*tunnel_dst;
+	__be64				tunnel_id;
+	struct metadata_dst __rcu	*tunnel_dst;
 };
 
 /* private vlan flags */
diff --git a/net/bridge/br_vlan_tunnel.c b/net/bridge/br_vlan_tunnel.c
index 0d3a8c01552e..03de461a0d44 100644
--- a/net/bridge/br_vlan_tunnel.c
+++ b/net/bridge/br_vlan_tunnel.c
@@ -41,26 +41,33 @@ static struct net_bridge_vlan *br_vlan_tunnel_lookup(struct rhashtable *tbl,
 				      br_vlan_tunnel_rht_params);
 }
 
+static void vlan_tunnel_info_release(struct net_bridge_vlan *vlan)
+{
+	struct metadata_dst *tdst = rtnl_dereference(vlan->tinfo.tunnel_dst);
+
+	WRITE_ONCE(vlan->tinfo.tunnel_id, 0);
+	RCU_INIT_POINTER(vlan->tinfo.tunnel_dst, NULL);
+	dst_release(&tdst->dst);
+}
+
 void vlan_tunnel_info_del(struct net_bridge_vlan_group *vg,
 			  struct net_bridge_vlan *vlan)
 {
-	if (!vlan->tinfo.tunnel_dst)
+	if (!rcu_access_pointer(vlan->tinfo.tunnel_dst))
 		return;
 	rhashtable_remove_fast(&vg->tunnel_hash, &vlan->tnode,
 			       br_vlan_tunnel_rht_params);
-	vlan->tinfo.tunnel_id = 0;
-	dst_release(&vlan->tinfo.tunnel_dst->dst);
-	vlan->tinfo.tunnel_dst = NULL;
+	vlan_tunnel_info_release(vlan);
 }
 
 static int __vlan_tunnel_info_add(struct net_bridge_vlan_group *vg,
 				  struct net_bridge_vlan *vlan, u32 tun_id)
 {
-	struct metadata_dst *metadata = NULL;
+	struct metadata_dst *metadata = rtnl_dereference(vlan->tinfo.tunnel_dst);
 	__be64 key = key32_to_tunnel_id(cpu_to_be32(tun_id));
 	int err;
 
-	if (vlan->tinfo.tunnel_dst)
+	if (metadata)
 		return -EEXIST;
 
 	metadata = __ip_tun_set_dst(0, 0, 0, 0, 0, TUNNEL_KEY,
@@ -69,8 +76,8 @@ static int __vlan_tunnel_info_add(struct net_bridge_vlan_group *vg,
 		return -EINVAL;
 
 	metadata->u.tun_info.mode |= IP_TUNNEL_INFO_TX | IP_TUNNEL_INFO_BRIDGE;
-	vlan->tinfo.tunnel_dst = metadata;
-	vlan->tinfo.tunnel_id = key;
+	rcu_assign_pointer(vlan->tinfo.tunnel_dst, metadata);
+	WRITE_ONCE(vlan->tinfo.tunnel_id, key);
 
 	err = rhashtable_lookup_insert_fast(&vg->tunnel_hash, &vlan->tnode,
 					    br_vlan_tunnel_rht_params);
@@ -79,9 +86,7 @@ static int __vlan_tunnel_info_add(struct net_bridge_vlan_group *vg,
 
 	return 0;
 out:
-	dst_release(&vlan->tinfo.tunnel_dst->dst);
-	vlan->tinfo.tunnel_dst = NULL;
-	vlan->tinfo.tunnel_id = 0;
+	vlan_tunnel_info_release(vlan);
 
 	return err;
 }
@@ -182,12 +187,15 @@ int br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
 int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
 				 struct net_bridge_vlan *vlan)
 {
+	struct metadata_dst *tunnel_dst;
+	__be64 tunnel_id;
 	int err;
 
-	if (!vlan || !vlan->tinfo.tunnel_id)
+	if (!vlan)
 		return 0;
 
-	if (unlikely(!skb_vlan_tag_present(skb)))
+	tunnel_id = READ_ONCE(vlan->tinfo.tunnel_id);
+	if (!tunnel_id || unlikely(!skb_vlan_tag_present(skb)))
 		return 0;
 
 	skb_dst_drop(skb);
@@ -195,7 +203,9 @@ int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
 	if (err)
 		return err;
 
-	skb_dst_set(skb, dst_clone(&vlan->tinfo.tunnel_dst->dst));
+	tunnel_dst = rcu_dereference(vlan->tinfo.tunnel_dst);
+	if (tunnel_dst)
+		skb_dst_set(skb, dst_clone(&tunnel_dst->dst));
 
 	return 0;
 }
-- 
2.31.1

