Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C5B7A9437
	for <lists.bridge@lfdr.de>; Thu, 21 Sep 2023 14:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DBCB40AB1;
	Thu, 21 Sep 2023 12:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DBCB40AB1
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=NNL8lLZ+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r54ncUCaYVM5; Thu, 21 Sep 2023 12:20:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0B22E409D7;
	Thu, 21 Sep 2023 12:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B22E409D7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A752AC0DD3;
	Thu, 21 Sep 2023 12:20:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 25425C0032
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 12:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2D384182C
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 12:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2D384182C
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=NNL8lLZ+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GswJ0KAzU0Vl for <bridge@lists.linux-foundation.org>;
 Thu, 21 Sep 2023 12:20:53 +0000 (UTC)
X-Greylist: delayed 451 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 21 Sep 2023 12:20:53 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8597E4177A
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8597E4177A
 for <bridge@lists.linux-foundation.org>; Thu, 21 Sep 2023 12:20:53 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id A363832009CF;
 Thu, 21 Sep 2023 08:13:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 21 Sep 2023 08:13:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1695298398; x=1695384798; bh=qL6/VmfuEG0N5
 xc6Mz2PvEm3VWqhSA+Pyx12f0FNgWU=; b=NNL8lLZ+nJLyfc6TshaXc4SDbglQp
 a5ODaObdGtjszpBwKJ0Noyh3s/ouKVzOk3ISKCOGJ3XNBvbqe5AeN/048pZRLjiv
 iBeXMcn5Gi7b6wms38bJmdhePlZtGCQ+5HjCoS3OQvYf2yjeN0DWol9H/ihvIlDs
 B1BHuUigB92bXlPuGOFtLqzAKW3g4AEQYixtrwoJIEpt6B7/FO+9wvNzOBG2L5hx
 sswKQwV9JYGbLdkR2oUkpP+YqpSyQzc6UG1sXviI8XOuUUXYG6ogPgML+mfJlpO0
 qq9W6KkzK9vIs9UL/dRRcEqKyy6fVp8LwO6Gcl48X8QEQG6hrxKy0BQMA==
X-ME-Sender: <xms:XTMMZU558zdbFxDVrw_Ze1QeomT43lgk6oMhblaUrxvWoyO7G_QfMw>
 <xme:XTMMZV7WhFGkfhy9cDBfZoImR4-U9VV7Mi4kFtDuSncH_98CDVb_P4hub8H-HR-yc
 OBI4cjlhYaZV1Y>
X-ME-Received: <xmr:XTMMZTcSMCggTH-WN0omJfhlEc3mEWy01SQXRyhqoBeTbUYjI0E6aEzV7OtjGHYb_W0usouEZjkh-1JGP-0H5cRPMxaSrA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudekiedggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtrodttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhepfeefueegheehleelgeehjefgieeltdeuteekkeefheejudffleefgfeludeh
 hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:XTMMZZKXbA6vPaFCLmzHouZnZ4RYukMibMg83PSsC7kY1pdEfS-2sA>
 <xmx:XTMMZYJ5RUdkPQnNAdANDWlG2JlM3L6gEl3iA6nHkf9F4yaJLjFrgw>
 <xmx:XTMMZawkfgR8HELWgXaCFL5B3mVVXvyaTzTDKMBF4Vk_o0qllOJ0lw>
 <xmx:XjMMZV5p-3tjzZoiv3kOV5hCZK4mJttyW-Lf9t0syPcIwKPKyijm1A>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Sep 2023 08:13:16 -0400 (EDT)
Date: Thu, 21 Sep 2023 15:13:12 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Message-ID: <ZQwzWINOPagvLgbS@shredder>
References: <20230919-fdb_limit-v4-0-39f0293807b8@avm.de>
 <20230919-fdb_limit-v4-1-39f0293807b8@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919-fdb_limit-v4-1-39f0293807b8@avm.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v4 1/6] net: bridge: Set
 BR_FDB_ADDED_BY_USER early in fdb_add_entry
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

On Tue, Sep 19, 2023 at 10:12:48AM +0200, Johannes Nixdorf wrote:
> In preparation of the following fdb limit for dynamically learned entries,
> allow fdb_create to detect that the entry was added by the user. This
> way it can skip applying the limit in this case.
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>

Reviewed-by: Ido Schimmel <idosch@nvidia.com>
