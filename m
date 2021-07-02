Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A273BA815
	for <lists.bridge@lfdr.de>; Sat,  3 Jul 2021 11:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FFE783DFE;
	Sat,  3 Jul 2021 09:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qFHjLeQL6XFz; Sat,  3 Jul 2021 09:40:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C775C83E2E;
	Sat,  3 Jul 2021 09:40:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBCAEC002F;
	Sat,  3 Jul 2021 09:40:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6D53BC000E
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 08:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5EC1A405E9
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 08:26:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EXCdvigV9KwL for <bridge@lists.linux-foundation.org>;
 Fri,  2 Jul 2021 08:26:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from proxmox-new.maurer-it.com (proxmox-new.maurer-it.com
 [94.136.29.106])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26186405E3
 for <bridge@lists.linux-foundation.org>; Fri,  2 Jul 2021 08:26:13 +0000 (UTC)
Received: from proxmox-new.maurer-it.com (localhost.localdomain [127.0.0.1])
 by proxmox-new.maurer-it.com (Proxmox) with ESMTP id A02984051A;
 Fri,  2 Jul 2021 10:26:10 +0200 (CEST)
From: Wolfgang Bumiller <w.bumiller@proxmox.com>
To: netdev@vger.kernel.org
Date: Fri,  2 Jul 2021 10:26:05 +0200
Message-Id: <20210702082605.6034-1-w.bumiller@proxmox.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sat, 03 Jul 2021 09:40:28 +0000
Cc: Vlad Yasevich <vyasevic@redhat.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 bridge@lists.linux-foundation.org, Thomas Lamprecht <t.lamprecht@proxmox.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v2] net: bridge: sync fdb to new unicast-filtering
	ports
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

Since commit 2796d0c648c9 ("bridge: Automatically manage
port promiscuous mode.")
bridges with `vlan_filtering 1` and only 1 auto-port don't
set IFF_PROMISC for unicast-filtering-capable ports.

Normally on port changes `br_manage_promisc` is called to
update the promisc flags and unicast filters if necessary,
but it cannot distinguish between *new* ports and ones
losing their promisc flag, and new ports end up not
receiving the MAC address list.

Fix this by calling `br_fdb_sync_static` in `br_add_if`
after the port promisc flags are updated and the unicast
filter was supposed to have been filled.

Fixes: 2796d0c648c9 ("bridge: Automatically manage port promiscuous mode.")
Signed-off-by: Wolfgang Bumiller <w.bumiller@proxmox.com>
---
Changes to v1:
  * Added unsync to error case.
  * Improved error message
  * Added `Fixes` tag to commit message

 net/bridge/br_if.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
index f7d2f472ae24..2fd03a9742c8 100644
--- a/net/bridge/br_if.c
+++ b/net/bridge/br_if.c
@@ -652,6 +652,18 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 	list_add_rcu(&p->list, &br->port_list);
 
 	nbp_update_port_count(br);
+	if (!br_promisc_port(p) && (p->dev->priv_flags & IFF_UNICAST_FLT)) {
+		/* When updating the port count we also update all ports'
+		 * promiscuous mode.
+		 * A port leaving promiscuous mode normally gets the bridge's
+		 * fdb synced to the unicast filter (if supported), however,
+		 * `br_port_clear_promisc` does not distinguish between
+		 * non-promiscuous ports and *new* ports, so we need to
+		 * sync explicitly here.
+		 */
+		if (br_fdb_sync_static(br, p))
+			netdev_err(dev, "failed to sync bridge static fdb addresses to this port\n");
+	}
 
 	netdev_update_features(br->dev);
 
@@ -701,6 +713,7 @@ int br_add_if(struct net_bridge *br, struct net_device *dev,
 	return 0;
 
 err7:
+	br_fdb_unsync_static(br, p);
 	list_del_rcu(&p->list);
 	br_fdb_delete_by_port(br, p, 0, 1);
 	nbp_update_port_count(br);
-- 
2.32.0


