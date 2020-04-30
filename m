Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE3E1C06DF
	for <lists.bridge@lfdr.de>; Thu, 30 Apr 2020 21:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8294F252A8;
	Thu, 30 Apr 2020 19:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTtWJdhNa3rt; Thu, 30 Apr 2020 19:47:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id DCB5B204D9;
	Thu, 30 Apr 2020 19:47:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CB1C3C016F;
	Thu, 30 Apr 2020 19:47:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DE6F1C016F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 19:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DAA3887FC1
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 19:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ini6fLrvq7vG for <bridge@lists.linux-foundation.org>;
 Thu, 30 Apr 2020 19:47:20 +0000 (UTC)
X-Greylist: delayed 00:08:00 by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0565887FEF
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 19:47:20 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 0E4A25C00A6;
 Thu, 30 Apr 2020 15:39:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 30 Apr 2020 15:39:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8Ws9ps3lVg7IhWMNT
 naQ/4aJYXRu9Os3jYNOpTZ6jvA=; b=v99v1/6soCGfESBw9ZMkohNduywqGF+F6
 ckTokBbPqazQ/k3wQjp2vnp1jEZr4m91K3UfXV3S4rR/u+fJNDTiW1iq4KxBvv3X
 bKKZhrZfLxnNq+Sj0S++HH6YrUgfE3l/Zbb8hAPFoIm04R6hNykmMnOp7WNGzlU5
 XXbaW5QCYH0NGuFrBtj6PKS9Pm5gG9czOlgYZ/NTgLEqG7wdtr6ziupTb+VdbDzM
 whemRMhBXLdPmItICFUesqxIldjOhxLzqmbn/aUO2nWBIZChJd1icoVH8hUKe1ME
 HqKevSt3LbWSYLjyHm0twnECLH1y3irIBA3tu0L+zSBoK3O5LOpoQ==
X-ME-Sender: <xms:ZimrXrrTFgoolFxSyIqIy0My11wJva-iEf_-WHAkSo9ZmceZUcK9Vg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieehgddufeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiughoshgt
 hhdrohhrgheqnecuggftrfgrthhtvghrnhepteevgefhvefggfffkeeuffeuvdfhueehhe
 etffeikeegheevfedvgeelvdffudfhnecukfhppeejledrudektddrheegrdduudeinecu
 vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguohhstg
 hhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:ZimrXo5K531afULx2976cWxOFdXvGa_xPcq6Uxj1dkXUVDQNLyVvLA>
 <xmx:ZimrXhrWKDA7Vl2Xzt9jshTwy_gq22BaqZFlLcmfu6wWGbImKg9bvg>
 <xmx:ZimrXqgAGIip1LiU7kkxYOtXPIABlPIOQeF2ztO2SZwVPWOSaoxoBA>
 <xmx:ZymrXjhdSpEvCPDJu3dTD0UobX1I6UqIack_CfyBiXURYY7I7-LLvQ>
Received: from splinter.mtl.com (bzq-79-180-54-116.red.bezeqint.net
 [79.180.54.116])
 by mail.messagingengine.com (Postfix) with ESMTPA id E299F3065F40;
 Thu, 30 Apr 2020 15:39:16 -0400 (EDT)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Thu, 30 Apr 2020 22:38:45 +0300
Message-Id: <20200430193845.4087868-1-idosch@idosch.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: mlxsw@mellanox.com, s.priebe@profihost.ag, nikolay@cumulusnetworks.com,
 roopa@cumulusnetworks.com, Ido Schimmel <idosch@mellanox.com>, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net] net: bridge: vlan: Add a schedule point during
	VLAN processing
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

From: Ido Schimmel <idosch@mellanox.com>

User space can request to delete a range of VLANs from a bridge slave in
one netlink request. For each deleted VLAN the FDB needs to be traversed
in order to flush all the affected entries.

If a large range of VLANs is deleted and the number of FDB entries is
large or the FDB lock is contented, it is possible for the kernel to
loop through the deleted VLANs for a long time. In case preemption is
disabled, this can result in a soft lockup.

Fix this by adding a schedule point after each VLAN is deleted to yield
the CPU, if needed. This is safe because the VLANs are traversed in
process context.

Fixes: bdced7ef7838 ("bridge: support for multiple vlans and vlan ranges in setlink and dellink requests")
Signed-off-by: Ido Schimmel <idosch@mellanox.com>
Reported-by: Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
Tested-by: Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
---
 net/bridge/br_netlink.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 43dab4066f91..a0f5dbee8f9c 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -612,6 +612,7 @@ int br_process_vlan_info(struct net_bridge *br,
 					       v - 1, rtm_cmd);
 				v_change_start = 0;
 			}
+			cond_resched();
 		}
 		/* v_change_start is set only if the last/whole range changed */
 		if (v_change_start)
-- 
2.24.1

