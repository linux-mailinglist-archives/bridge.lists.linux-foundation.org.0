Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA061980BD
	for <lists.bridge@lfdr.de>; Mon, 30 Mar 2020 18:16:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C68887708;
	Mon, 30 Mar 2020 16:16:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VYzE2vg1bmU4; Mon, 30 Mar 2020 16:16:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 48B7B87720;
	Mon, 30 Mar 2020 16:16:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2E40FC07FF;
	Mon, 30 Mar 2020 16:16:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0FD9EC07FF
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EEE7322CC6
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:16:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mRFg8+4EELcO for <bridge@lists.linux-foundation.org>;
 Mon, 30 Mar 2020 16:16:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D2D9622882
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:16:23 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id i20so18727971ljn.6
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 09:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=QpOIR907T/wwW05Dr6k2YR4q9EgvViup03SDjAZ1IS8=;
 b=dHFrXjAmgcscbhtftarqXEKgpHNJjgzLjsFlYUUJhkt7ypj5szHz/C0tGLKYgz1Vi3
 aADxpw2+tymWuQokvjIDaWdUsfDelM6zMTWOmVeNExCybqzT3LP7UcC5Mjn0UMj2IUXb
 nev8nr2pqUrpwP8dKOXZ4YUAjMZ+w6aO7YYIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QpOIR907T/wwW05Dr6k2YR4q9EgvViup03SDjAZ1IS8=;
 b=i3JevB0m4NzDOuSZr9ZeXW++aVXXN+1Com+VVRTiqr4CMoLVDoJv3VudfbNCvFx31X
 G0Roa90+GAtqb6Eq9Lzmc7l/zPfeWo+eZjUD0KJ13rO3nlFA05WlFFzUbMA7z0jpnFBk
 PT8p3wvnOB5iEM1rCcJvNjmFO93Ornkp7glUHdp8cJRWT4GQzt20lqpnMbuC+almFe6C
 nn5AX1CMG1+6DVggNgXflcJmFjJfTKKq+pj45VrHg7JqlRxWfAY2hzbBtsshofxzpahu
 DduyzkQcmEt6PbQD40mD1lQioSWjxWXZQ+RWe8JRdUbJZi4Bs3egGofuPjh2dClWge9Q
 DxMQ==
X-Gm-Message-State: AGi0PubE/GBYQNc2+jFh5WODaeofKQunruKwF94xga8rxdLqWCac0MLq
 FRgZyFeQ93JqIwWPqnvr24lX5qCQeWE=
X-Google-Smtp-Source: APiQypKRHK7B+ad3csMViQHoxs0tbVmW7H4M9/KVXhe2awqHXEc4j2Yy5xoqdIKOM2hWBEJ81tG9sA==
X-Received: by 2002:a2e:97cd:: with SMTP id m13mr7795367ljj.20.1585584981318; 
 Mon, 30 Mar 2020 09:16:21 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id i20sm476679lja.17.2020.03.30.09.16.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 09:16:20 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200327092126.15407-1-horatiu.vultur@microchip.com>
 <20200327092126.15407-9-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <17d9fb2a-cb48-7bb6-cb79-3876ca3a74b2@cumulusnetworks.com>
Date: Mon, 30 Mar 2020 19:16:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200327092126.15407-9-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [RFC net-next v4 8/9] bridge: mrp: Integrate MRP into
	the bridge
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

On 27/03/2020 11:21, Horatiu Vultur wrote:
> To integrate MRP into the bridge, the bridge needs to do the following:
> - add new flag(BR_MPP_AWARE) to the net bridge ports, this bit will be set when
>   the port is added to an MRP instance. In this way it knows if the frame was
>   received on MRP ring port
> - detect if the MRP frame was received on MRP ring port in that case it would be
>   processed otherwise just forward it as usual.
> - enable parsing of MRP
> - before whenever the bridge was set up, it would set all the ports in
>   forwarding state. Add an extra check to not set ports in forwarding state if
>   the port is an MRP ring port. The reason of this change is that if the MRP
>   instance initially sets the port in blocked state by setting the bridge up it
>   would overwrite this setting.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/linux/if_bridge.h |  1 +
>  net/bridge/br_device.c    |  3 +++
>  net/bridge/br_input.c     |  3 +++
>  net/bridge/br_netlink.c   |  5 +++++
>  net/bridge/br_private.h   | 22 ++++++++++++++++++++++
>  net/bridge/br_stp.c       |  6 ++++++
>  6 files changed, 40 insertions(+)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 9e57c4411734..10baa9efdae8 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -47,6 +47,7 @@ struct br_ip_list {
>  #define BR_BCAST_FLOOD		BIT(14)
>  #define BR_NEIGH_SUPPRESS	BIT(15)
>  #define BR_ISOLATED		BIT(16)
> +#define BR_MRP_AWARE		BIT(17)
>  
>  #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
>  
> diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
> index 0e3dbc5f3c34..8ec1362588af 100644
> --- a/net/bridge/br_device.c
> +++ b/net/bridge/br_device.c
> @@ -463,6 +463,9 @@ void br_dev_setup(struct net_device *dev)
>  	spin_lock_init(&br->lock);
>  	INIT_LIST_HEAD(&br->port_list);
>  	INIT_HLIST_HEAD(&br->fdb_list);
> +#if IS_ENABLED(CONFIG_BRIDGE_MRP)
> +	INIT_LIST_HEAD(&br->mrp_list);
> +#endif
>  	spin_lock_init(&br->hash_lock);
>  
>  	br->bridge_id.prio[0] = 0x80;
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index fcc260840028..d5c34f36f0f4 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -342,6 +342,9 @@ rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
>  		}
>  	}
>  
> +	if (unlikely(br_mrp_process(p, skb)))
> +		return RX_HANDLER_PASS;
> +
>  forward:
>  	switch (p->state) {
>  	case BR_STATE_FORWARDING:
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 43dab4066f91..77bc96745be6 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -669,6 +669,11 @@ static int br_afspec(struct net_bridge *br,
>  			if (err)
>  				return err;
>  			break;
> +		case IFLA_BRIDGE_MRP:
> +			err = br_mrp_parse(br, p, attr, cmd);
> +			if (err)
> +				return err;
> +			break;
>  		}
>  	}
>  
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 1f97703a52ff..38894f2cf98f 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -428,6 +428,10 @@ struct net_bridge {
>  	int offload_fwd_mark;
>  #endif
>  	struct hlist_head		fdb_list;
> +
> +#if IS_ENABLED(CONFIG_BRIDGE_MRP)
> +	struct list_head		__rcu mrp_list;
> +#endif
>  };
>  
>  struct br_input_skb_cb {
> @@ -1304,6 +1308,24 @@ unsigned long br_timer_value(const struct timer_list *timer);
>  extern int (*br_fdb_test_addr_hook)(struct net_device *dev, unsigned char *addr);
>  #endif
>  
> +/* br_mrp.c */
> +#if IS_ENABLED(CONFIG_BRIDGE_MRP)
> +int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
> +		 struct nlattr *attr, int cmd);
> +int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb);
> +#else
> +static inline int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
> +			       struct nlattr *attr, int cmd)
> +{
> +	return -1;

You should return proper error here.

> +}
> +
> +static inline int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
> +{
> +	return -1;

The bridge can't possibly work with MRP disabled with this.

> +}
> +#endif
> +
>  /* br_netlink.c */
>  extern struct rtnl_link_ops br_link_ops;
>  int br_netlink_init(void);
> diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
> index 1f14b8455345..3e88be7aa269 100644
> --- a/net/bridge/br_stp.c
> +++ b/net/bridge/br_stp.c
> @@ -36,6 +36,12 @@ void br_set_state(struct net_bridge_port *p, unsigned int state)
>  	};
>  	int err;
>  
> +	/* Don't change the state of the ports if they are driven by a different
> +	 * protocol.
> +	 */
> +	if (p->flags & BR_MRP_AWARE)
> +		return;
> +

Maybe disallow STP type (kernel/user-space/no-stp) changing as well, force it to no-stp.

>  	p->state = state;
>  	err = switchdev_port_attr_set(p->dev, &attr);
>  	if (err && err != -EOPNOTSUPP)
> 

