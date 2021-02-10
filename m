Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D806316678
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 13:21:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD06286755;
	Wed, 10 Feb 2021 12:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id elo9b8vgMGgm; Wed, 10 Feb 2021 12:21:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D8ED8670F;
	Wed, 10 Feb 2021 12:21:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7646AC1DA9;
	Wed, 10 Feb 2021 12:21:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6C940C013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 12:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5701186755
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 12:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3m0MAl09M4dC for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 12:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9077A8670F
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 12:21:12 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id BCB06580339;
 Wed, 10 Feb 2021 07:21:10 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 10 Feb 2021 07:21:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=59eIP6
 iK5oAsEPF1K6utOmxjB3gKIo17MRsOnasTigk=; b=VabUQI+zRdUii7LJ/wA//r
 LziKohXq3ARhXQ0lsWKKSaXWzTpEGcKOvUkd5X8BQRt8riuCpMsbTi364D0WYitJ
 Zv8TjMu1ffS0SwKjrLj9hyOgxpTp2T89DrkcA6whLsdeJ5W+1D1uHKOIuAkQnTcQ
 7v/d+BichBUN/fXbmblAFFexxEpUpTdWwYs70Rkwh71CTNzlSLGnOvEcJoIUVhux
 YWFuVliqGIqECMOl+r+f3gZgAjcu79rbMxGXhatmGvh00UK/U5ujhy8daiEQF3sp
 Azg3LiDkAWh/4nEqaHr4w/TtjsXObzWTmddx5svMHWX9sJHFoZNsByNdxJhdZXVQ
 ==
X-ME-Sender: <xms:tM8jYMRpibJPGeFF0Qd0mUkTxgYwfL4Lrh9fjNbdGUNbkcQi5uio9g>
 <xme:tM8jYJw8LjpZR_M1gL_gDLU4YupTaISNw4YJmk4GpYqztMc_FHqFbAYZh0GJ3D3cM
 B1pO8WcLCJG6Y4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheejgdeflecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necukfhppeekgedrvddvledrudehfedrgeegnecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:tM8jYJ1OVG_dKkuuLubTN_AEABOeiTEqBDQulkTWA1aS_-h2QUnw-A>
 <xmx:tM8jYADzJQlAAqP6hqOthEX1X6rT_r2lST79q1WamjZzuyIbJYOHHg>
 <xmx:tM8jYFg7vj2Dlo4v4oHFv2xfJeUaN3yolqJmfftYUGgQT8cn4M5nuQ>
 <xmx:ts8jYMXEH6bxSH47zwN_J5GfYwko34yUzj_eo2VYz-eHsrXiDF8XdA>
Received: from localhost (igld-84-229-153-44.inter.net.il [84.229.153.44])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4ECB8240057;
 Wed, 10 Feb 2021 07:21:08 -0500 (EST)
Date: Wed, 10 Feb 2021 14:21:05 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20210210122105.GA294287@shredder.lan>
References: <20210210091445.741269-1-olteanv@gmail.com>
 <a8e9284b-f0a6-0343-175d-8c323371ef8d@nvidia.com>
 <20210210104549.ga3lgjafn5x3htwj@skbuf>
 <a58e9615-036c-0431-4ea6-004af4988b27@nvidia.com>
 <20210210110125.rw6fvjtsqmmuglcg@skbuf>
 <90b255e6-efd2-b234-7bfc-4285331e56b1@nvidia.com>
 <20210210120106.g7blqje3wq4j5l6j@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210210120106.g7blqje3wq4j5l6j@skbuf>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, linux-omap@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Taras Chornyi <tchornyi@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, UNGLinuxDriver@microchip.com,
 Vivien Didelot <vivien.didelot@gmail.com>
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

On Wed, Feb 10, 2021 at 02:01:06PM +0200, Vladimir Oltean wrote:
> On Wed, Feb 10, 2021 at 01:05:57PM +0200, Nikolay Aleksandrov wrote:
> > On 10/02/2021 13:01, Vladimir Oltean wrote:
> > > On Wed, Feb 10, 2021 at 12:52:33PM +0200, Nikolay Aleksandrov wrote:
> > >> On 10/02/2021 12:45, Vladimir Oltean wrote:
> > >>> Hi Nikolay,
> > >>>
> > >>> On Wed, Feb 10, 2021 at 12:31:43PM +0200, Nikolay Aleksandrov wrote:
> > >>>> Hi Vladimir,
> > >>>> Let's take a step back for a moment and discuss the bridge unlock/lock sequences
> > >>>> that come with this set. I'd really like to avoid those as they're a recipe
> > >>>> for future problems. The only good way to achieve that currently is to keep
> > >>>> the PRE_FLAGS call and do that in unsleepable context but move the FLAGS call
> > >>>> after the flags have been changed (if they have changed obviously). That would
> > >>>> make the code read much easier since we'll have all our lock/unlock sequences
> > >>>> in the same code blocks and won't play games to get sleepable context.
> > >>>> Please let's think and work in that direction, rather than having:
> > >>>> +	spin_lock_bh(&p->br->lock);
> > >>>> +	if (err) {
> > >>>> +		netdev_err(p->dev, "%s\n", extack._msg);
> > >>>> +		return err;
> > >>>>  	}
> > >>>> +
> > >>>>
> > >>>> which immediately looks like a bug even though after some code checking we can
> > >>>> verify it's ok. WDYT?
> > >>>>
> > >>>> I plan to get rid of most of the br->lock since it's been abused for a very long
> > >>>> time because it's essentially STP lock, but people have started using it for other
> > >>>> things and I plan to fix that when I get more time.
> > >>>
> > >>> This won't make the sysfs codepath any nicer, will it?
> > >>>
> > >>
> > >> Currently we'll have to live with a hack that checks if the flags have changed. I agree
> > >> it won't be pretty, but we won't have to unlock and lock again in the middle of the
> > >> called function and we'll have all our locking in the same place, easier to verify and
> > >> later easier to remove. Once I get rid of most of the br->lock usage we can revisit
> > >> the drop of PRE_FLAGS if it's a problem. The alternative is to change the flags, then
> > >> send the switchdev notification outside of the lock and revert the flags if it doesn't
> > >> go through which doesn't sound much better.
> > >> I'm open to any other suggestions, but definitely would like to avoid playing locking games.
> > >> Even if it means casing out flag setting from all other store_ functions for sysfs.
> > >
> > > By casing out flag settings you mean something like this?
> > >
> > >
> > > #define BRPORT_ATTR(_name, _mode, _show, _store)		\
> > > const struct brport_attribute brport_attr_##_name = { 	        \
> > > 	.attr = {.name = __stringify(_name), 			\
> > > 		 .mode = _mode },				\
> > > 	.show	= _show,					\
> > > 	.store_unlocked	= _store,				\
> > > };
> > >
> > > #define BRPORT_ATTR_FLAG(_name, _mask)				\
> > > static ssize_t show_##_name(struct net_bridge_port *p, char *buf) \
> > > {								\
> > > 	return sprintf(buf, "%d\n", !!(p->flags & _mask));	\
> > > }								\
> > > static int store_##_name(struct net_bridge_port *p, unsigned long v) \
> > > {								\
> > > 	return store_flag(p, v, _mask);				\
> > > }								\
> > > static BRPORT_ATTR(_name, 0644,					\
> > > 		   show_##_name, store_##_name)
> > >
> > > static ssize_t brport_store(struct kobject *kobj,
> > > 			    struct attribute *attr,
> > > 			    const char *buf, size_t count)
> > > {
> > > 	...
> > >
> > > 	} else if (brport_attr->store_unlocked) {
> > > 		val = simple_strtoul(buf, &endp, 0);
> > > 		if (endp == buf)
> > > 			goto out_unlock;
> > > 		ret = brport_attr->store_unlocked(p, val);
> > > 	}
> > >
> >
> > Yes, this can work but will need a bit more changes because of br_port_flags_change().
> > Then the netlink side can be modeled in a similar way.
> 
> What I just don't understand is how others can get away with doing
> sleepable work in atomic context but I can't make the notifier blocking
> by dropping a spinlock which isn't needed there, because it looks ugly :D

Can you please point to the bug? I'm not following
