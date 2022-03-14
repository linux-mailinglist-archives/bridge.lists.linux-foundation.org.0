Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC384D8B1A
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 18:51:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD31560AAE;
	Mon, 14 Mar 2022 17:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hNGy6WGns9y1; Mon, 14 Mar 2022 17:51:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 57EF060A88;
	Mon, 14 Mar 2022 17:51:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F61FC0084;
	Mon, 14 Mar 2022 17:51:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 67123C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DB0E40157
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVomZotRR7ql for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 17:51:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43B5240155
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:51:22 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id j25so7642478edj.11
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=K+QzBYfwm0KBPQGCnXunte5ZDjBtvy4RzhVp5w57kMg=;
 b=M/RgnQtyHwMeBGs6ZTShnPjz0GwpDCtlAk8qLTaCj3CBf3lqkVGgBUfYjW/5rnhj6w
 F471RcppKHuyJOL43RvWaNPZl7vKfBE5xbkh33zJQFVVxpMl0UnALnMEKRtT9a2jQane
 xuLDh5HN6EvmrSuOlGtT2P6D9vGmaAUDZ92k2//CGuGtpHvYXDGCr9O3UZZP26Zqsr5W
 BDBd71AkBAPiUW3yMN1A18XYZVyHfXr6Moh/uffalzPzOLEprYuOO8ey879wYry3Y02I
 y2GHHmCjuMcvX+exgR46gfZQXbxqL5ErW5Ty3h/GDkGt39qm8OPKB021tktb0OiReuUW
 JC8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K+QzBYfwm0KBPQGCnXunte5ZDjBtvy4RzhVp5w57kMg=;
 b=ph8PiQYS8q+uSyQ9N8b/eJht6JwGNnASz9pOwac+ZVEUmF0pymXiez+aqHOmkT56B8
 6J2ZgsbtgO1K/b1Cm0vevV+6bVqeexLZsU+cUv1meqAhuGWHAdZVS1YCySeDbRzidcbC
 X4jDEJEAdkidsMc+1KPPjyp/H8oV0/7qmY/50SDdyhbh7Khrij2xiegi44toJLXjoXst
 OpY/ZPwiEK7GWjqlyOtrhkU5sNGwXLWnW4feZoJICahLiE1zGJY7IyQq1oHJOOyni6jK
 pcqvRP9bDCw04ovUSBJ8A+ptSPd+TMIm2kEyG6iYhxpLlKTTgx+LQM1R0Un9eRrEDFGq
 Lk/Q==
X-Gm-Message-State: AOAM531Pw3yod91yI2eaRFUDemsXRZXhkmZfALjgn/AiEy2kmDLz18hl
 EjXM0AMSjsoL/8iLU+4pUdE=
X-Google-Smtp-Source: ABdhPJzZ7adnceVULLcpDzwBytwFNDA6cwAaMluqHekt/uFLE4gDihE6mCj1a9IEQdaxfIdH9HHp8Q==
X-Received: by 2002:a05:6402:5208:b0:416:ce01:f9b5 with SMTP id
 s8-20020a056402520800b00416ce01f9b5mr16224792edd.275.1647280280357; 
 Mon, 14 Mar 2022 10:51:20 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 z92-20020a509e65000000b00416466dc220sm8414953ede.87.2022.03.14.10.51.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 10:51:19 -0700 (PDT)
Date: Mon, 14 Mar 2022 19:51:18 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220314175118.w4plirtshhzgujn3@skbuf>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-10-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220314095231.3486931-10-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Matt Johnston <matt@codeconstruct.com.au>,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v3 net-next 09/14] net: dsa: Validate hardware
 support for MST
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

On Mon, Mar 14, 2022 at 10:52:26AM +0100, Tobias Waldekranz wrote:
> When joining a bridge where MST is enabled, we validate that the
> proper offloading support is in place, otherwise we fallback to
> software bridging.
> 
> When then mode is changed on a bridge in which we are members, we
> refuse the change if offloading is not supported.
> 
> At the moment we only check for configurable learning, but this will
> be further restricted as we support more MST related switchdev events.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  net/dsa/dsa_priv.h |  2 ++
>  net/dsa/port.c     | 20 ++++++++++++++++++++
>  net/dsa/slave.c    |  6 ++++++
>  3 files changed, 28 insertions(+)
> 
> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
> index f20bdd8ea0a8..2aba420696ef 100644
> --- a/net/dsa/dsa_priv.h
> +++ b/net/dsa/dsa_priv.h
> @@ -234,6 +234,8 @@ int dsa_port_vlan_filtering(struct dsa_port *dp, bool vlan_filtering,
>  			    struct netlink_ext_ack *extack);
>  bool dsa_port_skip_vlan_configuration(struct dsa_port *dp);
>  int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock);
> +int dsa_port_mst_enable(struct dsa_port *dp, bool on,
> +			struct netlink_ext_ack *extack);
>  int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
>  			bool targeted_match);
>  int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
> diff --git a/net/dsa/port.c b/net/dsa/port.c
> index 58291df14cdb..1a17a0efa2fa 100644
> --- a/net/dsa/port.c
> +++ b/net/dsa/port.c
> @@ -240,6 +240,10 @@ static int dsa_port_switchdev_sync_attrs(struct dsa_port *dp,
>  	if (err && err != -EOPNOTSUPP)
>  		return err;
>  
> +	err = dsa_port_mst_enable(dp, br_mst_enabled(br), extack);
> +	if (err && err != -EOPNOTSUPP)
> +		return err;

The "err && err != -EOPNOTSUPP" scheme is in place for compatibility
with drivers that don't all support the bridge port attributes, but used
to work prior to dsa_port_switchdev_sync_attrs()'s existence.

I don't think this scheme is necessary for dsa_port_mst_enable(), you
can just return -EOPNOTSUPP and remove the special handling for this code.

> +
>  	return 0;
>  }
>  
> @@ -735,6 +739,22 @@ int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock)
>  	return 0;
>  }
>  
> +int dsa_port_mst_enable(struct dsa_port *dp, bool on,
> +			struct netlink_ext_ack *extack)
> +{
> +	struct dsa_switch *ds = dp->ds;
> +
> +	if (!on)
> +		return 0;
> +
> +	if (!dsa_port_can_configure_learning(dp)) {
> +		NL_SET_ERR_MSG_MOD(extack, "Hardware does not support MST");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  int dsa_port_pre_bridge_flags(const struct dsa_port *dp,
>  			      struct switchdev_brport_flags flags,
>  			      struct netlink_ext_ack *extack)
> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> index a61a7c54af20..333f5702ea4f 100644
> --- a/net/dsa/slave.c
> +++ b/net/dsa/slave.c
> @@ -463,6 +463,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
>  
>  		ret = dsa_port_ageing_time(dp, attr->u.ageing_time);
>  		break;
> +	case SWITCHDEV_ATTR_ID_BRIDGE_MST:
> +		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
> +			return -EOPNOTSUPP;
> +
> +		ret = dsa_port_mst_enable(dp, attr->u.mst, extack);
> +		break;
>  	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
>  		if (!dsa_port_offloads_bridge_port(dp, attr->orig_dev))
>  			return -EOPNOTSUPP;
> -- 
> 2.25.1
> 
