Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0635A375A
	for <lists.bridge@lfdr.de>; Sat, 27 Aug 2022 13:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7454410B9;
	Sat, 27 Aug 2022 11:30:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7454410B9
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=E8xHWezI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OI9J7GECWcGD; Sat, 27 Aug 2022 11:30:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 83A71410C5;
	Sat, 27 Aug 2022 11:30:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83A71410C5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E9A0AC007B;
	Sat, 27 Aug 2022 11:30:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 460E1C002D
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 11:30:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2071160C24
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 11:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2071160C24
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=E8xHWezI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nxcW2dd-0zuf for <bridge@lists.linux-foundation.org>;
 Sat, 27 Aug 2022 11:30:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C78C160C1F
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C78C160C1F
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 11:30:30 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id t5so4888442edc.11
 for <bridge@lists.linux-foundation.org>; Sat, 27 Aug 2022 04:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=HCDRucbeSHKIMkgF2UNXEEMu9JpwUsy1lJX8HbqCAOw=;
 b=E8xHWezIKUzI4DpOZKzcjJQyXCSTiGzGsmFhID6IArbhGpc3oWtbPw1lONDPmBBcxV
 S/c9/nzTFcAAuV9tSFO1K2sUnV6446sXWOcxGo6uE9/CR0m4FwIm9NsahAvTgGo5nV+F
 YHyzQOo0A32yKFjWUOxPoTxsfN0nVD/yrBIWSIt/yRl5zmiCMjgZbiwt9xdvFdiGx98a
 tYVS2MMHofG93/WnUzKpMZXhofkngc+BVmqC+DrgQzdc4cXAo22FKcwAwK+ViyBualLd
 qnlIkaXAe472GTvhlwjUpc6BsNKqAlKD6RSXPPjgxoCXH0pRCqn+nas0Pdoo2mjL08KR
 lnSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=HCDRucbeSHKIMkgF2UNXEEMu9JpwUsy1lJX8HbqCAOw=;
 b=aIjM8p4HFaoAe7mdm0fJKl+c+c3HwF2yWILOuj2kxfYl632NZs9U4BcY/6DToris06
 iQTZ7BwgnfqT4W3lZHqLxRl/mH1BpNEizCLu/u4Ou7BavGqLXvUAcYCww197128LxxaE
 QHSYSChUOfimr1/QYhIkQ/JZLemJN6dMzRWQvSSYro7v7mB+HnDGD95xQ1z3NIQTsBeT
 v0WTGksPE1YNUs4atcg7l/eHuvWHQ5VEzTuvQxQj0M5EcQ30oVYQJJcIioM4288AMg8e
 cIsYdbo1wviuZODg6mFbPEB88JcJX0/eprBYmSaOXpl2sA44tqEslec0W6KlMK7Abz6+
 3YnA==
X-Gm-Message-State: ACgBeo14IG37NV5K5WPKaSHFd61CAYQi3yP0aXgfnwiy1uyn1AKul3ce
 cXaavpCY+DTvqRfUBkiQEnlcqA==
X-Google-Smtp-Source: AA6agR4Gn4BuDipKBmJjBEnuahUC5nmLjoupQAqu7IC9ovyWHPrSsS4HszKyDCogsFPS7OvCsS/n0g==
X-Received: by 2002:a05:6402:268b:b0:446:381d:7b45 with SMTP id
 w11-20020a056402268b00b00446381d7b45mr9895552edd.372.1661599828798; 
 Sat, 27 Aug 2022 04:30:28 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 et17-20020a170907295100b0073093eaf53esm1978048ejc.131.2022.08.27.04.30.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 27 Aug 2022 04:30:28 -0700 (PDT)
Message-ID: <e9eb5b72-073a-f182-13b7-37fc53611d5f@blackwall.org>
Date: Sat, 27 Aug 2022 14:30:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Hans Schultz <netdev@kapio-technology.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220826114538.705433-1-netdev@kapio-technology.com>
 <20220826114538.705433-2-netdev@kapio-technology.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220826114538.705433-2-netdev@kapio-technology.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Roopa Prabhu <roopa@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Christian Marangi <ansuelsmth@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Jiri Pirko <jiri@resnulli.us>,
 Hauke Mehrtens <hauke@hauke-m.de>, Sean Wang <sean.wang@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 1/6] net: bridge: add locked entry
 fdb flag to extend locked port feature
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

On 26/08/2022 14:45, Hans Schultz wrote:
> Add an intermediate state for clients behind a locked port to allow for
> possible opening of the port for said clients. The clients mac address
> will be added with the locked flag set, denying access through the port
> for the mac address, but also creating a new FDB add event giving
> userspace daemons the ability to unlock the mac address. This feature
> corresponds to the Mac-Auth and MAC Authentication Bypass (MAB) named
> features. The latter defined by Cisco.
> 
> As locked FDB entries are a security measure to deny access for
> unauthorized hosts on specific ports, they will deny forwarding from
> any port to the (MAC, vlan) pair involved and locked entries will not
> be able by learning or otherwise to change the associated port.
> 
> Only the kernel can set this FDB entry flag, while userspace can read
> the flag and remove it by replacing or deleting the FDB entry.
> 
> Locked entries will age out with the set bridge ageing time.
> 
> Also add a 'blackhole' fdb flag, ensuring that no forwarding from any
> port to a destination MAC that has a FDB entry with this flag on will
> occur. The packets will thus be dropped.
> 
> Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
> ---
>  include/linux/if_bridge.h      |  1 +
>  include/uapi/linux/if_link.h   |  1 +
>  include/uapi/linux/neighbour.h |  4 +++-
>  net/bridge/br_fdb.c            | 29 +++++++++++++++++++++++++++++
>  net/bridge/br_input.c          | 16 +++++++++++++++-
>  net/bridge/br_netlink.c        |  9 ++++++++-
>  net/bridge/br_private.h        |  4 +++-
>  7 files changed, 60 insertions(+), 4 deletions(-)
> 

Hi,
Please add the blackhole flag in a separate patch.
A few more comments and questions below..

> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index d62ef428e3aa..1668ac4d7adc 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -59,6 +59,7 @@ struct br_ip_list {
>  #define BR_MRP_LOST_IN_CONT	BIT(19)
>  #define BR_TX_FWD_OFFLOAD	BIT(20)
>  #define BR_PORT_LOCKED		BIT(21)
> +#define BR_PORT_MAB		BIT(22)
>  
>  #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
>  
> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index e36d9d2c65a7..fcbd0b85ad53 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -560,6 +560,7 @@ enum {
>  	IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT,
>  	IFLA_BRPORT_MCAST_EHT_HOSTS_CNT,
>  	IFLA_BRPORT_LOCKED,
> +	IFLA_BRPORT_MAB,
>  	__IFLA_BRPORT_MAX
>  };
>  #define IFLA_BRPORT_MAX (__IFLA_BRPORT_MAX - 1)
> diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
> index a998bf761635..bc1440a56b70 100644
> --- a/include/uapi/linux/neighbour.h
> +++ b/include/uapi/linux/neighbour.h
> @@ -52,7 +52,9 @@ enum {
>  #define NTF_STICKY	(1 << 6)
>  #define NTF_ROUTER	(1 << 7)
>  /* Extended flags under NDA_FLAGS_EXT: */
> -#define NTF_EXT_MANAGED	(1 << 0)
> +#define NTF_EXT_MANAGED		(1 << 0)
> +#define NTF_EXT_LOCKED		(1 << 1)
> +#define NTF_EXT_BLACKHOLE	(1 << 2)
>  
>  /*
>   *	Neighbor Cache Entry States.
> diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
> index e7f4fccb6adb..1962d9594a48 100644
> --- a/net/bridge/br_fdb.c
> +++ b/net/bridge/br_fdb.c
> @@ -105,6 +105,7 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>  	struct nda_cacheinfo ci;
>  	struct nlmsghdr *nlh;
>  	struct ndmsg *ndm;
> +	u32 ext_flags = 0;
>  
>  	nlh = nlmsg_put(skb, portid, seq, type, sizeof(*ndm), flags);
>  	if (nlh == NULL)
> @@ -125,11 +126,18 @@ static int fdb_fill_info(struct sk_buff *skb, const struct net_bridge *br,
>  		ndm->ndm_flags |= NTF_EXT_LEARNED;
>  	if (test_bit(BR_FDB_STICKY, &fdb->flags))
>  		ndm->ndm_flags |= NTF_STICKY;
> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags))
> +		ext_flags |= NTF_EXT_LOCKED;
> +	if (test_bit(BR_FDB_BLACKHOLE, &fdb->flags))
> +		ext_flags |= NTF_EXT_BLACKHOLE;
>  
>  	if (nla_put(skb, NDA_LLADDR, ETH_ALEN, &fdb->key.addr))
>  		goto nla_put_failure;
>  	if (nla_put_u32(skb, NDA_MASTER, br->dev->ifindex))
>  		goto nla_put_failure;
> +	if (nla_put_u32(skb, NDA_FLAGS_EXT, ext_flags))
> +		goto nla_put_failure;
> +
>  	ci.ndm_used	 = jiffies_to_clock_t(now - fdb->used);
>  	ci.ndm_confirmed = 0;
>  	ci.ndm_updated	 = jiffies_to_clock_t(now - fdb->updated);
> @@ -171,6 +179,7 @@ static inline size_t fdb_nlmsg_size(void)
>  	return NLMSG_ALIGN(sizeof(struct ndmsg))
>  		+ nla_total_size(ETH_ALEN) /* NDA_LLADDR */
>  		+ nla_total_size(sizeof(u32)) /* NDA_MASTER */
> +		+ nla_total_size(sizeof(u32)) /* NDA_FLAGS_EXT */
>  		+ nla_total_size(sizeof(u16)) /* NDA_VLAN */
>  		+ nla_total_size(sizeof(struct nda_cacheinfo))
>  		+ nla_total_size(0) /* NDA_FDB_EXT_ATTRS */
> @@ -879,6 +888,10 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
>  						      &fdb->flags)))
>  					clear_bit(BR_FDB_ADDED_BY_EXT_LEARN,
>  						  &fdb->flags);
> +				if (source->flags & BR_PORT_MAB)
> +					set_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags);
> +				else
> +					clear_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags);
Please add a test for that bit and only then change it.

>  			}
>  
>  			if (unlikely(test_bit(BR_FDB_ADDED_BY_USER, &flags)))
> @@ -1082,6 +1095,16 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
>  		modified = true;
>  	}
>  
> +	if (test_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags)) {
> +		clear_bit(BR_FDB_ENTRY_LOCKED, &fdb->flags);
> +		modified = true;
> +	}
> +
> +	if (test_bit(BR_FDB_BLACKHOLE, &fdb->flags)) {
> +		clear_bit(BR_FDB_BLACKHOLE, &fdb->flags);
> +		modified = true;
> +	}
> +
>  	if (fdb_handle_notify(fdb, notify))
>  		modified = true;
>  
> @@ -1178,6 +1201,12 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>  		vg = nbp_vlan_group(p);
>  	}
>  
> +	if (tb[NDA_FLAGS_EXT] &&
> +	    (nla_get_u32(tb[NDA_FLAGS_EXT]) & (NTF_EXT_LOCKED | NTF_EXT_BLACKHOLE))) {
> +		pr_info("bridge: RTM_NEWNEIGH has invalid extended flags\n");
> +		return -EINVAL;
> +	}
> +
>  	if (tb[NDA_FDB_EXT_ATTRS]) {
>  		attr = tb[NDA_FDB_EXT_ATTRS];
>  		err = nla_parse_nested(nfea_tb, NFEA_MAX, attr,
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 68b3e850bcb9..3d48aa7fa778 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -110,8 +110,19 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  			br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
>  
>  		if (!fdb_src || READ_ONCE(fdb_src->dst) != p ||
> -		    test_bit(BR_FDB_LOCAL, &fdb_src->flags))
> +		    test_bit(BR_FDB_LOCAL, &fdb_src->flags) ||
> +		    test_bit(BR_FDB_ENTRY_LOCKED, &fdb_src->flags)) {
> +			if (!fdb_src || (READ_ONCE(fdb_src->dst) != p &&
> +					 (p->flags & BR_LEARNING))) {

please break the second part of the check on a new line instead

> +				unsigned long flags = 0;
> +
> +				if (p->flags & BR_PORT_MAB) {

combine this and the above as one "if" block, no need to have a new one here
which preferrably starts with the MAB check

> +					__set_bit(BR_FDB_ENTRY_LOCKED, &flags);
> +					br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, flags);> +				}
> +			}
>  			goto drop;
> +		}
>  	}
>  
>  	nbp_switchdev_frame_mark(p, skb);
> @@ -185,6 +196,9 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
>  		if (test_bit(BR_FDB_LOCAL, &dst->flags))
>  			return br_pass_frame_up(skb);
>  
> +		if (test_bit(BR_FDB_BLACKHOLE, &dst->flags))
> +			goto drop;
> +
Not happy about adding a new test in arguably the most used fast-path, but I don't see
a better way to do blackhole right now. Could you please make it an unlikely() ?

I guess the blackhole flag will be allowed for user-space to set at some point, why
not do it from the start?

Actually adding a BR_FDB_LOCAL and BR_FDB_BLACKHOLE would be a conflict above -
the packet will be received. So you should move the blackhole check above the
BR_FDB_LOCAL one if user-space is allowed to set it to any entry.

>  		if (now != dst->used)
>  			dst->used = now;
>  		br_forward(dst->dst, skb, local_rcv, false);
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index 5aeb3646e74c..34483420c9e4 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -188,6 +188,7 @@ static inline size_t br_port_info_size(void)
>  		+ nla_total_size(1)	/* IFLA_BRPORT_NEIGH_SUPPRESS */
>  		+ nla_total_size(1)	/* IFLA_BRPORT_ISOLATED */
>  		+ nla_total_size(1)	/* IFLA_BRPORT_LOCKED */
> +		+ nla_total_size(1)	/* IFLA_BRPORT_MAB */
>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_ROOT_ID */
>  		+ nla_total_size(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_BRIDGE_ID */
>  		+ nla_total_size(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_PORT */
> @@ -274,7 +275,8 @@ static int br_port_fill_attrs(struct sk_buff *skb,
>  	    nla_put_u8(skb, IFLA_BRPORT_MRP_IN_OPEN,
>  		       !!(p->flags & BR_MRP_LOST_IN_CONT)) ||
>  	    nla_put_u8(skb, IFLA_BRPORT_ISOLATED, !!(p->flags & BR_ISOLATED)) ||
> -	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & BR_PORT_LOCKED)))
> +	    nla_put_u8(skb, IFLA_BRPORT_LOCKED, !!(p->flags & BR_PORT_LOCKED)) ||
> +	    nla_put_u8(skb, IFLA_BRPORT_MAB, !!(p->flags & BR_PORT_MAB)))
>  		return -EMSGSIZE;
>  
>  	timerval = br_timer_value(&p->message_age_timer);
> @@ -876,6 +878,7 @@ static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
>  	[IFLA_BRPORT_NEIGH_SUPPRESS] = { .type = NLA_U8 },
>  	[IFLA_BRPORT_ISOLATED]	= { .type = NLA_U8 },
>  	[IFLA_BRPORT_LOCKED] = { .type = NLA_U8 },
> +	[IFLA_BRPORT_MAB] = { .type = NLA_U8 },
>  	[IFLA_BRPORT_BACKUP_PORT] = { .type = NLA_U32 },
>  	[IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT] = { .type = NLA_U32 },
>  };
> @@ -943,6 +946,10 @@ static int br_setport(struct net_bridge_port *p, struct nlattr *tb[],
>  	br_set_port_flag(p, tb, IFLA_BRPORT_NEIGH_SUPPRESS, BR_NEIGH_SUPPRESS);
>  	br_set_port_flag(p, tb, IFLA_BRPORT_ISOLATED, BR_ISOLATED);
>  	br_set_port_flag(p, tb, IFLA_BRPORT_LOCKED, BR_PORT_LOCKED);
> +	br_set_port_flag(p, tb, IFLA_BRPORT_MAB, BR_PORT_MAB);
> +
> +	if (!(p->flags & BR_PORT_LOCKED))
> +		p->flags &= ~BR_PORT_MAB;
>  
>  	changed_mask = old_flags ^ p->flags;
>  
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 06e5f6faa431..048e4afbc5a0 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -251,7 +251,9 @@ enum {
>  	BR_FDB_ADDED_BY_EXT_LEARN,
>  	BR_FDB_OFFLOADED,
>  	BR_FDB_NOTIFY,
> -	BR_FDB_NOTIFY_INACTIVE
> +	BR_FDB_NOTIFY_INACTIVE,
> +	BR_FDB_ENTRY_LOCKED,
> +	BR_FDB_BLACKHOLE,
>  };
>  
>  struct net_bridge_fdb_key {

Cheers,
 Nik
