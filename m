Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3933CFA6E
	for <lists.bridge@lfdr.de>; Tue, 20 Jul 2021 15:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2251606C6;
	Tue, 20 Jul 2021 13:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWE7z_GjfI4O; Tue, 20 Jul 2021 13:20:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1FEDF60597;
	Tue, 20 Jul 2021 13:20:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E945BC0022;
	Tue, 20 Jul 2021 13:20:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6C9F2C000E
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 13:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C942402AB
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 13:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MW6NOeFfqWOv for <bridge@lists.linux-foundation.org>;
 Tue, 20 Jul 2021 13:20:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CFFE4029A
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 13:20:30 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id k27so28425140edk.9
 for <bridge@lists.linux-foundation.org>; Tue, 20 Jul 2021 06:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WWdVTBpkXpCkzjS8MZKauwExseyl+0vHSz3Ttw3XI78=;
 b=HYqB/RtMKvhnSct/pRiblvvLVjNZundUrBFnyuEgaqprWGrqqEoaAyCUhIu6gT6DFN
 g066L/ReLq/bpE1Sp+/+vJyKGz9k6Ey4aBsIqtrXgr2n/Y5gYPFfpQ/3DuLKNsU/5Q8O
 woN9aYsDvZ7p/3AlA0QL3FYYDgZZPxQgiVFpe1n9w+edX2hxAu7JXKRP5eDatqVca/18
 hQSlUSBJ/ZOAn3KvZziH+TSaUKyO7ob7BIYL0ye1lcaZiG0Tj2d+I3Nqg6zaBNz5LM8S
 YIuqpY/x9bBG9o8q80PfQs3pDnwVJ0Q79L6rrDj3gKHaTxoEeWJYfdre66l+IH4My6/X
 dQbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WWdVTBpkXpCkzjS8MZKauwExseyl+0vHSz3Ttw3XI78=;
 b=SKjMYcoqlZDqEDrpTB1MP9NYSeshSbukmN5MGWGmDmHkL4KBJEcWTBBf2ypZeQQ35A
 FCiNftc182W2ILjnxTwGeemzlCpCFOYt1DnRwnGxdzacYVgl/08XXcqg79mhhgePfx7o
 jouDB/sGXbWU7NqPNEYpb8MZysu7YEYpGhoYTZj8EVgtxceEazTlH7i/yQGSv+bobvb2
 5BuERrYEuyLhITxQkBL8sCWkAIA9XSOSfeJD8CfQZdxPK53M4KkI1A7tSd74/8AWNAvx
 /2+P6k79jya2uh33b49qh7LuE4iTNKZCt5xN8rPmI2/S+CY34oiWXWosNmmsWvAF83N+
 sy2Q==
X-Gm-Message-State: AOAM532AIvtrGCRXYAgqXfx5BtcE68G+v6uUwxaH6jgaP2HtmNDO+UqY
 NN11TThA9umYPzoH2nQFmqI=
X-Google-Smtp-Source: ABdhPJy+XOIjH8dtsdCwlCAmwzymls1jFP54AZlkacuUWgCeVdswHRm5d79Rv2foaExkTBmz0jKyag==
X-Received: by 2002:a50:d982:: with SMTP id w2mr16990375edj.338.1626787228538; 
 Tue, 20 Jul 2021 06:20:28 -0700 (PDT)
Received: from skbuf ([82.76.66.29])
 by smtp.gmail.com with ESMTPSA id d13sm9269602edt.31.2021.07.20.06.20.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 06:20:28 -0700 (PDT)
Date: Tue, 20 Jul 2021 16:20:26 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210720132026.mpk3iq3z6vmmzxyd@skbuf>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <YPaybQZE8l6mRE2l@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YPaybQZE8l6mRE2l@shredder>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Marek Behun <kabel@blackhole.sk>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 00/15] Allow forwarding for the
 software bridge data path to be offloaded to capable devices
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

On Tue, Jul 20, 2021 at 02:24:29PM +0300, Ido Schimmel wrote:
> Too many things are squashed into this one patchset. It needs to be
> split.
>
> The TX forwarding offload in mv88e6xxx is not related to the replay
> stuff and should be added in a separate patchset. This can be done by
> first adding the switchdev_bridge_port_offload() /
> switchdev_bridge_port_unoffload() APIs that only take care of setting /
> unsetting the hardware domain for the bridge port. Then, in a different
> patchset, these APIs can be augmented with a parameter for the replay
> stuff. It should be easier to review that way and require less
> unnecessary surgeries in drivers that do not require the added
> functionality.

Fair point. I will submit patches 1-10 and 11-15 separately.

> According to the title, the patchset is focused on improving
> performance, but there are no performance numbers that I could see and
> most of the patches deal with the replay stuff instead.

Maybe, but the truth is that it is not really the performance
improvement that I care about. The performance quote is from Tobias'
original cover letter, which I took as-is. I can build a synthetic test
for multicasting on 10 mv88e6xxx ports or something like that, or maybe
Tobias can provide a more relevant example out of Westermo's use cases.
But it would be silly if this patchset's acceptance would depend on the
numbers. This is one of those cases where completely different interests
led me and Tobias to the the same solution.

I don't want to bore you to death with details, but for some switches
(DSA or otherwise), being able to send bridge packets as they are (data
plane packets) instead of what they aren't (control plane packets) is a
matter of functionality and not performance. Such switches only use
control plane packets for link-local packet traps, and sending/receiving
a control packet is expensive.

For this class of switches (some may call them "dumb", but whatever),
this patch series makes the difference between supporting and not
supporting local IP termination through a VLAN-aware bridge, bridging
with a foreign interface, bridging with software upper interfaces like
LAG, etc.
