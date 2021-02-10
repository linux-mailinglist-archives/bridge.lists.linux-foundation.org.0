Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 864B8317444
	for <lists.bridge@lfdr.de>; Thu, 11 Feb 2021 00:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E60F86A65;
	Wed, 10 Feb 2021 23:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLyk+OSCn0oJ; Wed, 10 Feb 2021 23:24:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C47586B68;
	Wed, 10 Feb 2021 23:24:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 69AC3C013A;
	Wed, 10 Feb 2021 23:24:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9E93BC013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 23:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 838826F5B6
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 23:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t3AYdCBM-fqx for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 23:23:57 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 9C3086F5DE; Wed, 10 Feb 2021 23:23:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 27AB56F5B6
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 23:23:56 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id b9so7100508ejy.12
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 15:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LVyB6aVFegjh/BB39Z/3gEanq6lvT/mhc2gjTlbR304=;
 b=Ltsi8EvdBtQvRjoANMJcwrISpAFLvmJ2C8VxRcxriJbvaZ1H9uMjsHWcx4k1KVwIp0
 bEprsSTU/icuARDSY1rU06I6BedOoXhuhcIgJh6jxcQt9ggsbMK3SyzdhcxnWfOWN9gT
 E5PYWDallpyZg5bnCqT7zgXoUxWsagtNa206F8EEFkBmsPO6KcpFz/zIWRjDEVcWBl3U
 m0CKh8UMubbkzKQ1GFQajoSPGu94+hVxEvlymy59SIYbcYLFwtM3w4Yu7fAPflkJsmfG
 LbzrxtfSEmjjRz3SHakXq/z1GCjoceNkpUvScCPt/IKE/L2FAZmjSB2HX9PO1F40u57g
 evTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LVyB6aVFegjh/BB39Z/3gEanq6lvT/mhc2gjTlbR304=;
 b=EcvcDX4fhi2kDGyEioXQQoxOpbsuzXENZV/4EkpoDTy91zXIdI/6r4wrHh8H8Go/uy
 UCA03vzHqSi6ZPgy/kmQcKh/yvhQDpNZzM0Bc/z35d9zWZVEXizVS2cG4BKdMqGhkmX2
 I62yxPyTIeI1VAkJHIG2uDpReSB+0+d6Fu7CRyWSkLFR+xq/TE0ZmkHkIijNV8yz2BAn
 RIwMD9xNPUAUM6BGfvYu0x2r1SdF/iofLA/2vARUaX5fEL3Lj6C1iLTSABRlNvJFksfH
 YFQ32cTS7c2SxH9NW6h+SLf8BV9W2JuZQxyxbNn78Vkg8rr5fooqnjBz78B3PHPae0Yj
 OE0w==
X-Gm-Message-State: AOAM531mFFPYejhcF9lwqfoxSzFDfKHk8MaWP4/yfYXHNolR91zYtuyE
 LDAzU861w9hd4J6JaWurB6o=
X-Google-Smtp-Source: ABdhPJzF0KSQ9DdcnciBemPnpUA2B28QOBhea1HzTO3oC0toBtKbhjUBAWV9/atUFBeQfPDx+7VJVA==
X-Received: by 2002:a17:906:8519:: with SMTP id
 i25mr5508356ejx.106.1612999434425; 
 Wed, 10 Feb 2021 15:23:54 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id w18sm2263806edt.8.2021.02.10.15.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 15:23:53 -0800 (PST)
Date: Thu, 11 Feb 2021 01:23:52 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Ido Schimmel <idosch@idosch.org>
Message-ID: <20210210232352.m7nqzvs2g4i74rx4@skbuf>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-5-olteanv@gmail.com>
 <20210209185100.GA266253@shredder.lan>
 <20210209202045.obayorcud4fg2qqb@skbuf>
 <20210209220124.GA271860@shredder.lan>
 <20210209225153.j7u6zwnpdgskvr2v@skbuf>
 <20210210105949.GB287766@shredder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210210105949.GB287766@shredder.lan>
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

On Wed, Feb 10, 2021 at 12:59:49PM +0200, Ido Schimmel wrote:
> > > The reverse, during unlinking, would be to refuse unlinking if the upper
> > > has uppers of its own. netdev_upper_dev_unlink() needs to learn to
> > > return an error and callers such as team/bond need to learn to handle
> > > it, but it seems patchable.
> >
> > Again, this was treated prior to my deletion in this series and not by
> > erroring out, I just really didn't think it through.
> >
> > So you're saying that if we impose that all switchdev drivers restrict
> > the house of cards to be constructed from the bottom up, and destructed
> > from the top down, then the notification of bridge port flags can stay
> > in the bridge layer?
>
> I actually don't think it's a good idea to have this in the bridge in
> any case. I understand that it makes sense for some devices where
> learning, flooding, etc are port attributes, but in other devices these
> can be {port,vlan} attributes and then you need to take care of them
> when a vlan is added / deleted and not only when a port is removed from
> the bridge. So for such devices this really won't save anything. I would
> thus leave it to the lower levels to decide.

Just for my understanding, how are per-{port,vlan} attributes such as
learning and flooding managed by the Linux bridge? How can I disable
flooding only in a certain VLAN?
