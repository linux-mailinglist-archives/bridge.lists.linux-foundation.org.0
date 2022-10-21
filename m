Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458B4606C67
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 02:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCE5A405E2;
	Fri, 21 Oct 2022 00:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCE5A405E2
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=hXy7QnVy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9wQOOfwMw7Xr; Fri, 21 Oct 2022 00:11:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 61D014032A;
	Fri, 21 Oct 2022 00:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61D014032A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB4EAC0078;
	Fri, 21 Oct 2022 00:11:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 69F25C002D
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 00:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F01BE4032A
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 00:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F01BE4032A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mq25JteBxtaw for <bridge@lists.linux-foundation.org>;
 Fri, 21 Oct 2022 00:11:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D8A9400D9
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D8A9400D9
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 00:11:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6F88661CB4;
 Fri, 21 Oct 2022 00:11:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FB68C433C1;
 Fri, 21 Oct 2022 00:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666311073;
 bh=EDmrggTVBt4ZmieCGYNTkKBhUVVBHvuFF8t6Ohb5odY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hXy7QnVya8WFHGkF23bCrlzbszdMIq30gtS5sC/AzLAN0UyIikoDL+dGHWiX3sOJx
 52Tra3Fs2j1AtumjbHs5IZaj1DXx+8kqp+MZQaFa5KMfEMRHjrqXtzFmcG3St3vajw
 vn19PU1YUp6Z8HqgEtJjF4vExJm+FQJxfb5H2BNy5KAjVRyZ1IPZjxgspl3wecF+5W
 Lz3nMgwm+OBkBF1XVr3XerHIv6ORrYZBTUuWXQFWkKBf8+yJ418REFRkxWPkPh00Zc
 c0ekgpx1lIBlABhf9vH5VdHTkphiAxThbg/MHqo8+4NIpzHVSY1BDl8Ax/GpkOYPZV
 gU9WNCggZUhaw==
Date: Thu, 20 Oct 2022 17:11:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@kapio-technology.com
Message-ID: <20221020171111.0cc66047@kernel.org>
In-Reply-To: <1c71e62ee5d6c0a7fc54d3e666aca619@kapio-technology.com>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-2-netdev@kapio-technology.com>
 <Y1FE6WFnsH8hcFY2@shredder>
 <1c71e62ee5d6c0a7fc54d3e666aca619@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Ido Schimmel <idosch@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@resnulli.us>, Amit Cohen <amcohen@nvidia.com>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Hans Schultz <schultz.hans@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 01/12] net: bridge: add locked
 entry fdb flag to extend locked port feature
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

On Thu, 20 Oct 2022 21:37:17 +0200 netdev@kapio-technology.com wrote:
> Okay, since Jakub says that this patch set must be resent, the question 
> remains to me if I shall make these changes and resend the patch set
> as v8?

If I understand the question right - since you'd be making changes 
the new posting should be a v9. If you got only acks and no change
requests for this posting you could repost as "v8 RESEND", or also
as v9, when in doubt err on the side of bumping the version...
