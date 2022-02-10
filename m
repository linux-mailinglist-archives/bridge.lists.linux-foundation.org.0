Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C78954B0821
	for <lists.bridge@lfdr.de>; Thu, 10 Feb 2022 09:30:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7600360AF4;
	Thu, 10 Feb 2022 08:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E_iHqmk3Zw7h; Thu, 10 Feb 2022 08:30:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DE97560E7A;
	Thu, 10 Feb 2022 08:30:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A8881C0039;
	Thu, 10 Feb 2022 08:30:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 51AC1C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32C2140A04
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kKY6jy9Xs2xr for <bridge@lists.linux-foundation.org>;
 Thu, 10 Feb 2022 08:30:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37ADD409BE
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 08:30:05 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id ch26so9487686edb.12
 for <bridge@lists.linux-foundation.org>; Thu, 10 Feb 2022 00:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nFVx2uyUwEL9JccJxCnRlNoz/WeSHaDLh1Q2sLN/nLc=;
 b=JeayG2uLl84LlrgN+b3XhZ/aZ35BlX3p/thApDPovpnzz6Q2hYUY31dDcrQWHnHFFy
 qriWgTk3hTEMkzzi4IZSK2yWhWbGwX0By6lqGcWL/Ykoe7XYW1WvZJpcu4fYeC5f4Ewu
 hCH5neeVzlpiIJDE9q02b/fFJaMO5gnGBGRQnbLtb9jNFzk6SkaCQxaciYcBaqeYIJL4
 ngZTsoHGKP5WcJvpJBtzwZtcPj3XVZgUaOLNCRfb1qKmHoA2tqp3XSDaJcykl8qUK79q
 OAHkRoM2i3qmUFxhJu1wNb7U20DYb1xLxt+vYmaS8BXJAkyhqvpoygjWcL7PNUBSRUTi
 NOjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nFVx2uyUwEL9JccJxCnRlNoz/WeSHaDLh1Q2sLN/nLc=;
 b=7+ILHr4iYVKFUZRPijTirrA3ERzE+se09ez248hhBjvLB6e33eW1x+0faqI9JOJL8Y
 lpn2BMOCNdwF1/hcnFNwsd1u7hpQ78uGq1O1ob9CpABpLzEsi9YvI0zVt+nF1hm15YtC
 EC3R/3dWEzhOTQfZHqpQ0yv4UEZ1IupGVjCxhfu+MSJU9yo5+HIr5d0kxPXPfUx/CMpq
 vi4NVfohgw+1oExe1huYjWtMmjxXCZVXYV1gG7Bal6f8n4QGM25ShmUbgpKvNDDwQFDh
 1tTlbrpPXDJlSTsOgdYhq3Jr+rV1DGSsylb/oRVN4RkVTxIdoZ/8kwO8m4yYR+QvxEDl
 fPOg==
X-Gm-Message-State: AOAM531SbFfWGZcMTuE/pe+lIguNj4F0PH2+tzNE8/Vo2qYExn9bCTyP
 uOjdb7CslTgxVxOuWqK/s3VoHw==
X-Google-Smtp-Source: ABdhPJz+sKZ2/lzyH0cTED44yAAMbF+VsjDbQ3W6kJBjl9PyJt5JaHSFnE19z0fwH2cQ/f/XIzMTJg==
X-Received: by 2002:a05:6402:50c8:: with SMTP id
 h8mr7153309edb.144.1644481803111; 
 Thu, 10 Feb 2022 00:30:03 -0800 (PST)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id re22sm3495879ejb.51.2022.02.10.00.30.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Feb 2022 00:30:02 -0800 (PST)
Message-ID: <c821f05b-94e1-cf48-f2a6-40a689678c2b@blackwall.org>
Date: Thu, 10 Feb 2022 10:30:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Hans Schultz <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
References: <20220209130538.533699-1-schultz.hans+netdev@gmail.com>
 <20220209130538.533699-2-schultz.hans+netdev@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220209130538.533699-2-schultz.hans+netdev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next v2 1/5] net: bridge: Add support for
 bridge port in locked mode
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

On 09/02/2022 15:05, Hans Schultz wrote:
> In a 802.1X scenario, clients connected to a bridge port shall not
> be allowed to have traffic forwarded until fully authenticated.
> A static fdb entry of the clients MAC address for the bridge port
> unlocks the client and allows bidirectional communication.
> 
> This scenario is facilitated with setting the bridge port in locked
> mode, which is also supported by various switchcore chipsets.
> 
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---

Hi,
I'm writing from my private email because for some reason I'm not receiving the full
patch-set in my nvidia mail, a few comments below..

>  include/linux/if_bridge.h    |  1 +
>  include/uapi/linux/if_link.h |  1 +
>  net/bridge/br_input.c        | 10 +++++++++-
>  net/bridge/br_netlink.c      |  6 +++++-
>  4 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index 509e18c7e740..3aae023a9353 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -58,6 +58,7 @@ struct br_ip_list {
>  #define BR_MRP_LOST_CONT	BIT(18)
>  #define BR_MRP_LOST_IN_CONT	BIT(19)
>  #define BR_TX_FWD_OFFLOAD	BIT(20)
> +#define BR_PORT_LOCKED		BIT(21)
>  
>  #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
>  
> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index 6218f93f5c1a..a45cc0a1f415 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -537,6 +537,7 @@ enum {
>  	IFLA_BRPORT_MRP_IN_OPEN,
>  	IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT,
>  	IFLA_BRPORT_MCAST_EHT_HOSTS_CNT,
> +	IFLA_BRPORT_LOCKED,
>  	__IFLA_BRPORT_MAX
>  };
>  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index b50382f957c1..469e3adbce07 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -69,6 +69,7 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  	struct net_bridge_port *p = br_port_get_rcu(skb->dev);
>  	enum br_pkt_type pkt_type = BR_PKT_UNICAST;
>  	struct net_bridge_fdb_entry *dst = NULL;
> +	struct net_bridge_fdb_entry *fdb_entry;

move fdb_entry below to where it is used

>  	struct net_bridge_mcast_port *pmctx;
>  	struct net_bridge_mdb_entry *mdst;
>  	bool local_rcv, mcast_hit = false;
> @@ -81,6 +82,8 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  	if (!p || p->state == BR_STATE_DISABLED)
>  		goto drop;
>  
> +	br = p->br;
> +

please drop the extra new line

>  	brmctx = &p->br->multicast_ctx;
>  	pmctx = &p->multicast_ctx;
>  	state = p->state;
> @@ -88,10 +91,15 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  				&state, &vlan))
>  		goto out;
>  
> +	if (p->flags & BR_PORT_LOCKED) {

fdb_entry should be defined in this scope only, and please rename it to something
like fdb_src or just "src" as we already have "dst".

> +		fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
> +		if (!(fdb_entry && fdb_entry->dst == p))

if (!fdb_entry || READ_ONCE(fdb_entry->dst) != p

> +			goto drop;
> +	}
> +
>  	nbp_switchdev_frame_mark(p, skb);
>  
>  	/* insert into forwarding database after filtering to avoid spoofing */
> -	br = p->br;
>  	if (p->flags & BR_LEARNING)
>  		br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, 0);
>  
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 2ff83d84230d..7d4432ca9a20 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -184,6 +184,7 @@ static inline size_t br_port_info_size(void)
>  		+ nla_total_size(1)	/* IFLA_BRPORT_VLAN_TUNNEL */
>  		+ nla_total_size(1)	/* IFLA_BRPORT_NEIGH_SUPPRESS */
>  		+ nla_total_size(1)	/* IFLA_BRPORT_ISOLATED */
> +		+ nla_total_size(1)	/* IFLA_BRPORT_LOCKED */
>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_ROOT_ID */
>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_BRIDGE_ID */
>  		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_PORT */
> @@ -269,7 +270,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
>  							  BR_MRP_LOST_CONT)) ||
>  	    nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
>  		       !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
> -	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)))
> +	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)) ||
> +	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & BR_PORT_LOCKED)))
>  		return -EMSGSIZE;
>  
>  	timerval = br_timer_value(&p->message_age_timer);
> @@ -827,6 +829,7 @@ static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
>  	[IFLA_BRPORT_GROUP_FWD_MASK] = { .type = NLA_U16 },
>  	[IFLA_BRPORT_NEIGH_SUPPRESS] = { .type = NLA_U8 },
>  	[IFLA_BRPORT_ISOLATED]	= { .type = NLA_U8 },
> +	[IFLA_BRPORT_LOCKED] = { .type = NLA_U8 },
>  	[IFLA_BRPORT_BACKUP_PORT] = { .type = NLA_U32 },
>  	[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT] = { .type = NLA_U32 },
>  };
> @@ -893,6 +896,7 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
>  	br_set_port_flag(p, tb, IFLA_BRPORT_VLAN_TUNNEL, BR_VLAN_TUNNEL);
>  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS, BR_NEIGH_SUPPRESS);
>  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
> +	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
>  
>  	changed_mask = old_flags ^ p->flags;
>  

Thanks,
 Nik
