Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B472F5F53
	for <lists.bridge@lfdr.de>; Thu, 14 Jan 2021 11:55:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 548F92042D;
	Thu, 14 Jan 2021 10:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qrWzmvxzDLr3; Thu, 14 Jan 2021 10:55:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 673B22041B;
	Thu, 14 Jan 2021 10:55:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 55A77C1DA6;
	Thu, 14 Jan 2021 10:55:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 414AFC013A
 for <bridge@lists.linux-foundation.org>; Wed, 13 Jan 2021 09:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2AABB8632E
 for <bridge@lists.linux-foundation.org>; Wed, 13 Jan 2021 09:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pPN15lsTMH+U for <bridge@lists.linux-foundation.org>;
 Wed, 13 Jan 2021 09:44:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from out30-132.freemail.mail.aliyun.com
 (out30-132.freemail.mail.aliyun.com [115.124.30.132])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 44650862B2
 for <bridge@lists.linux-foundation.org>; Wed, 13 Jan 2021 09:44:28 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R121e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01424;
 MF=abaci-bugfix@linux.alibaba.com; NM=1; PH=DS; RN=8; SR=0;
 TI=SMTPD_---0ULboo8k_1610531061; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com
 fp:SMTPD_---0ULboo8k_1610531061) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 13 Jan 2021 17:44:25 +0800
From: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
To: roopa@nvidia.com
Date: Wed, 13 Jan 2021 17:44:19 +0800
Message-Id: <1610531059-56212-1-git-send-email-abaci-bugfix@linux.alibaba.com>
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

net/bridge/br_sysfs_if.c(162): warning: %ld in format string (no. 1)
requires 'long' but the argument type is 'unsigned long'.
net/bridge/br_sysfs_if.c(155): warning: %ld in format string (no. 1)
requires 'long' but the argument type is 'unsigned long'.
net/bridge/br_sysfs_if.c(148): warning: %ld in format string (no. 1)
requires 'long' but the argument type is 'unsigned long'.

Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
Reported-by: Abaci Robot<abaci@linux.alibaba.com>
---
 net/bridge/br_sysfs_if.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index 7a59cdd..16a7d41 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -145,21 +145,21 @@ static ssize_t show_port_state(struct net_bridge_port *p, char *buf)
 static ssize_t show_message_age_timer(struct net_bridge_port *p,
 					    char *buf)
 {
-	return sprintf(buf, "%ld\n", br_timer_value(&p->message_age_timer));
+	return sprintf(buf, "%lu\n", br_timer_value(&p->message_age_timer));
 }
 static BRPORT_ATTR(message_age_timer, 0444, show_message_age_timer, NULL);
 
 static ssize_t show_forward_delay_timer(struct net_bridge_port *p,
 					    char *buf)
 {
-	return sprintf(buf, "%ld\n", br_timer_value(&p->forward_delay_timer));
+	return sprintf(buf, "%lu\n", br_timer_value(&p->forward_delay_timer));
 }
 static BRPORT_ATTR(forward_delay_timer, 0444, show_forward_delay_timer, NULL);
 
 static ssize_t show_hold_timer(struct net_bridge_port *p,
 					    char *buf)
 {
-	return sprintf(buf, "%ld\n", br_timer_value(&p->hold_timer));
+	return sprintf(buf, "%lu\n", br_timer_value(&p->hold_timer));
 }
 static BRPORT_ATTR(hold_timer, 0444, show_hold_timer, NULL);
 
-- 
1.8.3.1

