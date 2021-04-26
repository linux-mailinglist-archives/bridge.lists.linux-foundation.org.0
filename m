Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A0A36C098
	for <lists.bridge@lfdr.de>; Tue, 27 Apr 2021 10:08:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D04E405C8;
	Tue, 27 Apr 2021 08:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xp6RJiUecHgt; Tue, 27 Apr 2021 08:08:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 995CB405BA;
	Tue, 27 Apr 2021 08:08:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9BBC0C0025;
	Tue, 27 Apr 2021 08:08:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 25782C000B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 15:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1285340342
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 15:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tq9BYiKyhxqR for <bridge@lists.linux-foundation.org>;
 Mon, 26 Apr 2021 15:24:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12F4C4036D
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 15:24:37 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id e2so24801090plh.8
 for <bridge@lists.linux-foundation.org>; Mon, 26 Apr 2021 08:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=q0T9jbT9J+TwSihAcCr3HGKEWP12uQgYZvS3pdHVqZo=;
 b=d4UWmkkRHMFKP3kmi5OF+3tUt2yHNzgDLOlWEj7T2XOeHCDvRyd8JHq8AbUrzST7FX
 Z8REYPJxb+n6Y62qo4mLz7ghuRtgyF70jkT3Sk6yeZNd9gfP+9XX8OLicZQxJRxk8SD6
 JUbVsWMhMqlEsuOnprSxi4DZG6/esyvBE5KAdH6S0u/qJRtrV7TopyYavmlaqkXt2tI3
 pEZnblHvFjEbRq7nugYy2HTtuOOJkZp8wvIiReVoodNkAGi1nqYMqrdBueMMRFG/GO1I
 a6xbjZyddbFIB8y5BzfquAN2EF/uLQSVQuaONjZE0DOQJOV1v5nI0jPvVGxNQTpv9mVy
 7Dug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=q0T9jbT9J+TwSihAcCr3HGKEWP12uQgYZvS3pdHVqZo=;
 b=fVCxnF5KhaFTd6bC51rvWTRptK91rTO5FvEzn2barf56MsS3AecADFkNldebdRgvdq
 CfIa7eneUP/rlCY27A5MXQyK2bRoFd/y/bgPfksQeI09JToYGZr+uwTp0G7haEYd/CIS
 7Fi2XrkC8vqwIueK3q3mN7C8aIAiKHE2CI+C5Rix5GB99qWU8JzqzE8qpR88vpwfNlNN
 4JGHj5tXdVIWMeIQSAggmfc1ZbjbhrigDX7G/4mPTIqUslC3MlSpO/ghYhDtSEZJX8Ct
 J7rIbOTt/+2D6gitEMSJv8PgsV0y2L5l4+Tg7i7r3AShJs6+qThYsZan0D3oqsTHFEKm
 EtIw==
X-Gm-Message-State: AOAM530oxIzINcGYYOutNJllz19otMzI064FKKOSFQoSlpatG4+6lV81
 ZhVHGBZ8GbUg961xMZEUWchH+Z0ZaeM=
X-Google-Smtp-Source: ABdhPJwAGxuU4uvgk5s1YLZIMbudsahCI3btlZBwLhg9JqvI5u1fdgmj4bIZHPuxtaOa4gWUddd6XQ==
X-Received: by 2002:a17:90b:4908:: with SMTP id
 kr8mr9032606pjb.85.1619450676936; 
 Mon, 26 Apr 2021 08:24:36 -0700 (PDT)
Received: from [192.168.0.4] ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id 132sm108229pfu.107.2021.04.26.08.24.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Apr 2021 08:24:36 -0700 (PDT)
To: Heiner Kallweit <hkallweit1@gmail.com>, davem@davemloft.net,
 kuba@kernel.org, dsahern@kernel.org, yoshfuji@linux-ipv6.org,
 netdev@vger.kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, roopa@nvidia.com, nikolay@nvidia.com, ast@kernel.org,
 andriin@fb.com, daniel@iogearbox.net, weiwan@google.com,
 cong.wang@bytedance.com, bjorn@kernel.org, herbert@gondor.apana.org.au,
 bridge@lists.linux-foundation.org
References: <20210425155742.30057-1-ap420073@gmail.com>
 <20210425155742.30057-2-ap420073@gmail.com>
 <d7cf5368-21a4-a551-169a-00a4cb2b3a0d@gmail.com>
From: Taehee Yoo <ap420073@gmail.com>
Message-ID: <a43a957a-0fc8-cfff-f04a-cf0bc1ae612b@gmail.com>
Date: Tue, 27 Apr 2021 00:24:31 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d7cf5368-21a4-a551-169a-00a4cb2b3a0d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 27 Apr 2021 08:08:26 +0000
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

On 4/26/21 3:03 AM, Heiner Kallweit wrote:

Hi Heiner,
Thank you for the review!

 > On 25.04.2021 17:57, Taehee Yoo wrote:
 >> The purpose of bond_get_lowest_level_rcu() is to get nested_level under
 >> RCU. Because dev->nested_level is protected by RTNL, so it shouldn't be
 >> used without RTNL. But bonding module needs this value under RCU without
 >> RTNL.
 >> So, this function was added.
 >>
 >> But, there is another module, which needs this function.
 >> So, make this function generic.
 >> the new name is netdev_get_nest_level_rcu().
 >>
 >> Signed-off-by: Taehee Yoo <ap420073@gmail.com>
 >> ---
 >>
 >> v2:
 >>   - No change
 >>
 >>   drivers/net/bonding/bond_main.c | 45 +--------------------------------
 >>   include/linux/netdevice.h       |  1 +
 >>   net/core/dev.c                  | 44 ++++++++++++++++++++++++++++++++
 >>   3 files changed, 46 insertions(+), 44 deletions(-)
 >>
 >> diff --git a/drivers/net/bonding/bond_main.c 
b/drivers/net/bonding/bond_main.c
 >> index 83ef62db6285..a9feb039ffa6 100644
 >> --- a/drivers/net/bonding/bond_main.c
 >> +++ b/drivers/net/bonding/bond_main.c
 >> @@ -3754,47 +3754,6 @@ static void bond_fold_stats(struct 
rtnl_link_stats64 *_res,
 >>   	}
 >>   }
 >>
 >> -#ifdef CONFIG_LOCKDEP
 >> -static int bond_get_lowest_level_rcu(struct net_device *dev)
 >> -{
 >> -	struct net_device *ldev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
 >> -	struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
 >> -	int cur = 0, max = 0;
 >> -
 >> -	now = dev;
 >> -	iter = &dev->adj_list.lower;
 >> -
 >> -	while (1) {
 >> -		next = NULL;
 >> -		while (1) {
 >> -			ldev = netdev_next_lower_dev_rcu(now, &iter);
 >> -			if (!ldev)
 >> -				break;
 >> -
 >> -			next = ldev;
 >> -			niter = &ldev->adj_list.lower;
 >> -			dev_stack[cur] = now;
 >> -			iter_stack[cur++] = iter;
 >> -			if (max <= cur)
 >> -				max = cur;
 >> -			break;
 >> -		}
 >> -
 >> -		if (!next) {
 >> -			if (!cur)
 >> -				return max;
 >> -			next = dev_stack[--cur];
 >> -			niter = iter_stack[cur];
 >> -		}
 >> -
 >> -		now = next;
 >> -		iter = niter;
 >> -	}
 >> -
 >> -	return max;
 >> -}
 >> -#endif
 >> -
 >>   static void bond_get_stats(struct net_device *bond_dev,
 >>   			   struct rtnl_link_stats64 *stats)
 >>   {
 >> @@ -3806,9 +3765,7 @@ static void bond_get_stats(struct net_device 
*bond_dev,
 >>
 >>
 >>   	rcu_read_lock();
 >> -#ifdef CONFIG_LOCKDEP
 >> -	nest_level = bond_get_lowest_level_rcu(bond_dev);
 >> -#endif
 >> +	nest_level = netdev_get_nest_level_rcu(bond_dev);
 >>
 >>   	spin_lock_nested(&bond->stats_lock, nest_level);
 >>   	memcpy(stats, &bond->bond_stats, sizeof(*stats));
 >> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
 >> index 87a5d186faff..507c06bf5dba 100644
 >> --- a/include/linux/netdevice.h
 >> +++ b/include/linux/netdevice.h
 >> @@ -4699,6 +4699,7 @@ int netdev_walk_all_lower_dev(struct 
net_device *dev,
 >>   			      int (*fn)(struct net_device *lower_dev,
 >>   					struct netdev_nested_priv *priv),
 >>   			      struct netdev_nested_priv *priv);
 >> +int netdev_get_nest_level_rcu(struct net_device *dev);
 >>   int netdev_walk_all_lower_dev_rcu(struct net_device *dev,
 >>   				  int (*fn)(struct net_device *lower_dev,
 >>   					    struct netdev_nested_priv *priv),
 >> diff --git a/net/core/dev.c b/net/core/dev.c
 >> index 15fe36332fb8..efc2bf88eafd 100644
 >> --- a/net/core/dev.c
 >> +++ b/net/core/dev.c
 >> @@ -7709,6 +7709,50 @@ static int __netdev_update_lower_level(struct 
net_device *dev,
 >>   	return 0;
 >>   }
 >>
 >> +int netdev_get_nest_level_rcu(struct net_device *dev)
 >> +{
 >> +#ifdef CONFIG_LOCKDEP
 >> +	struct net_device *ldev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
 >> +	struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
 >> +	int cur = 0, max = 0;
 >> +
 >> +	now = dev;
 >> +	iter = &dev->adj_list.lower;
 >> +
 >> +	while (1) {
 >> +		next = NULL;
 >> +		while (1) {
 >> +			ldev = netdev_next_lower_dev_rcu(now, &iter);
 >> +			if (!ldev)
 >> +				break;
 >> +
 >> +			next = ldev;
 >> +			niter = &ldev->adj_list.lower;
 >> +			dev_stack[cur] = now;
 >> +			iter_stack[cur++] = iter;
 >> +			if (max <= cur)
 >> +				max = cur;
 >> +			break;
 >
 > This looks odd. Why a while loop if it's left in the first iteration
 > anyway? The whole loop looks unnecessarily complex. The following
 > should do the same, just in a simpler way (untested!)
 >
 >          while (1) {
 >                  ldev = netdev_next_lower_dev_rcu(now, &iter);
 >                  if (ldev) {
 >                          dev_stack[cur] = now;
 >                          iter_stack[cur++] = iter;
 >                          if (max <= cur)
 >                                  max = cur;
 >                          now = ldev;
 >                          iter = &ldev->adj_list.lower;
 >                  } else {
 >                          if (!cur)
 >                                  break;
 >                          now = dev_stack[--cur];
 >                          iter = iter_stack[cur];
 >                  }
 >          }
 >
 > I know that you just copied the original function.
 > Simplifying the function should be something for a
 > follow-up patch.
 >
 >> +		}
 >> +
 >> +		if (!next) {
 >> +			if (!cur)
 >> +				return max;
 >> +			next = dev_stack[--cur];
 >> +			niter = iter_stack[cur];
 >> +		}
 >> +
 >> +		now = next;
 >> +		iter = niter;
 >> +	}
 >> +
 >> +	return max;
 >> +#else
 >> +	return 0;
 >> +#endif
 >> +}
 >> +EXPORT_SYMBOL_GPL(netdev_get_nest_level_rcu);
 >> +
 >>   int netdev_walk_all_lower_dev_rcu(struct net_device *dev,
 >>   				  int (*fn)(struct net_device *dev,
 >>   					    struct netdev_nested_priv *priv),
 >>
 >

I think you're right.
Your logic is more simple and stable.
If I send a v3 patch, I will use your logic after some tests.

Thanks a lot!
Taehee
