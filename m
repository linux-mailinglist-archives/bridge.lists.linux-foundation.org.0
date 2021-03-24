Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DFA347BBD
	for <lists.bridge@lfdr.de>; Wed, 24 Mar 2021 16:10:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E261849CE;
	Wed, 24 Mar 2021 15:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P0PvCSxdVJov; Wed, 24 Mar 2021 15:09:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCE1F849CD;
	Wed, 24 Mar 2021 15:09:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 99A5CC0012;
	Wed, 24 Mar 2021 15:09:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CB803C000A
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 15:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA994849CE
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 15:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EalwTcpBEmab for <bridge@lists.linux-foundation.org>;
 Wed, 24 Mar 2021 15:09:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 102C5849CD
 for <bridge@lists.linux-foundation.org>; Wed, 24 Mar 2021 15:09:55 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1lP58o-000209-D7; Wed, 24 Mar 2021 15:09:50 +0000
From: Colin King <colin.king@canonical.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org
Date: Wed, 24 Mar 2021 15:09:50 +0000
Message-Id: <20210324150950.253698-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [Bridge] [PATCH][next] net: bridge: Fix missing return assignment
	from br_vlan_replay_one call
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

From: Colin Ian King <colin.king@canonical.com>

The call to br_vlan_replay_one is returning an error return value but
this is not being assigned to err and the following check on err is
currently always false because err was initialized to zero. Fix this
by assigning err.

Addresses-Coverity: ("'Constant' variable guards dead code")
Fixes: 22f67cdfae6a ("net: bridge: add helper to replay VLANs installed on port")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 net/bridge/br_vlan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index ca8daccff217..7422691230b1 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1815,7 +1815,7 @@ int br_vlan_replay(struct net_device *br_dev, struct net_device *dev,
 		if (!br_vlan_should_use(v))
 			continue;
 
-		br_vlan_replay_one(nb, dev, &vlan, extack);
+		err = br_vlan_replay_one(nb, dev, &vlan, extack);
 		if (err)
 			return err;
 	}
-- 
2.30.2

