Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBEB21089A
	for <lists.bridge@lfdr.de>; Wed,  1 Jul 2020 11:51:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 485B68AA38;
	Wed,  1 Jul 2020 09:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T7MwiH-ZIjd9; Wed,  1 Jul 2020 09:51:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 113C48AA34;
	Wed,  1 Jul 2020 09:51:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 007FBC0733;
	Wed,  1 Jul 2020 09:51:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 649C1C0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 09:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CF508A7FC
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 09:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vsKNqUDHsOTH for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 09:51:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C5BB88A6CC
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 09:51:36 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id s10so23082455wrw.12
 for <bridge@lists.linux-foundation.org>; Wed, 01 Jul 2020 02:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=0kXRdSJAJ2w4NQlFklwwTlNh4niyvAaA7nq0nb1Nl9w=;
 b=TKjUYKLX6JQ1Vx3Tgm8MEFxB00Q/s6wjCbaTl6fB6p1083zS9fGrr4QNE60EbE+zh8
 pqjBvxntdr4CRSOS3SAQ5HMGPVXCmQICT0jLF8ETNh5N3vS88001cu6PLG5DhRuQDNFy
 uiPqZRC0HChlt9qzVlENXWvQ+YJJv3gw+PoCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0kXRdSJAJ2w4NQlFklwwTlNh4niyvAaA7nq0nb1Nl9w=;
 b=Oupb9M2459LJOs6QDQw4sdYPVMNKYDXTrXmuUvrsL+QGzSUchWiwoBg+MI0ZGSRws2
 uTPSQYsjxfVpXLmsBpaXc1R5WZXqcNfI/lSPklNcno2dYqgPnTjcVrG3NDKEfoLhY2rP
 oNWrpBUgGMvVjnvHIyf+NukNqItOZU1h1AZVSxBRXDXUJK26bPw3YOOCUaWDCxW7JZDE
 AA2YeSOI4hSEn3+PscqCJZ3q9mBDDo8XbB2U4F20mkk1DcFDU2yvBXEhwQwAO46NpwPM
 ZqT9QIE3sMTrUv5don3KyLOCgATG/ytLLBDeSsFu7ZxH7a0cd0SAni2JqfVclZ5veQ79
 gfxQ==
X-Gm-Message-State: AOAM530UbLWgjOvEgBKDXihi7WPYxWZRaR+XqwBfLqYGAjuhbmboidxQ
 Ue+sMzTOmq8/GIhAmw62GPlMoQ==
X-Google-Smtp-Source: ABdhPJwuwimRu1nf6gCK1pRymKF3cc10Mgf7AOZ3RL+DeuwqswesPCQkj9zAM+M+TJdQcO1li9fJ6Q==
X-Received: by 2002:a05:6000:1107:: with SMTP id
 z7mr25496107wrw.355.1593597095035; 
 Wed, 01 Jul 2020 02:51:35 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id n125sm6614837wme.30.2020.07.01.02.51.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Jul 2020 02:51:34 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@mellanox.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, UNGLinuxDriver@microchip.com
References: <20200701072239.520807-1-horatiu.vultur@microchip.com>
 <20200701072239.520807-4-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <a861340c-8d80-6cff-39ec-1a80ee578813@cumulusnetworks.com>
Date: Wed, 1 Jul 2020 12:51:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701072239.520807-4-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v2 3/3] bridge: Extend br_fill_ifinfo
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

On 01/07/2020 10:22, Horatiu Vultur wrote:
> This patch extends the function br_fill_ifinfo to return also the MRP
> status for each instance on a bridge. It also adds a new filter
> RTEXT_FILTER_MRP to return the MRP status only when this is set, not to
> interfer with the vlans. The MRP status is return only on the bridge
> interfaces.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/uapi/linux/rtnetlink.h |  1 +
>  net/bridge/br_netlink.c        | 29 ++++++++++++++++++++++++++++-
>  2 files changed, 29 insertions(+), 1 deletion(-)
> 
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
> index 240e260e3461c..6ecb7c7453dcb 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -453,6 +453,32 @@ static int br_fill_ifinfo(struct sk_buff *skb,
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
> +		/* RCU needed because of the VLAN locking rules (rcu || rtnl) */
> +		rcu_read_lock();

If you're using RCU, then in the previous patch (02) you should be using RCU primitives
to walk the list and deref the ports.
Alternatively if you rely on rtnl only then drop these RCU locks here as they're misleading.

I'd prefer to just use RCU for it in case we drop rtnl one day when dumping.

> +		if (!br_mrp_enabled(br) || port) {
> +			rcu_read_unlock();
> +			goto done;
> +		}
> +		af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
> +		if (!af) {
> +			rcu_read_unlock();
> +			goto nla_put_failure;
> +		}
> +
> +		err = br_mrp_fill_info(skb, br);
> +
> +		rcu_read_unlock();
> +		if (err)
> +			goto nla_put_failure;
> +
>  		nla_nest_end(skb, af);
>  	}
>  
> @@ -516,7 +542,8 @@ int br_getlink(struct sk_buff *skb, u32 pid, u32 seq,
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

