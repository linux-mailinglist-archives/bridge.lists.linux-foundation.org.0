Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D69343CB29
	for <lists.bridge@lfdr.de>; Wed, 27 Oct 2021 15:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7E94607AF;
	Wed, 27 Oct 2021 13:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v14glruRVnZ1; Wed, 27 Oct 2021 13:49:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 450D660661;
	Wed, 27 Oct 2021 13:49:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2D6FC0036;
	Wed, 27 Oct 2021 13:49:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 196F1C000E
 for <bridge@lists.linux-foundation.org>; Wed, 27 Oct 2021 13:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E781D40130
 for <bridge@lists.linux-foundation.org>; Wed, 27 Oct 2021 13:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id izqEdcRsMD5r for <bridge@lists.linux-foundation.org>;
 Wed, 27 Oct 2021 13:49:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 574C44011E
 for <bridge@lists.linux-foundation.org>; Wed, 27 Oct 2021 13:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635342575;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZD6LAq6atB4BsCmnlxgTYHzC6191yWWoUcGigwC22tc=;
 b=KjzIx8za4yy9NDex919H9ZF2RIgWs6tQiRoBcNEWe2hTAKjvRw7GeNOT0hHgEIMlZE+N/e
 +KZ8Bv64RyvlKm8JN7/0VYa8z1uLtUihuLWAuXLsYwFlN7Co2AqEZuNs02jS4vBkDllPfq
 Uacxoy30jH89OvVuJL8DQzvRBGWq5+U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-uY69igsLMRWxG2prJR3BXw-1; Wed, 27 Oct 2021 09:49:31 -0400
X-MC-Unique: uY69igsLMRWxG2prJR3BXw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1FF8C19253C2;
 Wed, 27 Oct 2021 13:49:30 +0000 (UTC)
Received: from ceranb.redhat.com (unknown [10.40.193.230])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B708260CA0;
 Wed, 27 Oct 2021 13:49:27 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 27 Oct 2021 15:49:26 +0200
Message-Id: <20211027134926.1412459-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Cc: "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Henrik Bjoernlund <henrik.bjoernlund@microchip.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net] net: bridge: fix uninitialized variables when
	BRIDGE_CFM is disabled
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
but does not check their return value. When BRIDGE_CFM is not enabled
these functions return -EOPNOTSUPP but do not modify count parameter.
Calling function then works with uninitialized variables.

Fixes: b6d0425b816e ("bridge: cfm: Netlink Notifications.")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 net/bridge/br_netlink.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 5c6c4305ed23..12d602495ea0 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -126,8 +126,10 @@ static size_t br_get_link_af_size_filtered(const struct net_device *dev,
 		return vinfo_sz;
 
 	/* CFM status info must be added */
-	br_cfm_mep_count(br, &num_cfm_mep_infos);
-	br_cfm_peer_mep_count(br, &num_cfm_peer_mep_infos);
+	if (br_cfm_mep_count(br, &num_cfm_mep_infos) < 0)
+		num_cfm_mep_infos = 0;
+	if (br_cfm_peer_mep_count(br, &num_cfm_peer_mep_infos) < 0)
+		num_cfm_peer_mep_infos = 0;
 
 	vinfo_sz += nla_total_size(0);	/* IFLA_BRIDGE_CFM */
 	/* For each status struct the MEP instance (u32) is added */
-- 
2.32.0

