Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEE04BCD74
	for <lists.bridge@lfdr.de>; Sun, 20 Feb 2022 10:19:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E6FB813D8;
	Sun, 20 Feb 2022 09:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sj-URe9W_nzm; Sun, 20 Feb 2022 09:19:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 73D2A813CE;
	Sun, 20 Feb 2022 09:19:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 42AD6C0073;
	Sun, 20 Feb 2022 09:19:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5CB24C0033
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A341812F4
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pi7KwTc2GIkr for <bridge@lists.linux-foundation.org>;
 Sun, 20 Feb 2022 09:19:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C5E06812E7
 for <bridge@lists.linux-foundation.org>; Sun, 20 Feb 2022 09:19:14 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id EC1475805C1;
 Sun, 20 Feb 2022 04:19:13 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 20 Feb 2022 04:19:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Yvnr3v2tgrcuFJVW9
 1DwvZDH1eh06TJONAa+U9Dt9oM=; b=jYUR6Uwyn9IQKJVxk8c8PSCCe5ycjH2gF
 4BDpzfBCYkD0yJLcPaUPP1nq7ovA1nhkCehFsPz9EhUrqsDf5EqMTlW1VfxmR7H9
 OHG/6bG1RZdgxiKDz9o++kPAEySVeKDu+W9ZWVsQqiaLhG6utgiL8OuRrnFUX4H3
 MA7fRHcK2GMSRxQ2Kqkire8ff2/r3Ra14zK4NR7pfejyQmQv5L1g3p7Jwdrz5tCU
 wRc8zd3to8GQ1NRWEIyYVT2+8HNSYxnDG6SL8lFOt5bVTpr/Mxn3N0y+Rf3OXSym
 k8Pyg12rEK6wwMq32kNIMiRNkHuTQ2nEz1FqD2Nmqj85X9ZMzmkFg==
X-ME-Sender: <xms:kQcSYjJa9hNeobv9nVnAe7Bb-n0NCifhPBFHHJhHgEqdUAGQLopIZg>
 <xme:kQcSYnJv-570fkySvdnY8U4csCnYzEskCgE3Lh6ezFaTwn9uKJ-16G8G7T6Vc3dfh
 2CqVVx8V9eyafA>
X-ME-Received: <xmr:kQcSYrs3pyeqTwxEK-7uqDTdSRLmIHxpXZ3Kg_3Ldtf5Ldb7lz8ySfsVDc9EUWv5zDp58mGBKNzLD-fV5n4sLF_inJ0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrkeeggddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtrodttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnhepgfejvefhvdegiedukeetudevgeeujeefffeffeetkeekueeuheejudeltdejuedu
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:kQcSYsYojO1XbCMBPWUtNoOPFHktHZpQH3KDtU8rWYVb86CTSFMN1A>
 <xmx:kQcSYqYEG5inCOD_vbIw9wPGdipYWjuemIeiOsA8sdPgZocpb57TlQ>
 <xmx:kQcSYgC7nMfkRAk3lay31XG856K-TprBcQW2MgNfBVxm_pItuvFcVA>
 <xmx:kQcSYiNX7OoFwhouAusYJ2yfeL0rHCkO8D5PAIAvij6yduuzCpoBPQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 20 Feb 2022 04:19:12 -0500 (EST)
Date: Sun, 20 Feb 2022 11:19:10 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YhIHjprGjuRLsSRE@shredder>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
 <20220218155148.2329797-3-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220218155148.2329797-3-schultz.hans+netdev@gmail.com>
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Stephen Suryaputra <ssuryaextr@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v3 2/5] net: bridge: Add support for
 offloading of locked port flag
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

On Fri, Feb 18, 2022 at 04:51:45PM +0100, Hans Schultz wrote:
> Various switchcores support setting ports in locked mode, so that
> clients behind locked ports cannot send traffic through the port
> unless a fdb entry is added with the clients MAC address.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>
