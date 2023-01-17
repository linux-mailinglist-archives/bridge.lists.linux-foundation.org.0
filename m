Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97555670CB3
	for <lists.bridge@lfdr.de>; Wed, 18 Jan 2023 00:08:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 359DC81DF6;
	Tue, 17 Jan 2023 23:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 359DC81DF6
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=ZxbOGkUg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hZ87IroiQ7tf; Tue, 17 Jan 2023 23:08:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C918081B9D;
	Tue, 17 Jan 2023 23:08:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C918081B9D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6AC34C007B;
	Tue, 17 Jan 2023 23:08:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 93EF7C002D
 for <bridge@lists.linux-foundation.org>; Tue, 17 Jan 2023 23:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6117681DF6
 for <bridge@lists.linux-foundation.org>; Tue, 17 Jan 2023 23:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6117681DF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nlAVqf0Ds8tk for <bridge@lists.linux-foundation.org>;
 Tue, 17 Jan 2023 23:08:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F97D81B9D
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F97D81B9D
 for <bridge@lists.linux-foundation.org>; Tue, 17 Jan 2023 23:08:12 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id bk15so21603101ejb.9
 for <bridge@lists.linux-foundation.org>; Tue, 17 Jan 2023 15:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZqG3eRlHUbK1Lyl7ksi3Aw/n8LhVJQ09Kf9OQGt9voM=;
 b=ZxbOGkUgPd0sW7VsqQdDiiEezFqOj9G5epZuy25qVAeqJo4VqKuLhaIPdKMzhI4z49
 p7zUZjGRsXHV8muavKDc+qsjH1FkBmWBjW+cqLq/8GvqNU/upQ1x+F5Jp0DS/UQubeEc
 Ac4pdDjxJ5+Rbs4rzkL6WHY3Tpy6HeGJAgAD5JIRBPG5U2Ky+kVUXKioILZsLd1X8STR
 5WGXAL/RbSZkGtOsoqpI0S4xqkIrGul9Gr3ihrlJ5WzcxZx44Wqff26av8mbjq5i8SDN
 WP0YICTHvV0Ho573spiFUOC0blUJaCDC4sjx0e1IQk1UaOFuCmdvVJKufiUSoXFeYeaX
 FT7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZqG3eRlHUbK1Lyl7ksi3Aw/n8LhVJQ09Kf9OQGt9voM=;
 b=ybmGeN5Xmpb9GkEScY84cHvV3hI39bp7i9i+54ZpPNSQN2S8MgEkw0QRztaEsjPgp7
 gJLsLbPcPfw4CzowMtrxoiYiITlp31ZoaUopv2nOF3xGnmI2k+oO5eBdaPvwpa7Nsj9Y
 PBG9m6RX+JaTlIHlBMG2vV9xOrDssHu2WPFR46w67xd8/DigWFZil+A6gkmOwU+3SyBc
 emuFtIhsvr7zHnW/e/LZLL3TjOM7S7J1tR+bxgLgewpyUcYSv51XVj6Jg/xrzqFKB7h0
 JyNctII2pMZfFAiQSYsQTGlpl7xKcAfAegMsWjOJd2wQNHxVfe7Nynv2TUF9LoYwx0PW
 V5/g==
X-Gm-Message-State: AFqh2kqg3SOwP6q9jPKRz76UW8DtwY8fNkTeZ4TtG0euZ/rEASxfjjGf
 4gtvkcxPbY/ClT90GyiHUKQ=
X-Google-Smtp-Source: AMrXdXsNsFKUYz2t3yHJIzHFLh/nyECIcVDxNeg65wxo6D6FxRXy0K+cvrA+72ZPq62T6qBGsedr5g==
X-Received: by 2002:a17:907:100c:b0:870:e329:5f3d with SMTP id
 ox12-20020a170907100c00b00870e3295f3dmr4810199ejb.19.1673996890349; 
 Tue, 17 Jan 2023 15:08:10 -0800 (PST)
Received: from skbuf ([188.27.184.249]) by smtp.gmail.com with ESMTPSA id
 g9-20020a17090604c900b0085ca279966esm8773118eja.119.2023.01.17.15.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Jan 2023 15:08:10 -0800 (PST)
Date: Wed, 18 Jan 2023 01:08:06 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <20230117230806.ipwcbnq4jcc4qs7z@skbuf>
References: <20230117185714.3058453-1-netdev@kapio-technology.com>
 <20230117185714.3058453-2-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117185714.3058453-2-netdev@kapio-technology.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
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
Subject: Re: [Bridge] [RFC PATCH net-next 1/5] net: bridge: add dynamic flag
 to switchdev notifier
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

On Tue, Jan 17, 2023 at 07:57:10PM +0100, Hans J. Schultz wrote:
> To be able to add dynamic FDB entries to drivers from userspace, the
> dynamic flag must be added when sending RTM_NEWNEIGH events down.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> ---
>  include/net/switchdev.h   | 1 +
>  net/bridge/br_switchdev.c | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index ca0312b78294..aaf918d4ba67 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -249,6 +249,7 @@ struct switchdev_notifier_fdb_info {
>  	u8 added_by_user:1,
>  	   is_local:1,
>  	   locked:1,
> +	   is_dyn:1,
>  	   offloaded:1;
>  };
>  
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index 7eb6fd5bb917..60c05a00a1df 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -136,6 +136,7 @@ static void br_switchdev_fdb_populate(struct net_bridge *br,
>  	item->added_by_user = test_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
>  	item->offloaded = test_bit(BR_FDB_OFFLOADED, &fdb->flags);
>  	item->is_local = test_bit(BR_FDB_LOCAL, &fdb->flags);
> +	item->is_dyn = !test_bit(BR_FDB_STATIC, &fdb->flags);

Why reverse logic? Why not just name this "is_static" and leave any
further interpretations up to the consumer?

>  	item->locked = false;
>  	item->info.dev = (!p || item->is_local) ? br->dev : p->dev;
>  	item->info.ctx = ctx;
> -- 
> 2.34.1
> 
