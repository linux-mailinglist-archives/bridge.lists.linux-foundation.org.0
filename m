Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48D51BF60C
	for <lists.bridge@lfdr.de>; Thu, 30 Apr 2020 13:02:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 64CFD820B2;
	Thu, 30 Apr 2020 11:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oECb3+06rn-9; Thu, 30 Apr 2020 11:02:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2ED31885C7;
	Thu, 30 Apr 2020 11:02:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 10576C016F;
	Thu, 30 Apr 2020 11:02:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 757BFC016F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 11:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70391885E3
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 11:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id su7hZMj4ed9s for <bridge@lists.linux-foundation.org>;
 Thu, 30 Apr 2020 11:02:38 +0000 (UTC)
X-Greylist: delayed 00:06:41 by SQLgrey-1.7.6
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EF9F4885C7
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 11:02:37 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id B8D2992F;
 Thu, 30 Apr 2020 06:55:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 30 Apr 2020 06:55:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=E0tSeJ
 Qs4F49nhcw9h7Mq+DKRjdkwObVDd0dqiIADY4=; b=R+TgxK9IVLXPfsFxwzjCn3
 pKROOzjEmF5C3sDu2C6mFoczn8Xw7i2LK3qILvRrY6V7/xjJifh9gf/kAwR+HiIK
 RaI1i6G/HOddiYK0L+ESRamP88qXgDePICiPyx/sM0rgxW72d9mRZHxl2j0QA5i+
 B+QngtHzhw3co11KaZ0KOe2n0kzGtyBsOW7X4XXVLY2mv+lTp/+BeZGcCtWq2Qz+
 J1XzGdPFraGjB+5tIU/GsimbkMt50kxTxMaWNrpGobdDO9OvAsr2l9NJy5SREL8e
 +POuOWARPQrv4yYxNHjVHLeen3yILL8IjLSFWVocjHS6ihiMyBWmy0CFDTKDvXfA
 ==
X-ME-Sender: <xms:ua6qXruVq4mj3Dpb77jFPJ2JdOMwEvNVRFvw8T7YQBTc2UYqbPv78Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieehgdefgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necukfhppeejledrudektddrheegrdduudeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:uq6qXn50KsPxK9ng7IOjp6mYoBW7SVXrWgCCQ1TkqY3VOLIzoV17DQ>
 <xmx:uq6qXiVjfba8LpGEAg3AcBmVVUzrg5a2lsH5JxsZ6BJv6PIactHQ7Q>
 <xmx:uq6qXjOUmakUXpv5pG_WsxOduNEqqgr_E38SEJ7xl6_r7VarnXUTCg>
 <xmx:uq6qXuFvhzck0CbTtboVopAPOgGQWKrlzPI2Oc6ffrp1P0kQ0frslg>
Received: from localhost (bzq-79-180-54-116.red.bezeqint.net [79.180.54.116])
 by mail.messagingengine.com (Postfix) with ESMTPA id 97EDF3280064;
 Thu, 30 Apr 2020 06:55:53 -0400 (EDT)
Date: Thu, 30 Apr 2020 13:55:51 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
Message-ID: <20200430105551.GA4068275@splinter>
References: <85b1e301-8189-540b-b4bf-d0902e74becc@profihost.ag>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85b1e301-8189-540b-b4bf-d0902e74becc@profihost.ag>
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 davem@davemloft.net
Subject: Re: [Bridge] BUG: soft lockup while deleting tap interface from
 vlan aware bridge
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

On Wed, Apr 29, 2020 at 10:52:35PM +0200, Stefan Priebe - Profihost AG wrote:
> Hello,
> 
> while running a stable vanilla kernel 4.19.115 i'm reproducably get this
> one:
> 
> watchdog: BUG: soft lockup - CPU#38 stuck for 22s! [bridge:3570653]
> 
> ...
> 
> Call
> Trace:nbp_vlan_delete+0x59/0xa0br_vlan_info+0x66/0xd0br_afspec+0x18c/0x1d0br_dellink+0x74/0xd0rtnl_bridge_dellink+0x110/0x220rtnetlink_rcv_msg+0x283/0x360

Nik, Stefan,

My theory is that 4K VLANs are deleted in a batch and preemption is
disabled (please confirm). For each VLAN the kernel needs to go over the
entire FDB and delete affected entries. If the FDB is very large or the
FDB lock is contended this can cause the kernel to loop for more than 20
seconds without calling schedule().

To reproduce I added mdelay(100) in br_fdb_delete_by_port() and ran
this:

ip link add name br10 up type bridge vlan_filtering 1
ip link add name dummy10 up type dummy
ip link set dev dummy10 master br10
bridge vlan add vid 1-4094 dev dummy10 master
bridge vlan del vid 1-4094 dev dummy10 master

Got a similar trace to Stefan's. Seems to be fixed by attached:

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index a774e19c41bb..240e260e3461 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -615,6 +615,7 @@ int br_process_vlan_info(struct net_bridge *br,
                                               v - 1, rtm_cmd);
                                v_change_start = 0;
                        }
+                       cond_resched();
                }
                /* v_change_start is set only if the last/whole range changed */
                if (v_change_start)

WDYT?
