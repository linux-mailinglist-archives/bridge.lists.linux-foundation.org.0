Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD7927850D
	for <lists.bridge@lfdr.de>; Fri, 25 Sep 2020 12:26:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED6BB86C63;
	Fri, 25 Sep 2020 10:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m6YiLdzaiwo6; Fri, 25 Sep 2020 10:25:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E742386C56;
	Fri, 25 Sep 2020 10:25:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C89FFC0051;
	Fri, 25 Sep 2020 10:25:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 02DDBC0051
 for <bridge@lists.linux-foundation.org>; Fri, 25 Sep 2020 10:25:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC9B42E164
 for <bridge@lists.linux-foundation.org>; Fri, 25 Sep 2020 10:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UH5uyMunYu-3 for <bridge@lists.linux-foundation.org>;
 Fri, 25 Sep 2020 10:25:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 8BCEA2E161
 for <bridge@lists.linux-foundation.org>; Fri, 25 Sep 2020 10:25:55 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a9so2711425wmm.2
 for <bridge@lists.linux-foundation.org>; Fri, 25 Sep 2020 03:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/bSXHNtdU+eEhzycYVit0PPbYq40mXuagPAzmTwFhXc=;
 b=uAHSdiWaP3q78YXDSbkvEyYy9k/VwxAC2Z9ITTrMvZ9VOj4FEjwkgcprsNBzLSC9ae
 N7tp9gnZSzunQ+kmGYqGNgGOTcNgDT42pYAocl0crhCbhEqhX03kWeIoudh5b2Cq4hYN
 1e6RROvVfDvfijmhyfTtRlpHENORCIH/u8Gvnj+5+reepo+J8sBPhdtXDxAPE9HPvOTc
 UnpWNGCzdPdjYtFQWuJvo0JcWsesui7JTZ9uMb6CPam5YNDHi7iR2e5g523g3EIbBYo9
 20wpaBe2nmuUoOxwJL48aM5+xfat5r/BnpyrxPnFfg3y45FPOUQkmjqAVxxwpWVQWTHL
 ypAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/bSXHNtdU+eEhzycYVit0PPbYq40mXuagPAzmTwFhXc=;
 b=LUI5vJhoF/2fMPpqKTqKYQ1dpqgqOdzAkABl3YLKAOrWQQrfwhJJRNyaNYnL58S/m4
 wvGGcPvg5M+JT491RtB6b0BoDmTGbyi9SIBppEDDNoXbP/0tzyrVaBbXJjngc3YWNgLg
 fDycaZijlxMcmfZr5wCNAuTbedai51glrz8UBaZK8t8TXuh6Qc0OvOjQT3x+Z94iYw5s
 u7gEyuyI0+DrxKozrUX+YVLOacy68F792sUHQ6H+BdgWKT+2UCkaeb6DwpCClnHfZcit
 R62POPKtdQfSCmK6+Y8XcNJvpgQKzDUsFzf6geuXRax6BMLQfMICaRQztJD5DPbaiM4T
 bQDg==
X-Gm-Message-State: AOAM531EyHKda5KNRIaOMcNR+XiNOS/P/36+sPh3k66XflWtveV5l8Rv
 9PxlkVXE0u5tyQhkfcnz+L8iEQ==
X-Google-Smtp-Source: ABdhPJwYkAg6wiYQE/kiFTwGRHyIiOS5zag+H4OguIXfa0N+21fcrPr3n3Pr11DlnHUNcTu6o4O+pA==
X-Received: by 2002:a05:600c:210c:: with SMTP id
 u12mr2523261wml.185.1601029553549; 
 Fri, 25 Sep 2020 03:25:53 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f14sm2543557wrt.53.2020.09.25.03.25.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 03:25:52 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 25 Sep 2020 13:25:49 +0300
Message-Id: <20200925102549.1704905-1-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next] net: bridge: mcast: remove only S,
	G port groups from sg_port hash
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

We should remove a group from the sg_port hash only if it's an S,G
entry. This makes it correct and more symmetric with group add. Also
since *,G groups are not added to that hash we can hide a bug.

Fixes: 085b53c8beab ("net: bridge: mcast: add sg_port rhashtable")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 66eb62ded192..eae898c3cff7 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -590,17 +590,18 @@ void br_multicast_del_pg(struct net_bridge_mdb_entry *mp,
 	struct net_bridge_group_src *ent;
 	struct hlist_node *tmp;
 
-	rhashtable_remove_fast(&br->sg_port_tbl, &pg->rhnode,
-			       br_sg_port_rht_params);
 	rcu_assign_pointer(*pp, pg->next);
 	hlist_del_init(&pg->mglist);
 	hlist_for_each_entry_safe(ent, tmp, &pg->src_list, node)
 		br_multicast_del_group_src(ent);
 	br_mdb_notify(br->dev, mp, pg, RTM_DELMDB);
-	if (!br_multicast_is_star_g(&mp->addr))
+	if (!br_multicast_is_star_g(&mp->addr)) {
+		rhashtable_remove_fast(&br->sg_port_tbl, &pg->rhnode,
+				       br_sg_port_rht_params);
 		br_multicast_sg_del_exclude_ports(mp);
-	else
+	} else {
 		br_multicast_star_g_handle_mode(pg, MCAST_INCLUDE);
+	}
 	hlist_add_head(&pg->mcast_gc.gc_node, &br->mcast_gc_list);
 	queue_work(system_long_wq, &br->mcast_gc_work);
 
-- 
2.25.4

