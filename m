Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AD7273BF7
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 09:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C1A5859E3;
	Tue, 22 Sep 2020 07:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tBZ+rEwlUHxB; Tue, 22 Sep 2020 07:31:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BCA181BB5;
	Tue, 22 Sep 2020 07:31:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E5E4EC0889;
	Tue, 22 Sep 2020 07:31:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5B9D7C0051
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 481A686693
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n02u0TwJBQu5 for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 07:31:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 554E6866AB
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:31:04 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c18so15855772wrm.9
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W1k28u9m4opk3xAHXu3X6yCLygcG5WtwBqkfTVt8j0k=;
 b=s9xvwnpLYKziLVje8layNgsWzTmHghpgOKGAuVpY0nYqifWkhA2S/38GBI8rA9lvcV
 MJcn96SX/NMiA1GvU6ZD43H4if4podo4q7cw/FK+lowH1jY430SAtElKNKhmNEH6pvym
 vT3nbiNKWmc8VFUBfH3ENZRtT4qS83X4ppmxSSMnPO648B6+vNhA16CcG7uqCe/welMI
 FQBH1cw+cgRI8Mbrnq4xvkxopWt92zpj9p3f4QYIUN3MS/aCoi6hqDpvELazqBOpnz/Q
 TfgN31O/EOLpnyfgBk6FTrho031IdPXXC8avTp33EsIaNg4zOTC0uYCZFL230Q8gsw4w
 nreA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W1k28u9m4opk3xAHXu3X6yCLygcG5WtwBqkfTVt8j0k=;
 b=AkZ/XbyQXZ9eaBK1zfeXzpnBGpXKGaTdaxwJguKoBvNcsT0FCMSIYANHkMIOkV/Y6u
 ysqmhjEmekgmT+GFUBOUUPmhCJ3sRh68g0vjamdE5EytumYP28n02noSKoypI8jEiRiE
 VDjgojpaOqj5aq4doopbBK8nkSGH5rLpW07ViuixJf6MoK5MAoqaQUNYuJz2Vpqs034M
 w6FWXPtJHCHq4Ihp8E8NNiEjMRyx/RHS8QxdImRFGEN+jcX3uY9NInPryHAZ3qJqDbiV
 SLjoo7KYHs7T8GLCGCMe4ZBuxFQwUyh1P4/ywveqFhokYlY3/reOel9FqoapdtUcAcmQ
 szCQ==
X-Gm-Message-State: AOAM5316xyKrOs78S9T9pgMjYkSl6cveGaPUpzJF2UAmQMRBgx+WElF3
 Uyj+fpqBTORJ/AEEreebqnBUgzAWQCYV6R0Qbnjvwg==
X-Google-Smtp-Source: ABdhPJwQasZoL1zEzof8NC/3GMPS683hdZgAhUNkQh8NFAj6S2FHzuYBiBeXdl+mAJ088YTLbXMILA==
X-Received: by 2002:a05:6000:83:: with SMTP id
 m3mr3678354wrx.165.1600759862814; 
 Tue, 22 Sep 2020 00:31:02 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s26sm3258287wmh.44.2020.09.22.00.31.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 00:31:02 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 22 Sep 2020 10:30:27 +0300
Message-Id: <20200922073027.1196992-17-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922073027.1196992-1-razor@blackwall.org>
References: <20200922073027.1196992-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 16/16] net: bridge: mcast: when
	forwarding handle filter mode and blocked flag
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

We need to avoid forwarding to ports in MCAST_INCLUDE filter mode when the
mdst entry is a *,G or when the port has the blocked flag.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_forward.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 4d12999e4576..e28ffadd1371 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -274,10 +274,19 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 	struct net_bridge *br = netdev_priv(dev);
 	struct net_bridge_port *prev = NULL;
 	struct net_bridge_port_group *p;
+	bool allow_mode_include = true;
 	struct hlist_node *rp;
 
 	rp = rcu_dereference(hlist_first_rcu(&br->router_list));
-	p = mdst ? rcu_dereference(mdst->ports) : NULL;
+	if (mdst) {
+		p = rcu_dereference(mdst->ports);
+		if (br_multicast_should_handle_mode(br, mdst->addr.proto) &&
+		    br_multicast_is_star_g(&mdst->addr))
+			allow_mode_include = false;
+	} else {
+		p = NULL;
+	}
+
 	while (p || rp) {
 		struct net_bridge_port *port, *lport, *rport;
 
@@ -292,6 +301,10 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 						   local_orig);
 				goto delivered;
 			}
+			if ((!allow_mode_include &&
+			     p->filter_mode == MCAST_INCLUDE) ||
+			    (p->flags & MDB_PG_FLAGS_BLOCKED))
+				goto delivered;
 		} else {
 			port = rport;
 		}
-- 
2.25.4

