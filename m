Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42292606B65
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 00:43:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8B4E41675;
	Thu, 20 Oct 2022 22:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8B4E41675
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=UVFcLtLR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2JnokVBNu0Hb; Thu, 20 Oct 2022 22:43:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B5F01415F8;
	Thu, 20 Oct 2022 22:43:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5F01415F8
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3F715C0078;
	Thu, 20 Oct 2022 22:43:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E2A2C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60F8740483
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60F8740483
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=UVFcLtLR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eHQR1tnNxo1N for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 22:43:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 735C0400A6
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 735C0400A6
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 22:43:40 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id r14so1703721edc.7
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 15:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JglhUSuAsvyo/02iuoDdhbFLRdL0c14GOno7/e71c6I=;
 b=UVFcLtLRlFJ23BO5nFdHnG4XQRcYTdnQfD3m/QakLfwgOixkkCd7UJlVA+CHErZDSK
 yqcpu2eHqMGfmTPApN2EotBAlWuycXT2OjFAFM1+5hggxKMnxWXGuezOaAd4WEJlzw/E
 QwfCAicGgtNoOd8NE+jP3QuxiLJQ5qMyH/pDBuCnlZYt4z3r6VCKUlsfCNk+YLZNLAOA
 jZfpDE2kC2IhtsQcsYya9US9kOGVA9O8AzfTEwo/8FQZKplzXol7D+K0m8g9+ZJMdMlA
 7qnuH1rqNqLEFKQ+7QqHXn3BuFaESpqJ+j9E4Q1RUqqQor0Pmd9ogjMf6JpK5JbYc/PN
 U2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JglhUSuAsvyo/02iuoDdhbFLRdL0c14GOno7/e71c6I=;
 b=H8Qs3zB0HtDgm6/ezbJXiy/HJ22/QHmwO/ej9tmMJB+94hExS3yLtNAvYB34FkU+it
 OQcf8tYMAeUyWqXA6RCn6gmJc8V/gNadNgXaxOjmBK6i86s+8ncqbD/zeS5XU8XnLF5u
 JK1dusncI96QcjKBY/Q7bG4oYoehb/yxjVM+hSG92RlSio6r8FROBdt9jz7DgKlHRWVi
 X13WFgL/NiUmPc1nwgvshVaG9nnXqLvdWASXrA6RAKug/R82WEJsfiAJ6u/LEmmBqWjT
 Ikg0zVkmgxNTkJ30NELNLZx0gvmRvOqfG9a+aBE9C9Zcz3y3VefwyvBeEl2imnh7uu+R
 Sfag==
X-Gm-Message-State: ACrzQf1UIQQJnewmbH84quzlhrMGUv4+ru4ylozHQJFRqfu7juyZ4QtP
 dSoVL2JGT8tK934npnSHyr8=
X-Google-Smtp-Source: AMsMyM5MjXkVhqFJ0DzPxQqFB+bWxrQP/KKt/X60NxMrSXVU8VHjgZ1HhV+RGAF8iAk/TVSu8j+SmA==
X-Received: by 2002:a05:6402:518b:b0:45d:9a19:66d2 with SMTP id
 q11-20020a056402518b00b0045d9a1966d2mr14121112edd.43.1666305818360; 
 Thu, 20 Oct 2022 15:43:38 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 w14-20020a170906384e00b0078246b1360fsm10790195ejc.131.2022.10.20.15.43.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 15:43:37 -0700 (PDT)
Date: Fri, 21 Oct 2022 01:43:34 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221020224334.ksh4xciad7yro3cj@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-4-netdev@kapio-technology.com>
 <20221020125549.v6kls2lk7etvay7c@skbuf>
 <e1184c879642c35e4ff6f19e0fd5de46@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e1184c879642c35e4ff6f19e0fd5de46@kapio-technology.com>
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
Subject: Re: [Bridge] [PATCH v8 net-next 03/12] net: bridge: enable bridge
 to install locked fdb entries from drivers
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

On Thu, Oct 20, 2022 at 09:29:06PM +0200, netdev@kapio-technology.com wrote:
> On 2022-10-20 14:55, Vladimir Oltean wrote:
> > On Tue, Oct 18, 2022 at 06:56:10PM +0200, Hans J. Schultz wrote:
> > > diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> > > index 8f3d76c751dd..c6b938c01a74 100644
> > > --- a/net/bridge/br_switchdev.c
> > > +++ b/net/bridge/br_switchdev.c
> > > @@ -136,6 +136,7 @@ static void br_switchdev_fdb_populate(struct
> > > net_bridge *br,
> > >  	item->added_by_user = test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
> > >  	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
> > >  	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
> > > +	item->locked = test_bit(BR_FDB_LOCKED, &fdb->flags);
> > 
> > Shouldn't this be set to 0 here, since it is the bridge->driver
> > direction?
> 
> Wouldn't it be a good idea to allow drivers to add what corresponds to a blackhole
> entry when using the bridge input chain to activate the MAB feature, or in general
> to leave the decision of what to do to the driver implementation?

The patch doesn't propose that. It proposes:

| net: bridge: enable bridge to install locked fdb entries from drivers
| 
| The bridge will be able to install locked entries when receiving
| SWITCHDEV_FDB_ADD_TO_BRIDGE notifications from drivers.

Please write patches which make just one logical change, and explain the
justification for that change and precisely that change in the commit
message.
