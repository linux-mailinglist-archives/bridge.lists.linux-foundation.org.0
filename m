Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 141E93B73D6
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B51ED837AC;
	Tue, 29 Jun 2021 14:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VfoCgOa4Z8ND; Tue, 29 Jun 2021 14:07:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 503F983843;
	Tue, 29 Jun 2021 14:07:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26D7CC0023;
	Tue, 29 Jun 2021 14:07:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2E8E0C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C5E2404A4
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ERUes4iJU01q for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02CFF4049C
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:31 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id o5so11550603ejy.7
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ExBxfgEAQTeIcUqZy35cgliNZw5pKEc8pvrekt89wDM=;
 b=hHj7Fs0zMwlg1N14gH3jx9xGdI7XkmEm8PzB+RALPqNc0IAHNCDd8bKAMlUz6P1qcn
 VeOEL0jG778JVmkwvSzYVwoFtDk3uxfZlA9jGl6l33juRtkWsQgimncnk6niKur2IMGR
 EqOaqnB1vS5augQiQzsagOD7DmOKigoiQCDDycoTT7MB9qX95qbReK2m5dY4kac8s1EY
 NoIplKBlUIO9gv3yXmto1o5Us714Vjk1xb6WQD8WuP2iVJK8fFRwNrl/bZV2jj5aC203
 v/ffQ58zYbpRJcoUVPDmgzemgkOtRcEnDrm7cbnsRNw09xqK+V5FAfg5HykFmHQO39xY
 o+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ExBxfgEAQTeIcUqZy35cgliNZw5pKEc8pvrekt89wDM=;
 b=dd5Tl2e7rs026VvZVHYp06daK58NskjaaZAHfOxBl9DKTIUulb9w1OEa0ESvFhCZDa
 MAe8YQ5flJFw3z3jRGHuwYSDaQlO91kMNi7rxnnwIf91b3VUr3KNWzNz+OVf5GFMtTIX
 J0KjZcIj7quJSLlX5fGfSDdHGt8ZDVoly7pemGBZ4NLaA2kVV1aUnjvpBa7sVzavjAwT
 CAOd01WvoufiqMBcjV6uTv3KNKN32k0OJBhxGtOKBkZrHZRnCqtouxalx9iVZqz1Xpec
 yCB9ZcprDnyL/YIgsNRY7XS/2YO3u7xN7FScALrDovay+IOicpS4lGKxuQcrHk6+nJjd
 U2/Q==
X-Gm-Message-State: AOAM533dsOEpPpBp+iTDPyNHA/fejuByWodrOQzPQTIQZiTVihzvG//n
 CUcnqdIuOPCYC7HtfCpQTss=
X-Google-Smtp-Source: ABdhPJxw+4Vh4LKmPVGz1+DrfVaZQj1VAwygr4y0s2bilcCRg80ecnuUO67N2CiixpuLs8kMrt8axA==
X-Received: by 2002:a17:906:52d6:: with SMTP id
 w22mr30364861ejn.512.1624975650027; 
 Tue, 29 Jun 2021 07:07:30 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:29 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:56 +0300
Message-Id: <20210629140658.2510288-14-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210629140658.2510288-1-olteanv@gmail.com>
References: <20210629140658.2510288-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v5 net-next 13/15] net: dsa: include fdb entries
	pointing to bridge in the host fdb list
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

The bridge supports a legacy way of adding local (non-forwarded) FDB
entries, which works on an individual port basis:

bridge fdb add dev swp0 00:01:02:03:04:05 master local

As well as a new way, added by Roopa Prabhu in commit 3741873b4f73
("bridge: allow adding of fdb entries pointing to the bridge device"):

bridge fdb add dev br0 00:01:02:03:04:05 self local

The two commands are functionally equivalent, except that the first one
produces an entry with fdb->dst == swp0, and the other an entry with
fdb->dst == NULL. The confusing part, though, is that even if fdb->dst
is swp0 for the 'local on port' entry, that destination is not used.

Nonetheless, the idea is that the bridge has reference counting for
local entries, and local entries pointing towards the bridge are still
'as local' as local entries for a port.

The bridge adds the MAC addresses of the interfaces automatically as
FDB entries with is_local=1. For the MAC address of the ports, fdb->dst
will be equal to the port, and for the MAC address of the bridge,
fdb->dst will point towards the bridge (i.e. be NULL). Therefore, if the
MAC address of the bridge is not inherited from either of the physical
ports, then we must explicitly catch local FDB entries emitted towards
the br0, otherwise we'll miss the MAC address of the bridge (and, of
course, any entry with 'bridge add dev br0 ... self local').

Co-developed-by: Tobias Waldekranz <tobias@waldekranz.com>
Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none

 net/dsa/slave.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index d006bd04f84a..a7b5d2a41472 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2415,7 +2415,11 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 			struct net_device *br_dev;
 			struct dsa_slave_priv *p;
 
-			br_dev = netdev_master_upper_dev_get_rcu(dev);
+			if (netif_is_bridge_master(dev))
+				br_dev = dev;
+			else
+				br_dev = netdev_master_upper_dev_get_rcu(dev);
+
 			if (!br_dev)
 				return NOTIFY_DONE;
 
@@ -2443,8 +2447,13 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 			 * LAG we don't want to send traffic to the CPU, the
 			 * other ports bridged with the LAG should be able to
 			 * autonomously forward towards it.
+			 * On the other hand, if the address is local
+			 * (therefore not learned) then we want to trap it to
+			 * the CPU regardless of whether the interface it
+			 * belongs to is offloaded or not.
 			 */
-			if (dsa_tree_offloads_bridge_port(dp->ds->dst, dev))
+			if (dsa_tree_offloads_bridge_port(dp->ds->dst, dev) &&
+			    !fdb_info->is_local)
 				return NOTIFY_DONE;
 		}
 
-- 
2.25.1

