Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F2450275F
	for <lists.bridge@lfdr.de>; Fri, 15 Apr 2022 11:28:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2963861096;
	Fri, 15 Apr 2022 09:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KSq35ajQB0kB; Fri, 15 Apr 2022 09:28:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B5D4C60BEC;
	Fri, 15 Apr 2022 09:28:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 72B77C0088;
	Fri, 15 Apr 2022 09:28:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EF1AFC002C
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 13:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E8821416F7
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 13:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=arinc9.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XlsNDKhdHIqu for <bridge@lists.linux-foundation.org>;
 Sun, 10 Apr 2022 13:57:53 +0000 (UTC)
X-Greylist: delayed 00:15:05 by SQLgrey-1.8.0
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2716F416D3
 for <bridge@lists.linux-foundation.org>; Sun, 10 Apr 2022 13:57:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1649598159; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=JsjF0iRo20Tv+4iySyfoDDvtkFksSCj4x+y2ZnIXE36VBH+UHsaQMWgTINM1Vel0I6DI1UPs+5RZecyfOXVPC/XkE1RVGHHibtR7fadIj8rvlAN0uYhXt+DB7WGewyXKPgttHZleYBm+3wwxf5LMbvMjpy20WdbHQIPvrsERNBo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1649598159;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=nUJ6HOSqvkRRMt2eDoWZ7kiFdlMq4tupafRJGJ7omfg=; 
 b=Oej/Xwa1E9ttYIkdrvqM69ZFJH4Iw/51DuwbvwBm80L9tjkBHtX0pjhFWkjrkD/bxuTuNglgQOL9QihCQoGvphE0xcXG4llKq/3S8VpHL1KbAV4nTk9slG0MO67GBpnXe9ITWbFbbr6F6ZyNwM/4RUuJvzsMgF3/deDXYlGE/nA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=arinc9.com;
 spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
 dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1649598159; 
 s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:Reply-To;
 bh=nUJ6HOSqvkRRMt2eDoWZ7kiFdlMq4tupafRJGJ7omfg=;
 b=BwBdWBIb4azU/DtAQvAmqrw2QOtt2sTm+PeRjZzT/UtnKAEivHFAR3NWchR39fVA
 gk4LRFqoUi0SUXHTKPD1Qq+q3kd7KCmve6SRArDsoDjXKUu1ZRJLqsr6GyrUgNAVAcR
 +r72pq3gf4KLtziMTJYPRZcjnHNTzAqzKVWSQ25A=
Received: from arinc9-PC.localdomain (85.117.236.245 [85.117.236.245]) by
 mx.zohomail.com with SMTPS id 1649598157367218.56519159719153;
 Sun, 10 Apr 2022 06:42:37 -0700 (PDT)
From: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To: Vladimir Oltean <olteanv@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sun, 10 Apr 2022 16:42:27 +0300
Message-Id: <20220410134227.18810-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Mailman-Approved-At: Fri, 15 Apr 2022 09:28:38 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [Bridge] [PATCH net-next] net: bridge: offload BR_HAIRPIN_MODE,
	BR_ISOLATED, BR_MULTICAST_TO_UNICAST
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

Add BR_HAIRPIN_MODE, BR_ISOLATED and BR_MULTICAST_TO_UNICAST port flags to
BR_PORT_FLAGS_HW_OFFLOAD so that switchdev drivers which have an offloaded
data plane have a chance to reject these bridge port flags if they don't
support them yet.

It makes the code path go through the
SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS driver handlers, which return
-EINVAL for everything they don't recognize.

For drivers that don't catch SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS at
all, switchdev will return -EOPNOTSUPP for those which is then ignored, but
those are in the minority.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
Let me know if this is netdev/net material instead.

Commit log is heavily quoted from Vladimir Oltean <olteanv@gmail.com>.

Arınç
---
 net/bridge/br_switchdev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 8cc44c367231..81400e0b26ac 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -72,7 +72,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 /* Flags that can be offloaded to hardware */
 #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
-				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED)
+				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED | \
+				  BR_HAIRPIN_MODE | BR_ISOLATED | BR_MULTICAST_TO_UNICAST)
 
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-- 
2.25.1

