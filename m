Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E96224DC304
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:39:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AEBF60A99;
	Thu, 17 Mar 2022 09:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JhJcsqC4nCMo; Thu, 17 Mar 2022 09:39:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E7E7760E42;
	Thu, 17 Mar 2022 09:39:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9643C0073;
	Thu, 17 Mar 2022 09:39:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CA063C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAA8960E42
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTeaacDup3MV for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:39:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D152960A99
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:20 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id n19so8001257lfh.8
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=c4q1aukNB19Ywn0yhrK5YppHN0nN9ZnWCosl/BOVje8=;
 b=HBcQdLeyekvttOcqJyw/c2RfIJxEBHgYmtgQ3kD1Xz3683ZUW4Jw/KOKUVwlroPElG
 5pDByd9XOH/i5ZMoYANS4jS4pP9mrMVS7G47zk8KaWVoHvSthe7mHHXvQUkyF3aCESBH
 x09n0Nid2fsa8RCqAShcyHR01JqSdFESXgzUcBhrb+QkYTgHJ68TnVfuO6+4q56JUoDH
 lxpqApIUbHTlc+9iMYXHRw5kK0teaRUsJ1STRRsgWdv27ygQy6nJJK8dAtqBuhIEFsJA
 qQKcS21luVzhyRr8UEBQs/KsUp111+G7zevtkBdtwFjmtB2NLV3y2L5MGJonrAuKoKEJ
 0hPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=c4q1aukNB19Ywn0yhrK5YppHN0nN9ZnWCosl/BOVje8=;
 b=LfqYxbtgReIzvDa066ATpw6RTlYL/cGEI4V33NA3G6OKUYAz6NykFeqwRH1WCQPg4F
 ajmGUPD6Q4/4p5VoJMld/wWEg3tIOs6WcW7bJVViig+RR1n/m9xaeHsR8brWNtHqeu4f
 E3A6QRK5KPyy5LoHSgtYbe3WYncFre+ElELRLjlBVE+Xln+Rbc2biGrJA2GxPin3PGpz
 7vqr6D5vPqXztgJnoJsxALd8poNiiNNfy/1+gj6n5DY7yUL2OX2G0XmutvL5hTYZzA0b
 zAIKkg1psJ70OI7aJRuFGucjgWByQxFd29ZdE2tMRH/ZRUt1tR1zPGrjQO7IocLGSHro
 qiCA==
X-Gm-Message-State: AOAM532NjAeYJo6jp+4CBAYJjIcyMg1+rcxWkx1nY7sb86CqRH9a9KMg
 SaIHAV4uZg04AKTIw4Nd3io=
X-Google-Smtp-Source: ABdhPJykJl4mFrePipnjHt0TpvxaENudHa6jNxkNkOf6DYzLxpODUqNfms27hDJoydvENM6tME91+w==
X-Received: by 2002:a05:6512:2214:b0:449:f68c:b4e4 with SMTP id
 h20-20020a056512221400b00449f68cb4e4mr1505255lfu.289.1647509958750; 
 Thu, 17 Mar 2022 02:39:18 -0700 (PDT)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 w13-20020a2e998d000000b002496199495csm113479lji.55.2022.03.17.02.39.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 02:39:18 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 17 Mar 2022 10:38:59 +0100
Message-Id: <20220317093902.1305816-2-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v2 net-next 1/4] net: bridge: add fdb flag to
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
Only the kernel can set this FDB entry flag, while userspace can read
the flag and remove it by deleting the FDB entry.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 include/uapi/linux/neighbour.h |  1 +
 net/bridge/br_fdb.c            |  6 ++++++
 net/bridge/br_input.c          | 10 +++++++++-
 net/bridge/br_private.h        |  3 ++-
 4 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index db05fb55055e..a2df3b9b2f68 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -51,6 +51,7 @@ enum {
 #define NTF_ROUTER	(1 << 7)
 /* Extended flags under NDA_FLAGS_EXT: */
 #define NTF_EXT_MANAGED	(1 << 0)
+#define NTF_EXT_LOCKED	(1 << 1)
 
 /*
  *	Neighbor Cache Entry States.
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6ccda68bd473..57ec559a85a7 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
 	struct nda_cacheinfo ci;
 	struct nlmsghdr *nlh;
 	struct ndmsg *ndm;
+	u8 ext_flags = 0;
 
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
+	if (nla_put_u8(skb, NDA_FLAGS_EXT, ext_flags))
+		goto nla_put_failure;
+
 	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
 	ci.ndm_confirmed = 0;
 	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index e0c13fcc50ed..5ef25a496806 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -94,8 +94,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
 
 		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
-		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
+		    test_bit(BR_FDB_LOCAL, &fdb_src->flags) ||
+		    test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags)) {
+			if (!fdb_src) {
+				unsigned long flags = 0;
+
+				set_bit(BR_FDB_ENTRY_LOCKED, &flags);
+				br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);
+			}
 			goto drop;
+		}
 	}
 
 	nbp_switchdev_frame_mark(p, skb);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 48bc61ebc211..f5a0b68c4857 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -248,7 +248,8 @@ enum {
 	BR_FDB_ADDED_BY_EXT_LEARN,
 	BR_FDB_OFFLOADED,
 	BR_FDB_NOTIFY,
-	BR_FDB_NOTIFY_INACTIVE
+	BR_FDB_NOTIFY_INACTIVE,
+	BR_FDB_ENTRY_LOCKED,
 };
 
 struct net_bridge_fdb_key {
-- 
2.30.2

