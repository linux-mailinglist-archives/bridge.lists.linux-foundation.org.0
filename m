Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F694CC8BD
	for <lists.bridge@lfdr.de>; Thu,  3 Mar 2022 23:21:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BF0F409D7;
	Thu,  3 Mar 2022 22:21:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e3uyzjTPl3wN; Thu,  3 Mar 2022 22:21:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 58BB640363;
	Thu,  3 Mar 2022 22:21:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 18EE7C0070;
	Thu,  3 Mar 2022 22:21:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DA3B9C000B
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C912D60B01
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrClW48HJvac for <bridge@lists.linux-foundation.org>;
 Thu,  3 Mar 2022 22:21:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0242E607C7
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:20:59 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id bg10so13691420ejb.4
 for <bridge@lists.linux-foundation.org>; Thu, 03 Mar 2022 14:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gchagVopNK8lmXE/dkbZYMIikzp69AM9bvHk1ChOAQA=;
 b=qWRmlJ2fPXogBs3j2JktggbX6j0t1oXRPsEPUnSyHm8Hy/mU5DPP8AVpkc6eU4NelK
 chyNggX00dEnNCQwmvTLg+O+/VpzWqxaTnumSLEcTQxdHqDzApsDTSVuyzsQaTHN8D35
 pVotLn1icc7iF1b97Q2Igfj4NMZ4PD1vFUDjRaKel4RbUL6A1tX+n19GQAA/5FE8W+v+
 l+sQei0jtQT/vVDTUHLifzfgROroWTvBO/2sCNbwcgDvYY0amKoHYY3i3QzDRX2+WnRo
 kxGyqZMFBkJX3uwClRPPQJTy5BJlVXUVI7eqZN0CDroroIa8cn8fazt22IsXsaMXZJGk
 LLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gchagVopNK8lmXE/dkbZYMIikzp69AM9bvHk1ChOAQA=;
 b=4zVgYjinwd2JH1VBMpUEUpBl2QXPz+HPGRGkU/0EVUs6aXGNUZ1ahCAWBFu/ibAQKV
 7bWDA2ii8+HjLhhMi6RzbKU4DFLvSn4QaiYTsF0NBwbQkMOhYPJuK0Ls9a6cvQGnptDL
 QUAhONiT9QGdZsio/15kpxO5c8QLFL1PBfhuPUtSotNexPioycW7nFw8E8lR//qn3OeK
 gGCn1MBpZdrw3wKf59H8yb72tkdZ0a0PU8sRqLvQqITbQb0+CVeByfaAnm9b3YyHcSoW
 I9P8BggY9oJFL7LHPYxRNfelif61yU6gR5t4Z+irgIxnoKQ18y4K0dDCTChgVWh+1Gsk
 baCw==
X-Gm-Message-State: AOAM532Zl1i3+zD/vegq7mGMyVpnGCd0jfBh4+KB4xzLAicPQLFDkFbi
 fJeMnfXFbvWSSBaazJuSfI8=
X-Google-Smtp-Source: ABdhPJxQOQZDEmlNo+GcmZzyqTNIMuj7IzqaKDUPvcpwpcyRb3JqcG4D0HpGIRC0RoStk3DKQdH/Uw==
X-Received: by 2002:a17:907:7e90:b0:6da:49e4:c7be with SMTP id
 qb16-20020a1709077e9000b006da49e4c7bemr8261187ejc.493.1646346057991; 
 Thu, 03 Mar 2022 14:20:57 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 y12-20020a50eb8c000000b00410f02e577esm1401544edr.7.2022.03.03.14.20.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 14:20:57 -0800 (PST)
Date: Fri, 4 Mar 2022 00:20:55 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220303222055.7a5pr4la3wmuuekc@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-8-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220301100321.951175-8-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 07/10] net: dsa: Pass MST state
 changes to driver
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

On Tue, Mar 01, 2022 at 11:03:18AM +0100, Tobias Waldekranz wrote:
> Add the usual trampoline functionality from the generic DSA layer down
> to the drivers for MST state changes.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/net/dsa.h  |  2 ++
>  net/dsa/dsa_priv.h |  2 ++
>  net/dsa/port.c     | 30 ++++++++++++++++++++++++++++++
>  net/dsa/slave.c    |  6 ++++++
>  4 files changed, 40 insertions(+)
> 
> diff --git a/include/net/dsa.h b/include/net/dsa.h
> index cc8acb01bd9b..096e6e3a8e1e 100644
> --- a/include/net/dsa.h
> +++ b/include/net/dsa.h
> @@ -943,6 +943,8 @@ struct dsa_switch_ops {
>  				     struct dsa_bridge bridge);
>  	void	(*port_stp_state_set)(struct dsa_switch *ds, int port,
>  				      u8 state);
> +	int	(*port_mst_state_set)(struct dsa_switch *ds, int port,
> +				      const struct switchdev_mst_state *state);
>  	void	(*port_fast_age)(struct dsa_switch *ds, int port);
>  	int	(*port_pre_bridge_flags)(struct dsa_switch *ds, int port,
>  					 struct switchdev_brport_flags flags,
> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
> index 87ec0697e92e..a620e079ebc5 100644
> --- a/net/dsa/dsa_priv.h
> +++ b/net/dsa/dsa_priv.h
> @@ -198,6 +198,8 @@ static inline struct net_device *dsa_master_find_slave(struct net_device *dev,
>  void dsa_port_set_tag_protocol(struct dsa_port *cpu_dp,
>  			       const struct dsa_device_ops *tag_ops);
>  int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age);
> +int dsa_port_set_mst_state(struct dsa_port *dp,
> +			   const struct switchdev_mst_state *state);
>  int dsa_port_enable_rt(struct dsa_port *dp, struct phy_device *phy);
>  int dsa_port_enable(struct dsa_port *dp, struct phy_device *phy);
>  void dsa_port_disable_rt(struct dsa_port *dp);
> diff --git a/net/dsa/port.c b/net/dsa/port.c
> index 5f45cb7d70ba..26cfbc8ab499 100644
> --- a/net/dsa/port.c
> +++ b/net/dsa/port.c
> @@ -108,6 +108,36 @@ int dsa_port_set_state(struct dsa_port *dp, u8 state, bool do_fast_age)
>  	return 0;
>  }
>  
> +int dsa_port_set_mst_state(struct dsa_port *dp,
> +			   const struct switchdev_mst_state *state)
> +{
> +	struct dsa_switch *ds = dp->ds;
> +	int err, port = dp->index;
> +
> +	if (!ds->ops->port_mst_state_set)
> +		return -EOPNOTSUPP;
> +
> +	err = ds->ops->port_mst_state_set(ds, port, state);
> +	if (err)
> +		return err;
> +
> +	if (!dsa_port_can_configure_learning(dp) || dp->learning) {
> +		switch (state->state) {
> +		case BR_STATE_DISABLED:
> +		case BR_STATE_BLOCKING:
> +		case BR_STATE_LISTENING:
> +			/* Ideally we would only fast age entries
> +			 * belonging to VLANs controlled by this
> +			 * MST.
> +			 */
> +			dsa_port_fast_age(dp);

Does mv88e6xxx support this? If it does, you might just as well
introduce another variant of ds->ops->port_fast_age() for an msti.

And since it is new code, you could require that drivers _do_ support
configuring learning before they could support MSTP. After all, we don't
want to keep legacy mechanisms in place forever.

> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static void dsa_port_set_state_now(struct dsa_port *dp, u8 state,
>  				   bool do_fast_age)
>  {
> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> index c6ffcd782b5a..32b006a5b778 100644
> --- a/net/dsa/slave.c
> +++ b/net/dsa/slave.c
> @@ -288,6 +288,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
>  
>  		ret = dsa_port_set_state(dp, attr->u.stp_state, true);
>  		break;
> +	case SWITCHDEV_ATTR_ID_PORT_MST_STATE:
> +		if (!dsa_port_offloads_bridge_port(dp, attr->orig_dev))
> +			return -EOPNOTSUPP;
> +
> +		ret = dsa_port_set_mst_state(dp, &attr->u.mst_state);
> +		break;
>  	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
>  		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
>  			return -EOPNOTSUPP;
> -- 
> 2.25.1
> 
