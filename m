Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EED006882E9
	for <lists.bridge@lfdr.de>; Thu,  2 Feb 2023 16:43:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7987D611A8;
	Thu,  2 Feb 2023 15:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7987D611A8
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=m84jr8rK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nmx13e7i75bn; Thu,  2 Feb 2023 15:43:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2539D6119A;
	Thu,  2 Feb 2023 15:43:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2539D6119A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 630F8C0078;
	Thu,  2 Feb 2023 15:43:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 13B66C002B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 15:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBBEF41BE8
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 15:43:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBBEF41BE8
Authentication-Results: smtp4.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=m84jr8rK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9JAbuuJjl9Rt for <bridge@lists.linux-foundation.org>;
 Thu,  2 Feb 2023 15:43:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5294C41B87
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5294C41B87
 for <bridge@lists.linux-foundation.org>; Thu,  2 Feb 2023 15:43:35 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 31F625C01FA;
 Thu,  2 Feb 2023 10:43:34 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 02 Feb 2023 10:43:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1675352614; x=1675439014; bh=JOJYIxLhKlqXLrEBq+v5LlENJBXu
 /0YMWzvW35tuScA=; b=m84jr8rKQV77Hb2CmakvgDV89DA0ahqSC9yuKDL6rjip
 xqThy9a3EDhOe7S1QQXC/FOAlej+sJovhmyCI82ZlkzBXvfb0DKAvIr68wAA0zuT
 lqyMTRCZaPCOfHTJFCDXNq+/G9cOttfUr+M34Ty0V6qCPeARAsRXDJKD7PD7q3Xk
 bDVjhYjpnWTH21BRAtqa4cdgylS7bPRO/pN4REBryibmmeJPZ2Iq582Uhh7z7CfY
 fyUxmXAqFRMj1pvmgaqi9YeXpMOq37zQo5tPy8GaWLs1MEJzdEHMQNJwQb9AYrD9
 ROk/hoKvpk8yF52jkKzvAcLYB4qy1Dhjww3ZrMOMiQ==
X-ME-Sender: <xms:JNrbY1-2B1Jauxz6iGZOPDh_1tGT9yVQ3s2KgkXEtW7DfSfyC0VFmQ>
 <xme:JNrbY5scrKQaLiVv6D_8mJ-I0mWRjpVWOhkdQc5EASB60nIhDMa94q7nVjeru589L
 jFQmbNEyJ8h7dU>
X-ME-Received: <xmr:JNrbYzDIP3-XVCr5kihSOShCyU8ZyFodH-b1PUggVtVh_4JqYg4yMMLfc9lieothdALuf4dLCXL1_DrwOvKehccUe3U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudefkedgjeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhepjeekleettddtgfeuvdffieffudegffetgedtteffvefgjeejvefhffehtddv
 ueevnecuffhomhgrihhnpehpohhrthdrshhhnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:JNrbY5fIJu3RkR1-Z8e79Q7xoV9OaVLUEUwi_b44d8SeRnfvpVNsDQ>
 <xmx:JNrbY6PWMusIRYARBSAajbLYQHtybAPmv1lHbV96nnrHdqKmyi-jIA>
 <xmx:JNrbY7lxpopmegWbvsco-sGcH3kOUGGaYqwM6UDLv-IsjOW8EqaH7w>
 <xmx:JtrbY_YdzL_72r4z2IEfXcoob5oPx8XHspmkBS7hMc9LAV-bALXVpg>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 2 Feb 2023 10:43:31 -0500 (EST)
Date: Thu, 2 Feb 2023 17:43:28 +0200
From: Ido Schimmel <idosch@idosch.org>
To: netdev@kapio-technology.com
Message-ID: <Y9vaIOefIf/gI0BR@shredder>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <Y9lrIWMnWLqGreZL@shredder>
 <e2535b002be9044958ab0003d8bd6966@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e2535b002be9044958ab0003d8bd6966@kapio-technology.com>
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
Subject: Re: [Bridge] [PATCH net-next 0/5] ATU and FDB synchronization on
	locked ports
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

On Thu, Feb 02, 2023 at 08:37:08AM +0100, netdev@kapio-technology.com wrote:
> On 2023-01-31 20:25, Ido Schimmel wrote:
> > 
> > Will try to review tomorrow, but it looks like this set is missing
> > selftests. What about extending bridge_locked_port.sh?
> 
> I knew you would take this up. :-)
> But I am not sure that it's so easy to have selftests here as it is timing
> based and it would take the 5+ minutes just waiting to test in the stadard
> case, and there is opnly support for mv88e6xxx driver with this patch set.

The ageing time is configurable: See commit 081197591769 ("selftests:
net: bridge: Parameterize ageing timeout"). Please add test cases in the
next version.
