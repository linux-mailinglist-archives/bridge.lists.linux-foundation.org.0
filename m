Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6F54CC8EA
	for <lists.bridge@lfdr.de>; Thu,  3 Mar 2022 23:29:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E399415DC;
	Thu,  3 Mar 2022 22:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kjtua_6ul0bX; Thu,  3 Mar 2022 22:29:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E3CB0415D5;
	Thu,  3 Mar 2022 22:29:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BB7F2C0070;
	Thu,  3 Mar 2022 22:29:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8F060C000B
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BD4940363
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7qFrYbXn6xx8 for <bridge@lists.linux-foundation.org>;
 Thu,  3 Mar 2022 22:29:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69248400DA
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 22:29:46 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id x5so8445679edd.11
 for <bridge@lists.linux-foundation.org>; Thu, 03 Mar 2022 14:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qURyynMi/HgXpmSfLyUFNqbqAu/l3MGX7Mv0yI+XyPQ=;
 b=Ep3QG/4ZU24+B32NtMclXeYMmGtv/CULxCL1Xcm8LpSfsHlwc1RTO4xFbc2BtrbqRI
 wDXQD3JBhvqiFguK4cLM0aMfivTA8qyy0+Hnf+PP/zfio3r48S7rMkJeCF35l9tWeIJ9
 mYwxrsKxnteK0lvvQUrJlMPI0Sk2yD/jrwglf9Wv3ZEk+QCLUDHd7m8QPxYd726BqHi7
 8KYmUHMI7xBVqF/1QJPn4zifeyxo/cOQYMIPV9na6+SiN3Wo5GEnLYo9GjPtjmuA9BvE
 Uzuiej//fqAXgRzjnqLsRzkRu3JqXTga+bPwZPb7aSJRoNSMim0pbBcv3PeymH4LOt94
 ClqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qURyynMi/HgXpmSfLyUFNqbqAu/l3MGX7Mv0yI+XyPQ=;
 b=K8DrANG/zOjrZDyaf47VcLca2JHX0DI0NaxHEZoDwanltQfioP7ixMUxpq9vlOULfe
 8KuytOv6C0G1+YXt8Kk3G+kKnqn66+kbZyS9w4GKKlkwqmJu/F0+s9EVPI4FsFy6KF4r
 sPwQOsRzxVsdO43MfEVV/SQ4DBZzeLqGlABcFkutdMpbOXMU3wdLnI9r3NRnJvhKpL92
 KfuxBRIhFQxrpVL2V9lsDhi+37P+p/xTxhPJPAlT7CQlV++2ju1HWMh0UfjEzb5FkUeO
 Cfc7A+iuuczPEL0ockKIEeLtmCvm0PCjNFa6c12ilIY0OUDNkyuuNc1Sc/nM6xlLUYNl
 6tbA==
X-Gm-Message-State: AOAM531FB7FTdxqYOSs7vxlz8lztOeU1F2lgJRcNSnO8Tpnzb2fkd5qy
 98jgdsSoBJCtEWD7oRcfv+I=
X-Google-Smtp-Source: ABdhPJycAcEdH9myQCMw6g6i+TkljUrgPIVf7+QgiP17Bb4KxbhWSFhcGDjT5Qr7OEZT7GxjdIz8hQ==
X-Received: by 2002:a05:6402:270a:b0:410:63d:a66d with SMTP id
 y10-20020a056402270a00b00410063da66dmr36458587edd.48.1646346584524; 
 Thu, 03 Mar 2022 14:29:44 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 v2-20020a509d02000000b00412d53177a6sm1369846ede.20.2022.03.03.14.29.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 14:29:44 -0800 (PST)
Date: Fri, 4 Mar 2022 00:29:42 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220303222942.dkz7bfuagkv7hbpp@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-7-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220301100321.951175-7-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 06/10] net: dsa: Pass VLAN MSTI
 migration notifications to driver
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

On Tue, Mar 01, 2022 at 11:03:17AM +0100, Tobias Waldekranz wrote:
> Add the usual trampoline functionality from the generic DSA layer down
> to the drivers for VLAN MSTI migrations.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/net/dsa.h  |  3 +++
>  net/dsa/dsa_priv.h |  1 +
>  net/dsa/port.c     | 10 ++++++++++
>  net/dsa/slave.c    |  6 ++++++
>  4 files changed, 20 insertions(+)
> 
> diff --git a/include/net/dsa.h b/include/net/dsa.h
> index cfedcfb86350..cc8acb01bd9b 100644
> --- a/include/net/dsa.h
> +++ b/include/net/dsa.h
> @@ -962,6 +962,9 @@ struct dsa_switch_ops {
>  				 struct netlink_ext_ack *extack);
>  	int	(*port_vlan_del)(struct dsa_switch *ds, int port,
>  				 const struct switchdev_obj_port_vlan *vlan);
> +	int	(*vlan_msti_set)(struct dsa_switch *ds,
> +				 const struct switchdev_attr *attr);

I would rather pass the struct switchdev_vlan_attr and the orig_dev
(bridge) as separate arguments here. Or even the struct dsa_bridge, for
consistency to the API changes for database isolation.

> +
>  	/*
>  	 * Forwarding database
>  	 */
> diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
> index 07c0ad52395a..87ec0697e92e 100644
> --- a/net/dsa/dsa_priv.h
> +++ b/net/dsa/dsa_priv.h
> @@ -217,6 +217,7 @@ int dsa_port_vlan_filtering(struct dsa_port *dp, bool vlan_filtering,
>  			    struct netlink_ext_ack *extack);
>  bool dsa_port_skip_vlan_configuration(struct dsa_port *dp);
>  int dsa_port_ageing_time(struct dsa_port *dp, clock_t ageing_clock);
> +int dsa_port_vlan_msti(struct dsa_port *dp, const struct switchdev_attr *attr);
>  int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
>  			bool targeted_match);
>  int dsa_port_fdb_add(struct dsa_port *dp, const unsigned char *addr,
> diff --git a/net/dsa/port.c b/net/dsa/port.c
> index d9da425a17fb..5f45cb7d70ba 100644
> --- a/net/dsa/port.c
> +++ b/net/dsa/port.c
> @@ -778,6 +778,16 @@ int dsa_port_bridge_flags(struct dsa_port *dp,
>  	return 0;
>  }
>  
> +int dsa_port_vlan_msti(struct dsa_port *dp, const struct switchdev_attr *attr)
> +{
> +	struct dsa_switch *ds = dp->ds;
> +
> +	if (!ds->ops->vlan_msti_set)
> +		return -EOPNOTSUPP;
> +
> +	return ds->ops->vlan_msti_set(ds, attr);

I guess this doesn't need to be a cross-chip notifier event for all
switches, because replication to all bridge ports is handled by
switchdev_handle_port_attr_set(). Ok. But isn't it called too many times
per switch?

> +}
> +
>  int dsa_port_mtu_change(struct dsa_port *dp, int new_mtu,
>  			bool targeted_match)
>  {
> diff --git a/net/dsa/slave.c b/net/dsa/slave.c
> index 089616206b11..c6ffcd782b5a 100644
> --- a/net/dsa/slave.c
> +++ b/net/dsa/slave.c
> @@ -314,6 +314,12 @@ static int dsa_slave_port_attr_set(struct net_device *dev, const void *ctx,
>  
>  		ret = dsa_port_bridge_flags(dp, attr->u.brport_flags, extack);
>  		break;
> +	case SWITCHDEV_ATTR_ID_VLAN_MSTI:
> +		if (!dsa_port_offloads_bridge_dev(dp, attr->orig_dev))
> +			return -EOPNOTSUPP;
> +
> +		ret = dsa_port_vlan_msti(dp, attr);
> +		break;
>  	default:
>  		ret = -EOPNOTSUPP;
>  		break;
> -- 
> 2.25.1
> 

