Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594FC707B90
	for <lists.bridge@lfdr.de>; Thu, 18 May 2023 10:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31C1940BE3;
	Thu, 18 May 2023 08:02:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31C1940BE3
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=qp0VSVgK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PH-isT-VF_Tn; Thu, 18 May 2023 08:02:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8BB3F40111;
	Thu, 18 May 2023 08:02:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BB3F40111
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD03AC0090;
	Thu, 18 May 2023 08:02:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D81C1C002A
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2B7F81F60
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2B7F81F60
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=qp0VSVgK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eD2KrC1ZGvZo for <bridge@lists.linux-foundation.org>;
 Mon, 15 May 2023 09:00:21 +0000 (UTC)
X-Greylist: delayed 00:08:19 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4066881FA7
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::94])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4066881FA7
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 09:00:21 +0000 (UTC)
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Mon, 15 May 2023 10:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1684140720; bh=oxYIMnYO7Ypmm/lpcPpl2z/P+Ln/Eg7ecWQ7USx+hCU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qp0VSVgKIkpoy++GZFJ60Tq/PVL3lK0mLQuKAQHXaee2y8hQUDSGbuY/P+UuaZqz8
 dCt2ZN4zmdofK/Ky6OIl+vjskDuiP/XCRKBpwa+8eMJFxiituZSgLqhPC83vwVsCD9
 nBt2u/3TolebtTkhABCo+/eWmrSSuOBTorR3G59o=
Received: from u-jnixdorf.avm.de (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPA id C14A380C0E;
 Mon, 15 May 2023 10:52:00 +0200 (CEST)
To: netdev@vger.kernel.org
Date: Mon, 15 May 2023 10:50:46 +0200
Message-Id: <20230515085046.4457-2-jnixdorf-oss@avm.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230515085046.4457-1-jnixdorf-oss@avm.de>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-purgate-ID: 149429::1684140720-E443384B-B2D92B77/0/0
X-purgate-type: clean
X-purgate-size: 4794
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
X-Mailman-Approved-At: Thu, 18 May 2023 08:02:25 +0000
Cc: Johannes Nixdorf <jnixdorf-oss@avm.de>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next 2/2] bridge: Add a sysctl to limit new
	brides FDB entries
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
From: Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This is a convenience setting, which allows the administrator to limit
the default limit of FDB entries for all created bridges, instead of
having to set it for each created bridge using the netlink property.

The setting is network namespace local, and defaults to 0, which means
unlimited, for backwards compatibility reasons.

Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
---
 net/bridge/br.c         | 83 +++++++++++++++++++++++++++++++++++++++++
 net/bridge/br_device.c  |  4 +-
 net/bridge/br_private.h |  9 +++++
 3 files changed, 95 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br.c b/net/bridge/br.c
index 4f5098d33a46..e32bb956111c 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -14,6 +14,7 @@
 #include <linux/init.h>
 #include <linux/llc.h>
 #include <net/llc.h>
+#include <net/netns/generic.h>
 #include <net/stp.h>
 #include <net/switchdev.h>
 
@@ -348,6 +349,82 @@ void br_opt_toggle(struct net_bridge *br, enum net_bridge_opts opt, bool on)
 		clear_bit(opt, &br->options);
 }
 
+#ifdef CONFIG_SYSCTL
+static unsigned int br_net_id __read_mostly;
+
+struct br_net {
+	struct ctl_table_header *ctl_hdr;
+
+	unsigned int fdb_max_entries_default;
+};
+
+static int br_proc_rtnl_uintvec(struct ctl_table *table, int write,
+				void *buffer, size_t *lenp, loff_t *ppos)
+{
+	int ret;
+
+	rtnl_lock();
+	ret = proc_douintvec(table, write, buffer, lenp, ppos);
+	rtnl_unlock();
+
+	return ret;
+}
+
+static struct ctl_table br_sysctl_table[] = {
+	{
+		.procname     = "bridge-fdb-max-entries-default",
+		.maxlen	      = sizeof(unsigned int),
+		.mode	      = 0644,
+		.proc_handler = br_proc_rtnl_uintvec,
+	},
+	{ }
+};
+
+static int __net_init br_net_init(struct net *net)
+{
+	struct ctl_table *table = br_sysctl_table;
+	struct br_net *brnet;
+
+	if (!net_eq(net, &init_net)) {
+		table = kmemdup(table, sizeof(br_sysctl_table), GFP_KERNEL);
+		if (!table)
+			return -ENOMEM;
+	}
+
+	brnet = net_generic(net, br_net_id);
+
+	brnet->fdb_max_entries_default = 0;
+
+	table[0].data = &brnet->fdb_max_entries_default;
+	brnet->ctl_hdr = register_net_sysctl(net, "net/bridge", table);
+	if (!brnet->ctl_hdr) {
+		if (!net_eq(net, &init_net))
+			kfree(table);
+
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static void __net_exit br_net_exit(struct net *net)
+{
+	struct br_net *brnet = net_generic(net, br_net_id);
+	struct ctl_table *table = brnet->ctl_hdr->ctl_table_arg;
+
+	unregister_net_sysctl_table(brnet->ctl_hdr);
+	if (!net_eq(net, &init_net))
+		kfree(table);
+}
+
+unsigned int br_fdb_max_entries_default(struct net *net)
+{
+	struct br_net *brnet = net_generic(net, br_net_id);
+
+	return brnet->fdb_max_entries_default;
+}
+#endif
+
 static void __net_exit br_net_exit_batch(struct list_head *net_list)
 {
 	struct net_device *dev;
@@ -367,6 +444,12 @@ static void __net_exit br_net_exit_batch(struct list_head *net_list)
 }
 
 static struct pernet_operations br_net_ops = {
+#ifdef CONFIG_SYSCTL
+	.init		= br_net_init,
+	.exit		= br_net_exit,
+	.id		= &br_net_id,
+	.size		= sizeof(struct br_net),
+#endif
 	.exit_batch	= br_net_exit_batch,
 };
 
diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index d455a28df7c9..26023f2732e8 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -117,8 +117,11 @@ static void br_set_lockdep_class(struct net_device *dev)
 static int br_dev_init(struct net_device *dev)
 {
 	struct net_bridge *br = netdev_priv(dev);
+	struct net *net = dev_net(dev);
 	int err;
 
+	br->fdb_max_entries = br_fdb_max_entries_default(net);
+
 	dev->tstats = netdev_alloc_pcpu_stats(struct pcpu_sw_netstats);
 	if (!dev->tstats)
 		return -ENOMEM;
@@ -529,7 +532,6 @@ void br_dev_setup(struct net_device *dev)
 	br->bridge_forward_delay = br->forward_delay = 15 * HZ;
 	br->bridge_ageing_time = br->ageing_time = BR_DEFAULT_AGEING_TIME;
 	br->fdb_n_entries = 0;
-	br->fdb_max_entries = 0;
 	dev->max_mtu = ETH_MAX_MTU;
 
 	br_netfilter_rtable_init(br);
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 64fb359c6e3e..d4b0f85cc278 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -2223,4 +2223,13 @@ void br_do_suppress_nd(struct sk_buff *skb, struct net_bridge *br,
 		       u16 vid, struct net_bridge_port *p, struct nd_msg *msg);
 struct nd_msg *br_is_nd_neigh_msg(struct sk_buff *skb, struct nd_msg *m);
 bool br_is_neigh_suppress_enabled(const struct net_bridge_port *p, u16 vid);
+
+#ifdef CONFIG_SYSFS
+unsigned int br_fdb_max_entries_default(struct net *net);
+#else
+static inline unsigned int br_fdb_max_entries_default(struct net *net)
+{
+	return 0;
+}
+#endif
 #endif
-- 
2.40.1

