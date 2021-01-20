Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 627412FD359
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 16:01:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12AC485F87;
	Wed, 20 Jan 2021 15:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h5_c6alfQpez; Wed, 20 Jan 2021 15:00:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 918FC84EEA;
	Wed, 20 Jan 2021 15:00:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82351C013A;
	Wed, 20 Jan 2021 15:00:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AAAF0C013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 98DC3869F8
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a0R8S1VR8BL1 for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 15:00:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5386186410
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:00:54 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id h16so26104249edt.7
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 07:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+STi29hPfYbEluynEPrqxJhUnb3kYXkKj59XvyzIrkI=;
 b=gw9hqq9f8UYLKQ3/frZqRj4yGcT5JoTx8h+qZZcPdKSkwV7UG1blZ6v6s95U31wjMD
 D3nvR0HHMk10aDQU4O1uGCPPnraNsucZKBazqdIM0p/eIo102Qs/KB8BbrVyXLTZGXYS
 sl2H9hjhFRSD/qA1AZpsseHL70luzmKwG46sfASteXAx0jxfOgymGpBXJP45uTi1BOWr
 LkMxckcqkWAEB9+8dtbRoGN0q/v+/9oCG889oic+n3rtCaLXBVYkTN5b2Qyw1bQLU1vI
 e86r6ca6F8g6z3GV/yLX+pvF/sTMT0daUvY6Q/LDTcRLJXrZxemw0fiKYU9NbkRO64Zg
 BtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+STi29hPfYbEluynEPrqxJhUnb3kYXkKj59XvyzIrkI=;
 b=b+5aG1QqJZiofL5YD0V6DeZKmr48gs+Ymm5Xk/Y5tssMN2qEwTQYpieSKoE+r+VQ3P
 InvqDKVZ9M9bU4R6DT7p3z1ivHbicjFYO7tj/GDP9UMVaiMFCC02bMQNpyuvfU0gjERo
 lFsycvZSAVOn8YkaV3BTbE4zXkgwa3ogpvgYCi4wteA7l1DgQoN1++kRE3cjcs3Yde8D
 MNFEDei3S4W5azTA+Kz/6Ec+X4Hg2FLQqbHmloNNIfXkq02KA/1uOOa54ofO4FZq3gnd
 jGXKjOCOobrHfDfl3cixsBQ+Yke7jBXcw9CQ80zhqQ/e6MJZcqZVFnE2F3aVHF/EVava
 P5KA==
X-Gm-Message-State: AOAM533dxE1hSp3mdVKoNkcbl3sDjCvA4VW7/IHJMgcMIuUspA2lfy0w
 eenY1jsuU/+XAmN+acsB0um3L3ji59BNWDrN2Ac=
X-Google-Smtp-Source: ABdhPJwNtyWiw0FL1Y1kbo0rl7cQJUgOb0Q+BLoXSJ5tnW4c0HGzLS7VkLST5WGs2BfvAb9ETwgqKA==
X-Received: by 2002:a17:906:52c1:: with SMTP id
 w1mr6617040ejn.214.1611154398809; 
 Wed, 20 Jan 2021 06:53:18 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:18 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:52:02 +0200
Message-Id: <20210120145203.1109140-14-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 13/14] net: bridge: multicast: handle
	block pg delete for all cases
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

A block report can result in empty source and host sets for both include
and exclude groups so if there are no hosts left we can safely remove
the group. Pull the block group handling so it can cover both cases and
add a check if EHT requires the delete.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 9cfc004312ab..47afb1e11daf 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2210,14 +2210,6 @@ static bool __grp_src_block_incl(struct net_bridge_port_group *pg, void *h_addr,
 	if (to_send)
 		__grp_src_query_marked_and_rexmit(pg);
 
-	if (pg->filter_mode == MCAST_INCLUDE && hlist_empty(&pg->src_list)) {
-		br_multicast_find_del_pg(pg->key.port->br, pg);
-		/* a notification has already been sent and we shouldn't access
-		 * pg after the delete thus we have to return false
-		 */
-		changed = false;
-	}
-
 	return changed;
 }
 
@@ -2279,6 +2271,15 @@ static bool br_multicast_block(struct net_bridge_port_group *pg, void *h_addr,
 		break;
 	}
 
+	if ((pg->filter_mode == MCAST_INCLUDE && hlist_empty(&pg->src_list)) ||
+	    br_multicast_eht_should_del_pg(pg)) {
+		br_multicast_find_del_pg(pg->key.port->br, pg);
+		/* a notification has already been sent and we shouldn't
+		 * access pg after the delete so we have to return false
+		 */
+		changed = false;
+	}
+
 	return changed;
 }
 
-- 
2.29.2

