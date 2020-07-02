Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E82212090
	for <lists.bridge@lfdr.de>; Thu,  2 Jul 2020 12:05:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D03A8B149;
	Thu,  2 Jul 2020 10:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tXK6-n+yqZzJ; Thu,  2 Jul 2020 10:05:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1D9D8B14D;
	Thu,  2 Jul 2020 10:05:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7CE2C0895;
	Thu,  2 Jul 2020 10:05:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DE407C0733
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CDA8F8B10C
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b2MSnv4gCb3Y for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 10:05:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E10E38B053
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:05:04 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 17so27183241wmo.1
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jul 2020 03:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=z6rgXj0NTD9PDpQjHsG/IEK9XchmNS0510zhoY6+bRM=;
 b=V6Kamdd1OVWbDdE4nkgJT9LoSC8s7cK+++UHAukTcyCFI+MUhWZ3kQMfEHurLmC3VX
 auY7IxlsQm/sVxo6SSZTvWfeWUs4PnVhl5bVVJFk8GOKjTd8kbPCgrKY9dcrq3UHxwEN
 QxpNaeFbsGDE8QHON37JeMiK5JmBh7K8+j3+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z6rgXj0NTD9PDpQjHsG/IEK9XchmNS0510zhoY6+bRM=;
 b=Mw56FWlnJZJlYPZpUbxQPXbkkNEaIp/xwusrF0yOgemAZrIs0fkoiOW8RQbbQQpK6W
 6BTP0VkL2xGFxIwbIfVpcg2N6IMpJ84ouGRgWJ2gFzfa/PlhLo8XWOjp7TmMRsTtqBE7
 9RQPMpasUrbPt/RdnBNRDg0q4ltIUWfkNJsgX8mDasfzE0L7p11rHvyXdbWJJZaQXY0m
 6r06lm4k+dLCQ61o1030uxks3PzExnpoQrM5X+zK6Ex6ivZtmX5QalFvqc7yO9qmJuyB
 yMOgAmYgP16xZTqZXpiMyM3Vh4oxEBjuiByeiWsILda7S23tHeepVICOsr0qalz0lbrd
 QrMQ==
X-Gm-Message-State: AOAM533YwT/IulWKD6SthvuMjYWjiQoZT+95lw9OOuD4wSy0XS1MMsWU
 KIslW5ilFZ8LYV9xzd6TxhdgmA==
X-Google-Smtp-Source: ABdhPJwSjMqSScQHghRqZI31MUtUpODKi6xYVBUN+0ghQAtB/dtczJkORmCsn4rW41/+AX6Mj89EqA==
X-Received: by 2002:a1c:4303:: with SMTP id q3mr32097134wma.134.1593684303419; 
 Thu, 02 Jul 2020 03:05:03 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x185sm10508303wmg.41.2020.07.02.03.05.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jul 2020 03:05:02 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@mellanox.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, UNGLinuxDriver@microchip.com
References: <20200702081307.933471-1-horatiu.vultur@microchip.com>
 <20200702081307.933471-4-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <5c94fb61-a85d-e28f-01b4-52e2e4e0892e@cumulusnetworks.com>
Date: Thu, 2 Jul 2020 13:05:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200702081307.933471-4-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v3 3/3] bridge: Extend br_fill_ifinfo
 to return MPR status
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

On 02/07/2020 11:13, Horatiu Vultur wrote:
> This patch extends the function br_fill_ifinfo to return also the MRP
> status for each instance on a bridge. It also adds a new filter
> RTEXT_FILTER_MRP to return the MRP status only when this is set, not to
> interfer with the vlans. The MRP status is return only on the bridge
> interfaces.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/uapi/linux/rtnetlink.h |  1 +
>  net/bridge/br_netlink.c        | 25 ++++++++++++++++++++++++-
>  2 files changed, 25 insertions(+), 1 deletion(-)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
> index 879e64950a0a2..9b814c92de123 100644
> --- a/include/uapi/linux/rtnetlink.h
> +++ b/include/uapi/linux/rtnetlink.h
> @@ -778,6 +778,7 @@ enum {
>  #define RTEXT_FILTER_BRVLAN	(1 << 1)
>  #define RTEXT_FILTER_BRVLAN_COMPRESSED	(1 << 2)
>  #define	RTEXT_FILTER_SKIP_STATS	(1 << 3)
> +#define RTEXT_FILTER_MRP	(1 << 4)
>  
>  /* End of information exported to user level */
>  
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 240e260e3461c..c532fa65c9834 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -453,6 +453,28 @@ static int br_fill_ifinfo(struct sk_buff *skb,
>  		rcu_read_unlock();
>  		if (err)
>  			goto nla_put_failure;
> +
> +		nla_nest_end(skb, af);
> +	}
> +
> +	if (filter_mask & RTEXT_FILTER_MRP) {
> +		struct nlattr *af;
> +		int err;
> +
> +		if (!br_mrp_enabled(br) || port)
> +			goto done;
> +
> +		af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
> +		if (!af)
> +			goto nla_put_failure;
> +
> +		rcu_read_lock();
> +		err = br_mrp_fill_info(skb, br);
> +		rcu_read_unlock();
> +
> +		if (err)
> +			goto nla_put_failure;
> +
>  		nla_nest_end(skb, af);
>  	}
>  
> @@ -516,7 +538,8 @@ int br_getlink(struct sk_buff *skb, u32 pid, u32 seq,
>  	struct net_bridge_port *port = br_port_get_rtnl(dev);
>  
>  	if (!port && !(filter_mask & RTEXT_FILTER_BRVLAN) &&
> -	    !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED))
> +	    !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED) &&
> +	    !(filter_mask & RTEXT_FILTER_MRP))
>  		return 0;
>  
>  	return br_fill_ifinfo(skb, port, pid, seq, RTM_NEWLINK, nlflags,
> 

