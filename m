Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FCF36A8BC
	for <lists.bridge@lfdr.de>; Sun, 25 Apr 2021 20:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8C5560087;
	Sun, 25 Apr 2021 18:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0LV4TqtwwXoF; Sun, 25 Apr 2021 18:04:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49F22605E3;
	Sun, 25 Apr 2021 18:04:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 07C2FC001C;
	Sun, 25 Apr 2021 18:04:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6FA54C000B
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 18:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F231605E3
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 18:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aThuG-2JYYm5 for <bridge@lists.linux-foundation.org>;
 Sun, 25 Apr 2021 18:03:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A08760087
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 18:03:58 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id j5so52475287wrn.4
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 11:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:from:subject:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=9OL0OlRXc1nSbmzqegdZimzYL1pFvw5oCivkkb0kv48=;
 b=nf525OSUXYIh0ST8ge8wNjDtu1fSy/7+SZIpae0shKwFRpWy9Yv/E0BMKW27vDj45I
 +xgpiacflDJgH+SR6NLwdDT7lSAwh5mDUWtIEl0SbocarNL/ZQIBvjoqKPue3Wb/4xiE
 BRXUwOD7uO0/CvUneokAb2QgGRNFm2x/JeMBDFcWPkj8nIqWnmjvGNcplo3oPLH5bjhx
 ZCC4Tmog2YbD6c7ZzwP62RheqlDnCiIqas8Y61LtmEFjt02W6f8tFY1T+6oto1kCy4r/
 pNiIJ5MmcN3IRunfth5Hr4R+v8Y87iPPJK3N3BCWePvAYUkyafIpGQdt8FXcfnTLGCfp
 D5PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9OL0OlRXc1nSbmzqegdZimzYL1pFvw5oCivkkb0kv48=;
 b=FwHohAQmoJ6InFI32oXwWjI+whQwQqvuhGBq9KOH+z7SDrMA5gSHQMP9i1Sb8+0F3M
 u+zQ1/O51B5g+3hPvPMPTtc3uXhmSen4pBFLUd4vd+EkP4RYT5rLKp36ZVglcFzNCQSF
 bGt44WQrgJWdnvSClCqO/mG35oVmYhcYEbjMA8BTZauc61m94SS4ix/WjX18QrlS9Bs1
 4IqL5THR6FdWwOX6Up34NJqFK0VtBGclGQ1Tx5lnkSP/MX0Ip1h0IzJIKifBHO/M2Tit
 AJUhohvOqsF6/0LAwbSepkz+67AUvSrlWMwVXpF6JoqF1Wh3aw40pDKxskTnj7hiwNzt
 7Png==
X-Gm-Message-State: AOAM531pRmh6+aAejZ9EelH7BbM7vqQh4QqCja6YPyAuFOm4AuEom4X4
 sCRn3nwmxgMPq2FM6DqGU4NaK2KaTuEmow==
X-Google-Smtp-Source: ABdhPJyrLI3AzvV3yJSg+iI05XbbB/ioRbg+PX/fIanjsIhfOtk4Xj7JmvjWvGfQQq2QGAwLnP+/Qw==
X-Received: by 2002:a5d:638f:: with SMTP id p15mr5090427wru.255.1619373836282; 
 Sun, 25 Apr 2021 11:03:56 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f38:4600:29ce:8a0d:b323:586a?
 (p200300ea8f38460029ce8a0db323586a.dip0.t-ipconnect.de.
 [2003:ea:8f38:4600:29ce:8a0d:b323:586a])
 by smtp.googlemail.com with ESMTPSA id q20sm43458913wmq.2.2021.04.25.11.03.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 25 Apr 2021 11:03:55 -0700 (PDT)
To: Taehee Yoo <ap420073@gmail.com>, davem@davemloft.net, kuba@kernel.org,
 dsahern@kernel.org, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 j.vosburgh@gmail.com, vfalico@gmail.com, andy@greyhouse.net,
 roopa@nvidia.com, nikolay@nvidia.com, ast@kernel.org, andriin@fb.com,
 daniel@iogearbox.net, weiwan@google.com, cong.wang@bytedance.com,
 bjorn@kernel.org, herbert@gondor.apana.org.au,
 bridge@lists.linux-foundation.org
References: <20210425155742.30057-1-ap420073@gmail.com>
 <20210425155742.30057-2-ap420073@gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <d7cf5368-21a4-a551-169a-00a4cb2b3a0d@gmail.com>
Date: Sun, 25 Apr 2021 20:03:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210425155742.30057-2-ap420073@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Bridge] [PATCH net v2 1/2] net: core: make
 bond_get_lowest_level_rcu() generic
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

On 25.04.2021 17:57, Taehee Yoo wrote:
> The purpose of bond_get_lowest_level_rcu() is to get nested_level under
> RCU. Because dev->nested_level is protected by RTNL, so it shouldn't be
> used without RTNL. But bonding module needs this value under RCU without
> RTNL.
> So, this function was added.
> 
> But, there is another module, which needs this function.
> So, make this function generic.
> the new name is netdev_get_nest_level_rcu().
> 
> Signed-off-by: Taehee Yoo <ap420073@gmail.com>
> ---
> 
> v2:
>  - No change
> 
>  drivers/net/bonding/bond_main.c | 45 +--------------------------------
>  include/linux/netdevice.h       |  1 +
>  net/core/dev.c                  | 44 ++++++++++++++++++++++++++++++++
>  3 files changed, 46 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
> index 83ef62db6285..a9feb039ffa6 100644
> --- a/drivers/net/bonding/bond_main.c
> +++ b/drivers/net/bonding/bond_main.c
> @@ -3754,47 +3754,6 @@ static void bond_fold_stats(struct rtnl_link_stats64 *_res,
>  	}
>  }
>  
> -#ifdef CONFIG_LOCKDEP
> -static int bond_get_lowest_level_rcu(struct net_device *dev)
> -{
> -	struct net_device *ldev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
> -	struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
> -	int cur = 0, max = 0;
> -
> -	now = dev;
> -	iter = &dev->adj_list.lower;
> -
> -	while (1) {
> -		next = NULL;
> -		while (1) {
> -			ldev = netdev_next_lower_dev_rcu(now, &iter);
> -			if (!ldev)
> -				break;
> -
> -			next = ldev;
> -			niter = &ldev->adj_list.lower;
> -			dev_stack[cur] = now;
> -			iter_stack[cur++] = iter;
> -			if (max <= cur)
> -				max = cur;
> -			break;
> -		}
> -
> -		if (!next) {
> -			if (!cur)
> -				return max;
> -			next = dev_stack[--cur];
> -			niter = iter_stack[cur];
> -		}
> -
> -		now = next;
> -		iter = niter;
> -	}
> -
> -	return max;
> -}
> -#endif
> -
>  static void bond_get_stats(struct net_device *bond_dev,
>  			   struct rtnl_link_stats64 *stats)
>  {
> @@ -3806,9 +3765,7 @@ static void bond_get_stats(struct net_device *bond_dev,
>  
>  
>  	rcu_read_lock();
> -#ifdef CONFIG_LOCKDEP
> -	nest_level = bond_get_lowest_level_rcu(bond_dev);
> -#endif
> +	nest_level = netdev_get_nest_level_rcu(bond_dev);
>  
>  	spin_lock_nested(&bond->stats_lock, nest_level);
>  	memcpy(stats, &bond->bond_stats, sizeof(*stats));
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 87a5d186faff..507c06bf5dba 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -4699,6 +4699,7 @@ int netdev_walk_all_lower_dev(struct net_device *dev,
>  			      int (*fn)(struct net_device *lower_dev,
>  					struct netdev_nested_priv *priv),
>  			      struct netdev_nested_priv *priv);
> +int netdev_get_nest_level_rcu(struct net_device *dev);
>  int netdev_walk_all_lower_dev_rcu(struct net_device *dev,
>  				  int (*fn)(struct net_device *lower_dev,
>  					    struct netdev_nested_priv *priv),
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 15fe36332fb8..efc2bf88eafd 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -7709,6 +7709,50 @@ static int __netdev_update_lower_level(struct net_device *dev,
>  	return 0;
>  }
>  
> +int netdev_get_nest_level_rcu(struct net_device *dev)
> +{
> +#ifdef CONFIG_LOCKDEP
> +	struct net_device *ldev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
> +	struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
> +	int cur = 0, max = 0;
> +
> +	now = dev;
> +	iter = &dev->adj_list.lower;
> +
> +	while (1) {
> +		next = NULL;
> +		while (1) {
> +			ldev = netdev_next_lower_dev_rcu(now, &iter);
> +			if (!ldev)
> +				break;
> +
> +			next = ldev;
> +			niter = &ldev->adj_list.lower;
> +			dev_stack[cur] = now;
> +			iter_stack[cur++] = iter;
> +			if (max <= cur)
> +				max = cur;
> +			break;

This looks odd. Why a while loop if it's left in the first iteration
anyway? The whole loop looks unnecessarily complex. The following
should do the same, just in a simpler way (untested!)

        while (1) {
                ldev = netdev_next_lower_dev_rcu(now, &iter);
                if (ldev) {
                        dev_stack[cur] = now;
                        iter_stack[cur++] = iter;
                        if (max <= cur)
                                max = cur;
                        now = ldev;
                        iter = &ldev->adj_list.lower;
                } else {
                        if (!cur)
                                break;
                        now = dev_stack[--cur];
                        iter = iter_stack[cur];
                }
        }

I know that you just copied the original function.
Simplifying the function should be something for a
follow-up patch.

> +		}
> +
> +		if (!next) {
> +			if (!cur)
> +				return max;
> +			next = dev_stack[--cur];
> +			niter = iter_stack[cur];
> +		}
> +
> +		now = next;
> +		iter = niter;
> +	}
> +
> +	return max;
> +#else
> +	return 0;
> +#endif
> +}
> +EXPORT_SYMBOL_GPL(netdev_get_nest_level_rcu);
> +
>  int netdev_walk_all_lower_dev_rcu(struct net_device *dev,
>  				  int (*fn)(struct net_device *dev,
>  					    struct netdev_nested_priv *priv),
> 

