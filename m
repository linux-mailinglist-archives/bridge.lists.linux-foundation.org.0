Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D7825AA35
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 13:29:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4181385DB1;
	Wed,  2 Sep 2020 11:29:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LdJ1EzGQgpWU; Wed,  2 Sep 2020 11:29:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C29AA85FA1;
	Wed,  2 Sep 2020 11:29:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A930AC0051;
	Wed,  2 Sep 2020 11:29:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 72940C0893
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68FC3203B8
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c106mj6e0lJO for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 11:29:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 045D22001A
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:10 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id t10so3998650wrv.1
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 04:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nDPaNY6uULGl6w+zVk/xRhftdiMNqXaciWDwCjq2kwk=;
 b=Gu53H7KUgfZBNNpa4067GYBOmGvciq/0MwHhdQww5zmdtIRjqRUV5GKBOMB4icFePH
 fQOO/dxkUznueovCd9bc4fTGkCK9wyLhJgKXozG5uosU7znnWMcHJ47IUkpNsd22CB8f
 J0JNlUMm04xwqlzfEGrmkl6Ci/2UlTvcjgkKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nDPaNY6uULGl6w+zVk/xRhftdiMNqXaciWDwCjq2kwk=;
 b=J1Gl6C6tDogbnRnN+kEvy2yHT+O8Inom1jLuff3efJ+BFTjNxLGjYPRypBmJtyGXhS
 54ZSoBcYB5FUJUFmBDgLnlwsLUmOoQmBVYs0FShdFREUPSCo4J4qP5vPz2EIzNHX1Lze
 R1aPEZ+RZlhKMatlupLpkkNmsG8o/9Y8C8dAhVQSYLlBF9VTq09XolscRnh2qjAm443s
 J+5ag0cqBvQSqVW/jIRptgoWAd24t0iUr57AnN6w8G3uc32gU1ZtophNmRKnRHRD2EQE
 eih+DC0WY1rqxhgQ/jtOJoxfF5eTuc7vE43/FD3QHifUY3udomBx22DE/q803MLbWo4J
 z0AA==
X-Gm-Message-State: AOAM532+nMcsS7NoYjs7TEdAnDeoqk0dXs76yr3DMqDARSVrgSimSQSM
 mbX6qIm+5/oWWmaKU8l08cXulA==
X-Google-Smtp-Source: ABdhPJztgZIAZY6hQYZlguadJQSoUJtvPZ5Aw+s3Bx1BMlATLWTtkDtXEg6V01LmTnfrH1uDB4/sKA==
X-Received: by 2002:adf:f7d0:: with SMTP id a16mr6378759wrq.381.1599046149367; 
 Wed, 02 Sep 2020 04:29:09 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 5sm5985172wmz.22.2020.09.02.04.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 04:29:08 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed,  2 Sep 2020 14:25:15 +0300
Message-Id: <20200902112529.1570040-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 01/15] net: bridge: mdb: arrange
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

