Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F6D4CC779
	for <lists.bridge@lfdr.de>; Thu,  3 Mar 2022 21:59:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6A5F405AA;
	Thu,  3 Mar 2022 20:59:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ph69Ab-VDTYy; Thu,  3 Mar 2022 20:59:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4BCA541588;
	Thu,  3 Mar 2022 20:59:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB143C0070;
	Thu,  3 Mar 2022 20:59:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32CA1C000B
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 20:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1A53A60A9E
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 20:59:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXPpdCUynBGB for <bridge@lists.linux-foundation.org>;
 Thu,  3 Mar 2022 20:59:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24522605E9
 for <bridge@lists.linux-foundation.org>; Thu,  3 Mar 2022 20:59:26 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id s24so8234388edr.5
 for <bridge@lists.linux-foundation.org>; Thu, 03 Mar 2022 12:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2jvymI+YIK1YP+SxTJS86Vk86ZHIqmMtl8I6cmHaozU=;
 b=kDg72aUsPanwwxkWPEPBy1iRsw+wks3Vhk4NCYeXPs/EAzXBlPMvIjPof6RBPJsJf3
 HF9+w9KlJawyapd8l2fK7mtPCAU2dcB/O38pPtexE2F5xY7qUfJ5yue9FkLjowtGJ2uH
 Zzyb7j2SjnqMtB67PcX2vVyjZt7XPF7aWnPeuZwIR/9eRKyVu7w/sX3VgcSBx7a2ySOT
 W3vOG31+oIb/kASH4ij62Vy7bFFcJIvHj58HdOivJc4yGJaugDfe0r/U+iwGc37Us65C
 neC8g+HHL8LOMaEedVeaU8MmTws01LWq4Xs2t+XdCDay84Ja4Z881/GWy7WLpWDpwm9J
 RGWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2jvymI+YIK1YP+SxTJS86Vk86ZHIqmMtl8I6cmHaozU=;
 b=TR4csQwQR7z1fxp9YTeKHxQCpYj/qyGMBb6hzG40g4BVfPrRal+gbrYvXGLzAxYUkl
 3FmMpSEl9u0tHM7n2oAPULySFKpLdFiYWTSs42I0eHUoooSQgbrOv2MScPjclTmis8kg
 K7SCNhyczBIqrFjVR/hfu1TePd4k+rJh/rcu+UlJ/Y7qQ+wewVKbAGmP499z7tBjFJ+A
 zxKvmGCZ6+Zet03VGOsCJvvlvi9lj0bKA6paY2/tPzQZ1BGBv5OV6m37GkTA/gNFxJNT
 2r6AKPkQeyOlu/6MsUBOJvxhtcoG3BBLCPrUpQf/AK3CAXVJrBMjnZuZCGsgGWFJkCb5
 WYig==
X-Gm-Message-State: AOAM530W7kEBZdaEXSPIL1nyDKDea6cnRLSvoi2HuLIF66Cw3yUaxvob
 iqCACJAmIfy7up9bX8EaLdE=
X-Google-Smtp-Source: ABdhPJxjcPWCZpP0bxm044IN0jLhnsfPMNP+rk0+qlnl7pDYiRve/ioLDHwyXutjCmOg9H+WuSVn7Q==
X-Received: by 2002:aa7:cac8:0:b0:410:cc6c:6512 with SMTP id
 l8-20020aa7cac8000000b00410cc6c6512mr36024932edt.408.1646341164152; 
 Thu, 03 Mar 2022 12:59:24 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 cf10-20020a0564020b8a00b00412b19c1aaesm1247433edb.12.2022.03.03.12.59.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 12:59:23 -0800 (PST)
Date: Thu, 3 Mar 2022 22:59:21 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220303205921.sxb52jzw4jcdj6m7@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-5-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220301100321.951175-5-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 04/10] net: bridge: mst: Notify
 switchdev drivers of VLAN MSTI migrations
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

On Tue, Mar 01, 2022 at 11:03:15AM +0100, Tobias Waldekranz wrote:
> Whenever a VLAN moves to a new MSTI, send a switchdev notification so
> that switchdevs can...
> 
> ...either refuse the migration if the hardware does not support
> offloading of MST...
> 
> ..or track a bridge's VID to MSTI mapping when offloading is
> supported.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/net/switchdev.h   | 10 +++++++
>  net/bridge/br_mst.c       | 15 +++++++++++
>  net/bridge/br_switchdev.c | 57 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 82 insertions(+)
> 
> diff --git a/include/net/switchdev.h b/include/net/switchdev.h
> index 3e424d40fae3..39e57aa5005a 100644
> --- a/include/net/switchdev.h
> +++ b/include/net/switchdev.h
> @@ -28,6 +28,7 @@ enum switchdev_attr_id {
>  	SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED,
>  	SWITCHDEV_ATTR_ID_BRIDGE_MROUTER,
>  	SWITCHDEV_ATTR_ID_MRP_PORT_ROLE,
> +	SWITCHDEV_ATTR_ID_VLAN_MSTI,
>  };
>  
>  struct switchdev_brport_flags {
> @@ -35,6 +36,14 @@ struct switchdev_brport_flags {
>  	unsigned long mask;
>  };
>  
> +struct switchdev_vlan_attr {
> +	u16 vid;
> +
> +	union {
> +		u16 msti;
> +	};

Do you see other VLAN attributes that would be added in the future, such
as to justify making this a single-element union from the get-go?
Anyway if that is the case, we're lacking an id for the attribute type,
so we'd end up needing to change drivers when a second union element
appears. Otherwise they'd all expect an u16 msti.

> +};
> +
>  struct switchdev_attr {
>  	struct net_device *orig_dev;
>  	enum switchdev_attr_id id;
> @@ -50,6 +59,7 @@ struct switchdev_attr {
>  		u16 vlan_protocol;			/* BRIDGE_VLAN_PROTOCOL */
>  		bool mc_disabled;			/* MC_DISABLED */
>  		u8 mrp_port_role;			/* MRP_PORT_ROLE */
> +		struct switchdev_vlan_attr vlan_attr;	/* VLAN_* */
>  	} u;
>  };
>  
> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
> index 8dea8e7257fd..aba603675165 100644
> --- a/net/bridge/br_mst.c
> +++ b/net/bridge/br_mst.c
> @@ -7,6 +7,7 @@
>   */
>  
>  #include <linux/kernel.h>
> +#include <net/switchdev.h>
>  
>  #include "br_private.h"
>  
> @@ -65,9 +66,23 @@ static void br_mst_vlan_sync_state(struct net_bridge_vlan *pv, u16 msti)
>  
>  int br_mst_vlan_set_msti(struct net_bridge_vlan *mv, u16 msti)
>  {
> +	struct switchdev_attr attr = {
> +		.id = SWITCHDEV_ATTR_ID_VLAN_MSTI,
> +		.flags = SWITCHDEV_F_DEFER,

Is the bridge spinlock held (atomic context), or otherwise why is
SWITCHDEV_F_DEFER needed here?

> +		.orig_dev = mv->br->dev,
> +		.u.vlan_attr = {
> +			.vid = mv->vid,
> +			.msti = msti,
> +		},
> +	};
>  	struct net_bridge_vlan_group *vg;
>  	struct net_bridge_vlan *pv;
>  	struct net_bridge_port *p;
> +	int err;
> +
> +	err = switchdev_port_attr_set(mv->br->dev, &attr, NULL);

Treating a "VLAN attribute" as a "port attribute of the bridge" is
pushing the taxonomy just a little, but I don't have a better suggestion.

> +	if (err && err != -EOPNOTSUPP)
> +		return err;
>  
>  	mv->msti = msti;
>  
> diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
> index 6f6a70121a5e..160d7659f88a 100644
> --- a/net/bridge/br_switchdev.c
> +++ b/net/bridge/br_switchdev.c
> @@ -428,6 +428,57 @@ static int br_switchdev_vlan_replay(struct net_device *br_dev,
>  	return 0;
>  }
>  
> +static int br_switchdev_mst_replay(struct net_device *br_dev,
> +				   const void *ctx, bool adding,
> +				   struct notifier_block *nb,
> +				   struct netlink_ext_ack *extack)

"bool adding" is unused, and replaying the VLAN to MSTI associations
before deleting them makes little sense anyway.

I understand the appeal of symmetry, so maybe put an

	if (adding) {
		err = br_switchdev_vlan_attr_replay(...);
		if (err && err != -EOPNOTSUPP)
			return err;
	}

at the end of br_switchdev_vlan_replay()?

> +{
> +	struct switchdev_notifier_port_attr_info attr_info = {
> +		.info = {
> +			.dev = br_dev,
> +			.extack = extack,
> +			.ctx = ctx,
> +		},
> +	};
> +	struct net_bridge *br = netdev_priv(br_dev);
> +	struct net_bridge_vlan_group *vg;
> +	struct net_bridge_vlan *v;
> +	int err;
> +
> +	ASSERT_RTNL();
> +
> +	if (!nb)
> +		return 0;
> +
> +	if (!netif_is_bridge_master(br_dev))
> +		return -EINVAL;
> +
> +	vg = br_vlan_group(br);
> +
> +	list_for_each_entry(v, &vg->vlan_list, vlist) {
> +		struct switchdev_attr attr = {
> +			.id = SWITCHDEV_ATTR_ID_VLAN_MSTI,
> +			.flags = SWITCHDEV_F_DEFER,

I don't think SWITCHDEV_F_DEFER has any effect on a replay.

> +			.orig_dev = br_dev,
> +			.u.vlan_attr = {
> +				.vid = v->vid,
> +				.msti = v->msti,
> +			}
> +		};
> +
> +		if (!v->msti)
> +			continue;
> +
> +		attr_info.attr = &attr;
> +		err = nb->notifier_call(nb, SWITCHDEV_PORT_ATTR_SET, &attr_info);
> +		err = notifier_to_errno(err);
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>  #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
>  struct br_switchdev_mdb_complete_info {
>  	struct net_bridge_port *port;
> @@ -695,6 +746,10 @@ static int nbp_switchdev_sync_objs(struct net_bridge_port *p, const void *ctx,
>  	if (err && err != -EOPNOTSUPP)
>  		return err;
>  
> +	err = br_switchdev_mst_replay(br_dev, ctx, true, blocking_nb, extack);
> +	if (err && err != -EOPNOTSUPP)
> +		return err;
> +
>  	err = br_switchdev_mdb_replay(br_dev, dev, ctx, true, blocking_nb,
>  				      extack);
>  	if (err && err != -EOPNOTSUPP)
> @@ -719,6 +774,8 @@ static void nbp_switchdev_unsync_objs(struct net_bridge_port *p,
>  
>  	br_switchdev_mdb_replay(br_dev, dev, ctx, false, blocking_nb, NULL);
>  
> +	br_switchdev_mst_replay(br_dev, ctx, false, blocking_nb, NULL);
> +
>  	br_switchdev_vlan_replay(br_dev, ctx, false, blocking_nb, NULL);
>  }
>  
> -- 
> 2.25.1
> 

