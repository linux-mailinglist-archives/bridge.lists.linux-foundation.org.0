Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD224D8017
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 11:42:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8044583E66;
	Mon, 14 Mar 2022 10:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZn5Qop3_klK; Mon, 14 Mar 2022 10:42:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0085B83E4E;
	Mon, 14 Mar 2022 10:42:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A587FC0084;
	Mon, 14 Mar 2022 10:42:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0BE48C0012
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED60A83E27
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MxVrDBsgpnse for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 10:42:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48B2F831D6
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 10:42:22 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id y22so19195370eds.2
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 03:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=oMG0T9vcdOIb6WRbUJ5vRlSPE5rT2gbTg+vjg6aHM+o=;
 b=Bgv9nNrzSnDKRVZKbeGdd71L3Iiv4FIxcwNstK5Ia4cJNSsOwFWT5l72JNt+brFxig
 W7z2+gRIYUfsxp7M1DzYc/o6h1PaUxviTqtXMwgHnT1iWXPTXT/C+Rm9aFVJ5r+9KKmg
 UmCHq421Xsh/2OE0wRDQ60MwupTZdNx72CUaN+ufqe0ceeJ1z7QlMMVVmO/RpqJh8xIf
 EvdlHIkZsn6wMSzzvK/wjWWR9fuh/AkBBSKXnp7KwdDJ1sUnNEZ12lsBpAWafsxNCAyi
 E3BM3gmFXQ+GmkJ10qAbchg7YS+BdGz/mStPSKaCVEWvbl3eWZ2BK0h6sg/mPjvBL60Y
 ftdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=oMG0T9vcdOIb6WRbUJ5vRlSPE5rT2gbTg+vjg6aHM+o=;
 b=ePrxTG/pZ8GNgD0oH7Hg48l413pi6LHjiZLxEywF65p0T4a2Q7YvdWFw8kvDuyup+T
 ivOdzUX3W0qYk04DDk9awx25jZo9AMtP9QXCyX5Da5ISXW3j19WPpaB8zV4UCLZABqjr
 87guLVyOqKQkrdET7m+0WHTfV+4LRCltsXjsUA1r9uEgHMn3xUE0B3VBasTfP8KHJx8E
 qPGbVyBUmDSr7EcsOYj4h8oN+55IyjYEdZEKUFOV0eukcWFxLVAK8bAObjwqaPmk52wZ
 7rG1SEuUfh9TxNeTKlOmTyCCxto/GGusW+UUG7VWN5CgT1oUk1zIqmJ9PkShcZq0CYJn
 0c7Q==
X-Gm-Message-State: AOAM530/GkP6lCDGvSLVBVEijtBa5Gc34uyqmR6mpc4SKeYZ872tJkpW
 sZM7w6ykRu7u33kt8qbcxCUPrw==
X-Google-Smtp-Source: ABdhPJxyti+ZZIBqAkD5R1g1ftKPfUvMSW2DqKLuBzw6ePGKI8J6QwFpwkKLPShUROCFJsNNtbrQTQ==
X-Received: by 2002:a05:6402:50cd:b0:418:5267:d8ba with SMTP id
 h13-20020a05640250cd00b004185267d8bamr11708559edb.68.1647254540354; 
 Mon, 14 Mar 2022 03:42:20 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z11-20020a50e68b000000b00412ec8b2180sm7848448edm.90.2022.03.14.03.42.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Mar 2022 03:42:20 -0700 (PDT)
Message-ID: <bf9b90a5-63c7-ac9d-385f-cd0c60de7eee@blackwall.org>
Date: Mon, 14 Mar 2022 12:42:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220314095231.3486931-1-tobias@waldekranz.com>
 <20220314095231.3486931-8-tobias@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220314095231.3486931-8-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v3 net-next 07/14] net: bridge: mst: Add helper
 to map an MSTI to a VID set
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

On 14/03/2022 11:52, Tobias Waldekranz wrote:
> br_mst_get_info answers the question: "On this bridge, which VIDs are
> mapped to the given MSTI?"
> 
> This is useful in switchdev drivers, which might have to fan-out
> operations, relating to an MSTI, per VLAN.
> 
> An example: When a port's MST state changes from forwarding to
> blocking, a driver may choose to flush the dynamic FDB entries on that
> port to get faster reconvergence of the network, but this should only
> be done in the VLANs that are managed by the MSTI in question.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---
>  include/linux/if_bridge.h |  6 ++++++
>  net/bridge/br_mst.c       | 26 ++++++++++++++++++++++++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 3aae023a9353..46e6327fef06 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -119,6 +119,7 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
>  		     struct bridge_vlan_info *p_vinfo);
>  int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  			 struct bridge_vlan_info *p_vinfo);
> +int br_mst_get_info(struct net_device *dev, u16 msti, unsigned long *vids);
>  #else
>  static inline bool br_vlan_enabled(const struct net_device *dev)
>  {
> @@ -151,6 +152,11 @@ static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  {
>  	return -EINVAL;
>  }
> +static inline int br_mst_get_info(struct net_device *dev, u16 msti,
> +				  unsigned long *vids)
> +{
> +	return -EINVAL;
> +}
>  #endif
>  
>  #if IS_ENABLED(CONFIG_BRIDGE)
> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
> index 7d16926a3a31..eb18dbd5838f 100644
> --- a/net/bridge/br_mst.c
> +++ b/net/bridge/br_mst.c
> @@ -13,6 +13,32 @@
>  
>  DEFINE_STATIC_KEY_FALSE(br_mst_used);
>  
> +int br_mst_get_info(struct net_device *dev, u16 msti, unsigned long *vids)
> +{
> +	struct net_bridge_vlan_group *vg;
> +	struct net_bridge_vlan *v;
> +	struct net_bridge *br;

const dev, vg, v, br

> +
> +	ASSERT_RTNL();
> +
> +	if (!netif_is_bridge_master(dev))
> +		return -EINVAL;
> +
> +	br = netdev_priv(dev);
> +	if (!br_opt_get(br, BROPT_MST_ENABLED))
> +		return -EINVAL;
> +
> +	vg = br_vlan_group(br);
> +
> +	list_for_each_entry(v, &vg->vlan_list, vlist) {
> +		if (v->msti == msti)
> +			set_bit(v->vid, vids);

__set_bit()

> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(br_mst_get_info);

EXPORT_SYMBOL_GPL

> +
>  static void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_vlan *v,
>  				  u8 state)
>  {

