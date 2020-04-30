Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49ACC1C00F2
	for <lists.bridge@lfdr.de>; Thu, 30 Apr 2020 17:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED384886A5;
	Thu, 30 Apr 2020 15:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0BgQCY4R6aY6; Thu, 30 Apr 2020 15:57:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BDA088706;
	Thu, 30 Apr 2020 15:57:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 60BDBC088F;
	Thu, 30 Apr 2020 15:57:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D8C54C016F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C6B6987EEB
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HdG-z6jJfrXF for <bridge@lists.linux-foundation.org>;
 Thu, 30 Apr 2020 15:57:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4EC7B87EE0
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:57:50 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 5B53D87C;
 Thu, 30 Apr 2020 11:57:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 30 Apr 2020 11:57:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=KALLKX
 Jw6PszKdVDnPzpoMAy7qra0xYV8ojuu9kkgbI=; b=N4d11yXAmmw2n6ezNfUyi8
 fHk7K3XhR3++GmTjzuFaYiAyshzuP4wE58SjPOm+md0qQZT7KrNGdXDQY+VZrY1z
 ZO17h985WLQJ6dAr5zrAx0c2KoyV0pGuvKTz2pFrbrJzOM1ZPGkV2642yG0Wsv67
 VqO85RqvD0t15Ep5FC7QbqMTd+BqdRDGerruvXswuct30Z6Bah/SAgRMK/PKLW4h
 Z5aCqcO8kGm4hsfBr+CUG0pZQJHh1S0R0z3H7EI6jMTFsnh17xGs6kwTjMIOpH4e
 xJm1za4/4UAHuJUfztp+IbQDez8eRiiZLaggwxbNi2H+kMnRRP+mUCeAc3iLxSHw
 ==
X-ME-Sender: <xms:fPWqXiDsm6-e8HSXE0_JMuIcBICNOppP-zY3kGZJDfD0M0fCl6yVug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieehgdelgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necukfhppeejledrudektddrheegrdduudeinecuvehluhhsthgvrhfuihiivgepudenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:fPWqXt7gIqvP6x4_B4bFRHppMhRRfBw8gifbI5TL34PTSH8kFamHhg>
 <xmx:fPWqXu3xP6BBW53ZOTb_in8bVLhUVvd1TYLv18tZiZU1nqGvNDCfrg>
 <xmx:fPWqXpCmBz-Q0coOzlKck1SjVubsuf-WGEYbAsGLn7IlU_LAVY7Ymg>
 <xmx:ffWqXuUHxVv76s6fi_2lMDNK4TrbcjSRNAWB2pJzTHzBDlLb-L_O8w>
Received: from localhost (bzq-79-180-54-116.red.bezeqint.net [79.180.54.116])
 by mail.messagingengine.com (Postfix) with ESMTPA id C6F353065F2E;
 Thu, 30 Apr 2020 11:57:47 -0400 (EDT)
Date: Thu, 30 Apr 2020 18:57:44 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
Message-ID: <20200430155744.GB4076599@splinter>
References: <85b1e301-8189-540b-b4bf-d0902e74becc@profihost.ag>
 <20200430105551.GA4068275@splinter>
 <8be48925-4e09-fe9c-6d8c-8675ede5fce7@profihost.ag>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8be48925-4e09-fe9c-6d8c-8675ede5fce7@profihost.ag>
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

On Thu, Apr 30, 2020 at 03:18:18PM +0200, Stefan Priebe - Profihost AG wrote:
> Great! This indeed solves the problem.

Thanks for reporting and testing!
