Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1706683678
	for <lists.bridge@lfdr.de>; Tue, 31 Jan 2023 20:25:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D8484183A;
	Tue, 31 Jan 2023 19:25:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D8484183A
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=pvAHIV0e
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QOZKrBlZSp48; Tue, 31 Jan 2023 19:25:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2CA8E4185F;
	Tue, 31 Jan 2023 19:25:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CA8E4185F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E847C0078;
	Tue, 31 Jan 2023 19:25:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BEE9C002B
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 19:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F334660D71
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 19:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F334660D71
Authentication-Results: smtp3.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=pvAHIV0e
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JJ4omNiax071 for <bridge@lists.linux-foundation.org>;
 Tue, 31 Jan 2023 19:25:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0695860D6C
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0695860D6C
 for <bridge@lists.linux-foundation.org>; Tue, 31 Jan 2023 19:25:32 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 1AEC75C00FB;
 Tue, 31 Jan 2023 14:25:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Tue, 31 Jan 2023 14:25:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1675193129; x=1675279529; bh=STVqW/t1lXxI625WVmdd6J2DgvpW
 tytdItQfHKSXdqQ=; b=pvAHIV0eM4+QKb+ejy+48wcuW96qZLg2LoWcO+Sf7Lxg
 VZJoYSj82GhuCyozzLD3KFXWvHH40MBt/bexAGwdIa1LJMHTELW4cOg5ZnmocBi8
 3cwzJE2SUtQGCpVwade+fsQHhXDgnzkG+Qda6Rvx5LViZXs2fDZ6po75kbTeZ2UE
 yhLV1AaFpX6Qc/SGWfw9rlnaByzqqgIRlLlVrYLrmCQfVhtGFQ/H5fjr1Z82BnNX
 TotUIg0IysmBL8f1+ecvs++8qjZbuEqTGxc7re/XUExAz3oGsfgg74wDzLhTSx/o
 CIl94gUrzR4CTdz5AOShMN0Fy9bpSlcwqGo8mkAqwQ==
X-ME-Sender: <xms:J2vZY-fgvGVd1numoJYdraHNiA44MyNZBd8XssFWUa9aPug7QZBIRQ>
 <xme:J2vZY4NoZfIQ5go5atuid8fEO7Kq_1TmYtjPgJ3NsbZhS50ck6Y654RrTixzDr5m6
 a55mB7epka2JwA>
X-ME-Received: <xmr:J2vZY_iJNzvx_cUkPjWHd0uzN1u4qnf5XJapsBpvTs22935ll2-_SVV0TLnVLIZctn2MmonKVR752X2hU9UW7TOxwbetMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudefgedguddvhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkugho
 ucfutghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrg
 htthgvrhhnpeejkeeltedttdfguedvffeiffdugeffteegtdetffevgfejjeevhfffhedt
 vdeuveenucffohhmrghinhepphhorhhtrdhshhenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:J2vZY7_6HaIavvpYkeGgiDV1mJuRd2zwV7dCB5cUR40BkovErSn7uQ>
 <xmx:J2vZY6shY_zfbnl_HDx7b6zJDOyICFeoQXgWImGGHrZFRgajAQSZZg>
 <xmx:J2vZYyGU_1pOXteqlFTnZM_Gn137-3bCWCjn10yv2CaQ2EOnMa6ndg>
 <xmx:KWvZYz74eQeBPwTWSbSfgzMWB0OZ4LzXoZdSbTgnAUoxhco6R5pLHg>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 31 Jan 2023 14:25:26 -0500 (EST)
Date: Tue, 31 Jan 2023 21:25:21 +0200
From: Ido Schimmel <idosch@idosch.org>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <Y9lrIWMnWLqGreZL@shredder>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130173429.3577450-1-netdev@kapio-technology.com>
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

On Mon, Jan 30, 2023 at 06:34:24PM +0100, Hans J. Schultz wrote:
> This patch set makes it possible to have synchronized dynamic ATU and FDB
> entries on locked ports. As locked ports are not able to automatically
> learn, they depend on userspace added entries, where userspace can add
> static or dynamic entries. The lifetime of static entries are completely
> dependent on userspace intervention, and thus not of interest here. We
> are only concerned with dynamic entries, which can be added with a
> command like:
> 
> bridge fdb replace ADDR dev <DEV> master dynamic
> 
> We choose only to support this feature on locked ports, as it involves
> utilizing the CPU to handle ATU related switchcore events (typically
> interrupts) and thus can result in significant performance loss if
> exposed to heavy traffic.

Not sure I understand this reasoning. I was under the impression that
hostapd is installing dynamic entries instead of static ones since the
latter are not flushed when carrier is lost. Therefore, with static
entries it is possible to unplug a host (potentially plugging a
different one) and not lose authentication.

> 
> On locked ports it is important for userspace to know when an authorized
> station has become silent, hence not breaking the communication of a
> station that has been authorized based on the MAC-Authentication Bypass
> (MAB) scheme. Thus if the station keeps being active after authorization,
> it will continue to have an open port as long as it is active. Only after
> a silent period will it have to be reauthorized. As the ageing process in
> the ATU is dependent on incoming traffic to the switchcore port, it is
> necessary for the ATU to signal that an entry has aged out, so that the
> FDB can be updated at the correct time.

Why mention MAB at all? Don't you want user space to always use dynamic
entries to authenticate hosts regardless of 802.1X/MAB?

> 
> This patch set includes a solution for the Marvell mv88e6xxx driver, where
> for this driver we use the Hold-At-One feature so that an age-out
> violation interrupt occurs when a station has been silent for the
> system-set age time. The age out violation interrupt allows the switchcore
> driver to remove both the ATU and the FDB entry at the same time.
> 
> It is up to the maintainers of other switchcore drivers to implement the
> feature for their specific driver.
> 
> Hans J. Schultz (5):
>   net: bridge: add dynamic flag to switchdev notifier
>   net: dsa: propagate flags down towards drivers
>   drivers: net: dsa: add fdb entry flags incoming to switchcore drivers
>   net: bridge: ensure FDB offloaded flag is handled as needed
>   net: dsa: mv88e6xxx: implementation of dynamic ATU entries

Will try to review tomorrow, but it looks like this set is missing
selftests. What about extending bridge_locked_port.sh?
