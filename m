Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A325F2B93
	for <lists.bridge@lfdr.de>; Mon,  3 Oct 2022 10:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EC2F408CC;
	Mon,  3 Oct 2022 08:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EC2F408CC
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=mH/yyc34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6hVCXHPkkkxm; Mon,  3 Oct 2022 08:20:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 88CA240878;
	Mon,  3 Oct 2022 08:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88CA240878
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 14BEDC0078;
	Mon,  3 Oct 2022 08:20:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3102AC002D
 for <bridge@lists.linux-foundation.org>; Mon,  3 Oct 2022 08:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E03F8819F5
 for <bridge@lists.linux-foundation.org>; Mon,  3 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E03F8819F5
Authentication-Results: smtp1.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=mH/yyc34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ye9ojsEpthfV for <bridge@lists.linux-foundation.org>;
 Mon,  3 Oct 2022 08:20:53 +0000 (UTC)
X-Greylist: delayed 00:11:53 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7B0D819ED
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7B0D819ED
 for <bridge@lists.linux-foundation.org>; Mon,  3 Oct 2022 08:20:52 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id A14A232002F9;
 Mon,  3 Oct 2022 04:08:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 03 Oct 2022 04:08:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1664784534; x=1664870934; bh=aqoxBah/X4GiH9ZDPQqIa9iZT5FE
 /SnWRIkJ33v/MSg=; b=mH/yyc34ZlANnESS3QyuEXuqm3u4UBZ9kLJh2miT5S8x
 Bic1WTsWQFD4GURfAVcHFRCGEYmVOFe58keAeWKTjoCA0AAzBoWyG0HWDmkDXCPs
 cn+kdoaaWeflSeiDlX/F3yYwO2aWv0aGXw0JSlECZ/PRWLyHU7F7thAKNE4xXygr
 RYQtuZbbxOwxvlL4EKpzjMrxdVOnHjz0EcRH5eac/FW+oNcbDOLCKObCw84n6a+C
 HqtWNyJ47FGZJNTx6Ub0IvUER1VgQ10sphr/GXUeJZ9OmPsv2sks9i2Wq+ddjWQ5
 wXRDVJDVs0iAf/A5xh4d4lRp7k+/qta3R9Mh7z/IHQ==
X-ME-Sender: <xms:lJg6Y1vSeEYwvK6MIGOX3vh6XiFqj3M-q9pLmLaY-NBsbIcXmoi33w>
 <xme:lJg6Y-duSayW6YxnecQCxa0PUmCTPXMRxMCD0Wu6RiHqyxhUELQm1p4m82bLkkvVG
 Y9NT3RAWCqXLME>
X-ME-Received: <xmr:lJg6Y4waPNs1klgtzHnzPXIKCA7Q095K0QwAxT0JgYDzThEwOKCMCsvLrobH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeehlecutefuodetggdotefrodftvfcurf
 hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfutghh
 ihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtthgvrh
 hnpeehhfdtjedviefffeduuddvffegteeiieeguefgudffvdfftdefheeijedthfejkeen
 ucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:lJg6Y8OBZH4KG04QGKa2G0HYHpxo1AqcM--zbltB46Z2reRKjgjkww>
 <xmx:lJg6Y182aBOMx1a2uigUQ6xA3FLX8OIAOTq-RCKmkWJvgJ9uNl5lBQ>
 <xmx:lJg6Y8Ucs-ZVRe1GcHNU_nU_ubxIyP3Vvf6G6wBjqV9CnD146Dy7ng>
 <xmx:lpg6Y7iZmXp3osCCNVTlcrfJ9ueD79PMTZ5efZb3UeT8l3KgdbzMLQ>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 3 Oct 2022 04:08:51 -0400 (EDT)
Date: Mon, 3 Oct 2022 11:08:48 +0300
From: Ido Schimmel <idosch@idosch.org>
To: netdev@kapio-technology.com
Message-ID: <YzqYkOsTHNj8Y9da@shredder>
References: <20220929152137.167626-1-netdev@kapio-technology.com>
 <YzhV0hU9v7oQ+g+K@shredder>
 <29ab01c9b8e51a57fb83e4af6fa1193f@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <29ab01c9b8e51a57fb83e4af6fa1193f@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, linux-kselftest@vger.kernel.org,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Ido Schimmel <idosch@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Amit Cohen <amcohen@nvidia.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Schultz <schultz.hans@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yuwei Wang <wangyuweihx@gmail.com>,
 Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH iproute2-next 1/2] bridge: link: enable
 MacAuth/MAB feature
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

On Sun, Oct 02, 2022 at 05:20:31PM +0200, netdev@kapio-technology.com wrote:
> On 2022-10-01 16:59, Ido Schimmel wrote:
> > 
> > IIRC, in the past David asked to either not send the uAPI files or send
> > them as a first patch which he then uses as a hint to sync the files
> > himself.
> > 
> 
> Does that imply that I make a patch in the beginning for the include/uapi
> changes wrt the Locked flag and another in the same manner for the
> Blackhole, or just one patch for both of them as the very first patch?

One patch for both as the very first patch. Example:

https://lore.kernel.org/netdev/cover.1615985531.git.petrm@nvidia.com/
https://lore.kernel.org/netdev/ad9b63d5c76d9ef045dfed6dc9b5ab946e62e450.1615985531.git.petrm@nvidia.com/

The patch is obviously not needed if the uAPI files were already updated
by David.
