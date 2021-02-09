Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADE93157C6
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 21:37:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38FED8623B;
	Tue,  9 Feb 2021 20:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZXahbMRgaR-L; Tue,  9 Feb 2021 20:37:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46DEE86090;
	Tue,  9 Feb 2021 20:37:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 23A62C1834;
	Tue,  9 Feb 2021 20:37:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 618B6C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F5E56E83A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NcmONb_W3EAP for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 20:37:31 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 525776F5A5; Tue,  9 Feb 2021 20:37:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE76C6F4A4
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 20:37:29 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id df22so25703967edb.1
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 12:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vpXupxI4EmB9jS8FnsBDy9X9aAilQow9eZdElk5z5YU=;
 b=EaCnqleR9co1ayX9zw8/Gbww2num6HhuM4rM/kM9NM7GKDe5pOvkyc4u1Yyqkwgb84
 0ZmEdA9aOXpR65pmNEYgE0NybjZ2WP5hFK4g5Av6jBc23CsFz15v3La7dXi41gCy0pcm
 0lNs7LXQers1shnqM/BafxrFDuS7hrqMB1968zH/0w+SdalfFn8KJRKJ6E0H8bVgF44y
 ZY2Mw2MtExe5Aa4zYKcdhUWXyTD3rY0ApxtQB+eawTlVtuADNwjbEG/nHV63FLXyKmsQ
 X3AIXJFUUjJFsVqp343pSzGKATCXc5sAVoIWnYwpHifWavfp5gPQwuQSzwJa1Xoc5E8I
 QQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vpXupxI4EmB9jS8FnsBDy9X9aAilQow9eZdElk5z5YU=;
 b=SBH8I955WBsCfR53+ICVm05QOdARU1z2D6teEctgaAUw1rs/NG72kkq54MHQ3sdFt+
 XM7GrRon7JU8ELdj+RezSc2MUr/DxRZK0sYEteVwtc4/WoBSxjuHzI3OOV4NhM7UifdH
 tMJ0ved/HMPA2hNDeU3cVWry3zBEsncMKPKrGtPuIiV83V8nPXUuFVQoz0IfsdFU01XR
 a5KZ4NjFe8Q/ZK4DKgpV8XrH8lTxvCG++pgANYk1LXQsshLy35yBlAI+bwa9i6+jvWnL
 0ahq1YVM+i6wNcIKiOfGJsmHW8YFY8UrtMl1ZrzMJyOQD/lrVr79euhoqL5UtHQkWrBj
 qAUg==
X-Gm-Message-State: AOAM532nNEfmPVFKeea7FYyETvr+xSM/g4kP19LwKT53jWKxJdDZdY7E
 RIMPN7AuhdN23Ajk/LVX6KQ=
X-Google-Smtp-Source: ABdhPJxIqOGmlf+A1ZaBl9Y42PJ/mw8AGgxl5wORuzMKWlhHCZnudzMduXY9/PTdcoTGZZ+uu6UkDQ==
X-Received: by 2002:a05:6402:270e:: with SMTP id
 y14mr24801805edd.322.1612903047563; 
 Tue, 09 Feb 2021 12:37:27 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id i18sm12164169edt.68.2021.02.09.12.37.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 12:37:26 -0800 (PST)
Date: Tue, 9 Feb 2021 22:37:24 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20210209203724.t3gvjdzhxbkt3qu2@skbuf>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-8-olteanv@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209151936.97382-8-olteanv@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v2 net-next 07/11] net: dsa: kill
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

On Tue, Feb 09, 2021 at 05:19:32PM +0200, Vladimir Oltean wrote:
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
> ---

Florian, Andrew, what are your opinions on this patch? I guess what I
dislike the most about .port_egress_floods is that it combines the
unicast and multicast settings in the same callback, for no good
apparent reason. So that, at the very least, needs to change.
What do you prefer between having:
	.port_set_unicast_floods
	.port_set_multicast_floods
	.port_set_broadcast_floods
	.port_set_learning
and a single:
	.port_bridge_flags
?
