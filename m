Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B741AEADE
	for <lists.bridge@lfdr.de>; Sat, 18 Apr 2020 10:25:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0148F88178;
	Sat, 18 Apr 2020 08:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcUa7dtrWpCD; Sat, 18 Apr 2020 08:25:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C72888175;
	Sat, 18 Apr 2020 08:25:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 03A1CC0172;
	Sat, 18 Apr 2020 08:25:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6F4DC0172
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD00886493
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PYwl2_tSQfvJ for <bridge@lists.linux-foundation.org>;
 Sat, 18 Apr 2020 08:25:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A83618647E
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 08:25:50 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id k28so3715734lfe.10
 for <bridge@lists.linux-foundation.org>; Sat, 18 Apr 2020 01:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=VoBnLgHt5ybQx6Jc1Vq2lz4psLsHO2C44rjLR27+D8o=;
 b=B7XaVz+fKT74RIj6kWVjxTNgcuPRRlk6LUrEeePiwYQXLBZATqshP7u6ClFDNuXBb0
 nRl1eDhyVW70bxuJtg288gO2giQZbwx3HnBmVmiwcHHJbzL2M1YiTaPn2s8ZFn8jT6vb
 2s0wmkpWtTlmQonWpmB4TqTmRWLb+NMBBtgFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VoBnLgHt5ybQx6Jc1Vq2lz4psLsHO2C44rjLR27+D8o=;
 b=l8ngTX/FHOwM8MRrKu1RC/amYeVhSnH2giWg3D145IfE+/kLcnsx7Bt5L+QTHrqF73
 Do2qgdCa9djfrfNGvZG9p/2vIE+FCdNch0Dowzwsemzuhwt0j8YZrINPORgrOF8yTYNH
 f+GC1IOkUy/cU+teBdptAEMoZX/K6iAL1yhzty0bH02PNa/lzJR8Kh2Z4Puq82CEeWH1
 +7lAZJbZzGqq6j6rpXf69q77Ojm95G4TrSJ09oqhGAb+MoX8KGFMvfZE3nTRalrCVhye
 T14NW7lJS5zuLlZS1I0J1tdB3b/ZWLt63CGNkjPWGrM2jX/kgb0N/jist9gdRAEvfPfE
 U32Q==
X-Gm-Message-State: AGi0PuYLrl4dAbRU8LzQe2cH3Yz2T4y934UompCwjo7mOZ1mRsmKS+w3
 dcBYmtrEr7P/HOMhZrW+TOjkmA==
X-Google-Smtp-Source: APiQypJCHuJhL5WVOv0b0zsVDIBi+kTx4xW+yXTH575ztE10gqd9/hZ+YzmsBJx3Sm4wnzYuadpTrA==
X-Received: by 2002:ac2:4da7:: with SMTP id h7mr4424535lfe.95.1587198348684;
 Sat, 18 Apr 2020 01:25:48 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id q16sm5997552ljj.23.2020.04.18.01.25.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 01:25:47 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, UNGLinuxDriver@microchip.com
References: <20200414112618.3644-1-horatiu.vultur@microchip.com>
 <20200414112618.3644-10-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <48c8e196-5808-d7c8-25c3-dff8f56dea5b@cumulusnetworks.com>
Date: Sat, 18 Apr 2020 11:25:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414112618.3644-10-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [RFC net-next v5 9/9] bridge: mrp: Integrate MRP into
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

On 14/04/2020 14:26, Horatiu Vultur wrote:
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
>  net/bridge/br_if.c        |  2 ++
>  net/bridge/br_input.c     |  3 +++
>  net/bridge/br_netlink.c   |  5 +++++
>  net/bridge/br_private.h   | 35 +++++++++++++++++++++++++++++++++++
>  net/bridge/br_stp.c       |  6 ++++++
>  net/bridge/br_stp_if.c    |  5 +++++
>  8 files changed, 60 insertions(+)
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
> diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
> index 4fe30b182ee7..ca685c0cdf95 100644
> --- a/net/bridge/br_if.c
> +++ b/net/bridge/br_if.c
> @@ -333,6 +333,8 @@ static void del_nbp(struct net_bridge_port *p)
>  	br_stp_disable_port(p);
>  	spin_unlock_bh(&br->lock);
>  
> +	br_mrp_port_del(br, p);
> +
>  	br_ifinfo_notify(RTM_DELLINK, NULL, p);
>  
>  	list_del_rcu(&p->list);
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
> index 43dab4066f91..8826fcd1eb76 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -669,6 +669,11 @@ static int br_afspec(struct net_bridge *br,
>  			if (err)
>  				return err;
>  			break;
> +		case IFLA_BRIDGE_MRP:
> +			err = br_mrp_parse(br, p, attr, cmd, extack);
> +			if (err)
> +				return err;
> +			break;
>  		}
>  	}
>  
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 1f97703a52ff..5835828320b6 100644
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
> @@ -1304,6 +1308,37 @@ unsigned long br_timer_value(const struct timer_list *timer);
>  extern int (*br_fdb_test_addr_hook)(struct net_device *dev, unsigned char *addr);
>  #endif
>  
> +/* br_mrp.c */
> +#if IS_ENABLED(CONFIG_BRIDGE_MRP)
> +int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
> +		 struct nlattr *attr, int cmd, struct netlink_ext_ack *extack);
> +int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb);
> +bool br_mrp_enabled(struct net_bridge *br);
> +void br_mrp_port_del(struct net_bridge *br, struct net_bridge_port *p);
> +#else
> +static inline int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
> +			       struct nlattr *attr, int cmd,
> +			       struct netlink_ext_ack *extack)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +static inline int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
> +{
> +	return 0;
> +}
> +
> +static inline bool br_mrp_enabled(struct net_bridge *br)
> +{
> +	return 0;
> +}
> +
> +static inline void br_mrp_port_del(struct net_bridge *br,
> +				   struct net_bridge_port *p)
> +{
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
>  	p->state = state;
>  	err = switchdev_port_attr_set(p->dev, &attr);
>  	if (err && err != -EOPNOTSUPP)
> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> index d174d3a566aa..542b212d5033 100644
> --- a/net/bridge/br_stp_if.c
> +++ b/net/bridge/br_stp_if.c
> @@ -200,6 +200,11 @@ void br_stp_set_enabled(struct net_bridge *br, unsigned long val)
>  {
>  	ASSERT_RTNL();
>  
> +	if (br_mrp_enabled(br)) {
> +		br_warn(br, "STP can't be enabled if MRP is already enabled\n");

It'd be nice if this can be returned in an extack if this function is called from netlink.
In addition this must return an error - otherwise writing to the sysfs file would be successful
while nothing will have changed, so the user will think it worked. Check out set_stp_state().
You can drop the br_warn, just make sure to return proper extack error from netlink (it is
the preferred interface over sysfs, so simply returning an error for sysfs would be enough).

> +		return;
> +	}
> +
>  	if (val) {
>  		if (br->stp_enabled == BR_NO_STP)
>  			br_stp_start(br);
> 

