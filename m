Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478731980A0
	for <lists.bridge@lfdr.de>; Mon, 30 Mar 2020 18:11:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 718E8884B5;
	Mon, 30 Mar 2020 16:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GJas+aZJwafg; Mon, 30 Mar 2020 16:11:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31356884CA;
	Mon, 30 Mar 2020 16:11:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0E171C07FF;
	Mon, 30 Mar 2020 16:11:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A1A3C07FF
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06EFF8687B
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GHsQF_HFAUpM for <bridge@lists.linux-foundation.org>;
 Mon, 30 Mar 2020 16:11:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EBC0E865DB
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 16:11:16 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id p10so18479296ljn.1
 for <bridge@lists.linux-foundation.org>; Mon, 30 Mar 2020 09:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=N5J1AT29U+qxYGpRyT4o0gpVmE54yQU4b1/3GEAj/UM=;
 b=XruiS67lSAmBRjwalkok9yxinYymgAPQefzrz5oivTSVCi/s0DA0NpkVqIcDSgcC5B
 TGIJv27on042YejDOlijiuc/SRX+DhyPbiXGggg5D9DwGMIKRmqdbkU/w6piKW3WfYju
 JTN9N2NATQvpBFrRBX3UBs25BZ1nXJXfusD+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=N5J1AT29U+qxYGpRyT4o0gpVmE54yQU4b1/3GEAj/UM=;
 b=l+7Zx3Ajltj9UIsTBGomJRumSji1P4K5JBZy1ziBBuwUSFZVzlDTzx8C/YqOUh1dAX
 29sDWWr9OFRncqMP2VyaDtmSbfrSRGcNXnWX1unMQZ68B/3lmB5aLHY33nfD00LHF9xh
 qC6UPlzFda0PayP190bt7RdGa73711JXCoHEK1EiyFrl3C9fvsDmV2LfbTbIsiJEN3ir
 jXxCSg8rhjH9FRcXjnh89VQx0edN3C/aTfWCNJpXKekdDvOjEPhPWmBIxR28kzq0X8Pl
 1SpAc8o+aieR8nQBnuHo748Tyva75lhzfUZpbHm/ejxaoDFe/AMHPT7jkwL6pi6xN1CM
 P8oA==
X-Gm-Message-State: AGi0PuYg6XvDEmOXKh9u8A5R40fU2p2LNNKcMggAvH44eRXJl1pNlgum
 zZb6KbXNEhc4g1MUnMQdv9Pv0DdVrOQ=
X-Google-Smtp-Source: APiQypL68HpAf+cbUehNLVDoV7OVVDVi/AuIt24AgZ4c30Qt7wvyj91D1a7GZTvzV46rv5QCoPJGmA==
X-Received: by 2002:a2e:b175:: with SMTP id a21mr7665195ljm.213.1585584674043; 
 Mon, 30 Mar 2020 09:11:14 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id w12sm6985289lji.14.2020.03.30.09.11.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Mar 2020 09:11:13 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200327092126.15407-1-horatiu.vultur@microchip.com>
 <20200327092126.15407-8-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <7e85b9fe-f518-0c5a-0891-6f64755407c3@cumulusnetworks.com>
Date: Mon, 30 Mar 2020 19:11:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200327092126.15407-8-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [RFC net-next v4 7/9] bridge: mrp: Connect MRP api
 with the switchev API
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
> Implement the MRP api.
> 
> In case the HW can't generate MRP Test frames then the SW will try to generate
> the frames. In case that also the SW will fail in generating the frames then a
> error is return to the userspace. The userspace is responsible to generate all
> the other MRP frames regardless if the test frames are generated by HW or SW.
> 
> The forwarding/termination of MRP frames is happening in the kernel and is done
> by the MRP instance. The userspace application doesn't do the forwarding.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  net/bridge/br_mrp.c | 514 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 514 insertions(+)
>  create mode 100644 net/bridge/br_mrp.c
> 

Hi,
In general the RCU usage needs more work. Also I might've missed it, but where do you
handle bridge port delete which is used in mrp ?
Also do you actually need the mrp->lock ?

> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> new file mode 100644
> index 000000000000..f1de792d7a6e
> --- /dev/null
> +++ b/net/bridge/br_mrp.c
> @@ -0,0 +1,514 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +#include "br_private_mrp.h"
> +
> +static const u8 mrp_test_dmac[ETH_ALEN] = { 0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 };
> +
> +static struct net_bridge_port *br_mrp_get_port(struct net_bridge *br,
> +					       u32 ifindex)
> +{
> +	struct net_bridge_port *res = NULL;
> +	struct net_bridge_port *port;
> +
> +	spin_lock_bh(&br->lock);
> +

This is called under RTNL, you don't need the br->lock.

> +	list_for_each_entry(port, &br->port_list, list) {
> +		if (port->dev->ifindex == ifindex) {
> +			res = port;
> +			break;
> +		}
> +	}
> +
> +	spin_unlock_bh(&br->lock);
> +
> +	return res;
> +}
> +
> +static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
> +{
> +	struct br_mrp *res = NULL;
> +	struct br_mrp *mrp;
> +
> +	rcu_read_lock();
> +

This is generally a bad pattern because it can hide legitimate bugs and make
it harder to debug.

> +	list_for_each_entry_rcu(mrp, &br->mrp_list, list) {
> +		if (mrp->ring_id == ring_id) {
> +			res = mrp;
> +			break;
> +		}
> +	}
> +
> +	rcu_read_unlock();
> +
> +	return res;
> +}
> +
> +static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
> +				       struct net_bridge_port *p)
> +{
> +	struct br_mrp *res = NULL;
> +	struct br_mrp *mrp;
> +
> +	rcu_read_lock();
> +
> +	list_for_each_entry_rcu(mrp, &br->mrp_list, list) {
> +		if (rcu_dereference(mrp->p_port) == p ||
> +		    rcu_dereference(mrp->s_port) == p) {

rcu_access_pointer() is ok for comparisons

> +			res = mrp;
> +			break;
> +		}
> +	}
> +
> +	rcu_read_unlock();
> +
> +	return res;
> +}
> +
> +static int br_mrp_next_seq(struct br_mrp *mrp)
> +{
> +	mrp->seq_id++;
> +	return mrp->seq_id;
> +}
> +
> +static struct sk_buff *br_mrp_skb_alloc(struct net_bridge_port *p,
> +					const u8 *src, const u8 *dst)
> +{
> +	struct ethhdr *eth_hdr;
> +	struct sk_buff *skb;
> +	u16 *version;
> +
> +	skb = dev_alloc_skb(MRP_MAX_FRAME_LENGTH);
> +	if (!skb)
> +		return NULL;
> +
> +	skb->dev = p->dev;
> +	skb->protocol = htons(ETH_P_MRP);
> +	skb->priority = MRP_FRAME_PRIO;
> +	skb_reserve(skb, sizeof(*eth_hdr));
> +
> +	eth_hdr = skb_push(skb, sizeof(*eth_hdr));
> +	ether_addr_copy(eth_hdr->h_dest, dst);
> +	ether_addr_copy(eth_hdr->h_source, src);
> +	eth_hdr->h_proto = htons(ETH_P_MRP);
> +
> +	version = skb_put(skb, sizeof(*version));
> +	*version = cpu_to_be16(MRP_VERSION);
> +
> +	return skb;
> +}
> +
> +static void br_mrp_skb_tlv(struct sk_buff *skb,
> +			   enum br_mrp_tlv_header_type type,
> +			   u8 length)
> +{
> +	struct br_mrp_tlv_hdr *hdr;
> +
> +	hdr = skb_put(skb, sizeof(*hdr));
> +	hdr->type = type;
> +	hdr->length = length;
> +}
> +
> +static void br_mrp_skb_common(struct sk_buff *skb, struct br_mrp *mrp)
> +{
> +	struct br_mrp_common_hdr *hdr;
> +
> +	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_COMMON, sizeof(*hdr));
> +
> +	hdr = skb_put(skb, sizeof(*hdr));
> +	hdr->seq_id = cpu_to_be16(br_mrp_next_seq(mrp));
> +	memset(hdr->domain, 0xff, MRP_DOMAIN_UUID_LENGTH);
> +}
> +
> +static struct sk_buff *br_mrp_alloc_test_skb(struct br_mrp *mrp,
> +					     struct net_device *dev,
> +					     enum br_mrp_port_role_type port_role)
> +{
> +	struct net_bridge_port *p = br_port_get_rtnl(dev);
> +	struct br_mrp_ring_test_hdr *hdr = NULL;
> +	struct net_bridge *br = p->br;
> +	struct sk_buff *skb = NULL;
> +
> +	if (!p)
> +		return NULL;
> +
> +	br = p->br;
> +
> +	skb = br_mrp_skb_alloc(p, p->dev->dev_addr, mrp_test_dmac);
> +	if (!skb)
> +		return NULL;
> +
> +	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_RING_TEST, sizeof(*hdr));
> +	hdr = skb_put(skb, sizeof(*hdr));
> +
> +	hdr->prio = cpu_to_be16(MRP_DEFAULT_PRIO);
> +	ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
> +	hdr->port_role = cpu_to_be16(port_role);
> +	hdr->state = cpu_to_be16(mrp->ring_state);
> +	hdr->transitions = cpu_to_be16(mrp->ring_transitions);
> +	hdr->timestamp = cpu_to_be32(jiffies_to_msecs(jiffies));
> +
> +	br_mrp_skb_common(skb, mrp);
> +	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_END, 0x0);
> +
> +	return skb;
> +}
> +
> +static void br_mrp_test_work_expired(struct work_struct *work)
> +{
> +	struct delayed_work *del_work = to_delayed_work(work);
> +	struct br_mrp *mrp = container_of(del_work, struct br_mrp, test_work);
> +	bool notify_open = false;
> +	struct sk_buff *skb;
> +

Since this runs asynchronously what happens if the port is deleted ?

> +	if (time_before_eq(mrp->test_end, jiffies))
> +		return;
> +
> +	if (mrp->test_count_miss < mrp->test_max_miss) {
> +		mrp->test_count_miss++;
> +	} else {
> +		/* Notify that the ring is open only if the ring state is
> +		 * closed, otherwise it would continue to notify at every
> +		 * interval.
> +		 */
> +		if (mrp->ring_state == BR_MRP_RING_STATE_CLOSED)
> +			notify_open = true;
> +	}
> +
> +	local_bh_disable();
> +	rcu_read_lock();
> +
> +	if (!rcu_access_pointer(mrp->p_port) ||
> +	    !rcu_access_pointer(mrp->s_port))
> +		goto out;
> +
> +	/* Is it possible here to get call to delete the bridge port? If yes
> +	 * I need to protect it
> +	 */
> +	dev_hold(rcu_dereference(mrp->p_port)->dev);
> +

This looks all wrong, p_port can become NULL here and you'll deref it.

> +	skb = br_mrp_alloc_test_skb(mrp, rcu_dereference(mrp->p_port)->dev,
> +				    BR_MRP_PORT_ROLE_PRIMARY);
> +	if (!skb)
> +		goto out;
> +
> +	skb_reset_network_header(skb);
> +	dev_queue_xmit(skb);
> +
> +	if (notify_open && !mrp->ring_role_offloaded)
> +		br_mrp_port_open(rcu_dereference(mrp->p_port)->dev, true);
> +
> +	dev_put(rcu_dereference(mrp->p_port)->dev);
> +
> +	dev_hold(rcu_dereference(mrp->s_port)->dev);
> +

same here

> +	skb = br_mrp_alloc_test_skb(mrp, rcu_dereference(mrp->s_port)->dev,
> +				    BR_MRP_PORT_ROLE_SECONDARY);
> +	if (!skb)
> +		goto out;
> +
> +	skb_reset_network_header(skb);
> +	dev_queue_xmit(skb);
> +
> +	if (notify_open && !mrp->ring_role_offloaded)
> +		br_mrp_port_open(rcu_dereference(mrp->s_port)->dev, true);
> +
> +	dev_put(rcu_dereference(mrp->s_port)->dev);
> +
> +out:
> +	rcu_read_unlock();
> +	local_bh_enable();
> +
> +	queue_delayed_work(system_wq, &mrp->test_work,
> +			   usecs_to_jiffies(mrp->test_interval));
> +}
> +
> +/* Adds a new MRP instance.
> + * note: called under rtnl_lock
> + */
> +int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
> +{
> +	struct net_bridge_port *p;
> +	struct br_mrp *mrp;
> +
> +	/* If the ring exists, it is not possible to create another one with the
> +	 * same ring_id
> +	 */
> +	mrp = br_mrp_find_id(br, instance->ring_id);
> +	if (mrp)
> +		return -EINVAL;
> +
> +	if (!br_mrp_get_port(br, instance->p_ifindex) ||
> +	    !br_mrp_get_port(br, instance->s_ifindex))
> +		return -EINVAL;
> +
> +	mrp = devm_kzalloc(&br->dev->dev, sizeof(struct br_mrp), GFP_KERNEL);
> +	if (!mrp)
> +		return -ENOMEM;
> +
> +	/* I think is not needed because this can be replaced with rtnl lock*/
> +	spin_lock_init(&mrp->lock);
> +	spin_lock(&mrp->lock);
> +
> +	mrp->br = br;

Is this field (mrp->br) used anywhere ?

> +	mrp->ring_id = instance->ring_id;
> +
> +	p = br_mrp_get_port(br, instance->p_ifindex);
> +	p->state = BR_STATE_FORWARDING;
> +	p->flags |= BR_MRP_AWARE;
> +	rcu_assign_pointer(mrp->p_port, p);
> +
> +	p = br_mrp_get_port(br, instance->s_ifindex);
> +	p->state = BR_STATE_FORWARDING;
> +	p->flags |= BR_MRP_AWARE;
> +	rcu_assign_pointer(mrp->s_port, p);
> +
> +	br_mrp_switchdev_add(mrp);
> +
> +	spin_unlock(&mrp->lock);
> +	synchronize_rcu();

Why do you need the synchronize here?

> +
> +	list_add_tail_rcu(&mrp->list, &br->mrp_list);
> +	INIT_DELAYED_WORK(&mrp->test_work, br_mrp_test_work_expired);
> +
> +	return 0;
> +}
> +
> +/* Deletes existing MRP instance.
> + * note: called under rtnl_lock
> + */
> +int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(br, instance->ring_id);
> +	struct net_bridge_port *p;
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	/* Stop sending MRP_Test frames */
> +	cancel_delayed_work(&mrp->test_work);

cancel_delayed_work_sync() if you'd like to make sure it's stopped and finished (if it was running
during this)

> +	br_mrp_switchdev_send_ring_test(mrp, 0, 0, 0);
> +
> +	spin_lock(&mrp->lock);
> +
> +	br_mrp_switchdev_del(mrp);
> +
> +	/* Reset the ports */
> +	p = rcu_dereference_protected(mrp->p_port, lockdep_is_held(&mrp->lock));
> +	if (p) {
> +		spin_lock(&br->lock);
> +		p->state = BR_STATE_FORWARDING;
> +		p->flags &= ~BR_MRP_AWARE;
> +		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
> +		rcu_assign_pointer(mrp->p_port, NULL);
> +		spin_unlock(&br->lock);
> +	}
> +
> +	p = rcu_dereference_protected(mrp->s_port, lockdep_is_held(&mrp->lock));
> +	if (p) {
> +		spin_lock(&br->lock);
> +		p->state = BR_STATE_FORWARDING;
> +		p->flags &= ~BR_MRP_AWARE;
> +		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
> +		rcu_assign_pointer(mrp->s_port, NULL);
> +		spin_unlock(&br->lock);
> +	}
> +
> +	/* Destroy the ring */
> +	mrp->br = NULL;
> +
> +	spin_unlock(&mrp->lock);
> +	synchronize_rcu();
> +
> +	list_del_rcu(&mrp->list);
> +	devm_kfree(&br->dev->dev, mrp);
> +
> +	return 0;
> +}
> +
> +int br_mrp_set_port_state(struct net_bridge_port *p,
> +			  enum br_mrp_port_state_type state)
> +{
> +	spin_lock(&p->br->lock);
> +
> +	if (state == BR_MRP_PORT_STATE_FORWARDING)
> +		p->state = BR_STATE_FORWARDING;
> +	else
> +		p->state = BR_STATE_BLOCKING;
> +
> +	br_mrp_port_switchdev_set_state(p, state);
> +
> +	spin_unlock(&p->br->lock);
> +
> +	return 0;
> +}
> +
> +int br_mrp_set_port_role(struct net_bridge_port *p,
> +			 u32 ring_id, enum br_mrp_port_role_type role)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(p->br, ring_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	spin_lock(&mrp->lock);
> +
> +	if (role == BR_MRP_PORT_ROLE_PRIMARY)
> +		rcu_assign_pointer(mrp->p_port, p);
> +	if (role == BR_MRP_PORT_ROLE_SECONDARY)
> +		rcu_assign_pointer(mrp->s_port, p);
> +
> +	br_mrp_port_switchdev_set_role(p, role);
> +
> +	spin_unlock(&mrp->lock);
> +	synchronize_rcu();

Why do you need to synchronize here?

> +
> +	return 0;
> +}
> +
> +int br_mrp_set_ring_state(struct net_bridge *br, u32 ring_id,
> +			  enum br_mrp_ring_state_type state)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(br, ring_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	if (mrp->ring_state == BR_MRP_RING_STATE_CLOSED &&
> +	    state != BR_MRP_RING_STATE_CLOSED)
> +		mrp->ring_transitions++;
> +
> +	mrp->ring_state = state;
> +
> +	br_mrp_switchdev_set_ring_state(mrp, state);
> +
> +	return 0;
> +}
> +
> +int br_mrp_set_ring_role(struct net_bridge *br, u32 ring_id,
> +			 enum br_mrp_ring_role_type role)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(br, ring_id);
> +	int err;
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	mrp->ring_role = role;
> +
> +	/* If there is an error just bailed out */
> +	err = br_mrp_switchdev_set_ring_role(mrp, role);
> +	if (err && err != -EOPNOTSUPP)
> +		return err;
> +
> +	/* Now detect if the HW actually applied the role or not. If the HW
> +	 * applied the role it means that the SW will not to do those operations
> +	 * anymore. For example if the role ir MRM then the HW will notify the
> +	 * SW when ring is open, but if the is not pushed to the HW the SW will
> +	 * need to detect when the ring is open
> +	 */
> +	mrp->ring_role_offloaded = err == -EOPNOTSUPP ? 0 : 1;
> +
> +	return 0;
> +}
> +
> +int br_mrp_start_test(struct net_bridge *br, u32 ring_id, u32 interval,
> +		      u8 max_miss, u32 period)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(br, ring_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	/* Try to push is to the HW and if it fails then continue to generate in
> +	 * SW and if that also fails then return error
> +	 */
> +	if (!br_mrp_switchdev_send_ring_test(mrp, interval, max_miss, period))
> +		return 0;
> +
> +	mrp->test_interval = interval;
> +	mrp->test_end = jiffies + usecs_to_jiffies(period);
> +	mrp->test_max_miss = max_miss;
> +	mrp->test_count_miss = 0;
> +	queue_delayed_work(system_wq, &mrp->test_work,
> +			   usecs_to_jiffies(interval));
> +
> +	return 0;
> +}
> +
> +/* Process only MRP Test frame. All the other MRP frames are processed by
> + * userspace application
> + * note: already called with rcu_read_lock
> + */
> +static void br_mrp_mrm_process(struct br_mrp *mrp, struct sk_buff *skb)
> +{
> +	struct br_mrp_tlv_hdr *hdr;
> +
> +	hdr = (struct br_mrp_tlv_hdr *)(skb->data + sizeof(uint16_t));
> +
> +	if (hdr->type != BR_MRP_TLV_HEADER_RING_TEST)
> +		return;
> +
> +	mrp->test_count_miss = 0;
> +
> +	br_mrp_port_open(rcu_dereference(mrp->p_port)->dev, false);
> +	br_mrp_port_open(rcu_dereference(mrp->s_port)->dev, false);
> +}
> +
> +/* This will just forward the frame to the other mrp ring port(MRC role) or will
> + * not do anything.
> + * note: already called with rcu_read_lock
> + */
> +static int br_mrp_rcv(struct net_bridge_port *p,
> +		      struct sk_buff *skb, struct net_device *dev)
> +{
> +	struct net_device *s_dev, *p_dev, *d_dev;
> +	struct net_bridge *br;
> +	struct sk_buff *nskb;
> +	struct br_mrp *mrp;
> +
> +	/* If port is disable don't accept any frames */
> +	if (p->state == BR_STATE_DISABLED)
> +		return 0;
> +
> +	br = p->br;
> +	mrp =  br_mrp_find_port(br, p);
> +	if (unlikely(!mrp))
> +		return 0;
> +
> +	/* If the role is MRM then don't forward the frames */
> +	if (mrp->ring_role == BR_MRP_RING_ROLE_MRM) {
> +		br_mrp_mrm_process(mrp, skb);
> +		return 1;
> +	}
> +
> +	nskb = skb_clone(skb, GFP_ATOMIC);
> +	if (!nskb)
> +		return 0;
> +
> +	p_dev = rcu_dereference(mrp->p_port)->dev;
> +	s_dev = rcu_dereference(mrp->s_port)->dev;
> +

Not safe, could deref null.

> +	if (p_dev == dev)
> +		d_dev = s_dev;
> +	else
> +		d_dev = p_dev;
> +
> +	nskb->dev = d_dev;
> +	skb_push(nskb, ETH_HLEN);
> +	dev_queue_xmit(nskb);
> +
> +	return 1;
> +}
> +
> +int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
> +{
> +	/* If there is no MRP instance do normal forwarding */
> +	if (unlikely(!(p->flags & BR_MRP_AWARE)))

Shouldn't this one be likely() ?

> +		goto out;
> +
> +	if (unlikely(skb->protocol == htons(ETH_P_MRP)))
> +		return br_mrp_rcv(p, skb, p->dev);
> +
> +out:
> +	return 0;
> +}
> 

