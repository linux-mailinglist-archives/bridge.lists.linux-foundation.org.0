Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F583752BF
	for <lists.bridge@lfdr.de>; Thu,  6 May 2021 13:01:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B683B83BCE;
	Thu,  6 May 2021 11:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MEW-iD84S6kc; Thu,  6 May 2021 11:01:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57E5583BB9;
	Thu,  6 May 2021 11:01:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 138DBC001C;
	Thu,  6 May 2021 11:01:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D2306C0001
 for <bridge@lists.linux-foundation.org>; Thu,  6 May 2021 11:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1373607D4
 for <bridge@lists.linux-foundation.org>; Thu,  6 May 2021 11:01:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GsMbVufg_WR4 for <bridge@lists.linux-foundation.org>;
 Thu,  6 May 2021 11:01:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08B2960753
 for <bridge@lists.linux-foundation.org>; Thu,  6 May 2021 11:01:16 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id s8so5125880wrw.10
 for <bridge@lists.linux-foundation.org>; Thu, 06 May 2021 04:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5dWfQBlf5OfCEX63KNQKTMBrmuE9VEsWTKJ/CKEXQrc=;
 b=ZJMC377CEcG3jsRUzzY486AWcII4/CnqUc4avz8c/V9BImhMrKYjPuWS8H1/3yPFu0
 4jruOYgK/YW1tTACWYlmAuZj8ADXjyOvCaMQH+0ALt//OFIU+ajp4gVPhUEZt+y56AYy
 hDj/i43py82vHd/luggzigkGkH4mv4PAeX9+6uPttoyXQIh/3aSr9/nGVXYd87L9U4Us
 PKNIuEJgR6L1LwZZW9c6fypfZgluIxEnBPoEAUeLN6nMsiuBPEpWiqLU51yqmOzIl7zd
 dTZOA5PBiFceip5KejOW6Am/VGoTDc2gOPEeC5Thrgz7kZ8YE5rfv4egIgsQruWD7t+f
 Xhag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5dWfQBlf5OfCEX63KNQKTMBrmuE9VEsWTKJ/CKEXQrc=;
 b=ICrqsprBhdVklfrG8oEuxLerGyA4YJezonqpmx0cdVes30NWUw3mdNwCzn58EruD1u
 +g4Hv+gARsc4Hi8uNFo3Z1A+hyCxh8sV2sX5mjgwfgKfFhrnUIK9ZSzWCicSIzDD+liS
 NHHic9z4VtyUMuj7RUEdeNyPH/XTCSz8peuPkUw19qU+Jo18E8U1d1nD3TYOYA0zxMsF
 qtlmNiTFsUlJra7bG7pdhyxRlbRls/kbhBrzPuSFkChdKXUOzkVHpvCQMpxS4bZlTeN9
 TzWxS0yNEP6v/DsMCGa4Plo5afNm7PaiRX2EIoq1qdJP1uNkA5pXkf2DybDpLjXwTuwE
 uptQ==
X-Gm-Message-State: AOAM533grhAyPyPXTE/V3KJiy5IY+B73A+fBViJ35O/iHHzzM4TdR1PH
 V3ITo0IlZqUHKE08JJlVjq0=
X-Google-Smtp-Source: ABdhPJzbYdd4jBCRBhgkIElCKjLRCNukmEU92WcLW5k5BctpK2k8jBbyc0dD7f63vNaKxaukVHGFIA==
X-Received: by 2002:a5d:570e:: with SMTP id a14mr4405860wrv.254.1620298875324; 
 Thu, 06 May 2021 04:01:15 -0700 (PDT)
Received: from skbuf ([86.127.41.210])
 by smtp.gmail.com with ESMTPSA id j10sm3637913wrt.32.2021.05.06.04.01.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 04:01:14 -0700 (PDT)
Date: Thu, 6 May 2021 14:01:13 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210506110113.xeb6yzh6ycxr5nxi@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-5-tobias@waldekranz.com>
 <YI6/li9hwHo8GfCm@shredder> <87eeeonqpb.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87eeeonqpb.fsf@waldekranz.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, Ido Schimmel <idosch@idosch.org>, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 4/9] net: bridge: switchdev: Forward
	offloading
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

On Mon, May 03, 2021 at 10:53:36AM +0200, Tobias Waldekranz wrote:
> On Sun, May 02, 2021 at 18:04, Ido Schimmel <idosch@idosch.org> wrote:
> > On Mon, Apr 26, 2021 at 07:04:06PM +0200, Tobias Waldekranz wrote:
> >> +static void nbp_switchdev_fwd_offload_add(struct net_bridge_port *p)
> >> +{
> >> +	void *priv;
> >> +
> >> +	if (!(p->dev->features & NETIF_F_HW_L2FW_DOFFLOAD))
> >> +		return;
> >> +
> >> +	priv = p->dev->netdev_ops->ndo_dfwd_add_station(p->dev, p->br->dev);
> >
> > Some changes to team/bond/8021q will be needed in order to get this
> > optimization to work when they are enslaved to the bridge instead of the
> > front panel port itself?
> 
> Right you are. We should probably do something similar to the
> switchdev_handle_port_* family of helpers that could be reused in
> stacked devices. I will look at it for v1.

Makes sense, issuing a switchdev notifier of some sort will allow the
switchdev driver to act upon the bridge's request for a net device
belonging to a different driver.
