Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8474825E666
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:24:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5AD8869AB;
	Sat,  5 Sep 2020 08:24:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HBXXME80LfNC; Sat,  5 Sep 2020 08:24:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68BB686968;
	Sat,  5 Sep 2020 08:24:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 459B8C0052;
	Sat,  5 Sep 2020 08:24:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 824CBC0052
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CED087432
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6WO3NTB6v3eA for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:24:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E99F87368
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:43 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s13so8810605wmh.4
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nDPaNY6uULGl6w+zVk/xRhftdiMNqXaciWDwCjq2kwk=;
 b=Uh0gVtRexg/t5N4Bs34Iy8svBAf0j1Ndu1L92Nr5n6+LSgHVlabnS52xlp/8krpXs2
 Y/7kXOLKeAfG9jqhutMhT06FHrDpqCaldBq3FysFp3buenTkPHK6uMdb6XhVaquHCiTI
 AQE1qRp3J7XOOJn59y5w9VJy3qtzANpDKjlHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nDPaNY6uULGl6w+zVk/xRhftdiMNqXaciWDwCjq2kwk=;
 b=iL/IpfSJyTq+awBVvq29laGwZUmT9Khm92N81amziBeNYwWF5pmFxciRNUFVco0Iko
 JZvCRkMcvAoO0ZuR83p0tfliM3YzwgXn5YPcvWniAornKij8YPlR1TT32f8aGY8M1WHX
 9caB26wkaGjwbXGsz8w/7DNLJuL4aZVydm0qtzHjIqNEpLfo50ETP95UR8p14FxT0P3Z
 p41CCdC2rAwZhdIbBtIQu3flQ9kwE5XRcZU3GiprjRixigLMrSQ2O6jF7oSObCCZ+mXn
 +IVyd0Y9Fs7TD5aay6kG4E1aanCpK8sG7pkwiS9c7GCZDhpZLOr7ww47zPL7NhUAwxzT
 zXOQ==
X-Gm-Message-State: AOAM530DavjfqjhN2V0r9rxqdESY8rmjfAzCAa4z4VetBQdg/bExj01T
 c1X0NDrueNG3+Be0s3DP5J/2Uw==
X-Google-Smtp-Source: ABdhPJw6M/ORbXjh8tWXkD3EVxqSA8OMa9OKJZUFBMNaKjg62fV+xJXGe6Cm0bOSFVu9xnqFv9dj6Q==
X-Received: by 2002:a1c:156:: with SMTP id 83mr11356984wmb.49.1599294281495;
 Sat, 05 Sep 2020 01:24:41 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.24.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:24:40 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:23:56 +0300
Message-Id: <20200905082410.2230253-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 01/15] net: bridge: mdb: arrange
	internal structs so fast-path fields are close
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

Before this patch we'd need 2 cache lines for fast-path, now all used
fields are in the first cache line.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_private.h | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index baa1500f384f..357b6905ecef 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -217,23 +217,27 @@ struct net_bridge_fdb_entry {
 struct net_bridge_port_group {
 	struct net_bridge_port		*port;
 	struct net_bridge_port_group __rcu *next;
-	struct hlist_node		mglist;
-	struct rcu_head			rcu;
-	struct timer_list		timer;
 	struct br_ip			addr;
 	unsigned char			eth_addr[ETH_ALEN] __aligned(2);
 	unsigned char			flags;
+
+	struct timer_list		timer;
+	struct hlist_node		mglist;
+
+	struct rcu_head			rcu;
 };
 
 struct net_bridge_mdb_entry {
 	struct rhash_head		rhnode;
 	struct net_bridge		*br;
 	struct net_bridge_port_group __rcu *ports;
-	struct rcu_head			rcu;
-	struct timer_list		timer;
 	struct br_ip			addr;
 	bool				host_joined;
+
+	struct timer_list		timer;
 	struct hlist_node		mdb_node;
+
+	struct rcu_head			rcu;
 };
 
 struct net_bridge_port {
-- 
2.25.4

