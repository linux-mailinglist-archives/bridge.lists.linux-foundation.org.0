Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B3C4D8A35
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 17:56:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81D5E4087C;
	Mon, 14 Mar 2022 16:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZFXdQeYl56h; Mon, 14 Mar 2022 16:56:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 194EF40878;
	Mon, 14 Mar 2022 16:56:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B9696C0084;
	Mon, 14 Mar 2022 16:56:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 39B12C0012
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 16:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A50A4087C
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 16:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMx41cm66q_K for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 16:56:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BA1C40878
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 16:56:53 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id bg10so35475476ejb.4
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=63A+VQ/NUEeDaJW7pNGXfcNFAy8DF92o6Jzg0oVXuE4=;
 b=bLlpoaIizi9w3UjGu1TRPkRkHLgPf6oYVkqZWI2khR0kHkk3u04vcv1O8WJMtUqoxV
 99B9FR+PioiSsynsRNsE6QFtnlvm+Xj5dH34iH9GlBmn6++ZXau3EED6kY3J+hAEdbL4
 6XvpbJMXNdp5ZfUy5hujk3Vb+tH4K7lZEAA0K1VUHGTorOS47cPw6eTJP36+Nen6h9kt
 Rpvzm96daPnQuEl1cJnQKip3IihU9R5UftSOdffgGkJpZbxZYooxKNCxQil0BpG9O5a4
 MsCtR96HyerXpBZk0C4uERrPw4f/n3yU+y0eD51xhWOlGhXoz0yZljPMLAYu8YgxaF+0
 vDug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=63A+VQ/NUEeDaJW7pNGXfcNFAy8DF92o6Jzg0oVXuE4=;
 b=7HpBQlWML9XZ2lVvF2pNFStMh+5yQHMTgsXsx1Ob04CUoFsiCzw572sSf17Vy1WYy6
 5IXPIpFrqr4Y4SqpjFPdkn71fL+7H1TAuMagx3zQNnw0gjOxe5RLL4JgCWvw0QkwDoJr
 +Ps1ntjEQ18LJIajzVYJNZO//UtWzPZw3waZCgcCfbYSvzTnSJxn/6SR36BNYJGWAzLk
 icD0OQWVrwRqXcZgaUJ96yKorb7t26qsioCzSc4VjJrvBaFjvOApBZh6gdbweOZZKYvN
 mlO1ANjl/KSxPFvPO8pVcPVJcMKofqXzP7CthoGukQimEeg7UI5d7oKlQkVPUVYrhGn2
 6fpw==
X-Gm-Message-State: AOAM533lDRET0O1BaXamMdoboF8zWJF5GMP7VrzJ1Hzvm5iXVmvDPVeA
 DzKnDHnQpZER3KrMfuSjWsA=
X-Google-Smtp-Source: ABdhPJy4iP7W3VPKzGvFW/dTiEMVOGUqKn5TPQdRZRefbfStQyIy115mZyar8J0FrnQFf4zbZb8I5A==
X-Received: by 2002:a17:907:7254:b0:6db:ad8f:27b4 with SMTP id
 ds20-20020a170907725400b006dbad8f27b4mr12828197ejc.599.1647277011251; 
 Mon, 14 Mar 2022 09:56:51 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 js24-20020a170906ca9800b006c8aeca8fe8sm7029530ejb.58.2022.03.14.09.56.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 09:56:50 -0700 (PDT)
Date: Mon, 14 Mar 2022 18:56:49 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220314165649.vtsd3xqv7htut55d@skbuf>
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

Sadly this will break down because we don't have unwinding on error in
place (sorry). We'd end up with an unoffloaded bridge port with
partially synced bridge port attributes. Could you please add a patch
previous to this one that handles this, and unoffloads those on error?

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
