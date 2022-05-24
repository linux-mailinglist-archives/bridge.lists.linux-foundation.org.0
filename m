Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E67532D36
	for <lists.bridge@lfdr.de>; Tue, 24 May 2022 17:22:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B14A40C4A;
	Tue, 24 May 2022 15:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRsrrq4C3q4G; Tue, 24 May 2022 15:22:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A307A40C5F;
	Tue, 24 May 2022 15:22:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 680B1C0080;
	Tue, 24 May 2022 15:22:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C6D47C002D
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2C4E40C2A
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bOZfyzoPdUdg for <bridge@lists.linux-foundation.org>;
 Tue, 24 May 2022 15:22:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A802D400C1
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:05 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id v8so29467860lfd.8
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 08:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=aX8AH42eGAdZF8m84i0MALMiO5+cbaAZiyI29p+eK+s=;
 b=P8JM1WosL3j5gYhj9AH840o2NLQ8nwmAJd0HGrcuSsqH5Qacxf4BPjD7VS/lqmxY77
 Ey1VcoAICHNocGLOnRx8KNTfYF2gKnvslxG7waSZlJvQzEoXY2YHLvFnvprqKZNBE5zF
 TCGPZJiX8l/XGLwhMiP58Drb2FKEYRREp+3vVq0cBNe1HrQC13RZv7fUnXP7foLbaXyO
 VBMtFOAqCHUWw3mZfsA0ExjFLPjrjMtIU0k9/0XLBOE8sutQupm2TtaMZvt1ZHjlL9AB
 icwS05NuOHfnD6daGIwAhDdS8QZCbpA9cs+UgQbpoTvjvkMzMUjU5e5VjLdxcnwp4kz7
 eW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=aX8AH42eGAdZF8m84i0MALMiO5+cbaAZiyI29p+eK+s=;
 b=o8VktvdSQEobUxcCKyctzYxgpiAHg738Wa1SXmTOvKv5QeHN0yd+oBHL688Gnkizmg
 fo/WUuFAijOQ6F4xMBiSRiUJEmJOniOSaPr9R4dXAyEhNbN3Vn0aDxwf/7F/SNhAtC42
 PXGxDhjmNMIL5IT4SR0eP1YcKNFHHLtZFgf2Is4aUkn8aOUzyZrZ5qm46+R7KIYkvs6s
 c+/QYpiiIZf8+f6PjVcF/LqeoUToGQzNqtVXVf0V9EGByvaZy9OL1akS5hZ5kP2XSMz/
 DWhBf+PFJ+sd8w+yqvZ6nxxc5cXpDCy4AVwwVqsK1Pog85RtPGQ4BfGfQMk8xMgOVVNt
 y4XQ==
X-Gm-Message-State: AOAM532rMlXzS712WTZ/gdQFbTiVF3PFIzx/1RV+DTmjPj48tvFBKQAs
 Ji+/Y4teS4ib2G8t1WOGZOU=
X-Google-Smtp-Source: ABdhPJxNCEK+KI+zb8fvMJbHu0/L/a076Ob2wEvbSabFe4aAC5SwVww9jfIe+B7NTD5tzhGwBij2Tw==
X-Received: by 2002:a05:6512:10d0:b0:477:ce0a:8e9d with SMTP id
 k16-20020a05651210d000b00477ce0a8e9dmr17566392lfg.420.1653405723520; 
 Tue, 24 May 2022 08:22:03 -0700 (PDT)
Received: from wse-c0127.westermo.com
 (2-104-116-184-cable.dk.customer.tdc.net. [2.104.116.184])
 by smtp.gmail.com with ESMTPSA id
 d22-20020a2e3316000000b00253deeaeb3dsm2441404ljc.131.2022.05.24.08.22.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 08:22:03 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 24 May 2022 17:21:41 +0200
Message-Id: <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
	extent locked port feature
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

Add an intermediate state for clients behind a locked port to allow for
possible opening of the port for said clients. This feature corresponds
to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
latter defined by Cisco.
Locked FDB entries will be limited in number, so as to prevent DOS
attacks by spamming the port with random entries. The limit will be
a per port limit as it is a port based feature and that the port flushes
all FDB entries on link down.

Only the kernel can set this FDB entry flag, while userspace can read
the flag and remove it by deleting the FDB entry.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 include/uapi/linux/neighbour.h |  1 +
 net/bridge/br_fdb.c            | 11 +++++++++++
 net/bridge/br_if.c             |  1 +
 net/bridge/br_input.c          | 11 ++++++++++-
 net/bridge/br_private.h        |  7 ++++++-
 5 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index 39c565e460c7..76d65b481086 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -53,6 +53,7 @@ enum {
 #define NTF_ROUTER	(1 << 7)
 /* Extended flags under NDA_FLAGS_EXT: */
 #define NTF_EXT_MANAGED	(1 << 0)
+#define NTF_EXT_LOCKED	(1 << 1)
 
 /*
  *	Neighbor Cache Entry States.
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index e7f4fccb6adb..6b83e2d6435d 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 	struct nda_cacheinfo ci;
 	struct nlmsghdr *nlh;
 	struct ndmsg *ndm;
+	u32 ext_flags = 0;
 
 	nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
 	if (nlh == NULL)
@@ -125,11 +126,16 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 		ndm->ndm_flags |= NTF_EXT_LEARNED;
 	if (test_bit(BR_FDB_STICKY, &fdb->flags))
 		ndm->ndm_flags |= NTF_STICKY;
+	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
+		ext_flags |= NTF_EXT_LOCKED;
 
 	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
 		goto nla_put_failure;
 	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
 		goto nla_put_failure;
+	if (nla_put_u32(skb, NDA_FLAGS_EXT, ext_flags))
+		goto nla_put_failure;
+
 	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
 	ci.ndm_confirmed = 0;
 	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
@@ -171,6 +177,7 @@ static inline size_t fdb_nlmsg_size(void)
 	return NLMSG_ALIGN(sizeof(struct ndmsg))
 		+ nla_total_size(ETH_ALEN) /* NDA_LLADDR */
 		+ nla_total_size(sizeof(u32)) /* NDA_MASTER */
+		+ nla_total_size(sizeof(u32)) /* NDA_FLAGS_EXT */
 		+ nla_total_size(sizeof(u16)) /* NDA_VLAN */
 		+ nla_total_size(sizeof(struct nda_cacheinfo))
 		+ nla_total_size(0) /* NDA_FDB_EXT_ATTRS */
@@ -319,6 +326,9 @@ static void fdb_delete(struct net_bridge *br, struct net_bridge_fdb_entry *f,
 	if (test_bit(BR_FDB_STATIC, &f->flags))
 		fdb_del_hw_addr(br, f->key.addr.addr);
 
+	if (test_bit(BR_FDB_ENTRY_LOCKED, &f->flags) && !test_bit(BR_FDB_OFFLOADED, &f->flags))
+		atomic_dec(&f->dst->locked_entry_cnt);
+
 	hlist_del_init_rcu(&f->fdb_node);
 	rhashtable_remove_fast(&br->fdb_hash_tbl, &f->rhnode,
 			       br_fdb_rht_params);
@@ -1086,6 +1096,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 		modified = true;
 
 	set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
+	clear_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags);
 
 	fdb->used = jiffies;
 	if (modified) {
diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index 47fcbade7389..0ca04cba5ebe 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -429,6 +429,7 @@ static struct net_bridge_port *new_nbp(struct net_bridge *br,
 	p->priority = 0x8000 >> BR_PORT_BITS;
 	p->port_no = index;
 	p->flags = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD;
+	p->locked_entry_cnt.counter = 0;
 	br_init_port(p);
 	br_set_state(p, BR_STATE_DISABLED);
 	br_stp_port_timer_init(p);
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 68b3e850bcb9..0280806cf980 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -110,8 +110,17 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
 
 		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
-		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
+		    test_bit(BR_FDB_LOCAL, &fdb_src->flags) ||
+		    test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags)) {
+			if (!fdb_src && atomic_read(&p->locked_entry_cnt) < BR_LOCKED_ENTRIES_MAX) {
+				unsigned long flags = 0;
+
+				__set_bit(BR_FDB_ENTRY_LOCKED, &flags);
+				br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);
+				atomic_inc(&p->locked_entry_cnt);
+			}
 			goto drop;
+		}
 	}
 
 	nbp_switchdev_frame_mark(p, skb);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 06e5f6faa431..be17c99efe65 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -31,6 +31,8 @@
 #define BR_MULTICAST_QUERY_INTVL_MIN msecs_to_jiffies(1000)
 #define BR_MULTICAST_STARTUP_QUERY_INTVL_MIN BR_MULTICAST_QUERY_INTVL_MIN
 
+#define BR_LOCKED_ENTRIES_MAX	64
+
 #define BR_HWDOM_MAX BITS_PER_LONG
 
 #define BR_VERSION	"2.3"
@@ -251,7 +253,8 @@ enum {
 	BR_FDB_ADDED_BY_EXT_LEARN,
 	BR_FDB_OFFLOADED,
 	BR_FDB_NOTIFY,
-	BR_FDB_NOTIFY_INACTIVE
+	BR_FDB_NOTIFY_INACTIVE,
+	BR_FDB_ENTRY_LOCKED,
 };
 
 struct net_bridge_fdb_key {
@@ -414,6 +417,8 @@ struct net_bridge_port {
 	u16				backup_redirected_cnt;
 
 	struct bridge_stp_xstats	stp_xstats;
+
+	atomic_t			locked_entry_cnt;
 };
 
 #define kobj_to_brport(obj)	container_of(obj, struct net_bridge_port, kobj)
-- 
2.30.2

