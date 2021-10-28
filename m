Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 150F143E59F
	for <lists.bridge@lfdr.de>; Thu, 28 Oct 2021 17:58:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5864B81570;
	Thu, 28 Oct 2021 15:58:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHD7fCmwQSAz; Thu, 28 Oct 2021 15:58:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0C8AA816F5;
	Thu, 28 Oct 2021 15:58:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B5A5CC0036;
	Thu, 28 Oct 2021 15:58:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C0BE6C000E
 for <bridge@lists.linux-foundation.org>; Thu, 28 Oct 2021 15:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A85EB400FF
 for <bridge@lists.linux-foundation.org>; Thu, 28 Oct 2021 15:58:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ib1jrkohWXoz for <bridge@lists.linux-foundation.org>;
 Thu, 28 Oct 2021 15:58:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB2B4400D8
 for <bridge@lists.linux-foundation.org>; Thu, 28 Oct 2021 15:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635436727;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=/ZAZTdtyaSOOs5rc8T6wOKjWpg0v6cCvD+QvTGbgJzM=;
 b=RwqCT3vi4JsC12m8UiZduV4+6NEMah7/6sZprhnnz0lSmuM/PjmuPyg1TOHixuAsqNlhu5
 o6x8aWqc5v6jngayWVC569DgEwtt0OL6hI7uddnDgSNanJSKEL1qXORR3tIflXHJifk93H
 1IJ41uR300iBe8hlxq451BSNTEh0anE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-349-7JO76a4UO0ma4pJGbmmnkg-1; Thu, 28 Oct 2021 11:58:44 -0400
X-MC-Unique: 7JO76a4UO0ma4pJGbmmnkg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C2E19126B;
 Thu, 28 Oct 2021 15:58:42 +0000 (UTC)
Received: from ceranb.redhat.com (unknown [10.40.193.230])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE9805DF56;
 Thu, 28 Oct 2021 15:58:36 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 28 Oct 2021 17:58:35 +0200
Message-Id: <20211028155835.2134753-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Cc: "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net v2] net: bridge: fix uninitialized variables
	when BRIDGE_CFM is disabled
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

Function br_get_link_af_size_filtered() calls br_cfm_{,peer}_mep_count()
that return a count. When BRIDGE_CFM is not enabled these functions
simply return -EOPNOTSUPP but do not modify count parameter and
calling function then works with uninitialized variables.
Modify these inline functions to return zero in count parameter.

Fixes: b6d0425b816e ("bridge: cfm: Netlink Notifications.")
Cc: Henrik Bjoernlund <henrik.bjoernlund@microchip.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 net/bridge/br_private.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 37ca76406f1e..fd5e7e74573c 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1911,11 +1911,13 @@ static inline int br_cfm_status_fill_info(struct sk_buff *skb,
 
 static inline int br_cfm_mep_count(struct net_bridge *br, u32 *count)
 {
+	*count = 0;
 	return -EOPNOTSUPP;
 }
 
 static inline int br_cfm_peer_mep_count(struct net_bridge *br, u32 *count)
 {
+	*count = 0;
 	return -EOPNOTSUPP;
 }
 #endif
-- 
2.32.0

