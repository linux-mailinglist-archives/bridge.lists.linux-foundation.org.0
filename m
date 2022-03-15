Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CF24D99D0
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 12:00:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E85460F8D;
	Tue, 15 Mar 2022 11:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ucngmCzpOMjM; Tue, 15 Mar 2022 11:00:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 01071607EC;
	Tue, 15 Mar 2022 11:00:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B4A0C0033;
	Tue, 15 Mar 2022 11:00:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 88422C000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 11:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5ED1D41673
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 11:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e4gRnzBcOThr for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 11:00:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C088041635
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 11:00:22 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id D99753201F82;
 Tue, 15 Mar 2022 07:00:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 15 Mar 2022 07:00:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; bh=NExbxl+i2kuO3Pvzdgbe/Iig/umuCg0Aqp3WMWOTS
 DA=; b=bASI2gJC467wslZAh/G66t63jB1zY0shNB3Wuma/AJ/qKyNks5ywiEv9L
 TjeFFh+XXl3Xba8pswlacUlwKsgv6XjO4tuUavk/8KW8tuiClxHPA2BzZajqfTYu
 I/uZjMvH74mB/42xUXfqjI554e/RudCwZgpyiDh8kDwbjypE18L2y6YKTQmqJzjL
 7mTcc53No0wnYWnN+33WTsR38tuTr69ke7QiYaGaF7iFoR6rqY7RJTwLnaMFAzEU
 wbls6j+7Dt8oirYqY1Dbh6XhryFblkYZRiWcbtVCbeyEXYZsCO5bDI/c5Hr0/QTQ
 zcvbWWTTfSjlrGpd4XCbuUKtKKfRg==
X-ME-Sender: <xms:wHEwYhgcubcKtlyOpo7K_B0uun3VxRqKxmlunBgvA68gC2moawlKPA>
 <xme:wHEwYmCiJIf315nEu7BpADDUVukfgf_NxMFYJRaqsvYGZT5EGvJkD-puNcBQY19W0
 h0lFb_6ICuEujc>
X-ME-Received: <xmr:wHEwYhG7W1ysFc7OfnA3ifivYxnV0YXZaUQMzYoqYvFWRtgU72_pi8NKZHK3p-KHPQaLThhl3M1-tCNJYVScMOWXhDs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeftddgvdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtugfgjgesthekredttddtudenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhepvdffveekfeeiieeuieetudefkeevkeeuhfeuieduudetkeegleefvdegheej
 hefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:wHEwYmRYrzN_v3mGacJ4vuIAqMZVJ9Ssevhx1O329QV0o1bOlTijUQ>
 <xmx:wHEwYuw-hvty131IEgbXViDinbwbv6yqrqT6ZCBYi20V2w4V7oFboA>
 <xmx:wHEwYs5uJ987OkhhWOdCaxr-GgSNX_HwXgSsI1sjBCprMFf2yRMhXQ>
 <xmx:wnEwYigrT9dPwh32_Vq4kNc4l-3wK6s2gVqtjVJsaGGjywalncunYw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 15 Mar 2022 07:00:15 -0400 (EDT)
Date: Tue, 15 Mar 2022 13:00:12 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <YjBxvM+rYSMP8UNy@shredder>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-2-schultz.hans+netdev@gmail.com>
 <Yi9fqkQ9wH3Duqhg@shredder> <86h77zha8b.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <86h77zha8b.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/3] net: bridge: add fdb flag to
 extent locked port feature
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

On Tue, Mar 15, 2022 at 09:48:52AM +0100, Hans Schultz wrote:
> On mån, mar 14, 2022 at 17:30, Ido Schimmel <idosch@idosch.org> wrote:
> > On Thu, Mar 10, 2022 at 03:23:18PM +0100, Hans Schultz wrote:
> >> @@ -94,8 +95,16 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
> >>  			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
> >>  
> >>  		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
> >> -		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
> >> +		    test_bit(BR_FDB_LOCAL, &fdb_src->flags)) {
> >> +			if (!fdb_src) {
> >> +				set_bit(BR_FDB_ENTRY_LOCKED, &flags);
> >
> > This flag is read-only for user space, right? That is, the kernel needs
> > to reject it during netlink policy validation.
> >
> 
> Yes, the flag is only readable from user space, unless there is a wish
> to change that.

OK, so please spell it out in the commit message so that it is clear the
flag can only be set by the kernel.
