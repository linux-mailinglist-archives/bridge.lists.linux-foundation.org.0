Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2094DB576
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 16:56:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99F164175E;
	Wed, 16 Mar 2022 15:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umTML0du2ae4; Wed, 16 Mar 2022 15:56:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 1D8624049A;
	Wed, 16 Mar 2022 15:56:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D4310C0033;
	Wed, 16 Mar 2022 15:56:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF034C000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A03504049A
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AUxeU2kzGL5J for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 15:56:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A675C40474
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:56:35 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id y22so3323386eds.2
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 08:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fYTwMwhaHOqu+6/k3NuAGC+IM8WS6lvggjF69KksFcc=;
 b=YJ2CaPzJEfD37I6Ai3c4Ko6Wv97okVB45+r1aq5NulG4CwQJpehDWgudC1HRo3fUsC
 ikCSGKWUvXOdTeNsZuYaFRDkqPLKKFPkU9NVlx+kVCMeTWxCFtlWyaYJO1LCBIyuJ2Gm
 gY8d7XkMBK4U5I1Skm6uq79RlHF6b5v3muY2WqYs29Uj3tpuMmkdeagV8iemMfJ4TU9f
 TR8VQgK4HWijhUqG5Pi4yrGpXY+1Ji2M536cTXmRQEo4H5R9+GHNe8pPV7+Uq9v+HFFj
 M4Lv8zX0ZdZu/tHjjfdQ4JhFfFu4sbe89fD5GBKALHwf3FOMETdmAzs4hWIMkQoClOME
 VOcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fYTwMwhaHOqu+6/k3NuAGC+IM8WS6lvggjF69KksFcc=;
 b=3c3LqPCpRe9t+vahCNe3uu1gRAS8Xj1ySigE5FfiR8oDOwosPFzejLpP4apVwHuti3
 XTrhtu6qUr3X57lOweP/FEDEY7dSQSQ0CgHcW31Y6JmT/KpWWAHLhmcgzcDFfz6BRb8s
 SdolAmvzgnJ+8hUF65Voduw2lhWIa/cM2bYiYhfbv6Pxv+1xgtIpy0TNDgFNtMtGFUVp
 eYYCurtyWutBOUuIpmIjq4j4xFmD0dAlndzcBgcpNri4AHIdS3Y87cbS79d3j7lxabWM
 xTPpgXkIbTV7AabY5rh8AiqlPyeSPV5HC5xYKEjiLJNW6AX1/julcd17tXUiMJ7msZ0/
 YVqw==
X-Gm-Message-State: AOAM5320wz7s3QtF/jV6WezV8lOS90hWqNYlgcmxczEjUOLSSfqcVVWF
 1TF/zX8fgxB/8u3ThhSPayo=
X-Google-Smtp-Source: ABdhPJwSepmnpUGTKr+8iCQn9Bc9XYcJmkSqhFDpz1nTJIKvKN2Sxt+sapuJ2PNJISfCy74JD7svrQ==
X-Received: by 2002:a05:6402:370b:b0:413:3bcd:3d0e with SMTP id
 ek11-20020a056402370b00b004133bcd3d0emr181832edb.178.1647446193518; 
 Wed, 16 Mar 2022 08:56:33 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 y12-20020a056402358c00b00418d7f02d63sm1166978edc.53.2022.03.16.08.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 08:56:33 -0700 (PDT)
Date: Wed, 16 Mar 2022 17:56:31 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220316155631.h5e6kls2d5gpk3p4@skbuf>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-13-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220316150857.2442916-13-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v5 net-next 12/15] net: dsa: Handle MST state
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

On Wed, Mar 16, 2022 at 04:08:54PM +0100, Tobias Waldekranz wrote:
> Add the usual trampoline functionality from the generic DSA layer down
> to the drivers for MST state changes.
> 
> When a state changes to disabled/blocking/listening, make sure to fast
> age any dynamic entries in the affected VLANs (those controlled by the
> MSTI in question).
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

>  include/net/dsa.h  |  3 ++
>  net/dsa/dsa_priv.h |  3 ++
>  net/dsa/port.c     | 85 +++++++++++++++++++++++++++++++++++++++++-----
>  net/dsa/slave.c    |  6 ++++
>  4 files changed, 89 insertions(+), 8 deletions(-)
> 
> diff --git a/include/net/dsa.h b/include/net/dsa.h
> index 644fda2293a2..06cdefd3b9dd 100644
> --- a/include/net/dsa.h
> +++ b/include/net/dsa.h
> @@ -957,7 +957,10 @@ struct dsa_switch_ops {
>  				     struct dsa_bridge bridge);
>  	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
>  				      u8 state);
> +	int	(*port_mst_state_set)(struct dsa_switch *ds, int port,
> +				      const struct switchdev_mst_state *state);
>  	void	(*port_fast_age)(struct dsa_switch *ds, int port);
> +	int	(*port_vlan_fast_age)(struct dsa_switch *ds, int port, u16 vid);
>  	int	(*port_pre_bridge_flags)(struct dsa_switch *ds, int port,
>  					 struct switchdev_brport_flags flags,
>  					 struct netlink_ext_ack *extack);
> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
> index d90b4cf0c9d2..5d3f4a67dce1 100644
> --- a/net/dsa/dsa_priv.h
> +++ b/net/dsa/dsa_priv.h
> @@ -215,6 +215,9 @@ static inline struct net_device *dsa_master_find_slave(struct net_device *dev,
>  void dsa_port_set_tag_protocol(struct dsa_port *cpu_dp,
>  			       const struct dsa_device_ops *tag_ops);
>  int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age);
> +int dsa_port_set_mst_state(struct dsa_port *dp,
> +			   const struct switchdev_mst_state *state,
> +			   struct netlink_ext_ack *extack);
>  int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy);
>  int dsa_port_enable(struct dsa_port *dp, struct phy_device *phy);
>  void dsa_port_disable_rt(struct dsa_port *dp);
> diff --git a/net/dsa/port.c b/net/dsa/port.c
> index 3ac114f6fc22..32d472a82241 100644
> --- a/net/dsa/port.c
> +++ b/net/dsa/port.c
> @@ -30,12 +30,11 @@ static int dsa_port_notify(const struct dsa_port *dp, unsigned long e, void *v)
>  	return dsa_tree_notify(dp->ds->dst, e, v);
>  }
>  
> -static void dsa_port_notify_bridge_fdb_flush(const struct dsa_port *dp)
> +static void dsa_port_notify_bridge_fdb_flush(const struct dsa_port *dp, u16 vid)
>  {
>  	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
>  	struct switchdev_notifier_fdb_info info = {
> -		/* flush all VLANs */
> -		.vid = 0,
> +		.vid = vid,
>  	};
>  
>  	/* When the port becomes standalone it has already left the bridge.
> @@ -57,7 +56,42 @@ static void dsa_port_fast_age(const struct dsa_port *dp)
>  
>  	ds->ops->port_fast_age(ds, dp->index);
>  
> -	dsa_port_notify_bridge_fdb_flush(dp);
> +	/* flush all VLANs */
> +	dsa_port_notify_bridge_fdb_flush(dp, 0);
> +}
> +
> +static int dsa_port_vlan_fast_age(const struct dsa_port *dp, u16 vid)
> +{
> +	struct dsa_switch *ds = dp->ds;
> +	int err;
> +
> +	if (!ds->ops->port_vlan_fast_age)
> +		return -EOPNOTSUPP;
> +
> +	err = ds->ops->port_vlan_fast_age(ds, dp->index, vid);
> +
> +	if (!err)
> +		dsa_port_notify_bridge_fdb_flush(dp, vid);
> +
> +	return err;
> +}
> +
> +static int dsa_port_msti_fast_age(const struct dsa_port *dp, u16 msti)
> +{
> +	DECLARE_BITMAP(vids, VLAN_N_VID) = { 0 };
> +	int err, vid;
> +
> +	err = br_mst_get_info(dsa_port_bridge_dev_get(dp), msti, vids);
> +	if (err)
> +		return err;
> +
> +	for_each_set_bit(vid, vids, VLAN_N_VID) {
> +		err = dsa_port_vlan_fast_age(dp, vid);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
>  }
>  
>  static bool dsa_port_can_configure_learning(struct dsa_port *dp)
> @@ -118,6 +152,42 @@ static void dsa_port_set_state_now(struct dsa_port *dp, u8 state,
>  		pr_err("DSA: failed to set STP state %u (%d)\n", state, err);
>  }
>  
> +int dsa_port_set_mst_state(struct dsa_port *dp,
> +			   const struct switchdev_mst_state *state,
> +			   struct netlink_ext_ack *extack)
> +{
> +	struct dsa_switch *ds = dp->ds;
> +	u8 prev_state;
> +	int err;
> +
> +	if (!ds->ops->port_mst_state_set)
> +		return -EOPNOTSUPP;
> +
> +	err = br_mst_get_state(dsa_port_to_bridge_port(dp), state->msti,
> +			       &prev_state);
> +	if (err)
> +		return err;
> +
> +	err = ds->ops->port_mst_state_set(ds, dp->index, state);
> +	if (err)
> +		return err;
> +
> +	if (!(dp->learning &&
> +	      (prev_state == BR_STATE_LEARNING ||
> +	       prev_state == BR_STATE_FORWARDING) &&
> +	      (state->state == BR_STATE_DISABLED ||
> +	       state->state == BR_STATE_BLOCKING ||
> +	       state->state == BR_STATE_LISTENING)))
> +		return 0;
> +
> +	err = dsa_port_msti_fast_age(dp, state->msti);
> +	if (err)
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Unable to flush associated VLANs");
> +
> +	return 0;
> +}
> +
>  int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy)
>  {
>  	struct dsa_switch *ds = dp->ds;
> @@ -326,6 +396,8 @@ static bool dsa_port_supports_mst(struct dsa_port *dp)
>  	struct dsa_switch *ds = dp->ds;
>  
>  	return ds->ops->vlan_msti_set &&
> +		ds->ops->port_mst_state_set &&
> +		ds->ops->port_vlan_fast_age &&
>  		dsa_port_can_configure_learning(dp);
>  }
>  
> @@ -749,10 +821,7 @@ int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock)
>  int dsa_port_mst_enable(struct dsa_port *dp, bool on,
>  			struct netlink_ext_ack *extack)
>  {
> -	if (!on)
> -		return 0;
> -
> -	if (!dsa_port_supports_mst(dp)) {
> +	if (on && !dsa_port_supports_mst(dp)) {

You fixed up a different patch by accident (not the one which originally
introduced dsa_port_mst_enable).

Anyway, this is a complete non-issue because the code ends up looking as
discussed during the previous review, and the fixup is only cosmetic in
any case.

>  		NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
>  		return -EINVAL;
>  	}
> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> index 1b3e792d0327..17615b706359 100644
> --- a/net/dsa/slave.c
> +++ b/net/dsa/slave.c
> @@ -451,6 +451,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
>  
>  		ret = dsa_port_set_state(dp, attr->u.stp_state, true);
>  		break;
> +	case SWITCHDEV_ATTR_ID_PORT_MST_STATE:
> +		if (!dsa_port_offloads_bridge_port(dp, attr->orig_dev))
> +			return -EOPNOTSUPP;
> +
> +		ret = dsa_port_set_mst_state(dp, &attr->u.mst_state, extack);
> +		break;
>  	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
>  		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
>  			return -EOPNOTSUPP;
> -- 
> 2.25.1
> 
