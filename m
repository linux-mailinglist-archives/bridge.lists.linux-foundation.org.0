Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD2B4DADB1
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 10:46:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8B7C60B4C;
	Wed, 16 Mar 2022 09:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IrPd_SdN5b9q; Wed, 16 Mar 2022 09:46:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 42ACC60B2E;
	Wed, 16 Mar 2022 09:46:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EACF1C0033;
	Wed, 16 Mar 2022 09:46:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9022AC000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 09:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F1CD81334
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 09:46:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2a50ktokhOWm for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 09:45:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E56D8132D
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 09:45:59 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id bn33so2349238ljb.6
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 02:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=5y2pdxZ7bC6EtywS/DmFt1BlAK6B4ynNC7TgewTvXeQ=;
 b=X9XrwjgNaOIIzebAqxnpZbT7DK0bnz/3x0LLPI/MYrKzZjqDubYUX3AViDUoIh0eCM
 5d/LI2oR6TsM/1Eis9wAOhYUdOvpZhfuvtwd9ULwCjv+4RMXb1ySAL/GZf2dZDvmdZe5
 TmUGGk2fj/ESuIPAID52GS6+ROJHqcCoYqXM5Tnj/gH2VOms3j/A38ONjjqBUHQafq4F
 Pg6saO8Di3/AkTwANeNeM1jL62CKeJ8NMkIZotFM4g/VUcy7NXoW1W4qlWk8HXVFsP+s
 p93yicEHSwUQwmdhKfAZBvVib1B6NMCB2IqFR5AetzLpmP7KfFuQ8/iuBSWWt1HOoJWo
 hpDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=5y2pdxZ7bC6EtywS/DmFt1BlAK6B4ynNC7TgewTvXeQ=;
 b=NA3FVtXKfy29yxvV/CIFQqvALY/5BFm9oLZkLDd4xELBiBIxhI7dUBTajMrSeqnL5l
 RlU5FoL3l8kKeu2fF3MoL4/LUO7mUCyYYzwp+u3Hsctce8S1rzwb1FsKVfL0NXmyp4FV
 boYlQo2mSCjFe3rHsV4TyEkpq+z7ZCkDc31D87X+0yPml7kpd9wWxuB+9DntJG3uEsL8
 LC7BAaerNfV1WI7MpAMfp5UOQ0+g5rff6NHoRBb70Se4wX/3YS1Go4lKhZwpW3v5H3RL
 lNDby6Z16BVpi7CO+ZEkZl/cNXEroncgFAscgZ1EskUi1L49rUMV+NyxDPTLcowAvxPj
 6xtg==
X-Gm-Message-State: AOAM531LSBZaZwZIL8ZQK7CnnSu15s1ub7/zuyoeqcjI9nfqozmIjcZl
 mkxq187z3bkhr4a9eXVkJ0t2tvrM+sWdEg78s68=
X-Google-Smtp-Source: ABdhPJwazBQDiDN7XvGW2FniIHKOv50xg2pqT+bVzr9TUR2+VQEsBwI/Jvf0bRMOoYMPa8yUOjjOPw==
X-Received: by 2002:a2e:3e17:0:b0:247:ed02:7ec4 with SMTP id
 l23-20020a2e3e17000000b00247ed027ec4mr19371077lja.76.1647423957127; 
 Wed, 16 Mar 2022 02:45:57 -0700 (PDT)
Received: from wkz-x280 (a124.broadband3.quicknet.se. [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id
 h6-20020a2e5306000000b00247e893075asm139349ljb.37.2022.03.16.02.45.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 02:45:56 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20220315164249.sjgi6wbdpgehc6m6@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-13-tobias@waldekranz.com>
 <20220315164249.sjgi6wbdpgehc6m6@skbuf>
Date: Wed, 16 Mar 2022 10:45:55 +0100
Message-ID: <87zglqjkmk.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 12/15] net: dsa: Handle MST state
	changes
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

On Tue, Mar 15, 2022 at 18:42, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Tue, Mar 15, 2022 at 01:25:40AM +0100, Tobias Waldekranz wrote:
>> Add the usual trampoline functionality from the generic DSA layer down
>> to the drivers for MST state changes.
>> 
>> When a state changes to disabled/blocking/listening, make sure to fast
>> age any dynamic entries in the affected VLANs (those controlled by the
>> MSTI in question).
>> 
>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>> ---
>>  include/net/dsa.h  |  3 ++
>>  net/dsa/dsa_priv.h |  2 ++
>>  net/dsa/port.c     | 70 +++++++++++++++++++++++++++++++++++++++++++---
>>  net/dsa/slave.c    |  6 ++++
>>  4 files changed, 77 insertions(+), 4 deletions(-)
>> 
>> diff --git a/include/net/dsa.h b/include/net/dsa.h
>> index 1ddaa2cc5842..0f369f2e9a97 100644
>> --- a/include/net/dsa.h
>> +++ b/include/net/dsa.h
>> @@ -945,7 +945,10 @@ struct dsa_switch_ops {
>>  				     struct dsa_bridge bridge);
>>  	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
>>  				      u8 state);
>> +	int	(*port_mst_state_set)(struct dsa_switch *ds, int port,
>> +				      const struct switchdev_mst_state *state);
>>  	void	(*port_fast_age)(struct dsa_switch *ds, int port);
>> +	int	(*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid);
>>  	int	(*port_pre_bridge_flags)(struct dsa_switch *ds, int port,
>>  					 struct switchdev_brport_flags flags,
>>  					 struct netlink_ext_ack *extack);
>> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
>> index d90b4cf0c9d2..2ae8996cf7c8 100644
>> --- a/net/dsa/dsa_priv.h
>> +++ b/net/dsa/dsa_priv.h
>> @@ -215,6 +215,8 @@ static inline struct net_device *dsa_master_find_slave(struct net_device *dev,
>>  void dsa_port_set_tag_protocol(struct dsa_port *cpu_dp,
>>  			       const struct dsa_device_ops *tag_ops);
>>  int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age);
>> +int dsa_port_set_mst_state(struct dsa_port *dp,
>> +			   const struct switchdev_mst_state *state);
>>  int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy);
>>  int dsa_port_enable(struct dsa_port *dp, struct phy_device *phy);
>>  void dsa_port_disable_rt(struct dsa_port *dp);
>> diff --git a/net/dsa/port.c b/net/dsa/port.c
>> index 3ac114f6fc22..a2a817bb77b1 100644
>> --- a/net/dsa/port.c
>> +++ b/net/dsa/port.c
>> @@ -30,12 +30,11 @@ static int dsa_port_notify(const struct dsa_port *dp, unsigned long e, void *v)
>>  	return dsa_tree_notify(dp->ds->dst, e, v);
>>  }
>>  
>> -static void dsa_port_notify_bridge_fdb_flush(const struct dsa_port *dp)
>> +static void dsa_port_notify_bridge_fdb_flush(const struct dsa_port *dp, u16 vid)
>>  {
>>  	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
>>  	struct switchdev_notifier_fdb_info info = {
>> -		/* flush all VLANs */
>> -		.vid = 0,
>> +		.vid = vid,
>>  	};
>>  
>>  	/* When the port becomes standalone it has already left the bridge.
>> @@ -57,7 +56,42 @@ static void dsa_port_fast_age(const struct dsa_port *dp)
>>  
>>  	ds->ops->port_fast_age(ds, dp->index);
>>  
>> -	dsa_port_notify_bridge_fdb_flush(dp);
>> +	/* flush all VLANs */
>> +	dsa_port_notify_bridge_fdb_flush(dp, 0);
>> +}
>> +
>> +static int dsa_port_vlan_fast_age(const struct dsa_port *dp, u16 vid)
>> +{
>> +	struct dsa_switch *ds = dp->ds;
>> +	int err;
>> +
>> +	if (!ds->ops->port_vlan_fast_age)
>> +		return -EOPNOTSUPP;
>> +
>> +	err = ds->ops->port_vlan_fast_age(ds, dp->index, vid);
>> +
>> +	if (!err)
>> +		dsa_port_notify_bridge_fdb_flush(dp, vid);
>> +
>> +	return err;
>> +}
>> +
>> +static int dsa_port_msti_fast_age(const struct dsa_port *dp, u16 msti)
>> +{
>> +	DECLARE_BITMAP(vids, VLAN_N_VID) = { 0 };
>> +	int err, vid;
>> +
>> +	err = br_mst_get_info(dsa_port_bridge_dev_get(dp), msti, vids);
>> +	if (err)
>> +		return err;
>> +
>> +	for_each_set_bit(vid, vids, VLAN_N_VID) {
>> +		err = dsa_port_vlan_fast_age(dp, vid);
>> +		if (err)
>> +			return err;
>> +	}
>> +
>> +	return 0;
>>  }
>>  
>>  static bool dsa_port_can_configure_learning(struct dsa_port *dp)
>> @@ -118,6 +152,32 @@ static void dsa_port_set_state_now(struct dsa_port *dp, u8 state,
>>  		pr_err("DSA: failed to set STP state %u (%d)\n", state, err);
>>  }
>>  
>> +int dsa_port_set_mst_state(struct dsa_port *dp,
>> +			   const struct switchdev_mst_state *state)
>> +{
>> +	struct dsa_switch *ds = dp->ds;
>> +	int err;
>> +
>> +	if (!ds->ops->port_mst_state_set)
>> +		return -EOPNOTSUPP;
>> +
>> +	err = ds->ops->port_mst_state_set(ds, dp->index, state);
>> +	if (err)
>> +		return err;
>> +
>> +	if (dp->learning) {
>> +		switch (state->state) {
>> +		case BR_STATE_DISABLED:
>> +		case BR_STATE_BLOCKING:
>> +		case BR_STATE_LISTENING:
>
> Is there a requirement in br_mst_set_state() to put the switchdev
> notifier at the end instead of at the beginning?

Not that I can think of. Moving it.

> I'm tempted to ask you to introduce br_mst_get_state(), then assign
> old_state = br_mst_get_state(dsa_port_bridge_dev_get(dp), state->msti),
> then perform the VLAN fast age only on the appropriate state transitions,
> just like the regular fast age.

No time like the present!

Question though:

>> +			err = dsa_port_msti_fast_age(dp, state->msti);

If _msti_fast_age returns an error here, do we want that to bubble up to
the bridge? It seems more important to keep the bridge in sync with the
hardware. I.e. the hardware state has already been successfully synced,
we just weren't able to flush all VLANs for some reason. We could revert
the state I guess, but what if that fails?

Should we settle for a log message?

>> +			break;
>> +		}
>> +	}
>> +
>> +	return err;
>> +}
>> +
>>  int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy)
>>  {
>>  	struct dsa_switch *ds = dp->ds;
>> @@ -326,6 +386,8 @@ static bool dsa_port_supports_mst(struct dsa_port *dp)
>>  	struct dsa_switch *ds = dp->ds;
>>  
>>  	return ds->ops->vlan_msti_set &&
>> +		ds->ops->port_mst_state_set &&
>> +		ds->ops->port_vlan_fast_age &&
>>  		dsa_port_can_configure_learning(dp);
>>  }
>>  
>> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
>> index 5e986cdeaae5..4300fc76f3af 100644
>> --- a/net/dsa/slave.c
>> +++ b/net/dsa/slave.c
>> @@ -450,6 +450,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
>>  
>>  		ret = dsa_port_set_state(dp, attr->u.stp_state, true);
>>  		break;
>> +	case SWITCHDEV_ATTR_ID_PORT_MST_STATE:
>> +		if (!dsa_port_offloads_bridge_port(dp, attr->orig_dev))
>> +			return -EOPNOTSUPP;
>> +
>> +		ret = dsa_port_set_mst_state(dp, &attr->u.mst_state);
>> +		break;
>>  	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
>>  		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
>>  			return -EOPNOTSUPP;
>> -- 
>> 2.25.1
>> 
