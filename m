Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 963C5606461
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 17:26:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA7C08437B;
	Thu, 20 Oct 2022 15:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA7C08437B
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=XDGSk4LC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 03ed2q1oCCHe; Thu, 20 Oct 2022 15:26:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4FF5C84376;
	Thu, 20 Oct 2022 15:26:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FF5C84376
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB794C0078;
	Thu, 20 Oct 2022 15:26:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2A9B7C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED1118437B
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED1118437B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdfwWp8l-FGw for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 15:26:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0D9F8437C
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0D9F8437C
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:26:04 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id r17so310221eja.7
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 08:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=AaGDSW9Uo5gk30Lai/grQJHvjoamn5mhkN1P8X3Mr1c=;
 b=XDGSk4LCApoml0aEWA/O3LLO/VsZONiWFe/ectvtscueo6IjH7ZUf9RlJhwtFSIpxQ
 vY++6qdmYZb+oW7zRT7cjXr+GC9giXFUnuCNfw5DiA7j8d1qyob8iMM2osLiToYj1ohv
 MjMD+t1N0GGFjY33uJZGAYwRCYC6M7/DErNQH5hOggVnb9DHFCdUYjpqVdRqokBrlh96
 GkyL6AI+ywx2J+ZQLZtQKEdIhoDTpnzcQvXN+CYIRxi0BkkuQTsDRuTeav78lyAHPmv8
 k8jEA+WOuluVDUj0nveiEfMCshL90NJVUri95IyjOMeZiW8GRh6YgwpYdwZ7tEn6iimD
 AnFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AaGDSW9Uo5gk30Lai/grQJHvjoamn5mhkN1P8X3Mr1c=;
 b=JfTHG6Fz+8cdwQF5m7x8ZYwqJIj0EjaLqElWqUAcqd2Yg1u/2LU6zHEe5gJhrJamw8
 9jnFXV6CoRaecJyUG8K9JkPIdwZ4IZi4m5PoYOWEIbv8mvifuzcB3qCaz8ufwVoI/pTw
 3qIpaIIkngOA/dDXucJpquv+B3ZUa/vXL1Y5IxXwwkeN1VgXYrJYICCqyRSpV5nMRf7S
 FSG83LTL8K4tpJJLKo1cWtHUXbDrclhj8G6nHIa0wPJIU/9Jf+xr19u9oh8ELJCgV1r9
 RPacyx4ocQh/zg/e7R4n4vLgFCkUyYGJBP+zmUXaB/Ro4D5iGnXsA5cpqM6SxQH0Psrm
 r5qw==
X-Gm-Message-State: ACrzQf2trx7JFv8kQcJK22HhoassuHG4FTri59ZX3zeHpfD9N+nVvcCU
 cYQruqXtN7fVPUxVcYFIDFI=
X-Google-Smtp-Source: AMsMyM6AS5oI6Y5yVMqB5w4gQHdBr1Y11p9UujtJKBEf/rnNjbaypba0C6Ye03626y0QbW56AhPONA==
X-Received: by 2002:a17:907:a05:b0:77b:b538:6476 with SMTP id
 bb5-20020a1709070a0500b0077bb5386476mr11709107ejc.324.1666279562972; 
 Thu, 20 Oct 2022 08:26:02 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 r2-20020a1709061ba200b0078d76ee7543sm10363196ejg.222.2022.10.20.08.25.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 08:25:58 -0700 (PDT)
Date: Thu, 20 Oct 2022 18:25:54 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20221020152554.rck3skqqdd45fu46@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221020130224.6ralzvteoxfdwseb@skbuf> <Y1FMAI9BzDRUPi5Y@shredder>
 <20221020133506.76wroc7owpwjzrkg@skbuf> <Y1FTzyPdTbAF+ODT@shredder>
 <20221020140400.h4czo4wwv7erncy7@skbuf> <Y1FiImF3i4s0bLuD@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1FiImF3i4s0bLuD@shredder>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org,
 "Hans J. Schultz" <netdev@kapio-technology.com>,
 Joachim Wiberg <troglobit@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Roopa Prabhu <roopa@nvidia.com>,
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
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 05/12] net: dsa: propagate the
 locked flag down through the DSA layer
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

On Thu, Oct 20, 2022 at 05:58:42PM +0300, Ido Schimmel wrote:
> My understanding is that mv88e6xxx only reads the SMAC and FID/VID from
> hardware and notifies them to the bridge driver. It does not need to
> parse them out of the Ethernet frame that triggered the "violation".
> This is the "ugly" part (in my opinion).

I think that the Marvell approach is uglier, but maybe that's just me.
Between parsing a MAC SA/VLAN ID from an Ethernet frame than having to
concern myself with rate limiting IRQs which need MDIO access, I'd
rather parse Ethernet frames all day long.

With Ethernet we have all sorts of coping mechanisms, NAPI, IRQ
coalescing. The Ethernet interrupts are designed to be very high
bandwidth. You can even put a storm policer on Ethernet traffic and rate
limit the learn frames. I don't like where the Marvell specific impl is
going, I don't think it is a good first implementation of a new feature,
since it will inevitably shape the way in which other hardware with CPU
assisted learning will do things. For example, not sure if blackhole FDB
entries are going to be needed by other implementations as well.

I kind of thought that the Linux bridge would be more resilient to DoS
than it actually is. Now I'm not sure if me and Andrew gave bad advice
with the whole protection mechanisms put in place as UAPI for mv88e6xxx's
quirks.

> > The learn frames are "special" in the sense that they don't belong to
> > the data path of the software bridge*, they are just hardware specific
> > information which the driver must deal with, using a channel that
> > happens to be Ethernet and not an IRQ/MDIO.
> 
> I think we misunderstand each other because I don't understand why you
> call them "special" nor "hardware specific information" :/

I call them special because there is no need to present these packets to
application software. Understood and agreed that they are identical to
the original packet which triggered the trap (plus some metadata which
denotes the trap reason, presumably), although I don't think this really
matters too much.

> We don't inject to the software data path some hardware specific
> frames, but rather the original Ethernet frames that triggered the
> violation. The same thing happens with packets that encountered a
> neighbour miss during routing or whose TTL was decremented to zero.
> The hardware can't generate ARP or ICMP packets, so the original
> packet is injected to the Rx path so that the kernel will generate the
> necessary control packets in response.

Can't speak for IP forwarding offload unfortunately, but it seems like
you presented a different/unrelated situation here. CPU assisted
learning is not slow path processing, because nothing needs to be done
further with that packet except for extracting its MAC SA/VID, and
learning it. The rest of the original packet is really not necessary.

> > *in other words, a bridge with proper RX filtering should not even
> > receive these frames, or would need special casing for BR_PORT_MAB to
> > not drop them in the first place.
> > 
> > I would incline towards an unified approach for CPU assisted learning,
> > regardless of this (minor, IMO) difference between Marvell and other
> > vendors.
> 
> OK, understood. Assuming you don't like the above, I need to check if we
> can do something similar to what mv88e6xxx is doing (because I don't
> think mv88e6xxx can do anything else).

No no, I like having an Ethernet channel (see the first reply to this
email), I think it has benefits and I don't want to make Spectrum follow
an inferior route just because that's the model.

But on the other hand, nobody right now needs the mechanism that Hans
put in place for setting BR_FDB_LOCKED in software, and notifying it
back to the driver. Moreover, when Ethernet-based CPU assisted learning
will come, this mechanism will not be the only possibility, and that
should be a separate discussion. I still think that generic helpers to
emit SWITCHDEV_FDB_ADD_TO_BRIDGE based on an skb are an equally valid
approach, and would diverge significantly less from Marvell without
imposing any real limitation. In the implementation proposed here, we
have variation for the sake of variation, and we come up with
hypothetical examples of how they might be useful. At least half this
patch set is full of maybes, I can't really say I like that.
