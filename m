Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D81783EA2E4
	for <lists.bridge@lfdr.de>; Thu, 12 Aug 2021 12:17:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DA8D405F7;
	Thu, 12 Aug 2021 10:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCnfcMvFlfSr; Thu, 12 Aug 2021 10:17:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7911A40626;
	Thu, 12 Aug 2021 10:17:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 32D44C0022;
	Thu, 12 Aug 2021 10:17:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BD572C000E
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 10:17:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A041E82896
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 10:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TfOPReAMb0Fg for <bridge@lists.linux-foundation.org>;
 Thu, 12 Aug 2021 10:17:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8B5782897
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 10:17:07 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id go31so10495658ejc.6
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 03:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QKSZMx3tYUS3bL0IF6JnGJC/q4lllMMZybPbkde8fbY=;
 b=uKS8E3WYxYhuLOuJuTONzYsxliI8X8JiM9JMzHFbTpTHKW/S23UfEzKgb63Nfq0dMc
 5VTwTGgUUTsloLIAGMIupEqq4WhD3NnG023l4d9RtwNSxiJqyFzeCLqUFchwGo0U/gXo
 BRkalXCiFJELZ0eS13IYNrdFuuUZDRT7gDITAbFZFm9fX3ZNGjixYHD3xRFCo4xqXtq7
 CReob6vyHWlZhJ8+unXnpbmqKOSCXgW+m5Pfug9dmg9tWufViCzLaP2o9mRGL2OdhxSr
 EdtXav5bsBmGero1Xk2SKjI/n28hpL0M9YcduNbD5rWbzuHh8h23f11leebnUt35XMla
 KjMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QKSZMx3tYUS3bL0IF6JnGJC/q4lllMMZybPbkde8fbY=;
 b=cukl2EMFx6zJnMrkxmlpAQqA0qMVYG6+4P9K46/MBAG55LQ9LoKcHW2B61FC24fxsX
 8AIYZQipE91+QfttEXrwI/0C6n5XNu1y9Aq5i2kgp4US3PuR6xQ6UwbwX31WBLgKZPZb
 6HNp5nEFaVB1kBG12QYBtGl5fW4HjRqeN/avhXGEJxzq4X0QWJP/Eoq3TNYWTmlydnqD
 IkO6V/nLblo0YR/5vSfhDi5+d9/RLIWnrvuXmgxUAwLWBW7qNvJSJDenPRLwlvZrrzJn
 GCbQV4OFlvIub6HLBZMPPORydbob274dN7m0b5vx+KlSW2NRkaa6aHZDelbky3aSj3vj
 8dEg==
X-Gm-Message-State: AOAM530joc/mkVxr6Z5Fxs/Tx9T7sEyri1QsuGzPv3DA1meTvMZWIwOw
 U9w1/dTKtjv4Y1uiE69d9QY=
X-Google-Smtp-Source: ABdhPJw58nbLNRoQwhOvpBchfzaiXBu3AdywPlliVWiuXvXz0Km6IEDviegJ37Ul4ALHnTu55V33Ug==
X-Received: by 2002:a17:906:9b1:: with SMTP id
 q17mr2894045eje.546.1628763425870; 
 Thu, 12 Aug 2021 03:17:05 -0700 (PDT)
Received: from skbuf ([188.25.144.60])
 by smtp.gmail.com with ESMTPSA id q14sm898222edr.0.2021.08.12.03.17.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 03:17:04 -0700 (PDT)
Date: Thu, 12 Aug 2021 13:17:03 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: DENG Qingfang <dqfext@gmail.com>
Message-ID: <20210812101703.lwp7y7dq6pnmnj3b@skbuf>
References: <20210811135247.1703496-1-dqfext@gmail.com>
 <YRRDcGWaWHgBkNhQ@shredder> <20210811214506.4pf5t3wgabs5blqj@skbuf>
 <YRRGsL60WeDGQOnv@shredder> <20210811215833.yst5tzgfvih2q4y2@skbuf>
 <20210812060410.1848228-1-dqfext@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210812060410.1848228-1-dqfext@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:ETHERNET BRIDGE" <netdev@vger.kernel.org>,
 "moderated list:ETHERNET BRIDGE" <bridge@lists.linux-foundation.org>,
 open list <linux-kernel@vger.kernel.org>, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: switchdev: allow port
 isolation to be offloaded
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

On Thu, Aug 12, 2021 at 02:04:10PM +0800, DENG Qingfang wrote:
> On Thu, Aug 12, 2021 at 12:58:33AM +0300, Vladimir Oltean wrote:
> > On Thu, Aug 12, 2021 at 12:52:48AM +0300, Ido Schimmel wrote:
> > >
> > > If the purpose is correctness, then this is not the only flag that was
> > > missed. BR_HAIRPIN_MODE is also relevant for the data path, for example.
> >
> > I never wanted to suggest that I'm giving a comprehensive answer, I just
> > answered Qingfang's punctual question here:
> > https://lore.kernel.org/netdev/CALW65jbotyW0MSOd-bd1TH_mkiBWhhRCQ29jgn+d12rXdj2pZA@mail.gmail.com/
> >
> > Tobias also pointed out the same issue about BR_MULTICAST_TO_UNICAST in
> > conjunction with tx_fwd_offload (although the same is probably true even
> > without it):
> > https://patchwork.kernel.org/project/netdevbpf/cover/20210426170411.1789186-1-tobias@waldekranz.com/
> >
> > > Anyway, the commit message needs to be reworded to reflect the true
> > > purpose of the patch.
> >
> > Agree, and potentially extended with all the bridge port flags which are
> > broken without switchdev driver intervention.
>
> So, what else flags should be added to BR_PORT_FLAGS_HW_OFFLOAD?

I can't think of others beside these 3, BR_ISOLATED, BR_HAIRPIN_MODE and BR_MULTICAST_TO_UNICAST.
