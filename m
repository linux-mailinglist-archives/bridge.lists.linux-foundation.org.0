Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D372FD3C8
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 16:23:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9ACA86AE5;
	Wed, 20 Jan 2021 15:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RazG1QWsFzKY; Wed, 20 Jan 2021 15:23:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E92A863CC;
	Wed, 20 Jan 2021 15:23:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4F711C088B;
	Wed, 20 Jan 2021 15:23:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 132EAC013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:23:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0228F85F75
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7nl-mTtmaKn for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 15:23:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2102F8543A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:23:05 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id h7so5360537lfc.6
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 07:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p5jQkPW1oWI+QtE/SUX8LB8Nxke3Xa1Ja5TR15s8XBM=;
 b=VSto+BBrYtccrmzfvgYqjDw9lTCwY0paFkZ1TEzTvkPzpIYFTGfGGX5zTXZUuApSg4
 yaEdm+2EOjXox5cfKTbZH8v6dCmVtBeKFcwjNHnerEdXmCWOfSMd/t6jNo/g67fJ3MSI
 L0J1xJVOPZX5qrQ3YPCq8aTGyfoMdSj/6WwbFm0kPbq7hKm3VqOamo5R7GN9fQX/GGCX
 qYyoM7cD1zWlkZvnClNbT32r1mv7eG+UOBjsKtLAtuozUl6+RAor8tGMFYqLFRs9DnnR
 DzRPjBH0sZqVwUN7soCQfZORcd4ga/h7G4ZXabOM47ExgHKiI7lBVKq+xd9jiI2kV8Zh
 OGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p5jQkPW1oWI+QtE/SUX8LB8Nxke3Xa1Ja5TR15s8XBM=;
 b=VUFNqTBl2QtCK1UIjPAkdox7LLqhptiscEfIcgPf+y9VlYA02Qa0OwG87iVwsIVhsL
 XtKvuHxcrQyjWqGIbuAKZu9v2X6JD2zXA4Vg0/ZrhoTRaIj2etotYrOGZoaQ3tUL5bYE
 USYQ0FyCrndw8FGAgrs+FcSurXv4Gp7s3iKx8U9C3/LnezL49ugH/GkwIC+LwaRXzbrh
 eCiB7166Ope0Xpi/w6dsAfG7ivQnxtgiNExjIxcB5zlHirH8aSQo2vDRgahsCjGFwfGQ
 LqjmqSvkA6FTZ/3Z5cRqVqOvF92g6n8QzaIjjspVqnXt3pYdZjfY1yuufdp+0+1scU1t
 oH+A==
X-Gm-Message-State: AOAM532VqxPT1sk//wLZ6lw/Ka2CrjRuvwlXI0n1OmcfORLmdyDi2qsH
 wOBm9v9cHdBn3uwmcMyLRQkoGr4GoKu80HFmDYE=
X-Google-Smtp-Source: ABdhPJwWYuSkeufkkxgl3OhlY6Gt0lgqtw4di+Me457/QoYJ1pAAyH1apGh4YZzbbhk4V9H2LBlMEA==
X-Received: by 2002:a50:c94c:: with SMTP id p12mr1607780edh.154.1611154397707; 
 Wed, 20 Jan 2021 06:53:17 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:16 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:52:01 +0200
Message-Id: <20210120145203.1109140-13-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 12/14] net: bridge: multicast: add EHT
	host filter_mode handling
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

We should be able to handle host filter mode changing. For exclude mode
we must create a zero-src entry so the group will be kept even without
any S,G entries (non-zero source sets). That entry doesn't count to the
entry limit and can always be created, its timer is refreshed on new
exclude reports and if we change the host filter mode to include then it
gets removed and we rely only on the non-zero source sets.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast_eht.c | 42 +++++++++++++++++++++++++++++++----
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index fee3060d0495..64ccbd4ae9d9 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -381,6 +381,30 @@ static void br_multicast_ip_src_to_eht_addr(const struct br_ip *src,
 	}
 }
 
+static void br_eht_convert_host_filter_mode(struct net_bridge_port_group *pg,
+					    union net_bridge_eht_addr *h_addr,
+					    int filter_mode)
+{
+	struct net_bridge_group_eht_host *eht_host;
+	union net_bridge_eht_addr zero_addr;
+
+	eht_host = br_multicast_eht_host_lookup(pg, h_addr);
+	if (eht_host)
+		eht_host->filter_mode = filter_mode;
+
+	memset(&zero_addr, 0, sizeof(zero_addr));
+	switch (filter_mode) {
+	case MCAST_INCLUDE:
+		br_multicast_del_eht_set_entry(pg, &zero_addr, h_addr);
+		break;
+	case MCAST_EXCLUDE:
+		br_multicast_create_eht_set_entry(pg, &zero_addr, h_addr,
+						  MCAST_EXCLUDE,
+						  true);
+		break;
+	}
+}
+
 static void br_multicast_create_eht_set_entry(struct net_bridge_port_group *pg,
 					      union net_bridge_eht_addr *src_addr,
 					      union net_bridge_eht_addr *h_addr,
@@ -701,8 +725,13 @@ static bool br_multicast_eht_inc(struct net_bridge_port_group *pg,
 				 size_t addr_size,
 				 bool to_report)
 {
-	return __eht_inc_exc(pg, h_addr, srcs, nsrcs, addr_size, MCAST_INCLUDE,
-			     to_report);
+	bool changed;
+
+	changed = __eht_inc_exc(pg, h_addr, srcs, nsrcs, addr_size,
+				MCAST_INCLUDE, to_report);
+	br_eht_convert_host_filter_mode(pg, h_addr, MCAST_INCLUDE);
+
+	return changed;
 }
 
 static bool br_multicast_eht_exc(struct net_bridge_port_group *pg,
@@ -712,8 +741,13 @@ static bool br_multicast_eht_exc(struct net_bridge_port_group *pg,
 				 size_t addr_size,
 				 bool to_report)
 {
-	return __eht_inc_exc(pg, h_addr, srcs, nsrcs, addr_size, MCAST_EXCLUDE,
-			     to_report);
+	bool changed;
+
+	changed = __eht_inc_exc(pg, h_addr, srcs, nsrcs, addr_size,
+				MCAST_EXCLUDE, to_report);
+	br_eht_convert_host_filter_mode(pg, h_addr, MCAST_EXCLUDE);
+
+	return changed;
 }
 
 static bool __eht_ip4_handle(struct net_bridge_port_group *pg,
-- 
2.29.2

