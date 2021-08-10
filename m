Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 626083E7C39
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 17:30:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 622FD6085A;
	Tue, 10 Aug 2021 15:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9fRwLr3sFrxr; Tue, 10 Aug 2021 15:30:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E089760861;
	Tue, 10 Aug 2021 15:30:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B613FC001F;
	Tue, 10 Aug 2021 15:30:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 07C15C001C
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4DD040452
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uq6hmJJhcHtE for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 15:29:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A66994046A
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 15:29:57 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 h24-20020a1ccc180000b029022e0571d1a0so2809510wmb.5
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 08:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8QwqQleoGxCM0RtBR5+pJ1/nVkcUoQV4qf01skg7xRo=;
 b=vJdgSvHwBiANNhd65pdgBC6j5ySWEnDsF1VM5x1cWF7dwvbhOjDqQH7UY9n9thW8m5
 nHadsKPqBjFkVfke5OgXGg7vpkcstkZp+3KlYbjn1viyXU6EaIj15BqdEt3NO6AE3VC4
 TUe++h1+0BSlqqfN3J7yIAq8Di4qKoVKycLYtfwXdfY2S8hMYgTsX9a91PFjR9e+mX4f
 9N4BWGQIitrpbFsJj+b+UtOI5uumGTaFdOPw9inijm0CHCzSj49iY5qvKS/JcH6L0i2n
 01mSqDr04cwoWMh1PK8W+xZD0R6tWWPEvt7sd6TcpXiITSh03PdIoC+M9ye7UBQNc2Ri
 EDew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8QwqQleoGxCM0RtBR5+pJ1/nVkcUoQV4qf01skg7xRo=;
 b=LAGLWu1MLPRBKQYZbgBaz84CtALjwEVVBufDe1qLLo1zsBiTZk1u0ay+sXX/3wEUM4
 3Sf/LLZV3suw6+nhY1Gp+Pp2O9qjxi5bZnyJ/sJj4wHnaFeUJjVc3q+x8bXbJPifi44W
 qCQxlY69h7zGHs+yG9KY8+8ND7Ae8dBMr/oSgQbEj2VoBkBxTSGaH+1slR6mVXn/pBl2
 oEFE6ZaGHdWQ20okNzQ6QhqFZn1+gRnceLe0Jn7uNke7X69ZCdHrrLGgskkClkdPRH7E
 I4uOGGfRg7VqVVXOf5onG/UWGsdMArulNZ5eINREHmwoj4TlKRhg9LvqkNXmT/GZSqQO
 wg9Q==
X-Gm-Message-State: AOAM533SpxjTJia1HnAXClOnijsDbRCt9md3wE8QaAasd5PizCRWNgrt
 2pym/X6HqtCN1Xc9AR+71fdLM9f1srSQPJMC
X-Google-Smtp-Source: ABdhPJz/PcyT3sy+RM6YjnW5MhmEj0w+zbXRqCSLP6ZjLF8qUIvQ2VMEvd/6s29yUwo840XgXbmhLw==
X-Received: by 2002:a05:600c:3b91:: with SMTP id
 n17mr5246420wms.72.1628609395810; 
 Tue, 10 Aug 2021 08:29:55 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f15sm22848219wrp.12.2021.08.10.08.29.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 08:29:55 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 18:29:29 +0300
Message-Id: <20210810152933.178325-12-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810152933.178325-1-razor@blackwall.org>
References: <20210810152933.178325-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 11/15] net: bridge: mcast: querier and
	query state affect only current context type
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

It is a minor optimization and better behaviour to make sure querier and
query sending routines affect only the matching multicast context
depending if vlan snooping is enabled (vlan ctx vs bridge ctx).
It also avoids sending unnecessary extra query packets.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 14 +++++++++-----
 net/bridge/br_private.h   | 11 +++++++++++
 2 files changed, 20 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index fe1482efd59c..f30c2e5d3142 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1628,7 +1628,8 @@ static void __br_multicast_send_query(struct net_bridge_mcast *brmctx,
 	struct sk_buff *skb;
 	u8 igmp_type;
 
-	if (!br_multicast_ctx_should_use(brmctx, pmctx))
+	if (!br_multicast_ctx_should_use(brmctx, pmctx) ||
+	    !br_multicast_ctx_matches_vlan_snooping(brmctx))
 		return;
 
 again_under_lmqt:
@@ -3875,9 +3876,9 @@ void br_multicast_open(struct net_bridge *br)
 					__br_multicast_open(&vlan->br_mcast_ctx);
 			}
 		}
+	} else {
+		__br_multicast_open(&br->multicast_ctx);
 	}
-
-	__br_multicast_open(&br->multicast_ctx);
 }
 
 static void __br_multicast_stop(struct net_bridge_mcast *brmctx)
@@ -4028,9 +4029,9 @@ void br_multicast_stop(struct net_bridge *br)
 					__br_multicast_stop(&vlan->br_mcast_ctx);
 			}
 		}
+	} else {
+		__br_multicast_stop(&br->multicast_ctx);
 	}
-
-	__br_multicast_stop(&br->multicast_ctx);
 }
 
 void br_multicast_dev_del(struct net_bridge *br)
@@ -4175,6 +4176,9 @@ static void br_multicast_start_querier(struct net_bridge_mcast *brmctx,
 {
 	struct net_bridge_port *port;
 
+	if (!br_multicast_ctx_matches_vlan_snooping(brmctx))
+		return;
+
 	__br_multicast_open_query(brmctx->br, query);
 
 	rcu_read_lock();
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 50f38d6f586d..25db6b02b042 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1209,6 +1209,17 @@ br_multicast_ctx_options_equal(const struct net_bridge_mcast *brmctx1,
 #endif
 	       true;
 }
+
+static inline bool
+br_multicast_ctx_matches_vlan_snooping(const struct net_bridge_mcast *brmctx)
+{
+	bool vlan_snooping_enabled;
+
+	vlan_snooping_enabled = !!br_opt_get(brmctx->br,
+					     BROPT_MCAST_VLAN_SNOOPING_ENABLED);
+
+	return !!(vlan_snooping_enabled == br_multicast_ctx_is_vlan(brmctx));
+}
 #else
 static inline int br_multicast_rcv(struct net_bridge_mcast **brmctx,
 				   struct net_bridge_mcast_port **pmctx,
-- 
2.31.1

