Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4BD68A3B8
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 21:44:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AD3860B9D;
	Fri,  3 Feb 2023 20:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AD3860B9D
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Vh4yFSLP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZnTStlLl-7le; Fri,  3 Feb 2023 20:44:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1BDE560BA4;
	Fri,  3 Feb 2023 20:44:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BDE560BA4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1898C007C;
	Fri,  3 Feb 2023 20:44:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 84272C002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 20:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E5798224E
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 20:44:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E5798224E
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Vh4yFSLP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kO-PpZfMt8zV for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 20:44:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 874CB8224D
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 874CB8224D
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 20:44:27 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id n13so4758369wmr.4
 for <bridge@lists.linux-foundation.org>; Fri, 03 Feb 2023 12:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2i9kAduLyvWzDNPasV+KzeGgY8drvOps/KxoO5LHdEw=;
 b=Vh4yFSLP4dnir5alPOP/BdqGJ1iEQMpXhQ+vDTowlNH9vMovkkNBYPi8Uhk8C7itGw
 pWJPGbneNPZx8bgItqJXAuo9hewbHrvUsmkjhmhjo7iVzDaPKFrVlDjUisuzBbOPzaBk
 hoew3vOtR7JhNkpbPch0cih/aKZQY3wZX9AulnE0kyyhblR3bKcZnRU35XovU5/9VbYj
 lHi0Szbc9Ujf075Lgy9ykV7iQTSzJNKLodhKzj3evBAx2txbaKjEgLHvLZEo7Spemc80
 Fne13usGX0QFsuTnmHXtqiB94MQK2ebcXK5/Xito6NgmRWOGINev3LN1yORMLgTrA/pn
 3OHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2i9kAduLyvWzDNPasV+KzeGgY8drvOps/KxoO5LHdEw=;
 b=yMoBiqLOWF63R4UvoPO78H/Md8pF+286v5M5cL3zQ8PiffCdgBz8h5VaIt4ZrWyoKk
 8bDaWBSg553BbPD5xPG1suZe8DKQu3I6euZn0aYYPc5fvrKcW0AHQuRLiKALvjLWeIEM
 DonO0xcE8tXcWhiNTL1LdsHWZo6zM7nbBj247VC79zM14kMqTtFZzDk529E6Qh2EfI+c
 rfGZhuqCloAoQN87hhNEKBFAeFlrZNhtWUpY7ohs8mEOLekbFzEpytoT3bCM/YXjHVo4
 hffXd+wirMOyIn+sRWXu1Zw4J4avvSN9jQdN6Pt70Cah+QL2uHuhWTjRCZMpPh2BBFWE
 pE5g==
X-Gm-Message-State: AO0yUKVoqWFNplNJcS2k0apjWoHlXFWFId3fTsAycwG4fRF1rlXK+gQc
 xJ/7Whp1R8D1Fid0RozAIxA=
X-Google-Smtp-Source: AK7set+E0bvJKJbO9QlN+pgygfVmSHBtgpwZ8dotHCW3HBDbg/640wbwRlbuPaDZ1oHGBTvA8Ms6OQ==
X-Received: by 2002:a05:600c:1994:b0:3d3:5709:68e8 with SMTP id
 t20-20020a05600c199400b003d3570968e8mr10077158wmq.36.1675457065628; 
 Fri, 03 Feb 2023 12:44:25 -0800 (PST)
Received: from skbuf ([188.26.57.116]) by smtp.gmail.com with ESMTPSA id
 r30-20020adfa15e000000b002bfafadb22asm2834308wrr.87.2023.02.03.12.44.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Feb 2023 12:44:25 -0800 (PST)
Date: Fri, 3 Feb 2023 22:44:22 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Simon Horman <simon.horman@corigine.com>
Message-ID: <20230203204422.4wrhyathxfhj6hdt@skbuf>
References: <20230130173429.3577450-1-netdev@kapio-technology.com>
 <20230130173429.3577450-6-netdev@kapio-technology.com>
 <Y9lkXlyXg1d1D0j3@corigine.com>
 <9b12275969a204739ccfab972d90f20f@kapio-technology.com>
 <Y9zDxlwSn1EfCTba@corigine.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9zDxlwSn1EfCTba@corigine.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 netdev@kapio-technology.com, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Russell King <linux@armlinux.org.uk>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
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
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 5/5] net: dsa: mv88e6xxx:
 implementation of dynamic ATU entries
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

On Fri, Feb 03, 2023 at 09:20:22AM +0100, Simon Horman wrote:
> > else if (someflag)
> >         dosomething();
> > 
> > For now only one flag will actually be set and they are mutually exclusive,
> > as they will not make sense together with the potential flags I know, but
> > that can change at some time of course.
> 
> Yes, I see that is workable. I do feel that checking for other flags would
> be a bit more robust. But as you say, there are none. So whichever
> approach you prefer is fine by me.

The model we have for unsupported bits in the SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS
and SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS handlers is essentially this:

	if (flags & ~(supported_flag_mask))
		return -EOPNOTSUPP;

	if (flags & supported_flag_1)
		...

	if (flags & supported_flag_2)
		...

I suppose applying this model here would address Simon's extensibility concern.
