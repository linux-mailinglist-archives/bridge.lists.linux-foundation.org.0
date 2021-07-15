Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC07B3CA0F0
	for <lists.bridge@lfdr.de>; Thu, 15 Jul 2021 16:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8361683E16;
	Thu, 15 Jul 2021 14:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PB0FHhe3uodA; Thu, 15 Jul 2021 14:49:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B084683E15;
	Thu, 15 Jul 2021 14:49:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 697BBC001F;
	Thu, 15 Jul 2021 14:49:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C899DC000E
 for <bridge@lists.linux-foundation.org>; Thu, 15 Jul 2021 14:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4FFC42368
 for <bridge@lists.linux-foundation.org>; Thu, 15 Jul 2021 14:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJH6BLcEtkEM for <bridge@lists.linux-foundation.org>;
 Thu, 15 Jul 2021 14:49:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F53B42268
 for <bridge@lists.linux-foundation.org>; Thu, 15 Jul 2021 14:49:32 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 y21-20020a7bc1950000b02902161fccabf1so6237073wmi.2
 for <bridge@lists.linux-foundation.org>; Thu, 15 Jul 2021 07:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VkHeawapFxvFE6350X6CQgGsPoo5+76V86NE1YTDZZY=;
 b=UCw4fcFiE2bu30hwS5e53xnmFf+zg/e3F4GQSOf+CxTd+/UU2nPZ0Lv4BfuRyw22uc
 CDod9C4FfBlOTDCB2ZUDsDPLR9UI29zIbwcxnnobpyQc2kXJiWaTdm/oSo3WFy2KTXol
 1qL7NpIrmTG+IC8MwIR3dC8yu/CLxOhBcApyJ9aIRHY4pyTYzpRRACAkcAnIpi81LY8g
 pmC74sEB878o/1vGjgLlk2EVOhfl54LAaFQNWEpUZuLTMtR92vHJb8i4ZSSXhnJaZZP/
 X9vdSHQVr5SU0CDzgCGNlu3m9L4siq0kEpBAtnbOlIirLJldET+9pt6bDAt8+GPdGv4D
 cddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VkHeawapFxvFE6350X6CQgGsPoo5+76V86NE1YTDZZY=;
 b=ooIgWBqNVEwKgAddNexJ0Az+Qp5hXgKCm0R479PtOOXIQ1ST11QrnY1+Olsu0zOAwh
 cqY6fzrPHP2JsCxmyr7tNqiWxPpDJsP7IzayXx8XOxs82JOV7k0Lgrg/hI7jCrE2WvHK
 0Uuv4D8XIjQLIaoMFlpLqg1JL7arLZfPP1TWBAp+uofAo3oTgsSDi9++3BswUwjjHS/2
 8wXPc/6nQvqeAFsCDUkhLkNiLjytdWTBEe+t5Wr5q4paoEKRMUZvILpD7SByei2b2BfK
 MtCZ92KNNb3Wrwo3jwTYTNiRU0c0QaSuEgBXwastH7LR3III1vrBzchrILqeZw4qPj0+
 9GfQ==
X-Gm-Message-State: AOAM531KC3/VnBNjW9umgnZ23xGMpTzrqEO49nCtEUlPLvwFoE2/Axkp
 8ypAPSjl/rBeGOEgAYlcBjE=
X-Google-Smtp-Source: ABdhPJzIiQlCsY1cJjf6mEApH3G+KNcm4gc3JXaKMEnw1biTXn4fv73C/YDcYJ+yFsvtMviRpZLGbg==
X-Received: by 2002:a05:600c:1c0d:: with SMTP id
 j13mr5097890wms.34.1626360571117; 
 Thu, 15 Jul 2021 07:49:31 -0700 (PDT)
Received: from skbuf ([82.76.66.29])
 by smtp.gmail.com with ESMTPSA id q17sm249958wrv.47.2021.07.15.07.49.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 07:49:30 -0700 (PDT)
Date: Thu, 15 Jul 2021 17:49:29 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210715144929.oa3u44is3v6gewr5@skbuf>
References: <20210712152142.800651-1-vladimir.oltean@nxp.com>
 <20210712152142.800651-23-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210712152142.800651-23-vladimir.oltean@nxp.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@idosch.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [RFC PATCH v3 net-next 22/24] net: dsa: add support
 for bridge TX forwarding offload
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

On Mon, Jul 12, 2021 at 06:21:40PM +0300, Vladimir Oltean wrote:
> +static bool dsa_port_bridge_tx_fwd_prepare(struct dsa_port *dp,
> +					   struct net_device *bridge_dev)
> +{
> +	struct dsa_switch *ds = dp->ds;
> +	struct dsa_switch_tree *dst;
> +	int bridge_num, err;
> +
> +	dst = ds->dst;
> +
> +	bridge_num = dsa_tree_find_bridge_num(dst, bridge_dev);
> +	if (bridge_num < 0) {
> +		/* First port that offloads TX forwarding for this bridge */
> +		int bridge_num;

Stupid bug: "bridge_num" is redeclared here as a different variable with
a different scope, shadowing the one from dsa_port_bridge_tx_fwd_prepare().

> +
> +		bridge_num = find_first_zero_bit(&dst->fwd_offloading_bridges,
> +						 DSA_MAX_NUM_OFFLOADING_BRIDGES);
> +		if (bridge_num >= ds->num_fwd_offloading_bridges)
> +			return false;
> +
> +		set_bit(bridge_num, &dst->fwd_offloading_bridges);
> +	}
> +
> +	dp->bridge_num = bridge_num;

and then here, the scope from the "if" block is lost, so the bridge_num
variable is still -1. So dp->bridge_num remains -1.

Deleting the "int bridge_num" declaration from the "if" block fixes the
issue. This got introduced between v2 and v3.

> +
> +	/* Notify the driver */
> +	err = dsa_port_bridge_fwd_offload_add(dp, bridge_dev, bridge_num);
> +	if (err) {
> +		dsa_port_bridge_tx_fwd_unprepare(dp, bridge_dev);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
>  			 struct netlink_ext_ack *extack)
>  {
> @@ -241,6 +310,7 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
>  	};
>  	struct net_device *dev = dp->slave;
>  	struct net_device *brport_dev;
> +	bool tx_fwd_offload;
>  	int err;
>  
>  	/* Here the interface is already bridged. Reflect the current
> @@ -254,7 +324,10 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br,
>  	if (err)
>  		goto out_rollback;
>  
> -	err = switchdev_bridge_port_offload(brport_dev, dev, dp, false, extack);
> +	tx_fwd_offload = dsa_port_bridge_tx_fwd_prepare(dp, br);
> +
> +	err = switchdev_bridge_port_offload(brport_dev, dev, dp, tx_fwd_offload,
> +					    extack);
>  	if (err)
>  		goto out_rollback_unbridge;
>  
> @@ -279,6 +352,8 @@ int dsa_port_pre_bridge_leave(struct dsa_port *dp, struct net_device *br,
>  	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
>  	struct net_device *dev = dp->slave;
>  
> +	dsa_port_bridge_tx_fwd_prepare(dp, br);

We are in the pre_bridge_leave path, this should have been _unprepare.

> +
>  	return switchdev_bridge_port_unoffload(brport_dev, dev, dp, extack);
>  }

The patches should work otherwise, if somebody wants to test they should
make these changes.

There are also some more changes that need to be made to mlxsw to
properly handle the unoffload of bridge ports that are LAG devices and
VLAN devices. I have them in my tree now. When net-next reopens I will
first send a series of 7 refactoring patches for dpaa2-switch, mlxsw and
prestera, and then the TX data plane offload in DSA as a 15-patch series.
