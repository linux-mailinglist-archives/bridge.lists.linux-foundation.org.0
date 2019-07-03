Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA2E5E88F
	for <lists.bridge@lfdr.de>; Wed,  3 Jul 2019 18:15:48 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1FDB81311;
	Wed,  3 Jul 2019 16:15:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9CCCE103B
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 14:15:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (mail.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DF73D898
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 14:15:14 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id D4607EDB12
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 16:15:10 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id C1AC01150B0
	for <bridge@lists.linux-foundation.org>;
	Wed,  3 Jul 2019 16:15:10 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id BFB8F114D9A; Wed,  3 Jul 2019 16:15:10 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 700F51021A6;
	Wed,  3 Jul 2019 16:15:08 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Wed, 03 Jul 2019 16:15:08 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 479464265A31;
	Wed,  3 Jul 2019 16:15:08 +0200 (CEST)
Date: Wed, 3 Jul 2019 16:15:07 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: wenxu <wenxu@ucloud.cn>
Message-ID: <20190703141507.mnhzqapu4iaan5d7@salvia>
References: <20190703124040.19279-1-pablo@netfilter.org>
	<ecb6d9e8-7923-07ba-8940-c69fc251f4c3@ucloud.cn>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ckpny4pdx256v3gf"
Content-Disposition: inline
In-Reply-To: <ecb6d9e8-7923-07ba-8940-c69fc251f4c3@ucloud.cn>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: nikolay@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	netfilter-devel@vger.kernel.org
Subject: Re: [Bridge] [PATCH] netfilter: nft_meta: fix bridge port vlan ID
	selector
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org


--ckpny4pdx256v3gf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I'm planning to revert from nf-next

        da4f10a4265b netfilter: nft_meta: add NFT_META_BRI_PVID support

because:

* Nikolay wants us to use the helpers, however, through the existing
  approach this creates a dependency between nft_meta and the bridge
  module. I think I suggested this already, but it seems there is a
  need for nft_meta_bridge, otherwise nft_meta pulls in the bridge
  modules as a dependency.

* NFT_META_BRI_PVID needs to be rename to NFT_META_BRI_IIFPVID.

* We need new helpers to access this information from rcu path, I'm
  attaching a patch for such helper for review.

so we take the time to get this right :-)

--ckpny4pdx256v3gf
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-bridge-add-br_vlan_get_pvid_rcu.patch"

From 260cb904228b23d62fddad0e1898c82218a69c57 Mon Sep 17 00:00:00 2001
From: Pablo Neira Ayuso <pablo@netfilter.org>
Date: Wed, 3 Jul 2019 16:03:12 +0200
Subject: [PATCH] bridge: add br_vlan_get_pvid_rcu()

This new function allows you to fetch bridge pvid from packet path.

Signed-off-by: Pablo Neira Ayuso <pablo@netfilter.org>
---
 include/linux/if_bridge.h |  6 ++++++
 net/bridge/br_vlan.c      | 19 +++++++++++++++----
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index f3fab5d0ea97..950db1dad830 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -88,6 +88,7 @@ static inline bool br_multicast_router(const struct net_device *dev)
 #if IS_ENABLED(CONFIG_BRIDGE) && IS_ENABLED(CONFIG_BRIDGE_VLAN_FILTERING)
 bool br_vlan_enabled(const struct net_device *dev);
 int br_vlan_get_pvid(const struct net_device *dev, u16 *p_pvid);
+int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid);
 int br_vlan_get_info(const struct net_device *dev, u16 vid,
 		     struct bridge_vlan_info *p_vinfo);
 #else
@@ -101,6 +102,11 @@ static inline int br_vlan_get_pvid(const struct net_device *dev, u16 *p_pvid)
 	return -EINVAL;
 }
 
+static inline int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid)
+{
+	return -EINVAL;
+}
+
 static inline int br_vlan_get_info(const struct net_device *dev, u16 vid,
 				   struct bridge_vlan_info *p_vinfo)
 {
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index f47f526b4f19..8d97b91ad503 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1227,13 +1227,11 @@ void br_vlan_get_stats(const struct net_bridge_vlan *v,
 	}
 }
 
-int br_vlan_get_pvid(const struct net_device *dev, u16 *p_pvid)
+static int __br_vlan_get_pvid(const struct net_device *dev,
+			      struct net_bridge_port *p, u16 *p_pvid)
 {
 	struct net_bridge_vlan_group *vg;
-	struct net_bridge_port *p;
 
-	ASSERT_RTNL();
-	p = br_port_get_check_rtnl(dev);
 	if (p)
 		vg = nbp_vlan_group(p);
 	else if (netif_is_bridge_master(dev))
@@ -1244,8 +1242,21 @@ int br_vlan_get_pvid(const struct net_device *dev, u16 *p_pvid)
 	*p_pvid = br_get_pvid(vg);
 	return 0;
 }
+
+int br_vlan_get_pvid(const struct net_device *dev, u16 *p_pvid)
+{
+	ASSERT_RTNL();
+
+	return __br_vlan_get_pvid(dev, br_port_get_check_rtnl(dev), p_pvid);
+}
 EXPORT_SYMBOL_GPL(br_vlan_get_pvid);
 
+int br_vlan_get_pvid_rcu(const struct net_device *dev, u16 *p_pvid)
+{
+	return __br_vlan_get_pvid(dev, br_port_get_check_rcu(dev), p_pvid);
+}
+EXPORT_SYMBOL_GPL(br_vlan_get_pvid_rcu);
+
 int br_vlan_get_info(const struct net_device *dev, u16 vid,
 		     struct bridge_vlan_info *p_vinfo)
 {
-- 
2.11.0


--ckpny4pdx256v3gf--
