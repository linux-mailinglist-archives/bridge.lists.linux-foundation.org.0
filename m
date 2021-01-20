Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A0C2FD34E
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 15:59:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B9C9E87135;
	Wed, 20 Jan 2021 14:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xj0LD49CvlK0; Wed, 20 Jan 2021 14:59:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FE8087133;
	Wed, 20 Jan 2021 14:59:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 28584C013A;
	Wed, 20 Jan 2021 14:59:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9B686C013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8900185DDC
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2E8suvPDVTt for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 14:58:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D8DA85F87
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 14:58:58 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id n8so17610677ljg.3
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 06:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=grXUCar2XJM0EhIEo7HicVui+NQZU/ry4BRH3wt7hj0=;
 b=bwTiWJCkTV8X0YYr6p1yygOiDoXZVkQLuSTXyZFyBRL4YwR51pnNLQYKJQMP9xzaD+
 OkLelqhLxfctW7DqIWzgQlNZ1CWcv79oyUtC4FwNpcmsOrDoiilyYCId1LIYXQkymJMW
 DRmOwzmyKpb5guLdm7rF/JIwxH01M32RPzBOTCuFQg+sHcq5E8Usm7wRzgPRjBPEZxSg
 BwZ1wusFpwyZ8HUq5RPIRZ4Xtg1C4GLB6G10b0HxIXupkikwswLLzSIc+Utgz4bL11gt
 A2v/DYWZTQTS0SEZ4Jut0TYhKX0/TQMWuPr/3UCHhxvFCZin3XkYd0uELPAUp2lLzwGi
 TuNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=grXUCar2XJM0EhIEo7HicVui+NQZU/ry4BRH3wt7hj0=;
 b=hW+hiRVWiXBzlEjHoFk7wZRklns/hKw5IWxEqMMxFShLHHK5MbFSI6nczG6+uBDzHn
 GIPBim9l5gDOE2PkzNcmTa/h4p80fsTPF4LiYDcmy4zY/KLIs4cE2Lx7+OGBzMjqeP2r
 2qYA3pmnkb8Xm30UkwAFtYL270XUM7RkmDxr2z6xsAQxPHl1F64Y/Dw+gto5QBUqGFMW
 okxhuskoe7TC49F7jVWCyznze5URT+QXiHL8NnUw/cFFDBSp4qfF0rBTd3MXt+7xaYaL
 N5nslnsosjk+Yv2J2EGFjtIvNkKn7N1hv8cFaNOAabce4RnpJFWdrSUnWYXqFAz00HQ2
 iAJw==
X-Gm-Message-State: AOAM532/gilJRVx1POIaxpWcD5gIBHmSrIMv41ljB54kPnix1RIn2lO/
 LFT1MFLNzUu439GhcMp/Zog4MPRJAS9a42g641k=
X-Google-Smtp-Source: ABdhPJxa33gUVVUIUZzDRHNiILV/WtGhpVCodbfyLOywxxObnEHvdQ7oXkQBF/MckjYDxgEdn7yu8A==
X-Received: by 2002:a17:906:5495:: with SMTP id
 r21mr6379742ejo.59.1611154385674; 
 Wed, 20 Jan 2021 06:53:05 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:05 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:51:52 +0200
Message-Id: <20210120145203.1109140-4-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 03/14] net: bridge: multicast:
	__grp_src_block_incl can modify pg
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

Prepare __grp_src_block_incl() for being able to cause a notification
due to changes. Currently it cannot happen, but EHT would change that
since we'll be deleting sources immediately. Make sure that if the pg is
deleted we don't return true as that would cause the caller to access
freed pg. This patch shouldn't cause any functional change.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 861545094d67..79569a398669 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2142,11 +2142,12 @@ static bool br_multicast_toex(struct net_bridge_port_group *pg, void *h_addr,
 /* State          Msg type      New state                Actions
  * INCLUDE (A)    BLOCK (B)     INCLUDE (A)              Send Q(G,A*B)
  */
-static void __grp_src_block_incl(struct net_bridge_port_group *pg, void *h_addr,
+static bool __grp_src_block_incl(struct net_bridge_port_group *pg, void *h_addr,
 				 void *srcs, u32 nsrcs, size_t addr_size)
 {
 	struct net_bridge_group_src *ent;
 	u32 src_idx, to_send = 0;
+	bool changed = false;
 	struct br_ip src_ip;
 
 	hlist_for_each_entry(ent, &pg->src_list, node)
@@ -2167,8 +2168,15 @@ static void __grp_src_block_incl(struct net_bridge_port_group *pg, void *h_addr,
 	if (to_send)
 		__grp_src_query_marked_and_rexmit(pg);
 
-	if (pg->filter_mode == MCAST_INCLUDE && hlist_empty(&pg->src_list))
+	if (pg->filter_mode == MCAST_INCLUDE && hlist_empty(&pg->src_list)) {
 		br_multicast_find_del_pg(pg->key.port->br, pg);
+		/* a notification has already been sent and we shouldn't access
+		 * pg after the delete thus we have to return false
+		 */
+		changed = false;
+	}
+
+	return changed;
 }
 
 /* State          Msg type      New state                Actions
@@ -2218,7 +2226,7 @@ static bool br_multicast_block(struct net_bridge_port_group *pg, void *h_addr,
 
 	switch (pg->filter_mode) {
 	case MCAST_INCLUDE:
-		__grp_src_block_incl(pg, h_addr, srcs, nsrcs, addr_size);
+		changed = __grp_src_block_incl(pg, h_addr, srcs, nsrcs, addr_size);
 		break;
 	case MCAST_EXCLUDE:
 		changed = __grp_src_block_excl(pg, h_addr, srcs, nsrcs, addr_size);
-- 
2.29.2

