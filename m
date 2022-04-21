Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3797A50DB85
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6535E40439;
	Mon, 25 Apr 2022 08:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id flPVnDWDU9cg; Mon, 25 Apr 2022 08:47:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id DFA4140436;
	Mon, 25 Apr 2022 08:47:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6F2FEC007C;
	Mon, 25 Apr 2022 08:47:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 376A3C002C
 for <bridge@lists.linux-foundation.org>; Thu, 21 Apr 2022 10:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FBAB419AD
 for <bridge@lists.linux-foundation.org>; Thu, 21 Apr 2022 10:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bootlin.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8QU_6RSKJf9 for <bridge@lists.linux-foundation.org>;
 Thu, 21 Apr 2022 10:14:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [IPv6:2001:4b98:dc4:8::224])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A8A80419A0
 for <bridge@lists.linux-foundation.org>; Thu, 21 Apr 2022 10:14:18 +0000 (UTC)
Received: (Authenticated sender: clement.leger@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 544DEE000C;
 Thu, 21 Apr 2022 10:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1650536055;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=an69hgvRkZo4fDphZoWRjZyAXfGzKRGmPZzwE3TFtww=;
 b=UVU1MzSboPYmjJnNfcM3Qk71BBGbWaDl9mydrmQzASqiNP//6Bi6Fu7YwJTbLVt6SLIql3
 2hUt6A5FNi+3wHF/DKZC3lnjDm378xiXMZKwensfWYZ7kwrQY1tBsq5+o1M0bNXD+WOp0l
 0NKFeqwrqVqtEbBAcMb+LrMHJ7mb2mjJqnKBFspRVFslA63voqp+i1j0sS5AxTeGQWVolD
 S3OMLJ5aW690aZdHUX2lgVPqt20ErhXno7ixftgee6PvkgoWMEAj+rz6NbczFSA+n5f7/A
 3gD59XFMH3ld/VwWT4vyP8YjlG3rdn4sdY2RvHOcQC88fE90XMBL+LBbzWNMGQ==
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tobias Waldekranz <tobias@waldekranz.com>
Date: Thu, 21 Apr 2022 12:12:47 +0200
Message-Id: <20220421101247.121896-1-clement.leger@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 25 Apr 2022 08:47:17 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
 linux-kernel@vger.kernel.org
Subject: [Bridge] [PATCH net-next] net: bridge: switchdev: check
	br_vlan_group() return value
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
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= via Bridge
 <bridge@lists.linux-foundation.org>
Reply-To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

br_vlan_group() can return NULL and thus return value must be checked
to avoid dereferencing a NULL pointer.

Fixes: 6284c723d9b9 ("net: bridge: mst: Notify switchdev drivers of VLAN MSTI migrations")
Signed-off-by: Clément Léger <clement.leger@bootlin.com>
---
 net/bridge/br_switchdev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 81400e0b26ac..8f3d76c751dd 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -354,6 +354,8 @@ static int br_switchdev_vlan_attr_replay(struct net_device *br_dev,
 	attr.orig_dev = br_dev;
 
 	vg = br_vlan_group(br);
+	if (!vg)
+		return 0;
 
 	list_for_each_entry(v, &vg->vlan_list, vlist) {
 		if (v->msti) {
-- 
2.34.1

