Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F6B219FFA
	for <lists.bridge@lfdr.de>; Thu,  9 Jul 2020 14:26:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E698087EE7;
	Thu,  9 Jul 2020 12:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZIUn7MRHyTOU; Thu,  9 Jul 2020 12:26:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62B2B87ED5;
	Thu,  9 Jul 2020 12:26:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 43F31C016F;
	Thu,  9 Jul 2020 12:26:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 75567C016F
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 12:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5804226807
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 12:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lmQ4WJxkbaWQ for <bridge@lists.linux-foundation.org>;
 Thu,  9 Jul 2020 12:26:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 273D926633
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jul 2020 12:26:46 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id f7so2168321wrw.1
 for <bridge@lists.linux-foundation.org>; Thu, 09 Jul 2020 05:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=gwcsbhFpd6IUtQcKw+Y6WrfKhYm98PUx5HnLtnblH9U=;
 b=HPkXwNJZL5i/UOK4XjgU/u+nYCzkPH0DR4cb+ne3JRxeQpcpioRVBa0DWmBrfKmz4p
 7/DtjDXB0ENekVMeW35ieffGHWANRJbEWvZetOliixXZ65U/3YpRsK9/Vhy+SAmnhTqK
 hMvn5XSe0PfhZxC/l9F2m6RTT4db/sLSjHOUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gwcsbhFpd6IUtQcKw+Y6WrfKhYm98PUx5HnLtnblH9U=;
 b=egJkdmzvEGVvDV+MOx5o+LwNiunE5ie+chhxKsbcEfgnYsrz5bt4yu6b3E+UYXhgFZ
 QVLHZ3KYwG4YKe6VefiAO03JXQ6ZOKkjHAAm++JJJfibip0GNFm8JXig5B5iIFSv5sFU
 f2Aqg7Asykn4bRy43oFC+gBkdYIzOz2PEYy1/dArU+ZpgkuW8vxk97LUltG49654GIzF
 hyrTwec962clN4j/4Cc7V3mGVYR3BhYjj9WeZSalZtBxn6J8dZ31IkKPNy6XpD4cwpvT
 nfIVF5XMz4EsMGMHVNnwgAodzmhqfDFsoVOuwPTdqn06A/eSNilre9+G3po37K0rRJjP
 O6Iw==
X-Gm-Message-State: AOAM53018iGRlJlF1l3JhoaaTtPfFDcfRB55CE76hDLkZYus7w2FFrhL
 FPqxHdsanbIGOTnt38y/TVH/OasUT9tHeQ==
X-Google-Smtp-Source: ABdhPJwlrh4Pufq4T80A9cvBsa4RyL9IvjZrc5E6BuhNYxPW8i2oZMxtbu6tuEe4nO5D0Ll1z5wh+A==
X-Received: by 2002:adf:e8ce:: with SMTP id k14mr60812890wrn.93.1594297603933; 
 Thu, 09 Jul 2020 05:26:43 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e8sm5533151wrp.26.2020.07.09.05.26.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jul 2020 05:26:43 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200709100040.554623-1-horatiu.vultur@microchip.com>
 <20200709100040.554623-9-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <224f2435-214d-6440-1b63-eb4139b8caf0@cumulusnetworks.com>
Date: Thu, 9 Jul 2020 15:26:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200709100040.554623-9-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v2 08/12] bridge: mrp: Implement the
 MRP Interconnect API
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

On 09/07/2020 13:00, Horatiu Vultur wrote:
> Thie patch adds support for MRP Interconnect. Similar with the MRP ring,
> if the HW can't generate MRP_InTest frames, then the SW will try to
> generate them. And if also the SW fails to generate the frames then an
> error is return to userspace.
> 
> The forwarding/termination of MRP_In frames is happening in the kernel
> and is done by MRP instances.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp.c         | 531 +++++++++++++++++++++++++++++++++---
>  net/bridge/br_private_mrp.h |   4 +
>  2 files changed, 504 insertions(+), 31 deletions(-)
> 

Hi,
Few comments below.

> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> index d4176f8956d05..26eb40d610b3a 100644
> --- a/net/bridge/br_mrp.c
> +++ b/net/bridge/br_mrp.c
> @@ -4,6 +4,27 @@
>  #include "br_private_mrp.h"
>  
>  static const u8 mrp_test_dmac[ETH_ALEN] = { 0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 };
> +static const u8 mrp_in_test_dmac[ETH_ALEN] = { 0x1, 0x15, 0x4e, 0x0, 0x0, 0x3 };
> +
> +static bool br_mrp_is_ring_port(struct net_bridge_port *p_port,
> +				struct net_bridge_port *s_port,
> +				struct net_bridge_port *port)
> +{
> +	if (port == p_port ||
> +	    port == s_port)
> +		return true;
> +
> +	return false;
> +}
> +
> +static bool br_mrp_is_in_port(struct net_bridge_port *i_port,
> +			      struct net_bridge_port *port)
> +{
> +	if (port == i_port)
> +		return true;
> +
> +	return false;
> +}
>  
>  static struct net_bridge_port *br_mrp_get_port(struct net_bridge *br,
>  					       u32 ifindex)
> @@ -37,6 +58,22 @@ static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
>  	return res;
>  }
>  
> +static struct br_mrp *br_mrp_find_in_id(struct net_bridge *br, u32 in_id)
> +{
> +	struct br_mrp *res = NULL;
> +	struct br_mrp *mrp;
> +
> +	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
> +				lockdep_rtnl_is_held()) {
> +		if (mrp->in_id == in_id) {
> +			res = mrp;
> +			break;
> +		}
> +	}
> +
> +	return res;
> +}
> +
>  static bool br_mrp_unique_ifindex(struct net_bridge *br, u32 ifindex)
>  {
>  	struct br_mrp *mrp;
> @@ -52,6 +89,10 @@ static bool br_mrp_unique_ifindex(struct net_bridge *br, u32 ifindex)
>  		p = rtnl_dereference(mrp->s_port);
>  		if (p && p->dev->ifindex == ifindex)
>  			return false;
> +
> +		p = rtnl_dereference(mrp->i_port);
> +		if (p && p->dev->ifindex == ifindex)
> +			return false;
>  	}
>  
>  	return true;
> @@ -66,7 +107,8 @@ static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
>  	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
>  				lockdep_rtnl_is_held()) {
>  		if (rcu_access_pointer(mrp->p_port) == p ||
> -		    rcu_access_pointer(mrp->s_port) == p) {
> +		    rcu_access_pointer(mrp->s_port) == p ||
> +		    rcu_access_pointer(mrp->i_port) == p) {
>  			res = mrp;
>  			break;
>  		}
> @@ -160,6 +202,36 @@ static struct sk_buff *br_mrp_alloc_test_skb(struct br_mrp *mrp,
>  	return skb;
>  }
>  
> +static struct sk_buff *br_mrp_alloc_in_test_skb(struct br_mrp *mrp,
> +						struct net_bridge_port *p,
> +						enum br_mrp_port_role_type port_role)
> +{
> +	struct br_mrp_in_test_hdr *hdr = NULL;
> +	struct sk_buff *skb = NULL;
> +
> +	if (!p)
> +		return NULL;
> +
> +	skb = br_mrp_skb_alloc(p, p->dev->dev_addr, mrp_in_test_dmac);
> +	if (!skb)
> +		return NULL;
> +
> +	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_IN_TEST, sizeof(*hdr));
> +	hdr = skb_put(skb, sizeof(*hdr));
> +
> +	hdr->id = cpu_to_be16(mrp->in_id);
> +	ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
> +	hdr->port_role = cpu_to_be16(port_role);
> +	hdr->state = cpu_to_be16(mrp->in_state);
> +	hdr->transitions = cpu_to_be16(mrp->in_transitions);
> +	hdr->timestamp = cpu_to_be32(jiffies_to_msecs(jiffies));
> +
> +	br_mrp_skb_common(skb, mrp);
> +	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_END, 0x0);
> +
> +	return skb;
> +}
> +
>  /* This function is continuously called in the following cases:
>   * - when node role is MRM, in this case test_monitor is always set to false
>   *   because it needs to notify the userspace that the ring is open and needs to
> @@ -239,6 +311,83 @@ static void br_mrp_test_work_expired(struct work_struct *work)
>  			   usecs_to_jiffies(mrp->test_interval));
>  }
>  
> +/* This function is continuously called when the node has the interconnect rol

role ?

> + * MIM. It would generate interconnect test frames and will send them on all 3
> + * ports. But will also check if it stop receiving interconnect test frames.
> + */
> +static void br_mrp_in_test_work_expired(struct work_struct *work)
> +{
> +	struct delayed_work *del_work = to_delayed_work(work);
> +	struct br_mrp *mrp = container_of(del_work, struct br_mrp, in_test_work);
> +	struct net_bridge_port *p;
> +	bool notify_open = false;
> +	struct sk_buff *skb;
> +
> +	if (time_before_eq(mrp->in_test_end, jiffies))
> +		return;
> +
> +	if (mrp->in_test_count_miss < mrp->in_test_max_miss) {
> +		mrp->in_test_count_miss++;
> +	} else {
> +		/* Notify that the interconnect ring is open only if the
> +		 * interconnect ring state is closed, otherwise it would
> +		 * continue to notify at every interval.
> +		 */
> +		if (mrp->in_state == BR_MRP_IN_STATE_CLOSED)
> +			notify_open = true;
> +	}
> +
> +	rcu_read_lock();
> +
> +	p = rcu_dereference(mrp->p_port);
> +	if (p) {
> +		skb = br_mrp_alloc_in_test_skb(mrp, p,
> +					       BR_MRP_PORT_ROLE_PRIMARY);
> +		if (!skb)
> +			goto out;
> +
> +		skb_reset_network_header(skb);
> +		dev_queue_xmit(skb);
> +
> +		if (notify_open && !mrp->in_role_offloaded)
> +			br_mrp_in_port_open(p->dev, true);
> +	}
> +
> +	p = rcu_dereference(mrp->s_port);
> +	if (p) {
> +		skb = br_mrp_alloc_in_test_skb(mrp, p,
> +					       BR_MRP_PORT_ROLE_SECONDARY);
> +		if (!skb)
> +			goto out;
> +
> +		skb_reset_network_header(skb);
> +		dev_queue_xmit(skb);
> +
> +		if (notify_open && !mrp->in_role_offloaded)
> +			br_mrp_in_port_open(p->dev, true);
> +	}
> +
> +	p = rcu_dereference(mrp->i_port);
> +	if (p) {
> +		skb = br_mrp_alloc_in_test_skb(mrp, p,
> +					       BR_MRP_PORT_ROLE_INTER);
> +		if (!skb)
> +			goto out;
> +
> +		skb_reset_network_header(skb);
> +		dev_queue_xmit(skb);
> +
> +		if (notify_open && !mrp->in_role_offloaded)
> +			br_mrp_in_port_open(p->dev, true);
> +	}
> +
> +out:
> +	rcu_read_unlock();
> +
> +	queue_delayed_work(system_wq, &mrp->in_test_work,
> +			   usecs_to_jiffies(mrp->in_test_interval));
> +}
> +
>  /* Deletes the MRP instance.
>   * note: called under rtnl_lock
>   */
> @@ -251,6 +400,12 @@ static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
>  	cancel_delayed_work_sync(&mrp->test_work);
>  	br_mrp_switchdev_send_ring_test(br, mrp, 0, 0, 0, 0);
>  
> +	/* Stop sending MRP_InTest frames if has an interconnect role */
> +	if (mrp->in_role != BR_MRP_IN_ROLE_DISABLED) {
> +		cancel_delayed_work_sync(&mrp->in_test_work);

I think both of these (in_role & in_test_work) are controlled by user-space
and if that is the case what stops user-space from starting in_test_work and
then setting in_role == BR_MRP_IN_ROLE_DISABLED ?

> +		br_mrp_switchdev_send_in_test(br, mrp, 0, 0, 0);
> +	}
> +
>  	br_mrp_switchdev_del(br, mrp);
>  
>  	/* Reset the ports */
> @@ -278,6 +433,18 @@ static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
>  		rcu_assign_pointer(mrp->s_port, NULL);
>  	}
>  
> +	p = rtnl_dereference(mrp->i_port);
> +	if (p) {
> +		spin_lock_bh(&br->lock);
> +		state = netif_running(br->dev) ?
> +				BR_STATE_FORWARDING : BR_STATE_DISABLED;
> +		p->state = state;
> +		p->flags &= ~BR_MRP_AWARE;
> +		spin_unlock_bh(&br->lock);
> +		br_mrp_port_switchdev_set_state(p, state);
> +		rcu_assign_pointer(mrp->i_port, NULL);
> +	}
> +
>  	list_del_rcu(&mrp->list);
>  	kfree_rcu(mrp, rcu);
>  }
> @@ -511,6 +678,140 @@ int br_mrp_start_test(struct net_bridge *br,
>  	return 0;
>  }
>  
> +/* Set in state, int state can be only Open or Closed
> + * note: already called with rtnl_lock
> + */
> +int br_mrp_set_in_state(struct net_bridge *br, struct br_mrp_in_state *state)
> +{
> +	struct br_mrp *mrp = br_mrp_find_in_id(br, state->in_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	if (mrp->in_state == BR_MRP_IN_STATE_CLOSED &&
> +	    state->in_state != BR_MRP_IN_STATE_CLOSED)
> +		mrp->in_transitions++;
> +
> +	mrp->in_state = state->in_state;
> +
> +	br_mrp_switchdev_set_in_state(br, mrp, state->in_state);
> +
> +	return 0;
> +}
> +
> +/* Set in role, in role can be only MIM(Media Interconnection Manager) or
> + * MIC(Media Interconnection Client).
> + * note: already called with rtnl_lock
> + */
> +int br_mrp_set_in_role(struct net_bridge *br, struct br_mrp_in_role *role)
> +{

Is there anything preventing user-space from calling this multiple times ?
I'm not sure how safe it is to modify in_test_work if it's in use.

Also what happens if the below code is called with 2 different ports ?
We'll be left with a port having BR_MRP_AWARE flag which we can't remove.

> +	struct br_mrp *mrp = br_mrp_find_id(br, role->ring_id);
> +	struct net_bridge_port *p;
> +	int err;
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	if (!br_mrp_get_port(br, role->i_ifindex))
> +		return -EINVAL;
> +
> +	/* It is not possible to have the same port part of multiple rings */
> +	if (!br_mrp_unique_ifindex(br, role->i_ifindex))
> +		return -EINVAL;
> +
> +	p = br_mrp_get_port(br, role->i_ifindex);
> +	spin_lock_bh(&br->lock);
> +	p->state = BR_STATE_FORWARDING;
> +	p->flags |= BR_MRP_AWARE;
> +	spin_unlock_bh(&br->lock);
> +	rcu_assign_pointer(mrp->i_port, p);
> +
> +	mrp->in_role = role->in_role;
> +	mrp->in_id = role->in_id;
> +
> +	INIT_DELAYED_WORK(&mrp->in_test_work, br_mrp_in_test_work_expired);
> +
> +	/* If there is an error just bailed out */
> +	err = br_mrp_switchdev_set_in_role(br, mrp, role->in_id,
> +					   role->ring_id, role->in_role);
> +	if (err && err != -EOPNOTSUPP)
> +		return err;
> +
> +	/* Now detect if the HW actually applied the role or not. If the HW
> +	 * applied the role it means that the SW will not to do those operations
> +	 * anymore. For example if the role is MIM then the HW will notify the
> +	 * SW when interconnect ring is open, but if the is not pushed to the HW
> +	 * the SW will need to detect when the interconnect ring is open.
> +	 */
> +	mrp->in_role_offloaded = err == -EOPNOTSUPP ? 0 : 1;
> +
> +	return 0;
> +}
> +
> +int br_mrp_start_in_test(struct net_bridge *br,
> +			 struct br_mrp_start_in_test *in_test)
> +{
> +	struct br_mrp *mrp = br_mrp_find_in_id(br, in_test->in_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	/* Try to push it to the HW and if it fails then continue with SW
> +	 * implementation and if that also fails then return error.
> +	 */
> +	if (!br_mrp_switchdev_send_in_test(br, mrp, in_test->interval,
> +					   in_test->max_miss, in_test->period))
> +		return 0;
> +
> +	mrp->in_test_interval = in_test->interval;
> +	mrp->in_test_end = jiffies + usecs_to_jiffies(in_test->period);
> +	mrp->in_test_max_miss = in_test->max_miss;
> +	mrp->in_test_count_miss = 0;
> +	queue_delayed_work(system_wq, &mrp->in_test_work,
> +			   usecs_to_jiffies(in_test->interval));
> +
> +	return 0;
> +}
> +
> +/* Determin if the frame type is a ring frame */
> +static bool br_mrp_ring_frame(struct sk_buff *skb)
> +{
> +	const struct br_mrp_tlv_hdr *hdr;
> +	struct br_mrp_tlv_hdr _hdr;
> +
> +	hdr = skb_header_pointer(skb, sizeof(uint16_t), sizeof(_hdr), &_hdr);
> +	if (!hdr)
> +		return false;
> +
> +	if (hdr->type == BR_MRP_TLV_HEADER_RING_TEST ||
> +	    hdr->type == BR_MRP_TLV_HEADER_RING_TOPO ||
> +	    hdr->type == BR_MRP_TLV_HEADER_RING_LINK_DOWN ||
> +	    hdr->type == BR_MRP_TLV_HEADER_RING_LINK_UP ||
> +	    hdr->type == BR_MRP_TLV_HEADER_OPTION)
> +		return true;
> +
> +	return false;
> +}
> +
> +/* Determin if the frame type is an interconnect frame */
> +static bool br_mrp_in_frame(struct sk_buff *skb)
> +{
> +	const struct br_mrp_tlv_hdr *hdr;
> +	struct br_mrp_tlv_hdr _hdr;
> +
> +	hdr = skb_header_pointer(skb, sizeof(uint16_t), sizeof(_hdr), &_hdr);
> +	if (!hdr)
> +		return false;
> +
> +	if (hdr->type == BR_MRP_TLV_HEADER_IN_TEST ||
> +	    hdr->type == BR_MRP_TLV_HEADER_IN_TOPO ||
> +	    hdr->type == BR_MRP_TLV_HEADER_IN_LINK_DOWN ||
> +	    hdr->type == BR_MRP_TLV_HEADER_IN_LINK_UP)
> +		return true;
> +
> +	return false;
> +}
> +
>  /* Process only MRP Test frame. All the other MRP frames are processed by
>   * userspace application
>   * note: already called with rcu_read_lock
> @@ -591,17 +892,92 @@ static void br_mrp_mra_process(struct br_mrp *mrp, struct net_bridge *br,
>  		mrp->test_count_miss = 0;
>  }
>  
> -/* This will just forward the frame to the other mrp ring port(MRC role) or will
> - * not do anything.
> +/* Process only MRP InTest frame. All the other MRP frames are processed by
> + * userspace application
> + * note: already called with rcu_read_lock
> + */
> +static bool br_mrp_mim_process(struct br_mrp *mrp, struct net_bridge_port *port,
> +			       struct sk_buff *skb)
> +{
> +	const struct br_mrp_in_test_hdr *in_hdr;
> +	struct br_mrp_in_test_hdr _in_hdr;
> +	const struct br_mrp_tlv_hdr *hdr;
> +	struct br_mrp_tlv_hdr _hdr;
> +
> +	/* Each MRP header starts with a version field which is 16 bits.
> +	 * Therefore skip the version and get directly the TLV header.
> +	 */
> +	hdr = skb_header_pointer(skb, sizeof(uint16_t), sizeof(_hdr), &_hdr);
> +	if (!hdr)
> +		return false;
> +
> +	/* The check for InTest frame type was already done */
> +	in_hdr = skb_header_pointer(skb, sizeof(uint16_t) + sizeof(_hdr),
> +				    sizeof(_in_hdr), &_in_hdr);
> +	if (!in_hdr)
> +		return false;
> +
> +	/* It needs to process only it's own InTest frames. */
> +	if (mrp->in_id != ntohs(in_hdr->id))
> +		return false;
> +
> +	mrp->in_test_count_miss = 0;
> +
> +	/* Notify the userspace that the ring is closed only when the ring is
> +	 * not closed
> +	 */
> +	if (mrp->in_state != BR_MRP_IN_STATE_CLOSED)
> +		br_mrp_in_port_open(port->dev, false);
> +
> +	return true;
> +}
> +
> +/* Get the MRP frame type
> + * note: already called with rcu_read_lock
> + */
> +static u8 br_mrp_get_frame_type(struct sk_buff *skb)
> +{
> +	const struct br_mrp_tlv_hdr *hdr;
> +	struct br_mrp_tlv_hdr _hdr;
> +
> +	/* Each MRP header starts with a version field which is 16 bits.
> +	 * Therefore skip the version and get directly the TLV header.
> +	 */
> +	hdr = skb_header_pointer(skb, sizeof(uint16_t), sizeof(_hdr), &_hdr);
> +	if (!hdr)
> +		return 0xff;
> +
> +	return hdr->type;
> +}
> +
> +static bool br_mrp_mrm_behaviour(struct br_mrp *mrp)
> +{
> +	if (mrp->ring_role == BR_MRP_RING_ROLE_MRM ||
> +	    (mrp->ring_role == BR_MRP_RING_ROLE_MRA && !mrp->test_monitor))
> +		return true;
> +
> +	return false;
> +}
> +
> +static bool br_mrp_mrc_behaviour(struct br_mrp *mrp)
> +{
> +	if (mrp->ring_role == BR_MRP_RING_ROLE_MRC ||
> +	    (mrp->ring_role == BR_MRP_RING_ROLE_MRA && mrp->test_monitor))
> +		return true;
> +
> +	return false;
> +}
> +
> +/* This will just forward the frame to the other mrp ring ports, depending on
> + * the frame type, ring role and interconnect role
>   * note: already called with rcu_read_lock
>   */
>  static int br_mrp_rcv(struct net_bridge_port *p,
>  		      struct sk_buff *skb, struct net_device *dev)
>  {
> -	struct net_device *s_dev, *p_dev, *d_dev;
> -	struct net_bridge_port *p_port, *s_port;
> +	struct net_bridge_port *p_port, *s_port, *i_port = NULL;
> +	struct net_bridge_port *p_dst, *s_dst, *i_dst = NULL;
>  	struct net_bridge *br;
> -	struct sk_buff *nskb;
>  	struct br_mrp *mrp;
>  
>  	/* If port is disabled don't accept any frames */
> @@ -616,46 +992,139 @@ static int br_mrp_rcv(struct net_bridge_port *p,
>  	p_port = rcu_dereference(mrp->p_port);
>  	if (!p_port)
>  		return 0;
> +	p_dst = p_port;
>  
>  	s_port = rcu_dereference(mrp->s_port);
>  	if (!s_port)
>  		return 0;
> +	s_dst = s_port;
>  
> -	/* If the role is MRM then don't forward the frames */
> -	if (mrp->ring_role == BR_MRP_RING_ROLE_MRM) {
> -		br_mrp_mrm_process(mrp, p, skb);
> -		return 1;
> -	}
> -
> -	/* If the role is MRA then don't forward the frames if it behaves as
> -	 * MRM node
> +	/* If the frame is a ring frame then it is not required to check the
> +	 * interconnect role and ports to process or forward the frame
>  	 */
> -	if (mrp->ring_role == BR_MRP_RING_ROLE_MRA) {
> -		if (!mrp->test_monitor) {
> +	if (br_mrp_ring_frame(skb)) {
> +		/* If the role is MRM then don't forward the frames */
> +		if (mrp->ring_role == BR_MRP_RING_ROLE_MRM) {
>  			br_mrp_mrm_process(mrp, p, skb);
> -			return 1;
> +			goto no_forward;
>  		}
>  
> -		br_mrp_mra_process(mrp, br, p, skb);
> +		/* If the role is MRA then don't forward the frames if it
> +		 * behaves as MRM node
> +		 */
> +		if (mrp->ring_role == BR_MRP_RING_ROLE_MRA) {
> +			if (!mrp->test_monitor) {
> +				br_mrp_mrm_process(mrp, p, skb);
> +				goto no_forward;
> +			}
> +
> +			br_mrp_mra_process(mrp, br, p, skb);
> +		}
> +
> +		goto forward;
>  	}
>  
> -	/* Clone the frame and forward it on the other MRP port */
> -	nskb = skb_clone(skb, GFP_ATOMIC);
> -	if (!nskb)
> -		return 0;
> +	if (br_mrp_in_frame(skb)) {
> +		u8 in_type = br_mrp_get_frame_type(skb);
>  
> -	p_dev = p_port->dev;
> -	s_dev = s_port->dev;
> +		i_port = rcu_dereference(mrp->i_port);
> +		i_dst = i_port;
>  
> -	if (p_dev == dev)
> -		d_dev = s_dev;
> -	else
> -		d_dev = p_dev;
> +		/* If the ring port is in block state it should not forward
> +		 * In_Test frames
> +		 */
> +		if (br_mrp_is_ring_port(p_port, s_port, p) &&
> +		    p->state == BR_STATE_BLOCKING &&
> +		    in_type == BR_MRP_TLV_HEADER_IN_TEST)
> +			goto no_forward;
> +
> +		/* Nodes that behaves as MRM needs to stop forwarding the
> +		 * frames in case the ring is closed, otherwise will be a loop.
> +		 * In this case the frame is no forward between the ring ports.
> +		 */
> +		if (br_mrp_mrm_behaviour(mrp) &&
> +		    br_mrp_is_ring_port(p_port, s_port, p) &&
> +		    (s_port->state != BR_STATE_FORWARDING ||
> +		     p_port->state != BR_STATE_FORWARDING)) {
> +			p_dst = NULL;
> +			s_dst = NULL;
> +		}
> +
> +		/* A node that behaves as MRC and doesn't have a interconnect
> +		 * role then it should forward all frames between the ring ports
> +		 * because it doesn't have an interconnect port
> +		 */
> +		if (br_mrp_mrc_behaviour(mrp) &&
> +		    mrp->in_role == BR_MRP_IN_ROLE_DISABLED)
> +			goto forward;
> +
> +		if (mrp->in_role == BR_MRP_IN_ROLE_MIM) {
> +			if (in_type == BR_MRP_TLV_HEADER_IN_TEST) {
> +				/* MIM should not forward it's own InTest
> +				 * frames
> +				 */
> +				if (br_mrp_mim_process(mrp, p, skb)) {
> +					goto no_forward;
> +				} else {
> +					if (br_mrp_is_ring_port(p_port, s_port,
> +								p))
> +						i_dst = NULL;
> +
> +					if (br_mrp_is_in_port(i_port, p))
> +						goto no_forward;
> +				}
> +			} else {
> +				/* MIM should forward IntLinkChange and
> +				 * IntTopoChange between ring ports but MIM
> +				 * should not forward IntLinkChange and
> +				 * IntTopoChange if the frame was received at
> +				 * the interconnect port
> +				 */
> +				if (br_mrp_is_ring_port(p_port, s_port, p))
> +					i_dst = NULL;
> +
> +				if (br_mrp_is_in_port(i_port, p))
> +					goto no_forward;
> +			}
> +		}
> +
> +		if (mrp->in_role == BR_MRP_IN_ROLE_MIC) {
> +			/* MIC should forward InTest frames on all ports
> +			 * regardless of the received port
> +			 */
> +			if (in_type == BR_MRP_TLV_HEADER_IN_TEST)
> +				goto forward;
> +
> +			/* MIC should forward IntLinkChange frames only if they
> +			 * are received on ring ports to all the ports
> +			 */
> +			if (br_mrp_is_ring_port(p_port, s_port, p) &&
> +			    (in_type == BR_MRP_TLV_HEADER_IN_LINK_UP ||
> +			     in_type == BR_MRP_TLV_HEADER_IN_LINK_DOWN))
> +				goto forward;
> +
> +			/* Should forward the InTopo frames only between the
> +			 * ring ports
> +			 */
> +			if (in_type == BR_MRP_TLV_HEADER_IN_TOPO) {
> +				i_dst = NULL;
> +				goto forward;
> +			}
> +
> +			/* In all the other cases don't forward the frames */
> +			goto no_forward;
> +		}
> +	}
>  
> -	nskb->dev = d_dev;
> -	skb_push(nskb, ETH_HLEN);
> -	dev_queue_xmit(nskb);
> +forward:
> +	if (p_dst)
> +		br_forward(p_dst, skb, true, false);
> +	if (s_dst)
> +		br_forward(s_dst, skb, true, false);
> +	if (i_dst)
> +		br_forward(i_dst, skb, true, false);
>  
> +no_forward:
>  	return 1;
>  }
>  
> diff --git a/net/bridge/br_private_mrp.h b/net/bridge/br_private_mrp.h
> index 50dbf046a9be3..81e7955190456 100644
> --- a/net/bridge/br_private_mrp.h
> +++ b/net/bridge/br_private_mrp.h
> @@ -57,6 +57,10 @@ int br_mrp_set_ring_state(struct net_bridge *br,
>  			  struct br_mrp_ring_state *state);
>  int br_mrp_set_ring_role(struct net_bridge *br, struct br_mrp_ring_role *role);
>  int br_mrp_start_test(struct net_bridge *br, struct br_mrp_start_test *test);
> +int br_mrp_set_in_state(struct net_bridge *br, struct br_mrp_in_state *state);
> +int br_mrp_set_in_role(struct net_bridge *br, struct br_mrp_in_role *role);
> +int br_mrp_start_in_test(struct net_bridge *br,
> +			 struct br_mrp_start_in_test *test);
>  
>  /* br_mrp_switchdev.c */
>  int br_mrp_switchdev_add(struct net_bridge *br, struct br_mrp *mrp);
> 

