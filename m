Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D364FF353
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 11:22:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B87A282948;
	Wed, 13 Apr 2022 09:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1UEHWhwV_hxu; Wed, 13 Apr 2022 09:22:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 69A6382ACA;
	Wed, 13 Apr 2022 09:22:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 35863C0088;
	Wed, 13 Apr 2022 09:22:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9D250C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:22:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C098401F1
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WSUVN03VN7Bt for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 09:22:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2DCC4400F8
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 09:22:27 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id p10so2362457lfa.12
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 02:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=c2bCHm3MCZr2B3PgN7LvCqMZxNJbNpRAkdIyjksl5Ug=;
 b=RPRjQPiYcmjBFXKTRJS2jFYk+wDtGsXTaCYujYsdiqiKyXY3a8/WgUhSSgFWPZ6Ij6
 uITMAeo5+RHQzY1fZ5uBG2J0cB4CN5hjYiVU3jDWP4180NCWxygEC3KfyB+1tRgNLOjG
 DtcYZZS2DRzrUZVY0+i0CfmDE4njQI7LNddp8NPGoMH7F/cQZYQF0jHkEGzQe03+Ibcu
 2WGu6oZ0xB5XzgvlrbWAslgly0A0pOTwvDCcRZamgBrx7720H/6BhtMfzs/HmN/7EZ+t
 db1BxBVqlPlASMGcQR0KS84YEgavEzYYsPvzIcE5z2DSxfxlN3/FjlwAEj7PoqLTVzl7
 IE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=c2bCHm3MCZr2B3PgN7LvCqMZxNJbNpRAkdIyjksl5Ug=;
 b=XCG9uxGB/5xfW05dNVgq4Q0axGxyaflT4nucrGgn737b9VV5zDmfodEiWWJtXLiuJi
 eQFuuyFRbhzVFw7CNPvW9Wvsg4HuBVsqC4J/dO0h9DyZIknd6ivDw0Y7QRadjRUEbU9d
 iylHJyo77c6WjSyOC+nvUp5upwySPS0pIrwkhpcKCeHBh5lFcRZy2WIlqyiJCFg6YjGP
 dnRiL8ZwE0/K+nAsPdRjE9N7/rTfQRLXwqVlHUsbFPIqSUlzsml/fzqslc7tr+EL903c
 ZVww8qZlgUuJvJAELxsnDXTh/IYyxoJMveVK+cUHCjmxMWwHZHD9S8twfXvYtXBhDOVv
 ceJQ==
X-Gm-Message-State: AOAM530ckeQkjcHi4dEXG1i7NBFtYzhtIkko4m089X0qPru+bSZY5jt4
 SgnL8IDiP7dre7+7BFR6f8c=
X-Google-Smtp-Source: ABdhPJwPYaL9lcSORmKORBuUMG1Ei+S+/cBhgUhn7NOyD5UKDEaWqZqfhi3ZoFvZ/cIngny95IDLnQ==
X-Received: by 2002:a05:6512:23a0:b0:44a:3458:7573 with SMTP id
 c32-20020a05651223a000b0044a34587573mr28113380lfv.97.1649841744977; 
 Wed, 13 Apr 2022 02:22:24 -0700 (PDT)
Received: from wbg (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 f23-20020a2e9e97000000b0024921bcf06bsm3710882ljk.57.2022.04.13.02.22.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 02:22:24 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <76490693-ea6d-7174-0546-b9361ab5088c@blackwall.org>
References: <20220411133837.318876-1-troglobit@gmail.com>
 <20220411133837.318876-4-troglobit@gmail.com>
 <76490693-ea6d-7174-0546-b9361ab5088c@blackwall.org>
Date: Wed, 13 Apr 2022 11:22:23 +0200
Message-ID: <87mtgp9w34.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH RFC net-next 03/13] net: bridge: minor refactor
	of br_setlink() for readability
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

On Tue, Apr 12, 2022 at 21:36, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 11/04/2022 16:38, Joachim Wiberg wrote:
>> The br_setlink() function extracts the struct net_bridge pointer a bit
>> sloppy.  It's easy to interpret the code wrong.  This patch attempts to
>> clear things up a bit.
> I think you can make it more straight-forward, remove the first br = netdev_priv
> and do something like (completely untested):
> ...
> struct net_bridge_port *p = NULL;
> ...
> if (netif_is_bridge_master(dev)) {
>  br = netdev_priv(dev);
> } else {
>  p = br_port_get_rtnl(dev);
>  if (WARN_ON(!p))
> 	return -EINVAL;
>  br = p->br;
> }
>
> So br is always and only set in this block.

Yes, this is much better, thank you!  I took the misguided approach of
minmizing my change.  I'll update and include in the non-RFC patch
series I send next.
