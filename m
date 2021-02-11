Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DA8318441
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 05:18:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D46E5874C6;
	Thu, 11 Feb 2021 04:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWR0r1FDjyoi; Thu, 11 Feb 2021 04:18:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DCB8874C9;
	Thu, 11 Feb 2021 04:18:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 33F36C013A;
	Thu, 11 Feb 2021 04:18:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 86F75C013A
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 707C886F90
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7nJu3h-wGfwR for <bridge@lists.linux-foundation.org>;
 Thu, 11 Feb 2021 04:18:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE643861F4
 for <bridge@lists.linux-foundation.org>; Thu, 11 Feb 2021 04:18:31 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id o63so2947108pgo.6
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 20:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ySQs/bUrDiTXrbAw1rcoAwSp8NINSHA8BKI1E9gDSMc=;
 b=ZPgTOhUWUmB14eeEZokD8KQf4APDXMsP7Bm7zcBbwWSKmhHylXKsVx0ilbDaGF32sr
 4Pnyx6vpgzo6qXW8cJD1mUkICvbD0dU8GPhFDIQTCpvr3UbkvdIjqAd7KGn7fwt0xbKv
 fMvL6VBhrW077N/ocwMZEkwT5E2jUZ4ag29qCubKsuiEpg3XXJQPPBP7DP40sOoMBWSg
 LudXJQp6xgApRIy6TMo0MCojoSF7TNrrHBiTfxu8liMTFHfP/ytQegEKfrz0YqErPKf2
 dKAvcvx6PHS5F7VRB3aJwEbgf1B1p7oMxQ+vdsl7sBhRIhAAj83j8RDk0rPinI4oBWBw
 oV9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ySQs/bUrDiTXrbAw1rcoAwSp8NINSHA8BKI1E9gDSMc=;
 b=SWy89lL3P1E+Hy8S8rg/Xdg5UXchKm/g9WfTLHFsTjcI5KGaphpYVflUv5LO6bsk2b
 WztjMLIQEM5TLirvM8no/rBpWxNUOL+CXjfl1yMfuncU0zzf+UgH/14ebwPmTgxjzwJI
 1kSLBBRVGNmMz35Iwqih//fsp/h9ogHzVESI+K+yQM484/wDbubR4TEudpZQ3MJVaeeD
 XcVdkNCdj8E47As+MzC5N5bqIBUHHaVdwnvOhRmmqLJcGxJOIIcn+yhF7V+/7s2Ne9f8
 VWrgvJy/I7DV/+Mzl4d6oMap0eVM5FZ86rHY0oEJT2Lp80pLn3m8dK774wA3G4zEVQ+N
 Bm1w==
X-Gm-Message-State: AOAM5331GRze+nSTGlO1MP/JAwa5bKNiBYwbPWw2Rk+ZUCg9EpW+5o4R
 WX4WS1n+WBOUhoh/QArbZgY=
X-Google-Smtp-Source: ABdhPJweA9TAWgNsC+Ig6uguW2ukgU/fDQnLgu0DQrTuXlMNVLDFdbWKH9OObUxGnBh8rlGcZnDPbw==
X-Received: by 2002:a05:6a00:23c5:b029:1e6:2f2e:a438 with SMTP id
 g5-20020a056a0023c5b02901e62f2ea438mr2823786pfc.75.1613017111220; 
 Wed, 10 Feb 2021 20:18:31 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id t6sm3716349pgp.57.2021.02.10.20.18.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Feb 2021 20:18:30 -0800 (PST)
To: Vladimir Oltean <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <20210210091445.741269-7-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <fa66ce8e-4292-808a-e9ee-4a0afd2d32ce@gmail.com>
Date: Wed, 10 Feb 2021 20:18:27 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210210091445.741269-7-olteanv@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 06/11] net: dsa: kill
 .port_egress_floods overengineering
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



On 2/10/2021 1:14 AM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> The bridge offloads the port flags through a single bit mask using
> switchdev, which among others, contains learning and flooding settings.
> 
> The commit 57652796aa97 ("net: dsa: add support for bridge flags")
> missed one crucial aspect of the SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS API
> when designing the API one level lower, towards the drivers.
> This is that the bitmask of passed brport flags never has more than one
> bit set at a time. On the other hand, the prototype passed to the driver
> is .port_egress_floods(int port, bool unicast, bool multicast), which
> configures two flags at a time.
> 
> DSA currently checks if .port_egress_floods is implemented, and if it
> is, reports both BR_FLOOD and BR_MCAST_FLOOD as supported. So the driver
> has no choice if it wants to inform the bridge that, for example, it
> can't configure unicast flooding independently of multicast flooding -
> the DSA mid layer is standing in the way. Or the other way around: a new
> driver wants to start configuring BR_BCAST_FLOOD separately, but what do
> we do with the rest, which only support unicast and multicast flooding?
> Do we report broadcast flooding configuration as supported for those
> too, and silently do nothing?
> 
> Secondly, currently DSA deems the driver too dumb to deserve knowing that
> a SWITCHDEV_ATTR_ID_BRIDGE_MROUTER attribute was offloaded, because it
> just calls .port_egress_floods for the CPU port. When we'll add support
> for the plain SWITCHDEV_ATTR_ID_PORT_MROUTER, that will become a real
> problem because the flood settings will need to be held statefully in
> the DSA middle layer, otherwise changing the mrouter port attribute will
> impact the flooding attribute. And that's _assuming_ that the underlying
> hardware doesn't have anything else to do when a multicast router
> attaches to a port than flood unknown traffic to it. If it does, there
> will need to be a dedicated .port_set_mrouter anyway.
> 
> Lastly, we have DSA drivers that have a backlink into a pure switchdev
> driver (felix -> ocelot). It seems reasonable that the other switchdev
> drivers should not have to suffer from the oddities of DSA overengineering,
> so keeping DSA a pass-through layer makes more sense there.
> 
> To simplify the brport flags situation we just delete .port_egress_floods
> and we introduce a simple .port_bridge_flags which is passed to the
> driver. Also, the logic from dsa_port_mrouter is removed and a
> .port_set_mrouter is created.
> 
> Functionally speaking, we simply move the calls to .port_egress_floods
> one step lower, in the two drivers that implement it: mv88e6xxx and b53,
> so things should work just as before.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
