Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693336CBE12
	for <lists.bridge@lfdr.de>; Tue, 28 Mar 2023 13:49:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A68A04014D;
	Tue, 28 Mar 2023 11:49:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A68A04014D
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=iO58f6tc
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pjtHBWmNDLzg; Tue, 28 Mar 2023 11:49:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1AA50403AF;
	Tue, 28 Mar 2023 11:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AA50403AF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9FE56C007E;
	Tue, 28 Mar 2023 11:49:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6EAA8C002F
 for <bridge@lists.linux-foundation.org>; Tue, 28 Mar 2023 11:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C22A4018A
 for <bridge@lists.linux-foundation.org>; Tue, 28 Mar 2023 11:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C22A4018A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eUvC4ewaAdEV for <bridge@lists.linux-foundation.org>;
 Tue, 28 Mar 2023 11:49:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DF694014D
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4DF694014D
 for <bridge@lists.linux-foundation.org>; Tue, 28 Mar 2023 11:49:49 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 r19-20020a05600c459300b003eb3e2a5e7bso7255357wmo.0
 for <bridge@lists.linux-foundation.org>; Tue, 28 Mar 2023 04:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680004187;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=d/r365YzR4z2GUjbK/bi1SZFXqHlnLKc6PIvPNZ2lRc=;
 b=iO58f6tcmkzPWSbg7kupiEHtiApSvwACv57rpe3rm8RiJ8ouJG59UwXU2DToee2okr
 IUcYWKye6jJmJYfvu8eeByd1gtdC96vRX3/BCxhGs4KBB4vGDv0S0sCZHvk0eYBn69ov
 DcIjL4WpuncS0QlGPlBdg+C1Br3J70PkHveOmrnjimVIIMLw9HqmvqulopAjRdWAmEza
 AyVJoxGQYq5mBYBpvZVkYVsLfS8aBpjvkPZanvSjSmzb6xDTVCLb1so2EId6nM29koss
 74FFqqK2KtSZzXaFwagq5m/p/yrL+kpn7s0ykdfZInmR9zV5ehKdmn0DDBgYgvfVxhbf
 V/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680004187;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=d/r365YzR4z2GUjbK/bi1SZFXqHlnLKc6PIvPNZ2lRc=;
 b=03FG5rHOI9kJzcBvGaffN60SfsdVEfqdJhHCuwRNgMTNOvioov48KaGb2DeqI3H5qM
 Li06LXuvwKvG/jZGBbSa6MaYJEGK64SlL6M+ISK3vgdgtODQFmovEU7jSfacQX4x1gUR
 x7Y7/aThArtjw8YITH18Fpa46fxdUxeWJcpzucfGQvTsFgjHKFCmJbeLabvq+lPasGub
 FAge+k6PFBz/ELvyyjYcoU974CTATay03E2jcuLEWDDt5pTxAPKBEwNYbogvna5eEsYJ
 EA1f+qxVyTLW35b8UuIumrZJ/XCjxpquJaphsLg5dXyxdozJWZAyYA8qfGpaZmWuEDyl
 M/KA==
X-Gm-Message-State: AO0yUKXAhwkqhGyRFNwj3chmHr6QfhjDaK3Ii/C1du8g1xdi4tQ2mrs/
 u0/wfNFHaworR4Y5ykV48C8=
X-Google-Smtp-Source: AK7set+zTszhDgDoSbIPu4QLbK7SYfkBZiuqVsVMkXIAf2QkJVEAEbWd1vEqziskOOvC8WeShKxd4A==
X-Received: by 2002:a05:600c:3795:b0:3ed:a82d:dffb with SMTP id
 o21-20020a05600c379500b003eda82ddffbmr11330072wmr.40.1680004187137; 
 Tue, 28 Mar 2023 04:49:47 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 u15-20020a05600c210f00b003ed2433aa4asm17097652wml.41.2023.03.28.04.49.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 04:49:46 -0700 (PDT)
Date: Tue, 28 Mar 2023 14:49:43 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20230328114943.4mibmn2icutcio4m@skbuf>
References: <20230318141010.513424-1-netdev@kapio-technology.com>
 <20230318141010.513424-3-netdev@kapio-technology.com>
 <20230327115206.jk5q5l753aoelwus@skbuf>
 <87355qb48h.fsf@kapio-technology.com>
 <20230327160009.bdswnalizdv2u77z@skbuf>
 <87pm8tooe1.fsf@kapio-technology.com>
 <20230327225933.plm5raegywbe7g2a@skbuf>
 <87ileljfwo.fsf@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ileljfwo.fsf@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>,
 =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "maintainer:MICROCHIP KSZ SERIES ETHERNET SWITCH DRIVER"
 <UNGLinuxDriver@microchip.com>,
 "open list:RENESAS RZ/N1 A5PSW SWITCH DRIVER"
 <linux-renesas-soc@vger.kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/6] net: dsa: propagate flags down
 towards drivers
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

On Tue, Mar 28, 2023 at 01:04:23PM +0200, Hans Schultz wrote:
> On Tue, Mar 28, 2023 at 01:59, Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > which idea is that, again?
> 
> So I cannot us the offloaded flag as it is added by DSA in the common
> case when using 'bridge fdb replace ... dynamic'.

Why not? I find it reasonable that the software bridge does not age out
a dynamic FDB entry that is offloaded to hardware... the hardware should
do that ("dynamic" being the key). At least, I find it more reasonable
than the current behavior, where the bridge notifies dynamic FDB entries
to switchdev, but doesn't say they're dynamic, and switchdev treats them
as static, so they don't roam from one bridge port to another until
software sees a packet with that MAC DA, and they have the potential of
blocking traffic because of that.

If for some reason you do think that behavior is useful and still want
to keep it (I'm not sure I would), I would consider extending struct
switchdev_notifier_fdb_info with a "bool pls_dont_age_out", and I would
make dsa_fdb_offload_notify() set this to true if the driver did
actually install the dynamic FDB entry as dynamic in the ATU.

> 
> The idea is then to use the ext_learn flag instead, which is not aged by
> the bridge. To do this the driver (mv88e6xxx) will send a
> SWITCHDEV_FDB_ADD_TO_BRIDGE switchdev event when the new dynamic flag is
> true. The function sending this event will then be named
> mv88e6xxx_add_fdb_synth_learned() in
> drivers/net/dsa/mv88e6xxx/switchdev.c, replacing the
> mv88e6xxx_set_fdb_offloaded() function but in most part the same
> content, just another event type.

Basically you're suggesting that the hardware driver, after receiving a
SWITCHDEV_FDB_ADD_TO_DEVICE and responding to it with SWITCHDEV_FDB_OFFLOADED,
emits a SWITCHDEV_FDB_ADD_TO_BRIDGE which takes over that software
bridge FDB entry, with the advantage that the new one already has the
semantics of not being aged out by the software bridge.

hmmm... I'd say that the flow should work even with a single notifier
emitted from the driver side, which would be SWITCHDEV_FDB_OFFLOADED,
perhaps annotated with some qualifiers that would inform the bridge a
certain behavior is required. Although, as mentioned, I think that in
principle, "pls_dont_age_out" should be unnecessary, because it just
papers over the issue that switchdev drivers treat static and dynamic
FDB entries just the same, and "pls_dont_age_out" would be the
differentiator for an issue that should have been solved elsewhere, as
it could lead to other problems of its own.

Basically we're designing around a workaround to a problem to which
we're turning a blind eye. These are my 2c.
