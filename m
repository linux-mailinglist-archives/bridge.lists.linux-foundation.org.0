Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0366B21207D
	for <lists.bridge@lfdr.de>; Thu,  2 Jul 2020 12:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4751A88FC9;
	Thu,  2 Jul 2020 10:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USjvnwRjQB-K; Thu,  2 Jul 2020 10:01:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A771288FBF;
	Thu,  2 Jul 2020 10:01:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8E965C0895;
	Thu,  2 Jul 2020 10:01:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27CDCC0733
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 176B58AEDE
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zKS90T4IvfUo for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 10:01:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0550D8AEDA
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 10:01:57 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id q15so26068966wmj.2
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jul 2020 03:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=zR26Xhy2G+eY0HqU3wMJ0rmUDSZXWCuQzZljZslDQZc=;
 b=YlQ9pF7ADm8jiiTkcapeL+FYckkTO+KJpnPdbVSBoYaiBvOUHfZAx9CodOizdKgsNc
 a2FIWapk4J0D/kJogR20vITg9TwvrDUyZkE2F7pOEHaCg11+3y8dmdFIwZt6EZQfLfV2
 N7AX34BsMO+vxLb2ThbB57hpkMRlEuuzprGrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zR26Xhy2G+eY0HqU3wMJ0rmUDSZXWCuQzZljZslDQZc=;
 b=CXelhfXH/ccoGXm5zYrBE3XIMY9JTvX2Ft0m01yTNMy85DrWrfia2yI3XIqxAfabOC
 eAxa0c7Ae/NH4sNIO5VNN+FSeYiX0zW95nLwNH0vC9sCF9wLpsslMkfmB/ton7bjtpYp
 b/oTDorFcuwBwV4WwbjmZohQKPLxqnEsm2g23zggNwqBhwdPLc9/8wlPcBDmKKH8eQR3
 qPPx+BjYZZCDUugSE0ukr4rE58i0CETiM1MASVFeEHZHCEY5bgSZu6Q4VBqMj12HsS3+
 /nh9+8TLkYIEJ5oWDaHXlCViJ5nG2IBfHiUskXNXo5WLu2ail6mDK9sPDYoo9iIJDcqL
 uj4Q==
X-Gm-Message-State: AOAM530wafHj2pF0ggvGW3uVjl/8IF644SMe8VXLCsSFDB3ycTaSsNrq
 uuOby4lwDtIzHU0y03TTrrbAbw==
X-Google-Smtp-Source: ABdhPJxFd4KPobStYvRWnTWiqoQM4UsiF6fqmUXbsmW+fDq6oEBtC8UpFkSOL+liCdPm4paeAmQHWA==
X-Received: by 2002:a7b:cd09:: with SMTP id f9mr32406526wmj.160.1593684115437; 
 Thu, 02 Jul 2020 03:01:55 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id z63sm5566702wmb.2.2020.07.02.03.01.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jul 2020 03:01:54 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@mellanox.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, UNGLinuxDriver@microchip.com
References: <20200702081307.933471-1-horatiu.vultur@microchip.com>
 <20200702081307.933471-3-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <64dd72f9-2b81-335a-e6ae-85376c72aa47@cumulusnetworks.com>
Date: Thu, 2 Jul 2020 13:01:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200702081307.933471-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v3 2/3] bridge: mrp: Add
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

On 02/07/2020 11:13, Horatiu Vultur wrote:
> Add the function br_mrp_fill_info which populates the MRP attributes
> regarding the status of each MRP instance.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp_netlink.c | 64 +++++++++++++++++++++++++++++++++++++
>  net/bridge/br_private.h     |  7 ++++
>  2 files changed, 71 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/net/bridge/br_mrp_netlink.c b/net/bridge/br_mrp_netlink.c
> index 34b3a8776991f..c4f5c356811f3 100644
> --- a/net/bridge/br_mrp_netlink.c
> +++ b/net/bridge/br_mrp_netlink.c
> @@ -304,6 +304,70 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
>  	return 0;
>  }
>  
> +int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
> +{
> +	struct nlattr *tb, *mrp_tb;
> +	struct br_mrp *mrp;
> +
> +	mrp_tb = nla_nest_start_noflag(skb, IFLA_BRIDGE_MRP);
> +	if (!mrp_tb)
> +		return -EMSGSIZE;
> +
> +	list_for_each_entry_rcu(mrp, &br->mrp_list, list) {
> +		struct net_bridge_port *p;
> +
> +		tb = nla_nest_start_noflag(skb, IFLA_BRIDGE_MRP_INFO);
> +		if (!tb)
> +			goto nla_info_failure;
> +
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_RING_ID,
> +				mrp->ring_id))
> +			goto nla_put_failure;
> +
> +		p = rcu_dereference(mrp->p_port);
> +		if (p && nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_P_IFINDEX,
> +				     p->dev->ifindex))
> +			goto nla_put_failure;
> +
> +		p = rcu_dereference(mrp->s_port);
> +		if (p && nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_S_IFINDEX,
> +				     p->dev->ifindex))
> +			goto nla_put_failure;
> +
> +		if (nla_put_u16(skb, IFLA_BRIDGE_MRP_INFO_PRIO,
> +				mrp->prio))
> +			goto nla_put_failure;
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_RING_STATE,
> +				mrp->ring_state))
> +			goto nla_put_failure;
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_RING_ROLE,
> +				mrp->ring_role))
> +			goto nla_put_failure;
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_TEST_INTERVAL,
> +				mrp->test_interval))
> +			goto nla_put_failure;
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_TEST_MAX_MISS,
> +				mrp->test_max_miss))
> +			goto nla_put_failure;
> +		if (nla_put_u32(skb, IFLA_BRIDGE_MRP_INFO_TEST_MONITOR,
> +				mrp->test_monitor))
> +			goto nla_put_failure;
> +
> +		nla_nest_end(skb, tb);
> +	}
> +	nla_nest_end(skb, mrp_tb);
> +
> +	return 0;
> +
> +nla_put_failure:
> +	nla_nest_cancel(skb, tb);
> +
> +nla_info_failure:
> +	nla_nest_cancel(skb, mrp_tb);
> +
> +	return -EMSGSIZE;
> +}
> +
>  int br_mrp_port_open(struct net_device *dev, u8 loc)
>  {
>  	struct net_bridge_port *p;
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 6a7d8e218ae7e..65d2c163a24ab 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -1317,6 +1317,7 @@ int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
>  int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb);
>  bool br_mrp_enabled(struct net_bridge *br);
>  void br_mrp_port_del(struct net_bridge *br, struct net_bridge_port *p);
> +int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br);
>  #else
>  static inline int br_mrp_parse(struct net_bridge *br, struct net_bridge_port *p,
>  			       struct nlattr *attr, int cmd,
> @@ -1339,6 +1340,12 @@ static inline void br_mrp_port_del(struct net_bridge *br,
>  				   struct net_bridge_port *p)
>  {
>  }
> +
> +static inline int br_mrp_fill_info(struct sk_buff *skb, struct net_bridge *br)
> +{
> +	return 0;
> +}
> +
>  #endif
>  
>  /* br_netlink.c */
> 

