Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EF04DBBDA
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 01:41:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 978976124A;
	Thu, 17 Mar 2022 00:41:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cMWv_7fKcaNW; Thu, 17 Mar 2022 00:41:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 42C1461259;
	Thu, 17 Mar 2022 00:41:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA3F3C0033;
	Thu, 17 Mar 2022 00:41:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 53E7CC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E95761250
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FwiVg3022CIp for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 00:41:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9F886124A
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:41:21 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id ja24so2184099ejc.11
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 17:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=puT3IgmYzTu6AuFh52Q7IDj5+ZEUZuLDjwQ4QyI52W0=;
 b=QgXd0svzMbNIP2g2rA9c9EUijFq9dm/8soUIjK73L/NfXjS4ps3CVSug8zfay+8hHv
 rLgugrG1f/iBupGJBEpfXAvMALWrhin8tGou8GYifVo99aIZsX13g8/DAodWWxghbliR
 5FeXfzsejLgAD5ucGtMKUtCImIJUTlRiAJIuCFn1LsP3IdgAAL1sZ5JrhipoCe8VYbKf
 j67ANWCkbXB4myPbg2ZhWhjCgOOJOgaZSEjrSSe/BAhtpTRvfexagbpwHtaOND1j92oD
 ReFLZ6GjpbT+9rM+gdhV+AGzNiADUksDvG1kI0jtZAp9Gf6fuTscA2NSOySbgnM5JtrP
 nAcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=puT3IgmYzTu6AuFh52Q7IDj5+ZEUZuLDjwQ4QyI52W0=;
 b=xnHAU56CYLvbiLyiOhsYHYM+AESBv/g8Rny8/QHRneouSPyW2lxHFIMzM/IaqxqgLZ
 qPhNkMtCI4ImFWAJzqurEuWVGQY30VdF9rllX6P/6RSUsgSYAZACJJvIIOBlYJ7stP8c
 aouEUr4Y4tUiyNwp58s0AuWMh9j/vKbhV9XENR84dB6i2CTH5hGSiQePp3aL64hGrWLS
 mAgeo2jZUJnZipyqLo4bhazBOlQ7zmdRnJe66E3DSb+1hyDCPqdrFdqm7v4Lw2Y8fOGy
 6ftglvnD0QTYnToB8CT2evMvMCSv4hFoK5/IliSgEU/0EQBFhfAA2diG4HQzszpi9TS0
 J2TQ==
X-Gm-Message-State: AOAM531GWGf/P0h0HeMVW08LX0EsqwtMf/7pjP8qqFHvAO9M3FrSxE1j
 WyzaWKMnqZ/YwaA1SxjgY5A=
X-Google-Smtp-Source: ABdhPJzPRk6YhBpWOdHQ0FEhwSP//JJXwdofxX9Q2WwjKdLT7SVeJhIto+QyGJvQ73CyHRGPFW2jHA==
X-Received: by 2002:a17:906:a38e:b0:6da:a1f9:f9ee with SMTP id
 k14-20020a170906a38e00b006daa1f9f9eemr2003763ejz.27.1647477679866; 
 Wed, 16 Mar 2022 17:41:19 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 bd12-20020a056402206c00b00418c9bf71cbsm1717601edb.68.2022.03.16.17.41.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 17:41:19 -0700 (PDT)
Date: Thu, 17 Mar 2022 02:41:17 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220317004117.sudxyvmteipz4y32@skbuf>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-10-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220316150857.2442916-10-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v5 net-next 09/15] net: bridge: mst: Add helper
 to query a port's MST state
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

On Wed, Mar 16, 2022 at 04:08:51PM +0100, Tobias Waldekranz wrote:
> This is useful for switchdev drivers who are offloading MST states
> into hardware. As an example, a driver may wish to flush the FDB for a
> port when it transitions from forwarding to blocking - which means
> that the previous state must be discoverable.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

>  include/linux/if_bridge.h |  6 ++++++
>  net/bridge/br_mst.c       | 25 +++++++++++++++++++++++++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 4efd5540279a..d62ef428e3aa 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -121,6 +121,7 @@ int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  			 struct bridge_vlan_info *p_vinfo);
>  bool br_mst_enabled(const struct net_device *dev);
>  int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids);
> +int br_mst_get_state(const struct net_device *dev, u16 msti, u8 *state);
>  #else
>  static inline bool br_vlan_enabled(const struct net_device *dev)
>  {
> @@ -164,6 +165,11 @@ static inline int br_mst_get_info(const struct net_device *dev, u16 msti,
>  {
>  	return -EINVAL;
>  }
> +static inline int br_mst_get_state(const struct net_device *dev, u16 msti,
> +				   u8 *state)
> +{
> +	return -EINVAL;
> +}
>  #endif
>  
>  #if IS_ENABLED(CONFIG_BRIDGE)
> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
> index 830a5746479f..ee680adcee17 100644
> --- a/net/bridge/br_mst.c
> +++ b/net/bridge/br_mst.c
> @@ -48,6 +48,31 @@ int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids)
>  }
>  EXPORT_SYMBOL_GPL(br_mst_get_info);
>  
> +int br_mst_get_state(const struct net_device *dev, u16 msti, u8 *state)
> +{
> +	const struct net_bridge_port *p = NULL;
> +	const struct net_bridge_vlan_group *vg;
> +	const struct net_bridge_vlan *v;
> +
> +	ASSERT_RTNL();
> +
> +	p = br_port_get_check_rtnl(dev);
> +	if (!p || !br_opt_get(p->br, BROPT_MST_ENABLED))
> +		return -EINVAL;
> +
> +	vg = nbp_vlan_group(p);
> +
> +	list_for_each_entry(v, &vg->vlan_list, vlist) {
> +		if (v->brvlan->msti == msti) {
> +			*state = v->state;
> +			return 0;
> +		}
> +	}
> +
> +	return -ENOENT;
> +}
> +EXPORT_SYMBOL_GPL(br_mst_get_state);
> +
>  static void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_vlan *v,
>  				  u8 state)
>  {
> -- 
> 2.25.1
> 

