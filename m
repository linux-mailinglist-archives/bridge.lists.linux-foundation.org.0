Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D95E6060AF
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 14:56:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE1F86FAB2;
	Thu, 20 Oct 2022 12:55:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE1F86FAB2
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=IWGLeBFG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUJfiihoTVKT; Thu, 20 Oct 2022 12:55:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 423E56FAC6;
	Thu, 20 Oct 2022 12:55:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 423E56FAC6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D4F4DC0078;
	Thu, 20 Oct 2022 12:55:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12542C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 12:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4807401E1
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 12:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4807401E1
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=IWGLeBFG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qSsSWjcJQ9ig for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 12:55:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF96640198
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF96640198
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 12:55:55 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id z97so29739025ede.8
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 05:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fdvrcAZE1EPFKfjlz9uiWm6tLrgoi3e11AtXEZMwK1w=;
 b=IWGLeBFGsZqMWZu8NBa/5dv5ja5/cw8FaXj7wp6edzJDwcLJj6NIDrLC+M4WHRna9D
 W/HVQMcSF6esNg0rdN16No22xc3RXNXtqC+d9MIwWWH6OraR3CEpdZlZkXd0vUfIPJmc
 r76gdPx5puJhBChIud7soYMaAJ0xDETQQUIVLRMeRctA0r9t2d7V5VzVBTljkqjwVwzN
 xk+sjzPjB9NuQXcw43TV0QX8WHVLExkPruQp0pob9BJFWnTMsxqoV6Lp9yXB/rKr+P2X
 2pqwPSREhVfXotOpf0+Nbs64TnnBegLM9Dc0G+er8ZPI55mGP3UBqvZXxq5cUyuqaNJQ
 NTRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fdvrcAZE1EPFKfjlz9uiWm6tLrgoi3e11AtXEZMwK1w=;
 b=GWFVLpSSFieGKq//nKu2XB1evXIo8j2iuenSthe6SMCvdFo6pPZX2QBg6SdDrdHMe6
 XKI3flrbfRhMQMj9Cl8QEct4laR+UciVpPzIgIQl2jheEs4lLbvWDrRdECveM7Ut95cZ
 r/QUGxc/GHIrU4b5qXarX3xWt1/07jaEc5MLM5vmxlkaQCUDrMRx6hB/QI5brjNep7xK
 Ji4JKyYD81tiv4dKht4Z3VKTFLM0IbgOuoVpZaIlcKrRwWtbBpXtFls1JWwzE+HDonKY
 ytUGsrWjRicpXyYx/CRt6HW5r6jiO1WGtl7XWTBsBFidbsM5lAexC4mrovaTcQFvGmnr
 RHEw==
X-Gm-Message-State: ACrzQf04aO3ynmV4rRfb1ZQ+9fbsq/+ITrbb1deQfvWVjpZc6uBDrG4D
 SXEq013ZFPDC657dOdntWTc=
X-Google-Smtp-Source: AMsMyM6HB1XTjI180WP9OH8hwcZzkR92cAa1uSRgWwfsf86U4j6iQ/5OrlRR6/R6eQbEuvuZKarM3Q==
X-Received: by 2002:a05:6402:1393:b0:457:ea9e:ba20 with SMTP id
 b19-20020a056402139300b00457ea9eba20mr12266779edv.109.1666270553914; 
 Thu, 20 Oct 2022 05:55:53 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 q5-20020aa7d445000000b0044bfdbd8a33sm11955944edr.88.2022.10.20.05.55.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 05:55:53 -0700 (PDT)
Date: Thu, 20 Oct 2022 15:55:49 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <20221020125549.v6kls2lk7etvay7c@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-4-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018165619.134535-4-netdev@kapio-technology.com>
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

On Tue, Oct 18, 2022 at 06:56:10PM +0200, Hans J. Schultz wrote:
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index 8f3d76c751dd..c6b938c01a74 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -136,6 +136,7 @@ static void br_switchdev_fdb_populate(struct net_bridge *br,
>  	item->added_by_user = test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>  	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
>  	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
> +	item->locked = test_bit(BR_FDB_LOCKED, &fdb->flags);

Shouldn't this be set to 0 here, since it is the bridge->driver
direction?

>  	item->info.dev = (!p || item->is_local) ? br->dev : p->dev;
>  	item->info.ctx = ctx;
>  }
> -- 
> 2.34.1
> 
