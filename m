Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 493A1118188
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 08:50:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E33C85F9C;
	Tue, 10 Dec 2019 07:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2HYuHX-pCIY; Tue, 10 Dec 2019 07:50:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C7EC85F9D;
	Tue, 10 Dec 2019 07:50:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63670C1796;
	Tue, 10 Dec 2019 07:50:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD75EC0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 07:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B695285F80
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 07:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DgUA2FNyzfC2 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 07:50:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B6DB85F7E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 07:50:04 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id e10so18710981ljj.6
 for <bridge@lists.linux-foundation.org>; Mon, 09 Dec 2019 23:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EP62BaO9PU+GNgZP2MNmGtRrbenSWWdxqMvCH6rwa6I=;
 b=hHfJvlI4Ue9VbOfEFox26wOErWmXb608hKDgtXQjLLh7EY3a0dc7GJ0gRShyiQqhMj
 Wh/zwiodQm4j/q9+YLeLeI8Kdeb9mefFrqRUwjbCgNy2ArXvzvpLUslwJExxYIMMWOtp
 ude49chjReoNlvuJxhcX/UUBc6vZLHO74GawE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EP62BaO9PU+GNgZP2MNmGtRrbenSWWdxqMvCH6rwa6I=;
 b=VUYH3u9UzD7MvFY/zyzsblDvWpo0PK8usR4tRKVUvsU0ceDq9EMzozSnqH9WqZoU4T
 qCp5r/zNTgQRsygErvM0gn2nc3S+v3le0iJuyszhmeyWpKLZT5K/T1wSBOv3kUkGyGEf
 XBUDPoYJNeZ+S68zixpVSjJrbWLXJBrwT8O1IfNvHSGhYPfdlSVznREsKS3fyAXUQIHr
 +9L+yKdkRa81SRAGtVAeZVLs+q+443vs36hdJEeQTK9RfFeutKLLOuwjl1YmjqKVX7hh
 nI0r59QynQ6NsVUBPmSP4Jv544elnBf1MCSEKrgFfJkDj4QXsf8Ze3NexCIZ5UK+ln26
 fXDg==
X-Gm-Message-State: APjAAAVWbbuynZgKcc/13RoSSehPa1n2mdoJqbqT35nAaIkSI8P2qea7
 ruiT9xYNRalT44AXnuXCeCzh5A==
X-Google-Smtp-Source: APXvYqwGyUwGwGhESWcpJe8qV9s90CoDI8/TquykLLvp3cIEDk/LDzBHUxmXyoH/0kejpDBykxXL/w==
X-Received: by 2002:a2e:9e55:: with SMTP id g21mr18966057ljk.245.1575964202010; 
 Mon, 09 Dec 2019 23:50:02 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b17sm1002585lfp.15.2019.12.09.23.50.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 23:50:01 -0800 (PST)
To: Vivien Didelot <vivien.didelot@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
Date: Tue, 10 Dec 2019 09:49:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191209230522.1255467-1-vivien.didelot@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next] net: bridge: add STP xstats
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

On 10/12/2019 01:05, Vivien Didelot wrote:
> This adds rx_bpdu, tx_bpdu, rx_tcn, tx_tcn, transition_blk,
> transition_fwd xstats counters to the bridge ports copied over via
> netlink, providing useful information for STP.
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  include/uapi/linux/if_bridge.h | 10 ++++++++++
>  net/bridge/br_if.c             |  8 ++++++++
>  net/bridge/br_netlink.c        |  9 +++++++++
>  net/bridge/br_private.h        |  9 +++++++++
>  net/bridge/br_stp.c            | 25 +++++++++++++++++++++++++
>  net/bridge/br_stp_bpdu.c       | 12 ++++++++++++
>  net/bridge/br_stp_if.c         | 27 +++++++++++++++++++++++++++
>  7 files changed, 100 insertions(+)
> 

Hi Vivien,
Why did you send the bridge patch again ? Does it have any changes ?

Why do you need percpu ? All of these seem to be incremented with the
bridge lock held. A few more comments below.

> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
> index 1b3c2b643a02..e7f2bb782006 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -156,6 +156,15 @@ struct bridge_vlan_xstats {
>  	__u32 pad2;
>  };
>  
> +struct bridge_stp_xstats {
> +	__u64 transition_blk;
> +	__u64 transition_fwd;
> +	__u64 rx_bpdu;
> +	__u64 tx_bpdu;
> +	__u64 rx_tcn;
> +	__u64 tx_tcn;
> +};
> +
>  /* Bridge multicast database attributes
>   * [MDBA_MDB] = {
>   *     [MDBA_MDB_ENTRY] = {
> @@ -261,6 +270,7 @@ enum {
>  	BRIDGE_XSTATS_UNSPEC,
>  	BRIDGE_XSTATS_VLAN,
>  	BRIDGE_XSTATS_MCAST,
> +	BRIDGE_XSTATS_STP,
>  	BRIDGE_XSTATS_PAD,
>  	__BRIDGE_XSTATS_MAX
>  };
> diff --git a/net/bridge/br_if.c b/net/bridge/br_if.c
> index 4fe30b182ee7..3eb214ef9763 100644
> --- a/net/bridge/br_if.c
> +++ b/net/bridge/br_if.c
> @@ -250,6 +250,7 @@ static void release_nbp(struct kobject *kobj)
>  {
>  	struct net_bridge_port *p
>  		= container_of(kobj, struct net_bridge_port, kobj);
> +	free_percpu(p->stp_stats);

Please leave a new line between local var declaration and the code. I know
it was missing, but you can add it now. :)

>  	kfree(p);
>  }
>  
> @@ -419,6 +420,12 @@ static struct net_bridge_port *new_nbp(struct net_bridge *br,
>  	if (p == NULL)
>  		return ERR_PTR(-ENOMEM);
>  
> +	p->stp_stats = netdev_alloc_pcpu_stats(struct br_stp_stats);
> +	if (!p->stp_stats) {
> +		kfree(p);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
>  	p->br = br;
>  	dev_hold(dev);
>  	p->dev = dev;
> @@ -432,6 +439,7 @@ static struct net_bridge_port *new_nbp(struct net_bridge *br,
>  	err = br_multicast_add_port(p);
>  	if (err) {
>  		dev_put(dev);
> +		free_percpu(p->stp_stats);
>  		kfree(p);
>  		p = ERR_PTR(err);
>  	}
> diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
> index a0a54482aabc..03aced1f862b 100644
> --- a/net/bridge/br_netlink.c
> +++ b/net/bridge/br_netlink.c
> @@ -1597,6 +1597,15 @@ static int br_fill_linkxstats(struct sk_buff *skb,
>  		}
>  	}
>  
> +	if (p) {
> +		struct bridge_stp_xstats xstats;

Please rename the local var here, using just xstats is misleading.
Maybe stp_xstats ?

> +
> +		br_stp_get_xstats(p, &xstats);
> +
> +		if (nla_put(skb, BRIDGE_XSTATS_STP, sizeof(xstats), &xstats))
> +			goto nla_put_failure;

Could you please follow how mcast xstats are dumped and do something similar ?
It'd be nice to have similar code to audit.

> +	}
> +
>  #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
>  	if (++vl_idx >= *prividx) {
>  		nla = nla_reserve_64bit(skb, BRIDGE_XSTATS_MCAST,
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 36b0367ca1e0..af5f28f0f2ef 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -95,6 +95,11 @@ struct br_vlan_stats {
>  	struct u64_stats_sync syncp;
>  };
>  
> +struct br_stp_stats {
> +	struct bridge_stp_xstats xstats;
> +	struct u64_stats_sync syncp;
> +};
> +
>  struct br_tunnel_info {
>  	__be64			tunnel_id;
>  	struct metadata_dst	*tunnel_dst;
> @@ -283,6 +288,8 @@ struct net_bridge_port {
>  #endif
>  	u16				group_fwd_mask;
>  	u16				backup_redirected_cnt;
> +
> +	struct br_stp_stats		__percpu *stp_stats;
>  };
>  
>  #define kobj_to_brport(obj)	container_of(obj, struct net_bridge_port, kobj)
> @@ -1146,6 +1153,8 @@ void br_stp_change_bridge_id(struct net_bridge *br, const unsigned char *a);
>  void br_stp_set_bridge_priority(struct net_bridge *br, u16 newprio);
>  int br_stp_set_port_priority(struct net_bridge_port *p, unsigned long newprio);
>  int br_stp_set_path_cost(struct net_bridge_port *p, unsigned long path_cost);
> +void br_stp_get_xstats(const struct net_bridge_port *p,
> +		       struct bridge_stp_xstats *xstats);
>  ssize_t br_show_bridge_id(char *buf, const struct bridge_id *id);
>  
>  /* br_stp_bpdu.c */
> diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
> index 1f1410f8d312..8bcdab29442d 100644
> --- a/net/bridge/br_stp.c
> +++ b/net/bridge/br_stp.c
> @@ -45,6 +45,18 @@ void br_set_state(struct net_bridge_port *p, unsigned int state)
>  		br_info(p->br, "port %u(%s) entered %s state\n",
>  				(unsigned int) p->port_no, p->dev->name,
>  				br_port_state_names[p->state]);
> +
> +	if (p->br->stp_enabled == BR_KERNEL_STP) {
> +		struct br_stp_stats *stats;
> +
> +		stats = this_cpu_ptr(p->stp_stats);
> +		u64_stats_update_begin(&stats->syncp);
> +		if (p->state == BR_STATE_BLOCKING)
> +			stats->xstats.transition_blk++;
> +		else if (p->state == BR_STATE_FORWARDING)
> +			stats->xstats.transition_fwd++;
> +		u64_stats_update_end(&stats->syncp);
> +	}
>  }
>  
>  /* called under bridge lock */
> @@ -481,9 +493,15 @@ static void br_topology_change_acknowledge(struct net_bridge_port *p)
>  void br_received_config_bpdu(struct net_bridge_port *p,
>  			     const struct br_config_bpdu *bpdu)
>  {
> +	struct br_stp_stats *stats;
>  	struct net_bridge *br;
>  	int was_root;
>  
> +	stats = this_cpu_ptr(p->stp_stats);
> +	u64_stats_update_begin(&stats->syncp);
> +	stats->xstats.rx_bpdu++;
> +	u64_stats_update_end(&stats->syncp);
> +
>  	br = p->br;
>  	was_root = br_is_root_bridge(br);
>  
> @@ -517,6 +535,13 @@ void br_received_config_bpdu(struct net_bridge_port *p,
>  /* called under bridge lock */
>  void br_received_tcn_bpdu(struct net_bridge_port *p)
>  {
> +	struct br_stp_stats *stats;
> +
> +	stats = this_cpu_ptr(p->stp_stats);
> +	u64_stats_update_begin(&stats->syncp);
> +	stats->xstats.rx_tcn++;
> +	u64_stats_update_end(&stats->syncp);
> +
>  	if (br_is_designated_port(p)) {
>  		br_info(p->br, "port %u(%s) received tcn bpdu\n",
>  			(unsigned int) p->port_no, p->dev->name);
> diff --git a/net/bridge/br_stp_bpdu.c b/net/bridge/br_stp_bpdu.c
> index 7796dd9d42d7..2dbd11e21f2a 100644
> --- a/net/bridge/br_stp_bpdu.c
> +++ b/net/bridge/br_stp_bpdu.c
> @@ -78,6 +78,7 @@ static inline int br_get_ticks(const unsigned char *src)
>  /* called under bridge lock */
>  void br_send_config_bpdu(struct net_bridge_port *p, struct br_config_bpdu *bpdu)
>  {
> +	struct br_stp_stats *stats;
>  	unsigned char buf[35];
>  
>  	if (p->br->stp_enabled != BR_KERNEL_STP)
> @@ -118,11 +119,17 @@ void br_send_config_bpdu(struct net_bridge_port *p, struct br_config_bpdu *bpdu)
>  	br_set_ticks(buf+33, bpdu->forward_delay);
>  
>  	br_send_bpdu(p, buf, 35);
> +
> +	stats = this_cpu_ptr(p->stp_stats);
> +	u64_stats_update_begin(&stats->syncp);
> +	stats->xstats.tx_bpdu++;
> +	u64_stats_update_end(&stats->syncp);
>  }
>  
>  /* called under bridge lock */
>  void br_send_tcn_bpdu(struct net_bridge_port *p)
>  {
> +	struct br_stp_stats *stats;
>  	unsigned char buf[4];
>  
>  	if (p->br->stp_enabled != BR_KERNEL_STP)
> @@ -133,6 +140,11 @@ void br_send_tcn_bpdu(struct net_bridge_port *p)
>  	buf[2] = 0;
>  	buf[3] = BPDU_TYPE_TCN;
>  	br_send_bpdu(p, buf, 4);
> +
> +	stats = this_cpu_ptr(p->stp_stats);
> +	u64_stats_update_begin(&stats->syncp);
> +	stats->xstats.tx_tcn++;
> +	u64_stats_update_end(&stats->syncp);
>  }
>  
>  /*
> diff --git a/net/bridge/br_stp_if.c b/net/bridge/br_stp_if.c
> index d174d3a566aa..cbce7d0e40b9 100644
> --- a/net/bridge/br_stp_if.c
> +++ b/net/bridge/br_stp_if.c
> @@ -333,6 +333,33 @@ int br_stp_set_path_cost(struct net_bridge_port *p, unsigned long path_cost)
>  	return 0;
>  }
>  
> +void br_stp_get_xstats(const struct net_bridge_port *p,
> +		       struct bridge_stp_xstats *xstats)
> +{
> +	int i;
> +
> +	memset(xstats, 0, sizeof(*xstats));
> +
> +	for_each_possible_cpu(i) {
> +		struct bridge_stp_xstats cpu_xstats;
> +		struct br_stp_stats *stats;
> +		unsigned int start;
> +
> +		stats = per_cpu_ptr(p->stp_stats, i);
> +		do {
> +			start = u64_stats_fetch_begin_irq(&stats->syncp);
> +			memcpy(&cpu_xstats, &stats->xstats, sizeof(cpu_xstats));
> +		} while (u64_stats_fetch_retry_irq(&stats->syncp, start));
> +
> +		xstats->transition_blk += cpu_xstats.transition_blk;
> +		xstats->transition_fwd += cpu_xstats.transition_fwd;
> +		xstats->rx_bpdu += cpu_xstats.rx_bpdu;
> +		xstats->tx_bpdu += cpu_xstats.tx_bpdu;
> +		xstats->rx_tcn += cpu_xstats.rx_tcn;
> +		xstats->tx_tcn += cpu_xstats.tx_tcn;
> +	}
> +}
> +
>  ssize_t br_show_bridge_id(char *buf, const struct bridge_id *id)
>  {
>  	return sprintf(buf, "%.2x%.2x.%.2x%.2x%.2x%.2x%.2x%.2x\n",
> 

