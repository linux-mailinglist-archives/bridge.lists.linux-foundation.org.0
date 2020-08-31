Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0537257BB1
	for <lists.bridge@lfdr.de>; Mon, 31 Aug 2020 17:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6D1C8636A;
	Mon, 31 Aug 2020 15:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yuAZySms8E+o; Mon, 31 Aug 2020 15:09:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B89286506;
	Mon, 31 Aug 2020 15:09:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1DE56C0051;
	Mon, 31 Aug 2020 15:09:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F2FBC0051
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F2AAD85D44
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1HbJ2676e62m for <bridge@lists.linux-foundation.org>;
 Mon, 31 Aug 2020 15:09:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 46F1A859D5
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:53 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z4so3523038wrr.4
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 08:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nDPaNY6uULGl6w+zVk/xRhftdiMNqXaciWDwCjq2kwk=;
 b=MIaPXvH4gfJyOHGaKsBWkcZkz3u8rsNPxppHOv0rpp/WhjoEEW0remHOQgTpV6DtzV
 qXi//NPlOTbqkElmlGeejQybeXjfml9qSSnelTFSAvYbpI1UcCNRkEZMqQXqHefrUzRs
 o0Hk584S/HXHeRgYwfp+smuF7NGIWOyMgaaR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nDPaNY6uULGl6w+zVk/xRhftdiMNqXaciWDwCjq2kwk=;
 b=OFq4iYZEQqq11Z+2HmcK+Twe4TIhcvu1Q1q0FfdMpmg9CbDvplcaX+Umgrg23tLkmB
 ChpikyjwQNtv3xZN0R2gF2K0J04UzN+SRl/Nej+WfXH6x62j+syMlhe68xBCme/4FurW
 37X/vZB4FD03NwdKP85uchWk/ebTU6J+tklF9CJtZFep+RixkAmTm8zySzOrphOQYCSD
 g7LrvakD+MqSPttYcdFzMgx4S1uKZXi9wdVm0alt0h753ca2c6NlJYpaEsoDKzVkcbL9
 eQD8ATermOtN3FKAdTuXOPYKecTD+0V+TQCubum1eaY4PcU9kskADV4mKoMppnvcEj3T
 bnLw==
X-Gm-Message-State: AOAM530G3z844yybWDBi1GwmGCZrFJ4Zpyrc0867N12tEFzWCJrSzZh8
 IjLPAUNSFxL6JOm70ihTyha5c0pGBB+lvScm
X-Google-Smtp-Source: ABdhPJz/j5pjZIxRjBl0mJ/8WrDfDVDYxuv5q18PD8QfmyOb/TFHbUZailcfuMG0Hi9gB3zUcHBWrw==
X-Received: by 2002:adf:9ed1:: with SMTP id b17mr2040010wrf.227.1598886591835; 
 Mon, 31 Aug 2020 08:09:51 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f6sm14181636wme.32.2020.08.31.08.09.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 08:09:51 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 31 Aug 2020 18:08:31 +0300
Message-Id: <20200831150845.1062447-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
References: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 01/15] net: bridge: mdb: arrange internal
	structs so fast-path fields are close
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

