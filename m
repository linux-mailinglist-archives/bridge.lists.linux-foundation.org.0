Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D78B689FF5
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 18:07:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54D3140108;
	Fri,  3 Feb 2023 17:07:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54D3140108
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=FF9EwHkw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4bY5zVBdWd5p; Fri,  3 Feb 2023 17:07:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D0E5C4026F;
	Fri,  3 Feb 2023 17:07:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0E5C4026F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 74568C007C;
	Fri,  3 Feb 2023 17:07:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 512D8C002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 17:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9AE760C08
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 17:06:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9AE760C08
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=FF9EwHkw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CwnT7OhostmQ for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 17:06:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2523F60BF3
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2523F60BF3
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 17:06:58 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 292A65C039C;
 Fri,  3 Feb 2023 12:06:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Fri, 03 Feb 2023 12:06:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1675444017; x=1675530417; bh=VxXJxYIPXv5W1b2DuSTnG3h266yM
 n84BrwVZXf0OoBE=; b=FF9EwHkwa0Zr/2YgDkYkO260VoVYDFPfdSKIw0xooXry
 POePgsM/c0pJ4275GEWJCj5+R2viqbMMxLWnlJu7PBFfP+p7nqWnlkpI/JyIjgvM
 0BAsN2x3u8KEWhaQamirT/bZGqOUc9Nb+IqdFHay0v1VtPhb9WsAOFzZFHYpVPrm
 ufNgPrK42fo31lVBnNYqODjPWWfxPTXWmqxspIX5OMPa881YYqPx5SwBssMYh/dr
 XEWjfg+V220WXBlFZieLX5wZXmaOuVXePunwWkPm9XjwDVAEM7DaivKJcFH7ZjCG
 y4VHyCoLJu/hMY3gfpYyjmH6ADsgspjUeC/1GampaQ==
X-ME-Sender: <xms:Lz_dY9taAdul_ZgZWNaTYO-qEVnby_sHLAszHSg0iXBGR2nm7Akr7w>
 <xme:Lz_dY2eNDmvUzyk0GXNsDIfmdWhY95FcXjARRvNykL6YYoedPRXAttapptS5ODLlC
 VfQpnQEO-lSMNM>
X-ME-Received: <xmr:Lz_dYwwXkUzytces8t_usahexlD6gvX9QQ4Exhh44r92pdNEMguh4a6bHdllPQED2ZBGR9DaRftVgJgqv8E1k-0vx70>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudegtddgledvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhepvddufeevkeehueegfedtvdevfefgudeifeduieefgfelkeehgeelgeejjeeg
 gefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:Lz_dY0MEb-DwR57d-j_Gl-qLoBo2Z2kGUXLpxK3y3eZrGTywkU1aLQ>
 <xmx:Lz_dY9_GIJH5wlD0jcqqs9nty6r4MtnZ0z4h2c9ReT_7obPRqhxGrw>
 <xmx:Lz_dY0WjG3Y2VkkVQbZf0UXtx70DtwKKjWlkjI6FlsMJSQrXRk3YGg>
 <xmx:MT_dY5J8Liv0IRcIZMEe9Y35dJrpbgugWCoCx2bhz1ku66IpEUCVRg>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Feb 2023 12:06:54 -0500 (EST)
Date: Fri, 3 Feb 2023 19:06:51 +0200
From: Ido Schimmel <idosch@idosch.org>
To: netdev@kapio-technology.com
Message-ID: <Y90/K8BPHijxFZci@shredder>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-2-netdev@kapio-technology.com>
 <Y9qrAup9Xt/ZDEG0@shredder>
 <f27dd18d9d0b7ff8b693af8a58ea8616@kapio-technology.com>
 <Y9vgz4x/O+dIp+0/@shredder>
 <766efaf94fcb6362c5ceb176ad7955f1@kapio-technology.com>
 <Y90y9u+4PxWk4b9E@shredder>
 <4188a35c3c260d8ea2b5f8b2ac0ae6b2@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4188a35c3c260d8ea2b5f8b2ac0ae6b2@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/5] net: bridge: add dynamic flag to
 switchdev notifier
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

On Fri, Feb 03, 2023 at 05:27:43PM +0100, netdev@kapio-technology.com wrote:
> On 2023-02-03 17:14, Ido Schimmel wrote:
> > 
> > OK, so can't this hunk:
> > 
> > ```
> > 	if (fdb_info->is_dyn)
> > 		fdb_flags |= DSA_FDB_FLAG_DYNAMIC;
> > ```
> > 
> > Become:
> > 
> > ```
> > 	if (fdb_info->is_dyn && !fdb_info->added_by_user)
> > 		fdb_flags |= DSA_FDB_FLAG_DYNAMIC;
> > ```
> > 
> > ?
> > 
> > Then there is no need to fold 'added_by_user' into 'is_dyn' in the
> > bridge driver. I *think* this is the change Vladimir asked you to do.
> 
> I suppose you mean?:
>  	if (fdb_info->is_dyn && fdb_info->added_by_user)
>  		fdb_flags |= DSA_FDB_FLAG_DYNAMIC;

Yes
