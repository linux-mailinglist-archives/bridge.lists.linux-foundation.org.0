Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F121851DB87
	for <lists.bridge@lfdr.de>; Fri,  6 May 2022 17:05:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BFBD60B08;
	Fri,  6 May 2022 15:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1LyXhSEUvA7; Fri,  6 May 2022 15:05:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6DEF560B5D;
	Fri,  6 May 2022 15:05:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24235C0081;
	Fri,  6 May 2022 15:05:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EAC10C002D
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 15:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4E0641549
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 15:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fkCuPlLr_nnX for <bridge@lists.linux-foundation.org>;
 Fri,  6 May 2022 15:05:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 992BC41548
 for <bridge@lists.linux-foundation.org>; Fri,  6 May 2022 15:05:44 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id x12so6327135pgj.7
 for <bridge@lists.linux-foundation.org>; Fri, 06 May 2022 08:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SrelFilWkNCqMWTtWTsaQER91a43bb9aDaGJrJzpx28=;
 b=fN29fuadLoIjoJ3lYh5AXU15YL6yc/VKSSAktaUFmlRyspIJlsbWh9Gjy1epdJoOk+
 n/VH4IoUunjmLRDhYjb1kiPuyk5gSafqSWPutjzyyKmP0SogfpYcz8fa0KTw8Filc7h6
 TaOec4GvTg21xAXB7wFWpmBECOs6J+A76jOcKvoQNA1QLZVsxp/m+AbGrB66Ny3iiFhC
 bQx8nU1hxqxwY8HB2jt7bBC9GvZOmJdAW3cLU8pQv8/Olv9nMCUQh0nKlKZe3KRYqzzJ
 HI78D2PAnNURewal18UFjgcLniNbDohTxCtXOKd1L6rm6Nfy9E8JnBk0AfJYDzHUH900
 8XPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SrelFilWkNCqMWTtWTsaQER91a43bb9aDaGJrJzpx28=;
 b=wIEJccAsyvp9OyPqadJ2P9tAUZj11eJwo+HMpWNS+fa0RL4NFxlgfQF8+hdMdbtxkU
 nYiltckX7fAiSHh29VzUp9CuEktLAzm+Rtpgrl0U7sihXU7p/n8xNkVxzrikOcWXQLXZ
 I8f4X/WZxTqS0ozYB/O2E+yJF/UIYeXR3aMw+BVf/l3yhWdC38ECPINeBS/2s4zXBJF5
 92mD2XsPMXNYjuzkYwfIFQDbucKRzQckPPkQ7fMWmdwl3pORmkQN6Rekz+0KMim8Pcz9
 twFFYeGIcxNJ2Ol0OdoJbSmKGADpSDUX78O++wKca0+PLmnsbUxLfiJ6gTHBAixwqDMb
 P/Cw==
X-Gm-Message-State: AOAM532bbkwBPmC/cL+DzAU784qKhL7rB/CzMolbNQk4a4gpZ8BwyURI
 Ii62T1knRUhKoZcTLUOfEJ8b0g==
X-Google-Smtp-Source: ABdhPJw8h3mZ3VJ2ctm9YRLg2p5smOgNFaTF2DPrH1O1FmYHJ92NPcqzA9Q8N8G2XMY/Hv27UP2EhA==
X-Received: by 2002:a05:6a00:cd4:b0:510:49f7:12a4 with SMTP id
 b20-20020a056a000cd400b0051049f712a4mr3989710pfv.59.1651849543892; 
 Fri, 06 May 2022 08:05:43 -0700 (PDT)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 j192-20020a638bc9000000b003c14af505fcsm3380500pge.20.2022.05.06.08.05.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 May 2022 08:05:43 -0700 (PDT)
Date: Fri, 6 May 2022 08:05:40 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20220506080540.5bc6094b@hermes.local>
In-Reply-To: <YnR3XikvI4tQy5IL@lunn.ch>
References: <20220505225904.342388-1-andrew@lunn.ch>
 <20220505160720.27358a55@hermes.local> <YnR3XikvI4tQy5IL@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@mellanox.com>, netdev <netdev@vger.kernel.org>,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [Bridge] [PATCH RFC] net: bridge: Clear offload_fwd_mark when
 passing frame up bridge interface.
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

On Fri, 6 May 2022 03:18:22 +0200
Andrew Lunn <andrew@lunn.ch> wrote:

> On Thu, May 05, 2022 at 04:07:20PM -0700, Stephen Hemminger wrote:
> > On Fri,  6 May 2022 00:59:04 +0200
> > Andrew Lunn <andrew@lunn.ch> wrote:
> >   
> > > It is possible to stack bridges on top of each other. Consider the
> > > following which makes use of an Ethernet switch:
> > > 
> > >        br1
> > >      /    \
> > >     /      \
> > >    /        \
> > >  br0.11    wlan0
> > >    |
> > >    br0
> > >  /  |  \
> > > p1  p2  p3
> > > 
> > > br0 is offloaded to the switch. Above br0 is a vlan interface, for
> > > vlan 11. This vlan interface is then a slave of br1. br1 also has
> > > wireless interface as a slave. This setup trunks wireless lan traffic
> > > over the copper network inside a VLAN.
> > > 
> > > A frame received on p1 which is passed up to the bridge has the
> > > skb->offload_fwd_mark flag set to true, indicating it that the switch
> > > has dealt with forwarding the frame out ports p2 and p3 as
> > > needed. This flag instructs the software bridge it does not need to
> > > pass the frame back down again. However, the flag is not getting reset
> > > when the frame is passed upwards. As a result br1 sees the flag,
> > > wrongly interprets it, and fails to forward the frame to wlan0.
> > > 
> > > When passing a frame upwards, clear the flag.
> > > 
> > > RFC because i don't know the bridge code well enough if this is the
> > > correct place to do this, and if there are any side effects, could the
> > > skb be a clone, etc.
> > > 
> > > Fixes: f1c2eddf4cb6 ("bridge: switchdev: Use an helper to clear forward mark")
> > > Signed-off-by: Andrew Lunn <andrew@lunn.ch>  
> > 
> > Bridging of bridges is not supposed to be allowed.
> > See:
> > 
> > bridge:br_if.c
> > 
> > 	/* No bridging of bridges */
> > 	if (dev->netdev_ops->ndo_start_xmit == br_dev_xmit) {
> > 		NL_SET_ERR_MSG(extack,
> > 			       "Can not enslave a bridge to a bridge");
> > 		return -ELOOP;
> > 	}  
> 
> This is not direct bridging of bridges. There is a vlan interface in
> the middle. And even if it is not supposed to work, it does work, it
> is being used, and it regressed. This fixes the regression.
> 
>    Andrew

The problem is that doing this kind of nested bridging screws up
Spanning Tree.
