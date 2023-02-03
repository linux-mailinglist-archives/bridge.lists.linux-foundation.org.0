Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BF6689EF5
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 17:15:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77CEF821FB;
	Fri,  3 Feb 2023 16:15:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77CEF821FB
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=fpwVXDIw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njVJlUXdM4eS; Fri,  3 Feb 2023 16:15:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 64FC5821B5;
	Fri,  3 Feb 2023 16:15:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64FC5821B5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5EE3C007C;
	Fri,  3 Feb 2023 16:15:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7F000C002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 16:15:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E4EA415B0
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 16:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E4EA415B0
Authentication-Results: smtp2.osuosl.org; dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=fpwVXDIw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Gvox7M2O8kt for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 16:14:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 896D8402BC
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 896D8402BC
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 16:14:59 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id C8DDE5C0109;
 Fri,  3 Feb 2023 11:14:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Fri, 03 Feb 2023 11:14:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1675440893; x=1675527293; bh=ZsTfWTfG+sKlRejLobl9gKT+7jxs
 vBf1Pr6YqiH/tfc=; b=fpwVXDIw98vLEX4I2DHTFp1G2HYcxx39hLDAmQtzN3ej
 rM4DwBU7iCWaWBA56FL5KJiPqoSa2aKno4iZTyJEtpIlVpN2EQREF6y5bK7KLds3
 p+vw/kvvtH7VTMIV/EPGtNIDiRmcCW7NnRUliQcNZPIxDdEC3RNnsVH8K08hpGlT
 3uy9234605kg27fNMWtfgPZmo9+3cN6Rjtg5fBvNvVpiDm9lSmtz1E9Qbo3yXRGW
 shHNi1kLjWQr5RgxuQHzZBtu7f1uEVGhrQ+2AmB0UCfTo2sPjxBf4jpJ1VOemO8x
 X1h+myMj/y9VmgCW+mczgf1jAAsFCk6nh13/y8dyZw==
X-ME-Sender: <xms:_DLdYzu7X6oVmRfm3q90esmij_lttZP9-kqc74YnrC6vFCWk2a-Y7Q>
 <xme:_DLdY0fWU5m6e2R2npEvbQQSwloV1CYUaPViAgc0XYBvy7LUKRTOgjAf2-i873vYm
 eqHln_quXBBfvQ>
X-ME-Received: <xmr:_DLdY2xeCq609omG-m6DlStWSL-RrikRtKOd4bN_GLO3VdADDVl7aM-AmZtFOvvEibCiOz9sDcj1TMmebxXs65MY2zo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudegtddgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhephefhtdejvdeiffefudduvdffgeetieeigeeugfduffdvffdtfeehieejtdfh
 jeeknecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:_DLdYyOosmO3_ufDbHOtNTbmGiHwZWPDwn3ixU4kuoGRx4yd-Rg-gA>
 <xmx:_DLdYz_NqIypcR8Ze3yUQ0loUTLyTtMoMtAgcZcNkPQTRspogLLarg>
 <xmx:_DLdYyWaQOWe0MAzlK-Rp3NVvL38OX5ooM5tHtlkyyHszhCp932ozg>
 <xmx:_TLdY_IJkxBTC5LxI1faRSzYKzdNsc0OITEhUSgU1w3O0JuGHd0sWA>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Feb 2023 11:14:51 -0500 (EST)
Date: Fri, 3 Feb 2023 18:14:46 +0200
From: Ido Schimmel <idosch@idosch.org>
To: netdev@kapio-technology.com
Message-ID: <Y90y9u+4PxWk4b9E@shredder>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-2-netdev@kapio-technology.com>
 <Y9qrAup9Xt/ZDEG0@shredder>
 <f27dd18d9d0b7ff8b693af8a58ea8616@kapio-technology.com>
 <Y9vgz4x/O+dIp+0/@shredder>
 <766efaf94fcb6362c5ceb176ad7955f1@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <766efaf94fcb6362c5ceb176ad7955f1@kapio-technology.com>
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

On Thu, Feb 02, 2023 at 05:38:06PM +0100, netdev@kapio-technology.com wrote:
> On the first question please look here:
> https://lore.kernel.org/netdev/20230119134045.fqdt6zrna5x3iavt@skbuf/

It seems Vladimir also wants the new field to be named 'is_static'
instead of 'is_dyn'. In your reason you mention
'SWITCHDEV_FDB_ADD_TO_BRIDGE', but this is not the interesting case for
the field. This event is used for devices to notify the bridge on new
learned entries. The bridge marks them as "extern_learn" which means
that "dynamic" / "static" flags are irrelevant.

The interesting case for the new field is the bridge to device direction
('SWITCHDEV_FDB_ADD_TO_DEVICE'). Drivers need to be patched to take the
new field into account when deciding the policy to program the entry
with. They can do it just as well if you name the new field 'is_static'
instead of 'is_dyn'.

> On the second question it is what Oltean pointed out to me here...
> https://lore.kernel.org/netdev/20230118230135.szu6a7kvt2mjb3i5@skbuf/
> 
> Oltean says there:
> "This is not true, because it assumes that DSA never called port_fdb_add()
> up until now for bridge FDB entries with the BR_FDB_STATIC flag unset,
> which is incorrect (it did)."
> 
> Though as I see it, if it is only from the DSA layer on, the new is_dynamic
> flag would not be set anyway in the case he references. And as can be seen
> the change is in the bridge layer, as the rest is just propagating the flag,
> but it ensures that to set this flag that it comes from the user adding an
> FDB entry.

OK, so can't this hunk:

```
	if (fdb_info->is_dyn)
		fdb_flags |= DSA_FDB_FLAG_DYNAMIC;
```

Become:

```
	if (fdb_info->is_dyn && !fdb_info->added_by_user)
		fdb_flags |= DSA_FDB_FLAG_DYNAMIC;
```

?

Then there is no need to fold 'added_by_user' into 'is_dyn' in the
bridge driver. I *think* this is the change Vladimir asked you to do.
