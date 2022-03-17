Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2564DBBDC
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 01:42:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBAF26124B;
	Thu, 17 Mar 2022 00:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34NtBaBTDuUl; Thu, 17 Mar 2022 00:42:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8472F61247;
	Thu, 17 Mar 2022 00:42:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3A8C6C0033;
	Thu, 17 Mar 2022 00:42:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E38CFC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:42:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D322D8436E
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nUzCaquPfuuz for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 00:42:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30A9C8436C
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 00:42:34 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id h13so4740587ede.5
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 17:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=H0nknxMHezOvYCsNqm3RZDRFJz+VXWQYJZtH3Zk/57k=;
 b=ZbMebK+la9jrpPCHWvD3tQQxGQ4KzQZg2fxez0hesY7cRQoFosiRqCeEjOt6GnU0Yi
 +keXpYbNgjeTelQZrOwfk8RtCsWcCQSmhT0yK6DttJ6dylS/8sdtXb271fYLg5xG4gd7
 M/eG4A8n9mpTOeJ8rMDVx9oEZ5oJUVJKRRULKVcmg/L6fM4rIPPeIrfRevA0Nqz5am6V
 Rz7sdM9PrlUAIlQrsDHxyrr3Yx1lv4u73Qw0GnPaJp7N/EmajnHunod0MYov8qxh4fZZ
 otYuPHC8Ed9v5aqhRmiJcQreTsZnCht2VnUcPRhUhlmNCd6ah90nPlipbQEbX7+aaQPx
 X81A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=H0nknxMHezOvYCsNqm3RZDRFJz+VXWQYJZtH3Zk/57k=;
 b=SMvGvzwYF0BycCPmuPiwVTv0ri8gudM6f+B1nofOx1OAv0q4EDv1Ufb6nILElvTaCs
 rK0MlFAK9EFWrxjqw+UfEZVchHtQfw/YCQ3Sk7kufSYBkwDNTvfgml6myocMFrE7lpYv
 8Oq2SC7kRgJEuatGLSxTMRFwX9siIW5EaLI1MO9xqaCJapJB1fj6Itrl5NytQh5a6aHQ
 h2hSOEK+V6jKwrSABSKf9nHlNyGZ4q/V6Ol0m92sN/im7ShGLx00bPveR+STwazvBB/o
 jKxIAHwh8SpiCZamcr9SVTOeTE6r9cGBMg6I9be+qM/Y2+Ayxg8ix/zw2PiCKFdNge6o
 4zSg==
X-Gm-Message-State: AOAM532NwGGKlwiyiWA6Ai4uJl48FZgY9W2PFekiiXhziewMbIrXRdZ+
 /OMjTVqNaQXpI7JZ3/p92rE=
X-Google-Smtp-Source: ABdhPJw1C8yIP3Qjd3GFx4zVRMAvdLwbqbJ2QzhL6I+Of0+SDQFe383BLZw0BLZ0kl+9wgwwCz+6/w==
X-Received: by 2002:a05:6402:2065:b0:407:eb07:740 with SMTP id
 bd5-20020a056402206500b00407eb070740mr1918745edb.406.1647477752122; 
 Wed, 16 Mar 2022 17:42:32 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 a22-20020a50ff16000000b00410d029ea5csm1716880edu.96.2022.03.16.17.42.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 17:42:31 -0700 (PDT)
Date: Thu, 17 Mar 2022 02:42:29 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220317004229.dub2qoinhur76co7@skbuf>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <20220316150857.2442916-9-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220316150857.2442916-9-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v5 net-next 08/15] net: bridge: mst: Add helper
 to check if MST is enabled
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

On Wed, Mar 16, 2022 at 04:08:50PM +0100, Tobias Waldekranz wrote:
> This is useful for switchdev drivers that might want to refuse to join
> a bridge where MST is enabled, if the hardware can't support it.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

>  include/linux/if_bridge.h | 6 ++++++
>  net/bridge/br_mst.c       | 9 +++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 1cf0cc46d90d..4efd5540279a 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -119,6 +119,7 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
>  		     struct bridge_vlan_info *p_vinfo);
>  int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  			 struct bridge_vlan_info *p_vinfo);
> +bool br_mst_enabled(const struct net_device *dev);
>  int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids);
>  #else
>  static inline bool br_vlan_enabled(const struct net_device *dev)
> @@ -153,6 +154,11 @@ static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
>  	return -EINVAL;
>  }
>  
> +static inline bool br_mst_enabled(const struct net_device *dev)
> +{
> +	return false;
> +}
> +
>  static inline int br_mst_get_info(const struct net_device *dev, u16 msti,
>  				  unsigned long *vids)
>  {
> diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
> index 00b36e629224..830a5746479f 100644
> --- a/net/bridge/br_mst.c
> +++ b/net/bridge/br_mst.c
> @@ -13,6 +13,15 @@
>  
>  DEFINE_STATIC_KEY_FALSE(br_mst_used);
>  
> +bool br_mst_enabled(const struct net_device *dev)
> +{
> +	if (!netif_is_bridge_master(dev))
> +		return false;
> +
> +	return br_opt_get(netdev_priv(dev), BROPT_MST_ENABLED);
> +}
> +EXPORT_SYMBOL_GPL(br_mst_enabled);
> +
>  int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids)
>  {
>  	const struct net_bridge_vlan_group *vg;
> -- 
> 2.25.1
> 
