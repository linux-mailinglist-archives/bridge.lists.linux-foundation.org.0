Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A2B31647F
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 12:01:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E70385A83;
	Wed, 10 Feb 2021 11:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pb6AvEzcscYJ; Wed, 10 Feb 2021 11:01:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B6578241E;
	Wed, 10 Feb 2021 11:01:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82DDFC1DA9;
	Wed, 10 Feb 2021 11:01:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 681C0C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 11:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5612B86685
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 11:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2sfxbVsoXupZ for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 11:01:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28241866A8
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 11:01:29 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id lg21so3366016ejb.3
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 03:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=P7dpeQv8L+ojJWKsv0fiRdphbgZkSj83XyvzFv1dYg0=;
 b=NQvrr1NnF2a0L8pXAXZIZvsL/Ubts/f1EJ2TKfE/MYLwTSR7Qv/LcHxZnS7IRSolZa
 cS2fczINHogZ43Y3qGfN2moX96gSK7wgy+fZH5/El+TIseIULsNYNbZbn+xhMBERH8Ye
 icQOixmyEWpBz0rv32Crn0eine21GqEoQTi+ln1Hid9Upm8ssACVg8/ic56pFMmcg70E
 Jh8V5MPS88fmX/F1hF25kj7g8hkQuSA41eBpY1zNV2hNhWQwsS6UHMICByDzBH0Et/g0
 NtOjIsSOTCWBlRZrQhHg58eTmPe3cEgyBx/RujA8au7//sRHzSDdwNo71gZomAeoe97a
 TPnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=P7dpeQv8L+ojJWKsv0fiRdphbgZkSj83XyvzFv1dYg0=;
 b=bvQ6cKZhxcPOzb4Gd5HfvyM3S+SG5DFXpWx8l9MBIOvB9RMFj3RW3RR2G9PIr6Iu+3
 fEQ/N5xf3GIJrCJIs/BDg5QJJ7fXqDUvkplcosFvH101U1HcBE70CHzlZGXqnL3YDQIa
 yeX+D3viVsXfg/acnT35r47pIHjLJXoBc/Ce7cdfCGqtC54JcO1HWSGHZW+unzJZH2iG
 IGIx6up779bfC1IJAV0s7+tEmZL1kpljsTRF5i4HhIVgFuThyYFhHOYIkhcQhCBrtIKu
 hv7oqQ+QjHF0V3NqTqM/ZWeAJnVDvz7jRYethh4cczHVQBGew2Kw01UKmQ1DGNTQlOcf
 w3UA==
X-Gm-Message-State: AOAM530QKri7hYutm0anI9U/Qo2FehsftFZqkP5V7xzpBbgRJPDIx0OG
 1i3b6Yx9GBTyPXTgR8GW/vA=
X-Google-Smtp-Source: ABdhPJx9VLiGy+Om+X1nAlGvbd7spo1/LgTCR/DrcqKAW8bcZ1lZtY4ypRO/j0O2SWO4alp4zprMng==
X-Received: by 2002:a17:906:c0d7:: with SMTP id
 bn23mr2382408ejb.94.1612954887653; 
 Wed, 10 Feb 2021 03:01:27 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id cf25sm861074ejb.71.2021.02.10.03.01.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 03:01:26 -0800 (PST)
Date: Wed, 10 Feb 2021 13:01:25 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210210110125.rw6fvjtsqmmuglcg@skbuf>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <a8e9284b-f0a6-0343-175d-8c323371ef8d@nvidia.com>
 <20210210104549.ga3lgjafn5x3htwj@skbuf>
 <a58e9615-036c-0431-4ea6-004af4988b27@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a58e9615-036c-0431-4ea6-004af4988b27@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v3 net-next 00/11] Cleanup in brport flags
 switchdev offload for DSA
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

On Wed, Feb 10, 2021 at 12:52:33PM +0200, Nikolay Aleksandrov wrote:
> On 10/02/2021 12:45, Vladimir Oltean wrote:
> > Hi Nikolay,
> > 
> > On Wed, Feb 10, 2021 at 12:31:43PM +0200, Nikolay Aleksandrov wrote:
> >> Hi Vladimir,
> >> Let's take a step back for a moment and discuss the bridge unlock/lock sequences
> >> that come with this set. I'd really like to avoid those as they're a recipe
> >> for future problems. The only good way to achieve that currently is to keep
> >> the PRE_FLAGS call and do that in unsleepable context but move the FLAGS call
> >> after the flags have been changed (if they have changed obviously). That would
> >> make the code read much easier since we'll have all our lock/unlock sequences
> >> in the same code blocks and won't play games to get sleepable context.
> >> Please let's think and work in that direction, rather than having:
> >> +	spin_lock_bh(&p->br->lock);
> >> +	if (err) {
> >> +		netdev_err(p->dev, "%s\n", extack._msg);
> >> +		return err;
> >>  	}
> >> +
> >>
> >> which immediately looks like a bug even though after some code checking we can
> >> verify it's ok. WDYT?
> >>
> >> I plan to get rid of most of the br->lock since it's been abused for a very long
> >> time because it's essentially STP lock, but people have started using it for other
> >> things and I plan to fix that when I get more time.
> > 
> > This won't make the sysfs codepath any nicer, will it?
> > 
> 
> Currently we'll have to live with a hack that checks if the flags have changed. I agree
> it won't be pretty, but we won't have to unlock and lock again in the middle of the 
> called function and we'll have all our locking in the same place, easier to verify and
> later easier to remove. Once I get rid of most of the br->lock usage we can revisit
> the drop of PRE_FLAGS if it's a problem. The alternative is to change the flags, then
> send the switchdev notification outside of the lock and revert the flags if it doesn't
> go through which doesn't sound much better.
> I'm open to any other suggestions, but definitely would like to avoid playing locking games.
> Even if it means casing out flag setting from all other store_ functions for sysfs.

By casing out flag settings you mean something like this?


#define BRPORT_ATTR(_name, _mode, _show, _store)		\
const struct brport_attribute brport_attr_##_name = { 	        \
	.attr = {.name = __stringify(_name), 			\
		 .mode = _mode },				\
	.show	= _show,					\
	.store_unlocked	= _store,				\
};

#define BRPORT_ATTR_FLAG(_name, _mask)				\
static ssize_t show_##_name(struct net_bridge_port *p, char *buf) \
{								\
	return sprintf(buf, "%d\n", !!(p->flags & _mask));	\
}								\
static int store_##_name(struct net_bridge_port *p, unsigned long v) \
{								\
	return store_flag(p, v, _mask);				\
}								\
static BRPORT_ATTR(_name, 0644,					\
		   show_##_name, store_##_name)

static ssize_t brport_store(struct kobject *kobj,
			    struct attribute *attr,
			    const char *buf, size_t count)
{
	...

	} else if (brport_attr->store_unlocked) {
		val = simple_strtoul(buf, &endp, 0);
		if (endp == buf)
			goto out_unlock;
		ret = brport_attr->store_unlocked(p, val);
	}
