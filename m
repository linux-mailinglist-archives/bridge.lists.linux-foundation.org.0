Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7556060DD
	for <lists.bridge@lfdr.de>; Thu, 20 Oct 2022 15:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB238401E1;
	Thu, 20 Oct 2022 13:02:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB238401E1
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=OMAxspuf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kxfWscDxIuhq; Thu, 20 Oct 2022 13:02:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0674840198;
	Thu, 20 Oct 2022 13:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0674840198
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 977C6C0078;
	Thu, 20 Oct 2022 13:02:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BC9F6C002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:02:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91997842A7
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:02:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91997842A7
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=OMAxspuf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCHGCGuHZJCS for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 13:02:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78704842A6
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78704842A6
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 13:02:33 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id m15so29746930edb.13
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 06:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=3lUJaqu0J8uHiOqGzROFev5mvIptXzWIUlXDpg3Z7v8=;
 b=OMAxspufhBThmNShqa9UUDLPIBfzy7SZQc9dTZqpHU9Nlnt4O9ljoooqZkbDyQd5Wn
 gzIYe/LUJPI+ct8FN0Hi+S81HlfU7bPbcI0jAPSx43zoBQA7RP3DT1NUiRp0BipoagMe
 WM3BmOW+ag3j6MR7sNwwjfrrO6SQgW2CZxNW29anlb5TXwu8T542j57m+tr8sau23fD2
 kxdCniKunD5niZy3zxJkYdspCehbofu9E4eXyD9AJp+4tZDE7xEMSqpAMCdFj0BFxKXF
 nl0p/5bDAgJzZtUFKR+Qc2N0DnlSLU/UBg7ArX+2Ozcm8hbjyJ+w6M5zkFwbGKhOicd6
 R0Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3lUJaqu0J8uHiOqGzROFev5mvIptXzWIUlXDpg3Z7v8=;
 b=cZk91L+anijGyZTv9aE+rCbvSDQnRuqSP27IBQ1aCbwMGfm56qWmS/Aw8pVqq4dPjL
 KonTNGlyl20n1dzC0L4qELBPjARWR21X2jxroXfD2o4wVyX5PltfFNb9BOgfC4rTu3Vi
 wv38J/1XsFvfzt3UE7oLNnQ1+r0ReAs08A/kAS9pJEIhIbjhjfOB9FWmz6f7tQMhOafO
 rg0w3NqGoUiaIEIuOp986iBYisjQfJ3q0m9+XtoJhnvkkSrFskOpffC/0EnAE46eV7pS
 bhqG4/aunzlTkgDeW23Oc6ObMYdePw4u9m6bK7C6e1aU2KmlhfRdZJjnfsixykMtZ6W4
 EzrQ==
X-Gm-Message-State: ACrzQf1rUHbGqflNdD5uI7+ArcHi5/FHTxHW9cskuTyHQpknfkECe1SD
 aVwrKELvRNfg3SilzYfngnA=
X-Google-Smtp-Source: AMsMyM4+6PM374Gyj2DQv2/S/zfoLY99XPugKikNwQJG38eZyHqATg8FtfwMPB9B1Y+1v9AuCZinNA==
X-Received: by 2002:a05:6402:1e8e:b0:45c:af84:63dd with SMTP id
 f14-20020a0564021e8e00b0045caf8463ddmr12189234edf.190.1666270950925; 
 Thu, 20 Oct 2022 06:02:30 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 g16-20020a056402115000b004575085bf18sm11938026edw.74.2022.10.20.06.02.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 06:02:28 -0700 (PDT)
Date: Thu, 20 Oct 2022 16:02:24 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: "Hans J. Schultz" <netdev@kapio-technology.com>
Message-ID: <20221020130224.6ralzvteoxfdwseb@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
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
Subject: Re: [Bridge] [PATCH v8 net-next 05/12] net: dsa: propagate the
 locked flag down through the DSA layer
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

On Tue, Oct 18, 2022 at 06:56:12PM +0200, Hans J. Schultz wrote:
> Add a new u16 for fdb flags to propagate through the DSA layer towards the
> fdb add and del functions of the drivers.
> 
> Signed-off-by: Hans J. Schultz <netdev@kapio-technology.com>
> ---
>  include/net/dsa.h  |  2 ++
>  net/dsa/dsa_priv.h |  6 ++++--
>  net/dsa/port.c     | 10 ++++++----
>  net/dsa/slave.c    | 10 ++++++++--
>  net/dsa/switch.c   | 16 ++++++++--------
>  5 files changed, 28 insertions(+), 16 deletions(-)
> 
> diff --git a/include/net/dsa.h b/include/net/dsa.h
> index ee369670e20e..e4b641b20713 100644
> --- a/include/net/dsa.h
> +++ b/include/net/dsa.h
> @@ -821,6 +821,8 @@ static inline bool dsa_port_tree_same(const struct dsa_port *a,
>  	return a->ds->dst == b->ds->dst;
>  }
>  
> +#define DSA_FDB_FLAG_LOCKED		(1 << 0)
> +
>  typedef int dsa_fdb_dump_cb_t(const unsigned char *addr, u16 vid,
>  			      bool is_static, void *data);
>  struct dsa_switch_ops {
> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
> index 6e65c7ffd6f3..c943e8934063 100644
> --- a/net/dsa/dsa_priv.h
> +++ b/net/dsa/dsa_priv.h
> @@ -65,6 +65,7 @@ struct dsa_notifier_fdb_info {
>  	const struct dsa_port *dp;
>  	const unsigned char *addr;
>  	u16 vid;
> +	u16 fdb_flags;
>  	struct dsa_db db;
>  };
>  
> @@ -131,6 +132,7 @@ struct dsa_switchdev_event_work {
>  	 */
>  	unsigned char addr[ETH_ALEN];
>  	u16 vid;
> +	u16 fdb_flags;
>  	bool host_addr;
>  };
>  
> @@ -241,9 +243,9 @@ int dsa_port_vlan_msti(struct dsa_port *dp,
>  		       const struct switchdev_vlan_msti *msti);
>  int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu);
>  int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
> -		     u16 vid);
> +		     u16 vid, u16 fdb_flags);
>  int dsa_port_fdb_del(struct dsa_port *dp, const unsigned char *addr,
> -		     u16 vid);
> +		     u16 vid, u16 fdb_flags);
>  int dsa_port_standalone_host_fdb_add(struct dsa_port *dp,
>  				     const unsigned char *addr, u16 vid);
>  int dsa_port_standalone_host_fdb_del(struct dsa_port *dp,
> diff --git a/net/dsa/port.c b/net/dsa/port.c
> index 208168276995..ff4f66f14d39 100644
> --- a/net/dsa/port.c
> +++ b/net/dsa/port.c
> @@ -304,7 +304,7 @@ static int dsa_port_inherit_brport_flags(struct dsa_port *dp,
>  					 struct netlink_ext_ack *extack)
>  {
>  	const unsigned long mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
> -				   BR_BCAST_FLOOD | BR_PORT_LOCKED;
> +				   BR_BCAST_FLOOD;
>  	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
>  	int flag, err;
>  
> @@ -328,7 +328,7 @@ static void dsa_port_clear_brport_flags(struct dsa_port *dp)
>  {
>  	const unsigned long val = BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD;
>  	const unsigned long mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
> -				   BR_BCAST_FLOOD | BR_PORT_LOCKED;
> +				   BR_BCAST_FLOOD | BR_PORT_LOCKED | BR_PORT_MAB;

Why does the mask of cleared brport flags differ from the one of set
brport flags, and what/where is the explanation for this change?

>  	int flag, err;
>  
>  	for_each_set_bit(flag, &mask, 32) {
> @@ -956,12 +956,13 @@ int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu)
>  }
>  
>  int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
> -		     u16 vid)
> +		     u16 vid, u16 fdb_flags)
>  {
>  	struct dsa_notifier_fdb_info info = {
>  		.dp = dp,
>  		.addr = addr,
>  		.vid = vid,
> +		.fdb_flags = fdb_flags,
>  		.db = {
>  			.type = DSA_DB_BRIDGE,
>  			.bridge = *dp->bridge,
> @@ -979,12 +980,13 @@ int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
>  }
>  
>  int dsa_port_fdb_del(struct dsa_port *dp, const unsigned char *addr,
> -		     u16 vid)
> +		     u16 vid, u16 fdb_flags)
>  {
>  	struct dsa_notifier_fdb_info info = {
>  		.dp = dp,
>  		.addr = addr,
>  		.vid = vid,
> +		.fdb_flags = fdb_flags,
>  		.db = {
>  			.type = DSA_DB_BRIDGE,
>  			.bridge = *dp->bridge,
> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> index 1a59918d3b30..65f0c578ef44 100644
> --- a/net/dsa/slave.c
> +++ b/net/dsa/slave.c
> @@ -3246,6 +3246,7 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
>  		container_of(work, struct dsa_switchdev_event_work, work);
>  	const unsigned char *addr = switchdev_work->addr;
>  	struct net_device *dev = switchdev_work->dev;
> +	u16 fdb_flags = switchdev_work->fdb_flags;
>  	u16 vid = switchdev_work->vid;
>  	struct dsa_switch *ds;
>  	struct dsa_port *dp;
> @@ -3261,7 +3262,7 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
>  		else if (dp->lag)
>  			err = dsa_port_lag_fdb_add(dp, addr, vid);
>  		else
> -			err = dsa_port_fdb_add(dp, addr, vid);
> +			err = dsa_port_fdb_add(dp, addr, vid, fdb_flags);
>  		if (err) {
>  			dev_err(ds->dev,
>  				"port %d failed to add %pM vid %d to fdb: %d\n",
> @@ -3277,7 +3278,7 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
>  		else if (dp->lag)
>  			err = dsa_port_lag_fdb_del(dp, addr, vid);
>  		else
> -			err = dsa_port_fdb_del(dp, addr, vid);
> +			err = dsa_port_fdb_del(dp, addr, vid, fdb_flags);
>  		if (err) {
>  			dev_err(ds->dev,
>  				"port %d failed to delete %pM vid %d from fdb: %d\n",
> @@ -3315,6 +3316,7 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>  	struct dsa_port *dp = dsa_slave_to_port(dev);
>  	bool host_addr = fdb_info->is_local;
>  	struct dsa_switch *ds = dp->ds;
> +	u16 fdb_flags = 0;
>  
>  	if (ctx && ctx != dp)
>  		return 0;
> @@ -3361,6 +3363,9 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>  		   orig_dev->name, fdb_info->addr, fdb_info->vid,
>  		   host_addr ? " as host address" : "");
>  
> +	if (fdb_info->locked)
> +		fdb_flags |= DSA_FDB_FLAG_LOCKED;

This is the bridge->driver direction. In which of the changes up until
now/through which mechanism will the bridge emit a
SWITCHDEV_FDB_ADD_TO_DEVICE with fdb_info->locked = true?

Don't the other switchdev drivers except DSA (search for SWITCHDEV_FDB_EVENT_TO_DEVICE
in the drivers/ folder) need to handle this new flag too, even if to reject it?

When other drivers will want to look at fdb_info->locked, they'll have
the surprise that it's impossible to maintain backwards compatibility,
because they didn't use to treat the flag at all in the past (so either
locked or unlocked, they did the same thing).

> +
>  	INIT_WORK(&switchdev_work->work, dsa_slave_switchdev_event_work);
>  	switchdev_work->event = event;
>  	switchdev_work->dev = dev;
> @@ -3369,6 +3374,7 @@ static int dsa_slave_fdb_event(struct net_device *dev,
>  	ether_addr_copy(switchdev_work->addr, fdb_info->addr);
>  	switchdev_work->vid = fdb_info->vid;
>  	switchdev_work->host_addr = host_addr;
> +	switchdev_work->fdb_flags = fdb_flags;
