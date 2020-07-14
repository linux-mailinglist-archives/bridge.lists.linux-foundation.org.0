Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A221F268
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 103188A796;
	Tue, 14 Jul 2020 13:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1EXONu91vmjR; Tue, 14 Jul 2020 13:25:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59E898A78C;
	Tue, 14 Jul 2020 13:25:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4AA7CC0891;
	Tue, 14 Jul 2020 13:25:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BFEE2C0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC4BD8A501
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9T-1z1QMn734 for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:25:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 060DC8A52A
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:25:00 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f7so21589995wrw.1
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Aj4QKKJojEodXlG0rvLUNxVoPZ5Fr2yPYro2NiVUoeE=;
 b=ZCEEJ384Iu1DGQxnvlhX72M4mccDWl5ldcoVeiCEHr08wVI+D8Q5hSZH2B9pZ6bUcE
 ue6vH3qGR35NPbHd13201SO7tYLiwSm+t3EwJNAmINb0vvzEh2KSOlIlqNoPF6YXfpW+
 /C17pnz3hPkxbrQ96By5VAGCS0+66sxIVXvyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Aj4QKKJojEodXlG0rvLUNxVoPZ5Fr2yPYro2NiVUoeE=;
 b=IZb7kjlqIE7Tnv8/+zZBSlCZfeqlXyvnE2vc6MQQnwUqONfgPsf5akhXIe19FnG5yW
 bOFKroa2PuGBPreUHquj25wFj1Prtq7C65BQ5qQFoPDjKgPKiMFQfB53DJT7ibf2gm0Y
 9BVDxwlB5YbWq96LrgZoAP4AjSfty5+bslYdrVZPrfXxzxjW4xW1LzIIqyY5LM+zALAW
 mxygtphOSM1S+ke5qr1BoX7L8+DRqhc0ho5gYuFr35cyDGv+n0sAVleTBYPOEIXM2YDN
 jw8nmiNChPmczLbcQtZK1GBhD/PHVhL10pxHYOd+RDLz7SZo7SdzMptGW0DsLZEDVLaV
 p+mw==
X-Gm-Message-State: AOAM531Kt8+RB/Ph/LAvN84cm2AaxwGT8mGGCj14De3C1or3Amrz3g4P
 Eplbb+5apaVgY7nIp/+PTibSqqbDAxGsOQ==
X-Google-Smtp-Source: ABdhPJxfYCnUzieYF2XQSYACq4ky+aYgmc2GjwcyD9wVgHGUQeJ272sYluyQFMzuOSGk8Mo5Hxhlvw==
X-Received: by 2002:a5d:55ca:: with SMTP id i10mr2854011wrw.225.1594733098176; 
 Tue, 14 Jul 2020 06:24:58 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t4sm4598552wmf.4.2020.07.14.06.24.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:24:57 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-12-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <dd1e615d-6390-e521-28d3-98f01308df42@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:24:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-12-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 11/12] bridge: mrp: Extend
	br_mrp_fill_info
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

On 14/07/2020 10:34, Horatiu Vultur wrote:
> This patch extends the function br_mrp_fill_info to return also the
> status for the interconnect ring.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp_netlink.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> index a006e0771e8d3..2a2fdf3500c5b 100644
> --- a/net/bridge/br_mrp_netlink.c
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -474,6 +474,11 @@ int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
>  				     p->dev->ifindex))
>  			goto nla_put_failure;
>  
> +		p = rcu_dereference(mrp->i_port);
> +		if (p && nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_I_IFINDEX,
> +				     p->dev->ifindex))
> +			goto nla_put_failure;
> +
>  		if (nla_put_u16(skb, IFLA_BRIDGE_MRP_INFO_PRIO,
>  				mrp->prio))
>  			goto nla_put_failure;
> @@ -493,6 +498,19 @@ int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
>  				mrp->test_monitor))
>  			goto nla_put_failure;
>  
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_IN_STATE,
> +				mrp->in_state))
> +			goto nla_put_failure;
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_IN_ROLE,
> +				mrp->in_role))
> +			goto nla_put_failure;
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_IN_TEST_INTERVAL,
> +				mrp->in_test_interval))
> +			goto nla_put_failure;
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_IN_TEST_MAX_MISS,
> +				mrp->in_test_max_miss))
> +			goto nla_put_failure;
> +
>  		nla_nest_end(skb, tb);
>  	}
>  	nla_nest_end(skb, mrp_tb);
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
