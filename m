Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED60607D8B
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 19:30:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5C8C414E4;
	Fri, 21 Oct 2022 17:30:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5C8C414E4
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=kWmjcACf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHtJVeWj4TBv; Fri, 21 Oct 2022 17:30:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0EC31414F7;
	Fri, 21 Oct 2022 17:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EC31414F7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 89AD0C007C;
	Fri, 21 Oct 2022 17:30:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92370C002D
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 17:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64BA283495
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 17:30:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64BA283495
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=kWmjcACf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W3PfZqqYY9us for <bridge@lists.linux-foundation.org>;
 Fri, 21 Oct 2022 17:30:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81C79833A3
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81C79833A3
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 17:30:20 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id e18so8516239edj.3
 for <bridge@lists.linux-foundation.org>; Fri, 21 Oct 2022 10:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=eODYg6i1slVemJXiAd3VXkmdvCvejpnoks2e1b1sQZA=;
 b=kWmjcACfBGi4HGfSDqndyHtIVP5QX7I1bLM11RrayrZIHqCnhQks9SjBSlMCCHEK80
 3Olz0moI9h1U0OlYkoEqiu2hmUXnePYex6ofPDYB+7XQyM6xvTTUlsKpGxQ7A00r8Qiz
 2+yiokVqPbgJw3B97d9FN4gxPBWlld6vPoLR+yVJp0cxnR4nuH0HQlVF9u+Mt8Y9WJsF
 S5C1i/6ryyquWA+8VoY9IbDLwHRD3s79dKSRYFUQ8vmbRB9XAksydxeCCCfLeVenCyhs
 T5+eBUYX/+qKlh6s7y2e4VyeezWIF2MQsYA3j9ja+JFF71uvZwts4f4aPzxQtv5neO41
 vulQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eODYg6i1slVemJXiAd3VXkmdvCvejpnoks2e1b1sQZA=;
 b=QwUMqUwa6w8pJBNKwJJumBP/UY/MGvhPen8dPVde5LhxXCRXVXLI/sX3G2M/0Rs9MX
 5xWnZCUS9fvmt4/G+pK2DDC7FIeW72SuLKKxQNyFxH3/eXkB7KzlczUsr4fJddsI5Ay9
 cK/s/Vc0X5Rn8KA1+ReC5I+Nxue2L07IMGR4ofDfGwIgRb18ZUMXvdkOhvTWa56Ka2Gt
 JZ54UC2JXyQ49OWg07P6A1GrgtmUTTc/NEYgwEooxew+sgarQTbDYzeEosOnOgmmefWL
 0qpHfzgBDulCP7Heqw3kLWNv9z+TSNicdjj6XPofBt5bD+Fsv8djc8Q/Mq730I5D/N4/
 TO1A==
X-Gm-Message-State: ACrzQf21JydxFm+2xJ1PVQVJV1QKSkBSxOT++3za2O6IgHz4DcR3kCq2
 hTxpXH97DYhwLURE7RYdX+4=
X-Google-Smtp-Source: AMsMyM4s9UluzXOoPf7cYQVSBAmze6LMyEYjVNnYAFVkJdkbmtuP1IWFdO4gUJPrPwh+bE9aZswPGA==
X-Received: by 2002:a17:907:7611:b0:78d:9d69:adf9 with SMTP id
 jx17-20020a170907761100b0078d9d69adf9mr16728025ejc.283.1666373418592; 
 Fri, 21 Oct 2022 10:30:18 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 g13-20020a170906538d00b0073d638a7a89sm11999567ejo.99.2022.10.21.10.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Oct 2022 10:30:17 -0700 (PDT)
Date: Fri, 21 Oct 2022 20:30:14 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221021173014.oit3qmpkrsjwzbgu@skbuf>
References: <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221018165619.134535-11-netdev@kapio-technology.com>
 <20221020132538.reirrskemcjwih2m@skbuf>
 <2565c09bb95d69142522c3c3bcaa599e@kapio-technology.com>
 <20221020225719.l5iw6vndmm7gvjo3@skbuf>
 <82d23b100b8d2c9e4647b8a134d5cbbf@kapio-technology.com>
 <20221021112216.6bw6sjrieh2znlti@skbuf>
 <7bfaae46b1913fe81654a4cd257d98b1@kapio-technology.com>
 <20221021163005.xljk2j3fkikr6uge@skbuf>
 <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d1fb07de4b55d64f98425fe66156c4e4@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
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
 linux-kernel@vger.kernel.org, Florent Fourcot <florent.fourcot@wifirst.fr>,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 10/12] net: dsa: mv88e6xxx:
 mac-auth/MAB implementation
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

On Fri, Oct 21, 2022 at 07:18:59PM +0200, netdev@kapio-technology.com wrote:
> On 2022-10-21 18:30, Vladimir Oltean wrote:
> > On Fri, Oct 21, 2022 at 03:16:21PM +0200, netdev@kapio-technology.com wrote:
> > > As it is now in the bridge, the locked port part is handled before learning
> > > in the ingress data path, so with BR_LEARNING and BR_PORT_LOCKED, I think it
> > > will work as it does now except link local packages.
> > 
> > If link-local learning is enabled on a locked port, I think those
> > addresses should also be learned with the BR_FDB_LOCKED flag. The
> > creation of those locked FDB entries can be further suppressed by the
> > BROPT_NO_LL_LEARN flag.
> > 
> > > If your suggestion of BR_LEARNING causing BR_FDB_LOCKED on a locked port, I
> > > guess it would be implemented under br_fdb_update() and BR_LEARNING +
> > > BR_PORT_LOCKED would go together, forcing BR_LEARNING in this case, thus also
> > > for all drivers?
> > 
> > Yes, basically where this is placed right now (in br_handle_frame_finish):
> 
> As I don't know what implications it would have for other drivers to have learning
> forced enabled on locked ports, I cannot say if it is a good idea or not.
> Right now learning is not forced either way as is, but the consensus is that learning
> should be off with locked ports, which it would be either way in the common case I
> think.

I don't think I fully understand what you mean by forcing BR_LEARNING.
A bridge port gets created with a default set of flags as can be seen in new_nbp().
Those flags include BR_LEARNING but don't include BR_PORT_LOCKED.

The user can decide he wants to make the port use 802.1X without MAB, so
he enables BR_PORT_LOCKED and disables BR_LEARNING, all with the same
netlink command (ip link set swp0 type bridge_slave learning off locked on).

How was the driver forced into anything?
