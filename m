Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE86F36C092
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64E7283C57;
	Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9bljzFh0n9I; Tue, 27 Apr 2021 08:08:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7D4283C53;
	Tue, 27 Apr 2021 08:08:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A9A1BC002D;
	Tue, 27 Apr 2021 08:08:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF3C9C000B
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA30483A65
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPmHggDQVWi3 for <bridge@lists.linux-foundation.org>;
 Sun, 25 Apr 2021 15:58:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2621383A64
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:01 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id v20so359500plo.10
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 08:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4/Id3zO9UOkD97ud9JSBjDD2mC2RMTQF143PvX5ZhaU=;
 b=Fv5B9dbcnvmZtwMrJ94ocGM00og57HJZxYRsrr+yYhq11l4X8qNVLe3/0INAEro7+W
 JtlxWaOH+IqDiqGwOWXAR80YQnQSvTV2y88Agp2OWh958QSy7poeP7OIDosuUfGoQdk2
 GpFdUkeMcuZCOKRNScMEWorqFodYfGT1Y5NI4DkggGUouPKwglIklfuGzlcYG2Gcg357
 jD02WxdrgRF7g3Ei4Y5knH9/4FPFJTF7DdKQzQRwwcBXt2HMxOitGAsllH32a2MVFGh5
 7znC9Gh2EpfoUrE6wUJnIkz98GNbuMsg5uzajrwogEAAJyHMUZD4ajQ2Yj7CYi2bIyGb
 pCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4/Id3zO9UOkD97ud9JSBjDD2mC2RMTQF143PvX5ZhaU=;
 b=OD21K0oE9ndngpHBGgUvFb3WTNr7vmFMcSVYcWMK2c2rLm9IgbWtGnl8hhFJUhF0bL
 CYIGqsOgzOALath7NuAVqvGohTutJmGqiHMFPM6alvRccXXgdL6l9fKoRMgT/XdclXgS
 aG4euHf2tffIaGbvzQm4INyhLoqiwhLd7MKvHfqXQRKSUA3O2U+wDpUZWNgN6VIwDFAM
 gqpnfnDsv2rSYT3peMHgcTG+QgZciGfMSS1yfz067pVfjTQ1JEfzh/iMqQbgC9xPHkgL
 bfKjSBt0oChIm5c/8UDOZnWXKSzQV9u/2WWWfXFNUk9Lzpi0C92FBAs73+wbhfpHvp4V
 u1CA==
X-Gm-Message-State: AOAM530UsaX0D9uqfx6/Phm1/SbuSUGQxJXEwB6m2lNCpOiiO5K6f20C
 +HQXedFmoJ6j6iRrdJZS2es=
X-Google-Smtp-Source: ABdhPJxn6tGBDLg4dwS608uoJDQzCKEQUxkcmC98wjFx2PmeXBQRTtDiE/v2GSryKsvJ90atM0cw+Q==
X-Received: by 2002:a17:90a:3e43:: with SMTP id
 t3mr17807988pjm.216.1619366280575; 
 Sun, 25 Apr 2021 08:58:00 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id j26sm8983010pfn.47.2021.04.25.08.57.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Apr 2021 08:58:00 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 yoshfuji@linux-ipv6.org, netdev@vger.kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, roopa@nvidia.com,
 nikolay@nvidia.com, ast@kernel.org, andriin@fb.com, daniel@iogearbox.net,
 weiwan@google.com, cong.wang@bytedance.com, bjorn@kernel.org,
 herbert@gondor.apana.org.au, bridge@lists.linux-foundation.org
Date: Sun, 25 Apr 2021 15:57:41 +0000
Message-Id: <20210425155742.30057-2-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210425155742.30057-1-ap420073@gmail.com>
References: <20210425155742.30057-1-ap420073@gmail.com>
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:25 +0000
Cc: ap420073@gmail.com
Subject: [Bridge] [PATCH net v2 1/2] net: core: make
	bond_get_lowest_level_rcu() generic
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

The purpose of bond_get_lowest_level_rcu() is to get nested_level under
RCU. Because dev->nested_level is protected by RTNL, so it shouldn't be
used without RTNL. But bonding module needs this value under RCU without
RTNL.
So, this function was added.

But, there is another module, which needs this function.
So, make this function generic.
the new name is netdev_get_nest_level_rcu().

Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---

v2:
 - No change

 drivers/net/bonding/bond_main.c | 45 +--------------------------------
 include/linux/netdevice.h       |  1 +
 net/core/dev.c                  | 44 ++++++++++++++++++++++++++++++++
 3 files changed, 46 insertions(+), 44 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index 83ef62db6285..a9feb039ffa6 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -3754,47 +3754,6 @@ static void bond_fold_stats(struct rtnl_link_stats64 *_res,
 	}
 }
 
-#ifdef CONFIG_LOCKDEP
-static int bond_get_lowest_level_rcu(struct net_device *dev)
-{
-	struct net_device *ldev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
-	struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
-	int cur = 0, max = 0;
-
-	now = dev;
-	iter = &dev->adj_list.lower;
-
-	while (1) {
-		next = NULL;
-		while (1) {
-			ldev = netdev_next_lower_dev_rcu(now, &iter);
-			if (!ldev)
-				break;
-
-			next = ldev;
-			niter = &ldev->adj_list.lower;
-			dev_stack[cur] = now;
-			iter_stack[cur++] = iter;
-			if (max <= cur)
-				max = cur;
-			break;
-		}
-
-		if (!next) {
-			if (!cur)
-				return max;
-			next = dev_stack[--cur];
-			niter = iter_stack[cur];
-		}
-
-		now = next;
-		iter = niter;
-	}
-
-	return max;
-}
-#endif
-
 static void bond_get_stats(struct net_device *bond_dev,
 			   struct rtnl_link_stats64 *stats)
 {
@@ -3806,9 +3765,7 @@ static void bond_get_stats(struct net_device *bond_dev,
 
 
 	rcu_read_lock();
-#ifdef CONFIG_LOCKDEP
-	nest_level = bond_get_lowest_level_rcu(bond_dev);
-#endif
+	nest_level = netdev_get_nest_level_rcu(bond_dev);
 
 	spin_lock_nested(&bond->stats_lock, nest_level);
 	memcpy(stats, &bond->bond_stats, sizeof(*stats));
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 87a5d186faff..507c06bf5dba 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -4699,6 +4699,7 @@ int netdev_walk_all_lower_dev(struct net_device *dev,
 			      int (*fn)(struct net_device *lower_dev,
 					struct netdev_nested_priv *priv),
 			      struct netdev_nested_priv *priv);
+int netdev_get_nest_level_rcu(struct net_device *dev);
 int netdev_walk_all_lower_dev_rcu(struct net_device *dev,
 				  int (*fn)(struct net_device *lower_dev,
 					    struct netdev_nested_priv *priv),
diff --git a/net/core/dev.c b/net/core/dev.c
index 15fe36332fb8..efc2bf88eafd 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -7709,6 +7709,50 @@ static int __netdev_update_lower_level(struct net_device *dev,
 	return 0;
 }
 
+int netdev_get_nest_level_rcu(struct net_device *dev)
+{
+#ifdef CONFIG_LOCKDEP
+	struct net_device *ldev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
+	struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
+	int cur = 0, max = 0;
+
+	now = dev;
+	iter = &dev->adj_list.lower;
+
+	while (1) {
+		next = NULL;
+		while (1) {
+			ldev = netdev_next_lower_dev_rcu(now, &iter);
+			if (!ldev)
+				break;
+
+			next = ldev;
+			niter = &ldev->adj_list.lower;
+			dev_stack[cur] = now;
+			iter_stack[cur++] = iter;
+			if (max <= cur)
+				max = cur;
+			break;
+		}
+
+		if (!next) {
+			if (!cur)
+				return max;
+			next = dev_stack[--cur];
+			niter = iter_stack[cur];
+		}
+
+		now = next;
+		iter = niter;
+	}
+
+	return max;
+#else
+	return 0;
+#endif
+}
+EXPORT_SYMBOL_GPL(netdev_get_nest_level_rcu);
+
 int netdev_walk_all_lower_dev_rcu(struct net_device *dev,
 				  int (*fn)(struct net_device *dev,
 					    struct netdev_nested_priv *priv),
-- 
2.17.1

