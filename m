Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 713A3312744
	for <lists.bridge@lfdr.de>; Sun,  7 Feb 2021 20:47:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C93F48682B;
	Sun,  7 Feb 2021 19:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uOn-bswUOKda; Sun,  7 Feb 2021 19:47:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2AA4086816;
	Sun,  7 Feb 2021 19:47:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 088DDC013A;
	Sun,  7 Feb 2021 19:47:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC280C013A
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 19:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B35E485643
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 19:47:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y9k_cO9yjbuE for <bridge@lists.linux-foundation.org>;
 Sun,  7 Feb 2021 19:47:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C7A638562A
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 19:47:46 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id c6so15780344ede.0
 for <bridge@lists.linux-foundation.org>; Sun, 07 Feb 2021 11:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c9WOOXaljgWkUz7GKIj1bERwrld5Mm5ktuTMXSqIFb4=;
 b=BwFg/RhK8pd6whM6m4oSg1lq+EeRNAviO+SgvZhFXQPCabtNQj9jmAEuVepKXkAEPZ
 UQlDxjx2rJQZdbWMtO2wpXgVsYhx/Ne5QRigmvZklC3yUfKvatqVwHBsYFwQ8el1NnLU
 KXO84ZvEP/RR/XpOmhN5EI6YT340d5nz0+Z6xRd/8ExVpiSDly8wJ23ktXYPa4vUWpum
 mBnJvdAltVr5eFEv93bblL6yWWdeHbE7AYoWqJP3AHZMsFFk62fpws99BRnclIj3+EAf
 9Cn/HNuqeyL86jBFG+mGSQTkDfY9mRcVyQKRNoWLObHRxMRmgOlbkpzZOkiZmxGxpSGs
 VqhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c9WOOXaljgWkUz7GKIj1bERwrld5Mm5ktuTMXSqIFb4=;
 b=tNn6przVrNHegDQJ2YwKMxQ2zvLt3/Chn+HmXmU/xJfJcjR03K2Lezgst6UqNWR9BM
 moC+AANehKLfZpyTxiMmBu6UYvAdkDEWBJQAxWgxsmXYpWrNviIN1GBIywgWYLuKqdn+
 55Qlsu94/AZcoJbcWQmEyLmNZ21PFWHWOKZN+bTBRbnaVDzElDEI1PFi8cpSQmrWey6l
 +g8eKdRzv4UvicgJF6tuhaL+0rbPYxP/uu+PHqtSS01inViIgMEDFL37wIoR3IObNm/5
 yoUYA7osFdBhciWwjy1y3GX2ge5fPfNhUv/IqKB/1g6aQOHKz0jUmScrXe7wfA99ocqa
 lnkg==
X-Gm-Message-State: AOAM533c6UMsR9X8ZY4jWac9G/wREr0d5NL+hKuhV5tr5kTNXqggD7Xr
 fAEiW4CvXGmcE4602dSYCu4=
X-Google-Smtp-Source: ABdhPJzjdZDTKi7uQxM8xft5Bg0nWZfqvOXyPuoEXtWjObw0ylJC/lPAPsiJtAfTBiBOLXqXy3SLjg==
X-Received: by 2002:a05:6402:151:: with SMTP id
 s17mr13474918edu.107.1612727265224; 
 Sun, 07 Feb 2021 11:47:45 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id t3sm7991648eds.89.2021.02.07.11.47.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 11:47:44 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Sun,  7 Feb 2021 21:47:33 +0200
Message-Id: <20210207194733.1811529-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@idosch.org>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net] net: bridge: use switchdev for port flags set
	through sysfs too
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

Looking through patchwork I don't see that there was any consensus to
use switchdev notifiers only in case of netlink provided port flags but
not sysfs (as a sort of deprecation, punishment or anything like that),
so we should probably keep the user interface consistent in terms of
functionality.

http://patchwork.ozlabs.org/project/netdev/patch/20170605092043.3523-3-jiri@resnulli.us/
http://patchwork.ozlabs.org/project/netdev/patch/20170608064428.4785-3-jiri@resnulli.us/

Fixes: 3922285d96e7 ("net: bridge: Add support for offloading port attributes")
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 net/bridge/br_sysfs_if.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index 96ff63cde1be..5aea9427ffe1 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -59,9 +59,8 @@ static BRPORT_ATTR(_name, 0644,					\
 static int store_flag(struct net_bridge_port *p, unsigned long v,
 		      unsigned long mask)
 {
-	unsigned long flags;
-
-	flags = p->flags;
+	unsigned long flags = p->flags;
+	int err;
 
 	if (v)
 		flags |= mask;
@@ -69,6 +68,10 @@ static int store_flag(struct net_bridge_port *p, unsigned long v,
 		flags &= ~mask;
 
 	if (flags != p->flags) {
+		err = br_switchdev_set_port_flag(p, flags, mask);
+		if (err)
+			return err;
+
 		p->flags = flags;
 		br_port_flags_change(p, mask);
 	}
-- 
2.25.1

