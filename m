Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D75AA4DBBE4
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 01:43:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E441404B6;
	Thu, 17 Mar 2022 00:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmobYmeYXmWa; Thu, 17 Mar 2022 00:43:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B3EC34055D;
	Thu, 17 Mar 2022 00:43:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8174AC0033;
	Thu, 17 Mar 2022 00:43:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0DC3BC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E29E560BF3
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hI1nfMMOaplB for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 00:43:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8C89605BA
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:43:30 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id ja24so2191065ejc.11
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 17:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=epMYlP8SwfuajkjtWjH/vdDgnJLu6cKl9OWtKi8Kk94=;
 b=Qoted9Hr0eGzmpkCHTYGlB9GWjkE+TWEPm1lkAgM0fg8igtm6f9hjxNnovjmkFDYYg
 fP51yRAboD900JOQlGUtnah7kk9DgdBI1gKsMEvsfFBu1PiRII59tOUASjKEtfHIfNmC
 GsiLQm5utgUqyqnGBl1HB6D0OkGAvSG7ZrNk3W97LO5I3x2ccRdjBagVxbvf2OCfQ947
 xaLp9TCsmOUGYcs0VB4Ir6NJtEalPEjjJLI6I+FhUnxeAvq/yIbmlz3200tabpvIudC9
 QjbAmRccewrzOEva+71WXoyon9TiNTIRW0BwFSy/cCxAGZJ4A7rpsk3NVjQ+l4s+dB1B
 d9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=epMYlP8SwfuajkjtWjH/vdDgnJLu6cKl9OWtKi8Kk94=;
 b=SjQF/8w7VCdF5IHpP2hcz3uonWjDd0XsxHK9ovw1UfUXnKX/N7mSlF9LMfDNZuq1ft
 jFpUeOvsgM5QuD7iBpwYYk00JVb++p+TY/MRlcmcXxOieo+fxAzTfumBw+ZPtoN0z/H4
 X1ENAk0Mkmi6kKjxe9hUF62veurB/7uPzcI5gcyYFigoFLt8KQ6sGyTCmzEMjRVaiCIN
 3WbyfhDCd6PhL1jhNFTIAPG+hiwxtPj9XCgseVXMKyqbw74MadBNwLCuveS4aAiwER1H
 aDFpcnwbWZImEho9ACDkCodKxiQJYgeLCFPrBElctgTAtH/+ndBWIG9tZ5qw6aELC/ZU
 ot+w==
X-Gm-Message-State: AOAM530wzevEgrdPclvg2wynWuGHIVcAm13z1XaehHgKfCHztEsu8Vkh
 kkaLViTy+faBG5J+hqgn5gA=
X-Google-Smtp-Source: ABdhPJwyCt6QsreK6fVWbPz1fnNbV7bg5/AUmfMUCyxa4Mm6zX3eCKFmwX4vrCGRDX68jIsiXer0YA==
X-Received: by 2002:a17:907:7b87:b0:6db:ee39:b55c with SMTP id
 ne7-20020a1709077b8700b006dbee39b55cmr2218734ejc.98.1647477808962; 
 Wed, 16 Mar 2022 17:43:28 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 js24-20020a170906ca9800b006c8aeca8fe8sm1594948ejb.58.2022.03.16.17.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 17:43:28 -0700 (PDT)
Date: Thu, 17 Mar 2022 02:43:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220317004326.ebsc5xjug76qqen3@skbuf>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-8-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220316150857.2442916-8-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v5 net-next 07/15] net: bridge: mst: Add helper
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

On Wed, Mar 16, 2022 at 04:08:49PM +0100, Tobias Waldekranz wrote:
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

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

>  include/linux/if_bridge.h |  7 +++++++
>  net/bridge/br_mst.c       | 26 ++++++++++++++++++++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 3aae023a9353..1cf0cc46d90d 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -119,6 +119,7 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
>  		     struct bridge_vlan_info *p_vinfo);
>  int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  			 struct bridge_vlan_info *p_vinfo);
> +int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids);
>  #else
>  static inline bool br_vlan_enabled(const struct net_device *dev)
>  {
> @@ -151,6 +152,12 @@ static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  {
>  	return -EINVAL;
>  }
> +
> +static inline int br_mst_get_info(const struct net_device *dev, u16 msti,
> +				  unsigned long *vids)
> +{
> +	return -EINVAL;
> +}
>  #endif
>  
>  #if IS_ENABLED(CONFIG_BRIDGE)
> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
> index 00935a19afcc..00b36e629224 100644
> --- a/net/bridge/br_mst.c
> +++ b/net/bridge/br_mst.c
> @@ -13,6 +13,32 @@
>  
>  DEFINE_STATIC_KEY_FALSE(br_mst_used);
>  
> +int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids)
> +{
> +	const struct net_bridge_vlan_group *vg;
> +	const struct net_bridge_vlan *v;
> +	const struct net_bridge *br;
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
> +			__set_bit(v->vid, vids);
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(br_mst_get_info);
> +
>  static void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_vlan *v,
>  				  u8 state)
>  {
> -- 
> 2.25.1
> 

