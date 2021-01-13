Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3C02F5F51
	for <lists.bridge@lfdr.de>; Thu, 14 Jan 2021 11:55:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 43BEA20463;
	Thu, 14 Jan 2021 10:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NOg+pzHHJkSO; Thu, 14 Jan 2021 10:55:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 5F73D20416;
	Thu, 14 Jan 2021 10:55:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 20940C013A;
	Thu, 14 Jan 2021 10:55:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BE400C013A
 for <bridge@lists.linux-foundation.org>; Wed, 13 Jan 2021 09:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB2E586258
 for <bridge@lists.linux-foundation.org>; Wed, 13 Jan 2021 09:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Ql41bwkcbX3 for <bridge@lists.linux-foundation.org>;
 Wed, 13 Jan 2021 09:41:40 +0000 (UTC)
X-Greylist: delayed 00:05:03 by SQLgrey-1.7.6
Received: from out30-45.freemail.mail.aliyun.com
 (out30-45.freemail.mail.aliyun.com [115.124.30.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A800861A2
 for <bridge@lists.linux-foundation.org>; Wed, 13 Jan 2021 09:41:39 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R831e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04400;
 MF=abaci-bugfix@linux.alibaba.com; NM=1; PH=DS; RN=8; SR=0;
 TI=SMTPD_---0ULc.cMI_1610530588; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com
 fp:SMTPD_---0ULc.cMI_1610530588) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 13 Jan 2021 17:36:32 +0800
From: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
To: roopa@nvidia.com
Date: Wed, 13 Jan 2021 17:36:24 +0800
Message-Id: <1610530584-48554-1-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Thu, 14 Jan 2021 10:55:23 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>,
 nikolay@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH] net/bridge: Fix inconsistent format argument types
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

Fix the following warnings:

net/bridge/br_sysfs_br.c(833): warning: %u in format string (no. 1)
requires 'unsigned int' but the argument type is 'signed int'.
net/bridge/br_sysfs_br.c(817): warning: %u in format string (no. 1)
requires 'unsigned int' but the argument type is 'signed int'.
net/bridge/br_sysfs_br.c(261): warning: %ld in format string (no. 1)
requires 'long' but the argument type is 'unsigned long'.
net/bridge/br_sysfs_br.c(253): warning: %ld in format string (no. 1)
requires 'long' but the argument type is 'unsigned long'.
net/bridge/br_sysfs_br.c(244): warning: %ld in format string (no. 1)
requires 'long' but the argument type is 'unsigned long'.
net/bridge/br_sysfs_br.c(236): warning: %ld in format string (no. 1)
requires 'long' but the argument type is 'unsigned long'.

Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
Reported-by: Abaci Robot<abaci@linux.alibaba.com>
---
 net/bridge/br_sysfs_br.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index 7db06e3..7512921 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -233,7 +233,7 @@ static ssize_t hello_timer_show(struct device *d,
 				struct device_attribute *attr, char *buf)
 {
 	struct net_bridge *br = to_bridge(d);
-	return sprintf(buf, "%ld\n", br_timer_value(&br->hello_timer));
+	return sprintf(buf, "%lu\n", br_timer_value(&br->hello_timer));
 }
 static DEVICE_ATTR_RO(hello_timer);
 
@@ -241,7 +241,7 @@ static ssize_t tcn_timer_show(struct device *d, struct device_attribute *attr,
 			      char *buf)
 {
 	struct net_bridge *br = to_bridge(d);
-	return sprintf(buf, "%ld\n", br_timer_value(&br->tcn_timer));
+	return sprintf(buf, "%lu\n", br_timer_value(&br->tcn_timer));
 }
 static DEVICE_ATTR_RO(tcn_timer);
 
@@ -250,7 +250,7 @@ static ssize_t topology_change_timer_show(struct device *d,
 					  char *buf)
 {
 	struct net_bridge *br = to_bridge(d);
-	return sprintf(buf, "%ld\n", br_timer_value(&br->topology_change_timer));
+	return sprintf(buf, "%lu\n", br_timer_value(&br->topology_change_timer));
 }
 static DEVICE_ATTR_RO(topology_change_timer);
 
@@ -258,7 +258,7 @@ static ssize_t gc_timer_show(struct device *d, struct device_attribute *attr,
 			     char *buf)
 {
 	struct net_bridge *br = to_bridge(d);
-	return sprintf(buf, "%ld\n", br_timer_value(&br->gc_work.timer));
+	return sprintf(buf, "%lu\n", br_timer_value(&br->gc_work.timer));
 }
 static DEVICE_ATTR_RO(gc_timer);
 
@@ -814,7 +814,7 @@ static ssize_t vlan_stats_enabled_show(struct device *d,
 				       char *buf)
 {
 	struct net_bridge *br = to_bridge(d);
-	return sprintf(buf, "%u\n", br_opt_get(br, BROPT_VLAN_STATS_ENABLED));
+	return sprintf(buf, "%d\n", br_opt_get(br, BROPT_VLAN_STATS_ENABLED));
 }
 
 static ssize_t vlan_stats_enabled_store(struct device *d,
@@ -830,7 +830,7 @@ static ssize_t vlan_stats_per_port_show(struct device *d,
 					char *buf)
 {
 	struct net_bridge *br = to_bridge(d);
-	return sprintf(buf, "%u\n", br_opt_get(br, BROPT_VLAN_STATS_PER_PORT));
+	return sprintf(buf, "%d\n", br_opt_get(br, BROPT_VLAN_STATS_PER_PORT));
 }
 
 static ssize_t vlan_stats_per_port_store(struct device *d,
-- 
1.8.3.1

