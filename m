Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137951E084B
	for <lists.bridge@lfdr.de>; Mon, 25 May 2020 09:56:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FEA287534;
	Mon, 25 May 2020 07:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6bBcECmGOpz; Mon, 25 May 2020 07:56:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBB7A8757E;
	Mon, 25 May 2020 07:56:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CE34DC016F;
	Mon, 25 May 2020 07:56:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B72FCC016F
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 07:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A70B587534
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 07:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OV2DKqTmRKKX for <bridge@lists.linux-foundation.org>;
 Mon, 25 May 2020 07:56:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3705A87530
 for <bridge@lists.linux-foundation.org>; Mon, 25 May 2020 07:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590393381; x=1621929381;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gka3xhQHdVujI+DvQjAJqTOsOu9U8CaV+bHB/w8dE/o=;
 b=YyIwB8za8r2vJdfhDQU+5CVvtDoAlCxV2w513h3UyP0FCQ4sDaFKI4EU
 HyEJL7a+otopljhrXC3rp9D20UNtt48Ls26mB+hBvjk2mNlE6U2EgM16W
 h+p5OgAvFGYTwJ+uuGuOUBPfP3yD9jXn2iY3LKmasUzlOYFBYINMOyHCE
 2vtk2VGlU+2gRQqnQwuNNTJxKFcPYzSBrv9DNhsDJexeJGb4YkgQ/ntlT
 /KjNxduk89yYEGpQZpuWW3+uRYA5k3uxiD7rbaCVpsRRTsXDjIOvaGIzW
 0eTaQtUhyvIBut6jS9RG4njEx0VOgs6z2Y1NAByrCxODO3oGjHbaFU51X Q==;
IronPort-SDR: Ku69RMxDc/Tw6URFoi4cr3b7iyBayER/a+CE1TVr4cboF+zCp4QXr0yIO0Pp2n7W9zFu10SaTX
 VgWUNjMsFn5BPEnc7TiTexBUrXT76fvPrFq3lL7fds7XUsH3t+jaNq2vCtUa56eqflh7LogrE+
 n7Kb9WRgi6JvSP1EyZA3OI5d1DogIajNEVhIchGkaJJXYdxtQn9SF7zT0O4hmE7vYwHfjSjnTN
 Z/djyDiR90H/vR7J3EGgBpG3mgTx4aLk+TPb7NqXHyknlvpvJU40ColsgtH7HLxEJemQbS/Bdu
 oNg=
X-IronPort-AV: E=Sophos;i="5.73,432,1583218800"; d="scan'208";a="13408235"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 May 2020 00:56:20 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 00:56:22 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 25 May 2020 00:56:13 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <bridge@lists.linux-foundation.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Date: Mon, 25 May 2020 09:55:41 +0000
Message-ID: <20200525095541.46673-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: syzbot+9c6f0f1f8e32223df9a4@syzkaller.appspotmail.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH] bridge: mrp: Fix out-of-bounds read in br_mrp_parse
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

The issue was reported by syzbot. When the function br_mrp_parse was
called with a valid net_bridge_port, the net_bridge was an invalid
pointer. Therefore the check br->stp_enabled could pass/fail
depending where it was pointing in memory.
The fix consists of setting the net_bridge pointer if the port is a
valid pointer.

Reported-by: syzbot+9c6f0f1f8e32223df9a4@syzkaller.appspotmail.com
Fixes: 6536993371fa ("bridge: mrp: Integrate MRP into the bridge")
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp_netlink.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
index 397e7f710772a..4a08a99519b04 100644
--- a/net/bridge/br_mrp_netlink.c
+++ b/net/bridge/br_mrp_netlink.c
@@ -27,6 +27,12 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
 	struct nlattr *tb[IFLA_BRIDGE_MRP_MAX + 1];
 	int err;
 
+	/* When this function is called for a port then the br pointer is
+	 * invalid, therefor set the br to point correctly
+	 */
+	if (p)
+		br = p->br;
+
 	if (br->stp_enabled != BR_NO_STP) {
 		NL_SET_ERR_MSG_MOD(extack, "MRP can't be enabled if STP is already enabled");
 		return -EINVAL;
-- 
2.26.2

