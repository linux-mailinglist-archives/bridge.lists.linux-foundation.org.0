Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D1D16592A
	for <lists.bridge@lfdr.de>; Thu, 20 Feb 2020 09:26:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83EFF85D8E;
	Thu, 20 Feb 2020 08:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xfZ70NYJsLPR; Thu, 20 Feb 2020 08:26:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61EFC85EBE;
	Thu, 20 Feb 2020 08:26:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3CF1FC1D81;
	Thu, 20 Feb 2020 08:26:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 18CD3C013E
 for <bridge@lists.linux-foundation.org>; Wed, 19 Feb 2020 15:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F0EF587B59
 for <bridge@lists.linux-foundation.org>; Wed, 19 Feb 2020 15:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6JRikwCiZaiP for <bridge@lists.linux-foundation.org>;
 Wed, 19 Feb 2020 15:18:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2AF5B87A14
 for <bridge@lists.linux-foundation.org>; Wed, 19 Feb 2020 15:18:32 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id y5so198865pfb.11
 for <bridge@lists.linux-foundation.org>; Wed, 19 Feb 2020 07:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ukKkOw2CD1p6V3m08F/J1FLQ/Kv80Rkqm5DlFEyeEwo=;
 b=Ah7uoNUV021eb0uXbGTT4n8DSdPnmntOsRtdO0sIaVGmDz6Mx9DRCWkzlQUZdixw+q
 EWquftTkt68WCGlW/aA5nVyhgl+UHA3gsnBdG89IY8cpIjgmPUkSlbSABOsRoUQRQiP2
 tRiY/eEHI2tZExjQkFe8laVxjuRMHuzuVK45dlKZio/IG/07TcGQVIzIxWHJfXrtvd1a
 HtRVxwNVVRPt42qadehr7FMIyLth4UrIOnrhkVj5fNTULu6IlHaSMd/bRTPytPu9Y5vU
 PaRSz9bSbBntBZ+Ij+W79CdwpGDWwZ003hXlhvFCJlR5NffYtNcMGNj1KyqapsoM5/VY
 K/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ukKkOw2CD1p6V3m08F/J1FLQ/Kv80Rkqm5DlFEyeEwo=;
 b=otLqDpLeHvgxt8i2xncY5b7nBVQv49lgT0Q8n+SJjAjoeS9yypwmzWo+VQljwVyavY
 m06nupwU39mU8Jm3wZd22C02MqXCNaJAsVIyJ7kAxTQfVxirHBvi8f9D3laVVEMRtLHM
 NFYChLLZE8P+gLps6i7h+jyVonMuB35qfL7A4lTxsqaYQY5yFD9xUMZBqFovGOKqSV6i
 na1OXMCWJaQjishVa/xUwGKT6DvdUYM68a20onZzYWaCH2Mj4Ub3yvT6uX5yMQH2gvNX
 Rq67lWNXFO2kEyQZupTsnx5xXYuSabvxVQNaJtMD7+oJxQZfKGofvsBqHGgG/dV5rOhF
 KCUA==
X-Gm-Message-State: APjAAAVPrBE8ZESOsgekXM+Qb8agqSvwAQPiuVt+pXDmQcQATVKeBCZB
 kQU59U7qJZdCT8xVXmw1TQ==
X-Google-Smtp-Source: APXvYqz7z38VUX56nB4cpmN4ssPqGh9I7Dl7gnU0/yRnff1inv5wjyvzdV1rumvg9fOMEZuF/4bZng==
X-Received: by 2002:a62:78c1:: with SMTP id
 t184mr26533069pfc.222.1582125511796; 
 Wed, 19 Feb 2020 07:18:31 -0800 (PST)
Received: from madhuparna-HP-Notebook.nitk.ac.in
 ([2402:3a80:1ee1:f898:fdeb:e0c7:deeb:a606])
 by smtp.gmail.com with ESMTPSA id v5sm45906pgc.11.2020.02.19.07.18.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 07:18:30 -0800 (PST)
From: madhuparnabhowmik10@gmail.com
To: roopa@cumulusnetworks.com, nikolay@cumulusnetworks.com, davem@davemloft.net
Date: Wed, 19 Feb 2020 20:47:46 +0530
Message-Id: <20200219151746.1050-1-madhuparnabhowmik10@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 20 Feb 2020 08:26:06 +0000
Cc: paulmck@kernel.org, frextrite@gmail.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>, joel@joelfernandes.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Subject: [Bridge] [PATCH] bridge: br_stp: Use built-in RCU list checking
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

From: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>

list_for_each_entry_rcu() has built-in RCU and lock checking.

Pass cond argument to list_for_each_entry_rcu() to silence
false lockdep warning when CONFIG_PROVE_RCU_LIST is enabled
by default.

Signed-off-by: Madhuparna Bhowmik <madhuparnabhowmik10@gmail.com>
---
 net/bridge/br_stp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
index 1f1410f8d312..8be12452071b 100644
--- a/net/bridge/br_stp.c
+++ b/net/bridge/br_stp.c
@@ -52,7 +52,8 @@ struct net_bridge_port *br_get_port(struct net_bridge *br, u16 port_no)
 {
 	struct net_bridge_port *p;
 
-	list_for_each_entry_rcu(p, &br->port_list, list) {
+	list_for_each_entry_rcu(p, &br->port_list, list,
+				lockdep_is_held(&br->lock)) {
 		if (p->port_no == port_no)
 			return p;
 	}
-- 
2.17.1

