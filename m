Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA5C3EB745
	for <lists.bridge@lfdr.de>; Fri, 13 Aug 2021 17:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1B6860BAD;
	Fri, 13 Aug 2021 15:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8AFO9gtAvyE2; Fri, 13 Aug 2021 15:00:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3FE32605AD;
	Fri, 13 Aug 2021 15:00:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1258BC000E;
	Fri, 13 Aug 2021 15:00:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 928D2C000E
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70E8D4073F
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2aPWEJEtjEBD for <bridge@lists.linux-foundation.org>;
 Fri, 13 Aug 2021 15:00:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A9AF40364
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:26 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id b13so13731715wrs.3
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 08:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ylXTkKnP8F765h1iV6deSBEGxEMvHyfG/yoaLoV5+ec=;
 b=QbNvZc5kYjk7xyUSgO4WUdkGPWtaOV18CuuE8/GlL2Pmakr+f4u7N8ShZGdrI9ieks
 LZIWgVjFVwLhtAHVR2oAgl9wWNdyxHhOhBRu2jiMgJVdJTgYS+lIPIsIxBMAKfALjNqg
 Ax68bOfjx3fQnKiaz43HoaR8yMmVR8WzceAJsI8YgzhQzOZ84yjW4j/76y2OLAPI22Qs
 uSn/lGHXeXaQN7LEcJz/R741CLARI7vK8M6oDl7ngOWXrRRIoNegRx8vzFvBh1bcjQSn
 YqazStUsLcliEAHgIw10P7bZFnRnTVhmM6c4DYHal5UrbIUfSb36mbUSugEOLvl7i5R9
 EGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ylXTkKnP8F765h1iV6deSBEGxEMvHyfG/yoaLoV5+ec=;
 b=TvkAjiMsuxMXBv4oFaEjChWftjKy3AIKMg/q/XBzeOx+UW6GWbXYt5CU4mVwZcNcdT
 wrqYQhTSDiVwXbIXu1JWrLI4vVAYRRsFORD14Y1TLm359XzwTOq0Jrg563h1c2aqhpsD
 IOi+SV1G5p+yB4ZlwCpFOz+TNmyLKuOH9UHYTTnsvtYY85g4svqe1iWTuSCOTS5wS+ia
 xBNTqUXuceJCmXqZtUPLn+dqnZ4GYk88sifYMQWEu7JtkSEI7r8bZyBw1GVzICiaX2ID
 IpV/yHPbK1ojgiRxNyN8lRXAlthy82Ese0KctO6LRU73S6BM1Sr1WMDAU/Xx44edMdoO
 Btgw==
X-Gm-Message-State: AOAM531fDeehOEEvbotD5EhASbZqkFrJ3lgUyJYHA7hrtS0JBrQDlVx7
 Zss+BSttY8sJdYcN2A58ETTRQD1cGW7bFdXZ
X-Google-Smtp-Source: ABdhPJytOmrQdQmVDY/IBScENfnM77up5IuGZN4Mpz4M0PlN2y/GyF8ZmGGyh9JKm2F6A9+2PVO42Q==
X-Received: by 2002:a17:906:72c8:: with SMTP id
 m8mr2832131ejl.508.1628866813260; 
 Fri, 13 Aug 2021 08:00:13 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d26sm1015711edp.90.2021.08.13.08.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 08:00:12 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 13 Aug 2021 18:00:01 +0300
Message-Id: <20210813150002.673579-6-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210813150002.673579-1-razor@blackwall.org>
References: <20210813150002.673579-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 5/6] net: bridge: mcast: dump ipv6 querier
	state
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

Add support for dumping global IPv6 querier state, we dump the state
only if our own querier is enabled or there has been another external
querier which has won the election. For the bridge global state we use
a new attribute IFLA_BR_MCAST_QUERIER_STATE and embed the state inside.
The structure is:
  [IFLA_BR_MCAST_QUERIER_STATE]
   `[BRIDGE_QUERIER_IPV6_ADDRESS] - ip address of the querier
   `[BRIDGE_QUERIER_IPV6_PORT]    - bridge port ifindex where the querier
                                    was seen (set only if external querier)
   `[BRIDGE_QUERIER_IPV6_OTHER_TIMER]   -  other querier timeout

IPv4 and IPv6 attributes are embedded at the same level of
IFLA_BR_MCAST_QUERIER_STATE. If we didn't dump anything we cancel the nest
and return.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h |  3 +++
 net/bridge/br_multicast.c      | 36 ++++++++++++++++++++++++++++++----
 2 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index e0fff67fcd88..eceaad200bf6 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -777,6 +777,9 @@ enum {
 	BRIDGE_QUERIER_IP_PORT,
 	BRIDGE_QUERIER_IP_OTHER_TIMER,
 	BRIDGE_QUERIER_PAD,
+	BRIDGE_QUERIER_IPV6_ADDRESS,
+	BRIDGE_QUERIER_IPV6_PORT,
+	BRIDGE_QUERIER_IPV6_OTHER_TIMER,
 	__BRIDGE_QUERIER_MAX
 };
 #define BRIDGE_QUERIER_MAX (__BRIDGE_QUERIER_MAX - 1)
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 4513bc13b6d3..0e5d6ba03457 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2943,15 +2943,15 @@ int br_multicast_dump_querier_state(struct sk_buff *skb,
 	struct net_bridge_port *p;
 	struct nlattr *nest;
 
-	if (!brmctx->multicast_querier &&
-	    !timer_pending(&brmctx->ip4_other_query.timer))
-		return 0;
-
 	nest = nla_nest_start(skb, nest_attr);
 	if (!nest)
 		return -EMSGSIZE;
 
 	rcu_read_lock();
+	if (!brmctx->multicast_querier &&
+	    !timer_pending(&brmctx->ip4_other_query.timer))
+		goto out_v6;
+
 	br_multicast_read_querier(&brmctx->ip4_querier, &querier);
 	if (nla_put_in_addr(skb, BRIDGE_QUERIER_IP_ADDRESS,
 			    querier.addr.src.ip4)) {
@@ -2968,8 +2968,36 @@ int br_multicast_dump_querier_state(struct sk_buff *skb,
 		rcu_read_unlock();
 		goto out_err;
 	}
+
+out_v6:
+#if IS_ENABLED(CONFIG_IPV6)
+	if (!brmctx->multicast_querier &&
+	    !timer_pending(&brmctx->ip6_other_query.timer))
+		goto out;
+
+	br_multicast_read_querier(&brmctx->ip6_querier, &querier);
+	if (nla_put_in6_addr(skb, BRIDGE_QUERIER_IPV6_ADDRESS,
+			     &querier.addr.src.ip6)) {
+		rcu_read_unlock();
+		goto out_err;
+	}
+
+	p = __br_multicast_get_querier_port(brmctx->br, &querier);
+	if (timer_pending(&brmctx->ip6_other_query.timer) &&
+	    (nla_put_u64_64bit(skb, BRIDGE_QUERIER_IPV6_OTHER_TIMER,
+			       br_timer_value(&brmctx->ip6_other_query.timer),
+			       BRIDGE_QUERIER_PAD) ||
+	     (p && nla_put_u32(skb, BRIDGE_QUERIER_IPV6_PORT,
+			       p->dev->ifindex)))) {
+		rcu_read_unlock();
+		goto out_err;
+	}
+out:
+#endif
 	rcu_read_unlock();
 	nla_nest_end(skb, nest);
+	if (!nla_len(nest))
+		nla_nest_cancel(skb, nest);
 
 	return 0;
 
-- 
2.31.1

