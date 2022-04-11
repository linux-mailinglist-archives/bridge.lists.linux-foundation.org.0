Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AD74FBD5F
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 15:39:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E10C409A7;
	Mon, 11 Apr 2022 13:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4xgNK6tGEAF; Mon, 11 Apr 2022 13:39:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E6A13414E2;
	Mon, 11 Apr 2022 13:39:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A45DC0084;
	Mon, 11 Apr 2022 13:39:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 235A1C008B
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD11960FD0
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVrwggQvrRme for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 13:39:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC2BC60FDE
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:01 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id z17so2183148lfj.11
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 06:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=TFNOjZAXZon/4fuYvoXX/NbbTAf3VntOhKR6DBqpfYk=;
 b=kvB+hyM6e8RNZhoXuBQ/tSpmItfGCHtV/80UPZA2wcqsSJle472+AMQJQkqTSKG1zm
 9Ts/A1anN1MHNODDAuUPyykcEu1h3TncWzzTNf9nyt/TVZtmY+pPFG7NFuUeJhHrhKXa
 g9WqrFGvVVpE5OLbkZ64U+QIwjL7mx5bxxM82hWCDKNkDygEjR9jbQoxAPm6i/8W5kPR
 RzHZi9JYFT+8ZqGHUqK4lCk6QIv67edRLjOnrYh6wQB2mGbwq+hC0jyLJCtINGFhAInp
 U08yaJaXH9DmG3bSRD4IyKJK0gv0HkZDmsae+6ULbupzhH0+WDlM2Kp1QSlSlOP6Jn3H
 itWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=TFNOjZAXZon/4fuYvoXX/NbbTAf3VntOhKR6DBqpfYk=;
 b=axxXaRhe1k7SIhbiHX//KZQ2EmSc9YS635R6tSeC/XWDC/5+eiJcKdgw5Tbbd1Q+9i
 umX07t188h6BBJRvBVUmuaxiL7HmeorJ2lcDmMR8HFSOBpgumecoZLw7PgCrDX6Fb8sC
 9P7v5IP2ans0gZ2yo7Xf3mLFkOKiXBAQm5UWZ4J3jaRpH3EmFj3WggRMtA+v7C5e3/ro
 9YwMtTpjdsgEpvBzWt//2vEF/In/X8/BlUeMBjayWyGgdJCIlCULnZvir2hWcaVR0+GG
 otClBQDIAgt+15fXQ1A8gC7WDSco24Q7ndi3um5hJ23yn9dH6zvx5HR2Fy1pTZwxJoGn
 mwVw==
X-Gm-Message-State: AOAM530k2RSw6KMRGAxIZgmuHzeCBYhid0+Hn1C/9dfRJrFZw6ApgGDT
 E3LwEdg92FSvuoAGFjFm5cA=
X-Google-Smtp-Source: ABdhPJz8VyAgDW/b+e3V8a/isVm7gzC8dVXcgQJDNS04+ThstRMLoxnxLoypvvmLCJqc1Rsk2tMNoQ==
X-Received: by 2002:ac2:4194:0:b0:442:ed9e:4a25 with SMTP id
 z20-20020ac24194000000b00442ed9e4a25mr20779404lfh.629.1649684339767; 
 Mon, 11 Apr 2022 06:38:59 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm3336847lfa.62.2022.04.11.06.38.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 06:38:59 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 11 Apr 2022 15:38:32 +0200
Message-Id: <20220411133837.318876-9-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411133837.318876-1-troglobit@gmail.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Joachim Wiberg <troglobit@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH RFC net-next 08/13] net: bridge: avoid classifying
	unknown multicast as mrouters_only
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

Unknown multicast, MAC/IPv4/IPv6, should always be flooded according to
the per-port mcast_flood setting, as well as to detected and configured
mcast_router ports.

This patch drops the mrouters_only classifier of unknown IP multicast
and moves the flow handling from br_multicast_flood() to br_flood().
This in turn means br_flood() must know about multicast router ports.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 net/bridge/br_forward.c   | 11 +++++++++++
 net/bridge/br_multicast.c |  6 +-----
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 02bb620d3b8d..ab5b97a8c12e 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -199,9 +199,15 @@ static struct net_bridge_port *maybe_deliver(
 void br_flood(struct net_bridge *br, struct sk_buff *skb,
 	      enum br_pkt_type pkt_type, bool local_rcv, bool local_orig)
 {
+	struct net_bridge_mcast *brmctx = &br->multicast_ctx;
+	struct net_bridge_port *rport = NULL;
 	struct net_bridge_port *prev = NULL;
+	struct hlist_node *rp = NULL;
 	struct net_bridge_port *p;
 
+	if (pkt_type == BR_PKT_MULTICAST)
+		rp = br_multicast_get_first_rport_node(brmctx, skb);
+
 	list_for_each_entry_rcu(p, &br->port_list, list) {
 		/* Do not flood unicast traffic to ports that turn it off, nor
 		 * other traffic if flood off, except for traffic we originate
@@ -212,6 +218,11 @@ void br_flood(struct net_bridge *br, struct sk_buff *skb,
 				continue;
 			break;
 		case BR_PKT_MULTICAST:
+			rport = br_multicast_rport_from_node_skb(rp, skb);
+			if (rport == p) {
+				rp = rcu_dereference(hlist_next_rcu(rp));
+				break;
+			}
 			if (!(p->flags & BR_MCAST_FLOOD) && skb->dev != br->dev)
 				continue;
 			break;
diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index db4f2641d1cd..c57e3bbb00ad 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -3643,9 +3643,7 @@ static int br_multicast_ipv4_rcv(struct net_bridge_mcast *brmctx,
 	err = ip_mc_check_igmp(skb);
 
 	if (err == -ENOMSG) {
-		if (!ipv4_is_local_multicast(ip_hdr(skb)->daddr)) {
-			BR_INPUT_SKB_CB(skb)->mrouters_only = 1;
-		} else if (pim_ipv4_all_pim_routers(ip_hdr(skb)->daddr)) {
+		if (pim_ipv4_all_pim_routers(ip_hdr(skb)->daddr)) {
 			if (ip_hdr(skb)->protocol == IPPROTO_PIM)
 				br_multicast_pim(brmctx, pmctx, skb);
 		} else if (ipv4_is_all_snoopers(ip_hdr(skb)->daddr)) {
@@ -3712,8 +3710,6 @@ static int br_multicast_ipv6_rcv(struct net_bridge_mcast *brmctx,
 	err = ipv6_mc_check_mld(skb);
 
 	if (err == -ENOMSG || err == -ENODATA) {
-		if (!ipv6_addr_is_ll_all_nodes(&ipv6_hdr(skb)->daddr))
-			BR_INPUT_SKB_CB(skb)->mrouters_only = 1;
 		if (err == -ENODATA &&
 		    ipv6_addr_is_all_snoopers(&ipv6_hdr(skb)->daddr))
 			br_ip6_multicast_mrd_rcv(brmctx, pmctx, skb);
-- 
2.25.1

