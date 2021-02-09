Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 359773159B7
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 23:52:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFFA06F662
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 22:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hj0IRrfUB3fZ for <lists.bridge@lfdr.de>;
	Tue,  9 Feb 2021 22:52:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 076EA6F676; Tue,  9 Feb 2021 22:52:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9458E6F4A4;
	Tue,  9 Feb 2021 22:51:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 68B06C013A;
	Tue,  9 Feb 2021 22:51:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4343C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 22:51:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DFC9986197
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 22:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h-Z2btS6FX-r for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 22:51:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D1F8185FE6
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 22:51:56 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id y9so287449ejp.10
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 14:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iIyWAOeW0XMcNsoXJ5PtY4MXLZl7m47B6NixrVZ9rLY=;
 b=QROU2sHT54xgG1rdVX7quLFP4mqoeCSQs0ThOZCX6uDYptZlkgvUpc/Ua16G2M3IIm
 9mdHcpY1TXWxExmULswJGhiblC8SQfzMkYkQWF7ZxVuKSJDzUDqNFvOVkcO2XvDg0nMw
 zyw4YLRSyDlGbE7wjuhFx4axkFNewJj6fX0wX7TpARXuhuN///jUgZHAwBtuwEI3Y65B
 d5T936dLuKJtlPkWBCd6BhOwJkMtcntkYBmGdvPtuNWqxRJaXc/Fgmk0GIujYiNrIz7e
 S3vWVSpw8FHphgotzxypXVcocDnAfs7N90I/G+oBQS1UgiBE62ZsmoWY0TKQpUgtxwO1
 lLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iIyWAOeW0XMcNsoXJ5PtY4MXLZl7m47B6NixrVZ9rLY=;
 b=sfSyC9gViI/BjQnWggU71AuAf8iaSFizAowvNDnZL9LIVHfhVe4jW3LiBcl6wEVE43
 +1D26Sc7pIm864xlwWjkbUzYJIJIX7QSYJNUyrQuuEdN6OZIXO2ZnXZId0aJJavxcBDf
 OwUJg1Av88oak+tcPlbFg05TjwcG0fBwZlfbOHx1iJ5uTDWe4G/CfY5V9d8nwM9EusGF
 M9AX6IFHjHfOk8Ciz8yk7lLWvF+JvWwMx02OEYolclkRIMBqxArxHbZxd2FDHXzAPUVw
 90z77/bnx7xSyCsqLm+kFGapRAtgT/LfK1h/N3T0tzm+WATeKcTFF/BaqaRPIqIrvacq
 eQEw==
X-Gm-Message-State: AOAM530/5JTbgyIVnyotF+gRFvHgb22f6F/5Rqx2cEO2BDfQ+MLV0lOi
 EUk62Wq9wYGlpbjkzqKRAMM=
X-Google-Smtp-Source: ABdhPJxnm/2Oy51X5r9okPXZbs0ExERqCkzNQ+8h7ASZynbjNBPmsOzitXLwMBz6MvIjMoUAhAwnvQ==
X-Received: by 2002:a17:906:560b:: with SMTP id
 f11mr25703142ejq.162.1612911115421; 
 Tue, 09 Feb 2021 14:51:55 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id ga5sm63174ejb.114.2021.02.09.14.51.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 14:51:54 -0800 (PST)
Date: Wed, 10 Feb 2021 00:51:53 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210209225153.j7u6zwnpdgskvr2v@skbuf>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-5-olteanv@gmail.com>
 <20210209185100.GA266253@shredder.lan>
 <20210209202045.obayorcud4fg2qqb@skbuf>
 <20210209220124.GA271860@shredder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209220124.GA271860@shredder.lan>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2 net-next 04/11] net: bridge: offload initial
 and final port flags through switchdev
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

On Wed, Feb 10, 2021 at 12:01:24AM +0200, Ido Schimmel wrote:
> On Tue, Feb 09, 2021 at 10:20:45PM +0200, Vladimir Oltean wrote:
> > On Tue, Feb 09, 2021 at 08:51:00PM +0200, Ido Schimmel wrote:
> > > On Tue, Feb 09, 2021 at 05:19:29PM +0200, Vladimir Oltean wrote:
> > > > So switchdev drivers operating in standalone mode should disable address
> > > > learning. As a matter of practicality, we can reduce code duplication in
> > > > drivers by having the bridge notify through switchdev of the initial and
> > > > final brport flags. Then, drivers can simply start up hardcoded for no
> > > > address learning (similar to how they already start up hardcoded for no
> > > > forwarding), then they only need to listen for
> > > > SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS and their job is basically done, no
> > > > need for special cases when the port joins or leaves the bridge etc.
> > >
> > > How are you handling the case where a port leaves a LAG that is linked
> > > to a bridge? In this case the port becomes a standalone port, but will
> > > not get this notification.
> >
> > Apparently the answer to that question is "I delete the code that makes
> > this use case work", how smart of me. Thanks.
>
> Not sure how you expect to interpret this.

Next patch (05/11) deletes that explicit notification from dsa_port_bridge_leave,
function which is called from dsa_port_lag_leave too, apparently with good reason.

> > Unless you have any idea how I could move the logic into the bridge, I
> > guess I'm stuck with DSA and all the other switchdev drivers having this
> > forest of corner cases to deal with. At least I can add a comment so I'm
> > not tempted to delete it next time.
>
> There are too many moving pieces with stacked devices. It is not only
> LAG/bridge. In L3 you have VRFs, SVIs, macvlans etc. It might be better
> to gracefully / explicitly not handle a case rather than pretending to
> handle it correctly with complex / buggy code.
>
> For example, you should refuse to be enslaved to a LAG that already has
> upper devices such as a bridge. You are probably not handling this
> correctly / at all. This is easy. Just a call to
> netdev_has_any_upper_dev().

Correct, good point, in particular this means that joining a bridged LAG
will not get me any notifications of that LAG's CHANGEUPPER because that
was consumed a long time ago. An equally valid approach seems to be to
check for netdev_master_upper_dev_get_rcu in dsa_port_lag_join, and call
dsa_port_bridge_join on the upper if that is present.

> The reverse, during unlinking, would be to refuse unlinking if the upper
> has uppers of its own. netdev_upper_dev_unlink() needs to learn to
> return an error and callers such as team/bond need to learn to handle
> it, but it seems patchable.

Again, this was treated prior to my deletion in this series and not by
erroring out, I just really didn't think it through.

So you're saying that if we impose that all switchdev drivers restrict
the house of cards to be constructed from the bottom up, and destructed
from the top down, then the notification of bridge port flags can stay
in the bridge layer?
