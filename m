Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1FA21F25C
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B137885C9;
	Tue, 14 Jul 2020 13:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dlFCmhe1EHTp; Tue, 14 Jul 2020 13:22:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E9748861E;
	Tue, 14 Jul 2020 13:22:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7E83C08A9;
	Tue, 14 Jul 2020 13:22:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E1D27C0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D0A9C8A651
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJf1VE0UV+gF for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:22:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1766D8A64E
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:22:23 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id w3so5899360wmi.4
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=l79f/bqNc9BYIqpkKbR40Mk7GQtal76rQ4QXD+nfL2Y=;
 b=XXQ7p8KyYKTbDMF3l/69Sv27LRV0Ka6JXcMwCu9L4rgoDD1xZOj0g6Sa/pTdCJ6hgg
 q0CobtyfA2V3NqePGjZVUF/K76bRgnbmwqSaS/qVPmy9Ii1Esh3OGkkgd7QKJr3IWX4b
 BU1EUdRloq0XZPEWE7ZjyUym1DIEBgzqp89No=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=l79f/bqNc9BYIqpkKbR40Mk7GQtal76rQ4QXD+nfL2Y=;
 b=Xi5qy30qTEvOmQ8FSr705uB7C0CDaIZWOqi54dLwCy5pE0HC81Lk/aMuvBcTz1wHeV
 ONH4+OvNnr8H6dPE0ha2fijDpI2nYPPEiOPx4ZrqFGIGd37bHmCeWfY8QeI6voCphMF7
 1G0czLuu/zIERiph0Ulco6zar20MGM7PJiM+vC0zHyGdo+aKm3i/ph3RL2G6LpTHE1d5
 H8C3YCkZ4sjjgF5fpA88HirxgyNDf3lm4VQ6G6ZUEmZR/53z6WGLNysORPnpZFMFyWGx
 t7ypEISmBiopktB8LHnxlzaie+STeb40LyGsiy/t9F1bUuhq+RR59avNQlE5JSNq0jYH
 0xkg==
X-Gm-Message-State: AOAM5323PatRiSPs34ZM5+e7NwRcNwzOW2gvew5wBLJCpdRJCagVeB5H
 Xf5LKsDonWrIu669BGkpaWJD6PULRi1a9Q==
X-Google-Smtp-Source: ABdhPJyo0csAWOJYkjGH9aDpWd86z61HZ736Xs730a9WWVUCWSNiO7+k1NlWjvNJVUecf6+IffGdWQ==
X-Received: by 2002:a1c:e285:: with SMTP id z127mr4490370wmg.162.1594732566214; 
 Tue, 14 Jul 2020 06:16:06 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 59sm30868395wrj.37.2020.07.14.06.16.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:16:05 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-7-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <24df99ce-f81b-03f1-f235-e2c0ce5016f0@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:16:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-7-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 06/12] bridge: mrp: Add
 br_mrp_in_port_open function
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
> This function notifies the userspace when the node lost the continuity
> of MRP_InTest frames.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp_netlink.c | 22 ++++++++++++++++++++++
>  net/bridge/br_private_mrp.h |  1 +
>  2 files changed, 23 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> index acce300c0cc29..4bf7aaeb29152 100644
> --- a/net/bridge/br_mrp_netlink.c
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -389,3 +389,25 @@ int br_mrp_ring_port_open(struct net_device *dev, u8 loc)
>  out:
>  	return err;
>  }
> +
> +int br_mrp_in_port_open(struct net_device *dev, u8 loc)
> +{
> +	struct net_bridge_port *p;
> +	int err = 0;
> +
> +	p = br_port_get_rcu(dev);
> +	if (!p) {
> +		err = -EINVAL;
> +		goto out;
> +	}
> +
> +	if (loc)
> +		p->flags |= BR_MRP_LOST_IN_CONT;
> +	else
> +		p->flags &= ~BR_MRP_LOST_IN_CONT;
> +
> +	br_ifinfo_notify(RTM_NEWLINK, NULL, p);
> +
> +out:
> +	return err;
> +}
> diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
> index e93c8f9d4df58..23da2f956ad0e 100644
> --- a/net/bridge/br_private_mrp.h
> +++ b/net/bridge/br_private_mrp.h
> @@ -75,5 +75,6 @@ int br_mrp_port_switchdev_set_role(struct net_bridge_port *p,
>  
>  /* br_mrp_netlink.c  */
>  int br_mrp_ring_port_open(struct net_device *dev, u8 loc);
> +int br_mrp_in_port_open(struct net_device *dev, u8 loc);
>  
>  #endif /* _BR_PRIVATE_MRP_H */
> 

