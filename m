Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAED1EA456
	for <lists.bridge@lfdr.de>; Mon,  1 Jun 2020 14:59:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A16287DBA;
	Mon,  1 Jun 2020 12:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RN+u8rfh92Q6; Mon,  1 Jun 2020 12:59:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6126387ED0;
	Mon,  1 Jun 2020 12:59:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4637FC0176;
	Mon,  1 Jun 2020 12:59:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 30326C0176
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 12:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1ABE886B21
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 12:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q4uAHgPJqzy7 for <bridge@lists.linux-foundation.org>;
 Mon,  1 Jun 2020 12:59:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D6698666C
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 12:59:33 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DB61C5C00EC;
 Mon,  1 Jun 2020 08:59:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 01 Jun 2020 08:59:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=E0wceg3xkmnmO0owKD+Ur3r9Ne13G1p5ItMUZ5WVi/g=; b=XFIma2hN
 1X76BLHIwxM2l+ebuv19KRWJz2Kh3J3V4+1HvD+tJpXOleuEdbpRc9hNVlHFetn/
 jXVKIr/TwDdbUR9AdL4CFLCWMRez16MIRCVUyZ7eTEdqedl1ho1FR4FW0txIIgB5
 qOQT90jyES/eIJtAQeNgEeg42ACauHA7x6K/1MdLTbLDQjsi4uD6pr1se3Mih4BU
 UmaZWuIpRRkUY606QqdFLsNgng/owCwIbKry49iRQhcu3EB/+sJVolmkjebfzpMa
 lihuye/NtDLF8R1E+btqrfbVAH8GD2jTZ46sfdI5yLTfdHIli1JhoIeJfExVTEUT
 9JDrVkdnMnbK9g==
X-ME-Sender: <xms:tPvUXkybxYstJ4ojjR-zppS7XVDqY69YCXg-cieCpsT7NGZEXhdD0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefhedgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiugho
 shgthhdrohhrgheqnecuggftrfgrthhtvghrnhepteetjeffgeeljeduffelfffhheeule
 eltdejvdevgfeuleffvedvteeiteefhfehnecuffhomhgrihhnpehivghtfhdrohhrghen
 ucfkphepjeelrddujeeirddvgedruddtjeenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:tPvUXoSDr2Z8g9y1tpUFYv4v8h84OF8dZDdbuAN64s89c2j4LX2yCg>
 <xmx:tPvUXmXv8xWvgrrU89IDf2z8BsBr3mYC3kUDK4q8Hld7_pNegIdZmw>
 <xmx:tPvUXigY8Q04bxsYamnqg6zi_Xurs5QoEe5R24ZRXf0lR_kzE6bJ1A>
 <xmx:tPvUXt6QHZHN-tLIu1eLee1Be9mazmJWZqzqpSoYoWoPkVekouPbuw>
Received: from splinter.mtl.com (bzq-79-176-24-107.red.bezeqint.net
 [79.176.24.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id EFA24328005A;
 Mon,  1 Jun 2020 08:59:30 -0400 (EDT)
From: Ido Schimmel <idosch@idosch.org>
To: netdev@vger.kernel.org,
	bridge@lists.linux-foundation.org
Date: Mon,  1 Jun 2020 15:58:55 +0300
Message-Id: <20200601125855.1751343-3-idosch@idosch.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601125855.1751343-1-idosch@idosch.org>
References: <20200601125855.1751343-1-idosch@idosch.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: mlxsw@mellanox.com, nikolay@cumulusnetworks.com, roopa@cumulusnetworks.com,
 dlstevens@us.ibm.com, Ido Schimmel <idosch@mellanox.com>, allas@mellanox.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net 2/2] vxlan: Avoid infinite loop when
	suppressing NS messages with invalid options
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

When proxy mode is enabled the vxlan device might reply to Neighbor
Solicitation (NS) messages on behalf of remote hosts.

In case the NS message includes the "Source link-layer address" option
[1], the vxlan device will use the specified address as the link-layer
destination address in its reply.

To avoid an infinite loop, break out of the options parsing loop when
encountering an option with length zero and disregard the NS message.

This is consistent with the IPv6 ndisc code and RFC 4886 which states
that "Nodes MUST silently discard an ND packet that contains an option
with length zero" [2].

[1] https://tools.ietf.org/html/rfc4861#section-4.3
[2] https://tools.ietf.org/html/rfc4861#section-4.6

Fixes: 4b29dba9c085 ("vxlan: fix nonfunctional neigh_reduce()")
Signed-off-by: Ido Schimmel <idosch@mellanox.com>
---
 drivers/net/vxlan.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/vxlan.c b/drivers/net/vxlan.c
index a5b415fed11e..779e56c43d27 100644
--- a/drivers/net/vxlan.c
+++ b/drivers/net/vxlan.c
@@ -1924,6 +1924,10 @@ static struct sk_buff *vxlan_na_create(struct sk_buff *request,
 	ns_olen = request->len - skb_network_offset(request) -
 		sizeof(struct ipv6hdr) - sizeof(*ns);
 	for (i = 0; i < ns_olen-1; i += (ns->opt[i+1]<<3)) {
+		if (!ns->opt[i + 1]) {
+			kfree_skb(reply);
+			return NULL;
+		}
 		if (ns->opt[i] == ND_OPT_SOURCE_LL_ADDR) {
 			daddr = ns->opt + i + sizeof(struct nd_opt_hdr);
 			break;
-- 
2.26.2

