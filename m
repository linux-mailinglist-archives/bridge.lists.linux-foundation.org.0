Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 080D81B21EA
	for <lists.bridge@lfdr.de>; Tue, 21 Apr 2020 10:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DE0B878BE;
	Tue, 21 Apr 2020 08:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TtX0cUIiZVC7; Tue, 21 Apr 2020 08:44:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14652878F1;
	Tue, 21 Apr 2020 08:44:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DF1E8C0175;
	Tue, 21 Apr 2020 08:44:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9A0DFC0175
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 08:44:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 88DF08644F
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 08:44:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smr0idnLWEQe for <bridge@lists.linux-foundation.org>;
 Tue, 21 Apr 2020 08:44:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E57E785BD3
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 08:44:19 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id t11so10427733lfe.4
 for <bridge@lists.linux-foundation.org>; Tue, 21 Apr 2020 01:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=BC2wT+sKuiR4zJbHid9KefpLDnLmCKk8QIahFEaXIbI=;
 b=EiJPfPpQeA9QRk4yklBdf4LYw17kfiCYJrdE/ss6E2WontLP0scmb87tX/tJ4s0YFw
 vwhJy9sQIyliAmgoEbhqRowEjjQpj3i6HOQbkV2sdhBeBytkpZMKWsh+itGQp1aXXprM
 41Dm2XhHCOvPyio5CUtBIsl6uxSghj01O0PL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BC2wT+sKuiR4zJbHid9KefpLDnLmCKk8QIahFEaXIbI=;
 b=GrkiVN+DE90ZFBDg44LY+d2NgE+vFjl/dlQqDaEI/A7B+1ugOhbNggYlRaabnHLJeq
 t76S9Ye8vvGWsNdii6WMpWa/RTZr26Drrxn3PFZjn6BIaWW8rGaCmqysdsNmwYktUIAS
 F6cg3lELKepHAziHVoHAuZoof4gUiOvWnG7m126zg1WMeduf+rOW0Gw8pFIxECz79wQ9
 1rvRMgmS4hZsWFKs7l9RbUg+5nVBdy7F3m1mZtnuZ5WrSw2Rz8xPgEGQaAHdsXaDQ2Yu
 ELKgLMDeuZFRLDcwjM6cDbsKSiUI8LUUsTCCST1rFg18545bK3hhM9jEW/bp7OqSlie9
 cd/w==
X-Gm-Message-State: AGi0PuarO4NqPJxjqvS4rcjVXWPDh4XiJRaQNjyt5zHcDb5dNh1yeu4S
 7RiFOL6zMWhLB/2luFGEC5SIQT5qo6zhwA==
X-Google-Smtp-Source: APiQypJL4GH2EGNF9+JiAVKkuAjT9+qMVww0qF9zIlkdruVdZMkLxqkzuXlGBaag1prrw83t3Ja5Aw==
X-Received: by 2002:ac2:47f0:: with SMTP id b16mr13396732lfp.81.1587458657192; 
 Tue, 21 Apr 2020 01:44:17 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id j22sm1577029lfg.96.2020.04.21.01.44.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 01:44:16 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 jiri@resnulli.us, ivecera@redhat.com, kuba@kernel.org,
 roopa@cumulusnetworks.com, olteanv@gmail.com, andrew@lunn.ch,
 UNGLinuxDriver@microchip.com, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200420150947.30974-1-horatiu.vultur@microchip.com>
 <20200420150947.30974-10-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <f50f5adb-dd22-4122-33cb-78effa0242a6@cumulusnetworks.com>
Date: Tue, 21 Apr 2020 11:44:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420150947.30974-10-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next 09/13] bridge: mrp: Connect MRP API
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

On 20/04/2020 18:09, Horatiu Vultur wrote:
> Implement the MRP API.
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
>  net/bridge/br_mrp.c | 551 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 551 insertions(+)
>  create mode 100644 net/bridge/br_mrp.c
> 
> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> new file mode 100644
> index 000000000000..a52f02f174c3
> --- /dev/null
> +++ b/net/bridge/br_mrp.c
> @@ -0,0 +1,551 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +#include <linux/mrp_bridge.h>
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
> +	list_for_each_entry(port, &br->port_list, list) {
> +		if (port->dev->ifindex == ifindex) {
> +			res = port;
> +			break;
> +		}
> +	}
> +
> +	return res;
> +}
> +
> +static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
> +{
> +	struct br_mrp *res = NULL;
> +	struct br_mrp *mrp;
> +
> +	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
> +				lockdep_rtnl_is_held()) {
> +		if (mrp->ring_id == ring_id) {
> +			res = mrp;
> +			break;
> +		}
> +	}
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
> +	list_for_each_entry_rcu(mrp, &br->mrp_list, list,
> +				lockdep_rtnl_is_held()) {
> +		if (rcu_access_pointer(mrp->p_port) == p ||
> +		    rcu_access_pointer(mrp->s_port) == p) {
> +			res = mrp;
> +			break;
> +		}
> +	}
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
> +					     struct net_bridge_port *p,
> +					     enum br_mrp_port_role_type port_role)
> +{
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
> +	struct net_bridge_port *p;
> +	bool notify_open = false;
> +	struct sk_buff *skb;
> +
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
> +	rcu_read_lock();
> +
> +	p = rcu_dereference(mrp->p_port);
> +	if (p) {
> +		skb = br_mrp_alloc_test_skb(mrp, p, BR_MRP_PORT_ROLE_PRIMARY);
> +		if (!skb)
> +			goto out;
> +
> +		skb_reset_network_header(skb);
> +		dev_queue_xmit(skb);
> +
> +		if (notify_open && !mrp->ring_role_offloaded)
> +			br_mrp_port_open(p->dev, true);
> +	}
> +
> +	p = rcu_dereference(mrp->s_port);
> +	if (p) {
> +		skb = br_mrp_alloc_test_skb(mrp, p, BR_MRP_PORT_ROLE_SECONDARY);
> +		if (!skb)
> +			goto out;
> +
> +		skb_reset_network_header(skb);
> +		dev_queue_xmit(skb);
> +
> +		if (notify_open && !mrp->ring_role_offloaded)
> +			br_mrp_port_open(p->dev, true);
> +	}
> +
> +out:
> +	rcu_read_unlock();
> +
> +	queue_delayed_work(system_wq, &mrp->test_work,
> +			   usecs_to_jiffies(mrp->test_interval));
> +}
> +
> +/* Deletes the MRP instance.
> + * note: called under rtnl_lock
> + */
> +static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
> +{
> +	struct net_bridge_port *p;
> +
> +	/* Stop sending MRP_Test frames */
> +	cancel_delayed_work_sync(&mrp->test_work);
> +	br_mrp_switchdev_send_ring_test(br, mrp, 0, 0, 0);
> +
> +	br_mrp_switchdev_del(br, mrp);
> +
> +	/* Reset the ports */
> +	p = rtnl_dereference(mrp->p_port);
> +	if (p) {
> +		spin_lock_bh(&br->lock);
> +		p->state = BR_STATE_FORWARDING;
> +		p->flags &= ~BR_MRP_AWARE;
> +		spin_unlock_bh(&br->lock);
> +		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
> +		rcu_assign_pointer(mrp->p_port, NULL);
> +	}
> +
> +	p = rtnl_dereference(mrp->s_port);
> +	if (p) {
> +		spin_lock_bh(&br->lock);
> +		p->state = BR_STATE_FORWARDING;
> +		p->flags &= ~BR_MRP_AWARE;
> +		spin_unlock_bh(&br->lock);
> +		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
> +		rcu_assign_pointer(mrp->s_port, NULL);
> +	}
> +
> +	list_del_rcu(&mrp->list);
> +	kfree_rcu(mrp, rcu);
> +}
> +
> +/* Adds a new MRP instance.
> + * note: called under rtnl_lock
> + */
> +int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
> +{
> +	struct net_bridge_port *p;
> +	struct br_mrp *mrp;
> +	int err;
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
> +	mrp = kzalloc(sizeof(*mrp), GFP_KERNEL);
> +	if (!mrp)
> +		return -ENOMEM;
> +
> +	mrp->ring_id = instance->ring_id;
> +
> +	p = br_mrp_get_port(br, instance->p_ifindex);
> +	spin_lock_bh(&br->lock);
> +	p->state = BR_STATE_FORWARDING;
> +	p->flags |= BR_MRP_AWARE;
> +	spin_unlock_bh(&br->lock);
> +	rcu_assign_pointer(mrp->p_port, p);
> +
> +	p = br_mrp_get_port(br, instance->s_ifindex);
> +	spin_lock_bh(&br->lock);
> +	p->state = BR_STATE_FORWARDING;
> +	p->flags |= BR_MRP_AWARE;
> +	spin_unlock_bh(&br->lock);
> +	rcu_assign_pointer(mrp->s_port, p);
> +
> +	INIT_DELAYED_WORK(&mrp->test_work, br_mrp_test_work_expired);
> +	list_add_tail_rcu(&mrp->list, &br->mrp_list);
> +
> +	err = br_mrp_switchdev_add(br, mrp);
> +	if (err)
> +		goto delete_mrp;
> +
> +	return 0;
> +
> +delete_mrp:
> +	br_mrp_del_impl(br, mrp);
> +
> +	return err;
> +}
> +
> +/* Deletes the MRP instance from which the port is part of
> + * note: called under rtnl_lock
> + */
> +void br_mrp_port_del(struct net_bridge *br, struct net_bridge_port *p)
> +{
> +	struct br_mrp *mrp = br_mrp_find_port(br, p);
> +
> +	/* If the port is not part of a MRP instance just bail out */
> +	if (!mrp)
> +		return;
> +
> +	br_mrp_del_impl(br, mrp);
> +}
> +
> +/* Deletes existing MRP instance based on ring_id
> + * note: called under rtnl_lock
> + */
> +int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(br, instance->ring_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	br_mrp_del_impl(br, mrp);
> +
> +	return 0;
> +}
> +
> +/* Set port state, port state can be forwarding, blocked or disabled
> + * note: already called with rcu_read_lock
> + */
> +int br_mrp_set_port_state(struct net_bridge_port *p,
> +			  enum br_mrp_port_state_type state)
> +{
> +	spin_lock_bh(&p->br->lock);
> +
> +	if (state == BR_MRP_PORT_STATE_FORWARDING)
> +		p->state = BR_STATE_FORWARDING;
> +	else
> +		p->state = BR_STATE_BLOCKING;
> +
> +	spin_unlock_bh(&p->br->lock);
> +
> +	br_mrp_port_switchdev_set_state(p, state);
> +
> +	return 0;
> +}
> +
> +/* Set port role, port role can be primary or secondary
> + * note: already called with rcu_read_lock
> + */
> +int br_mrp_set_port_role(struct net_bridge_port *p,
> +			 struct br_mrp_port_role *role)
> +{

In the previous review I was talking about this function which is called directly from
the MRP netlink code, one could invoke it with any port - it doesn't need to be MRP_AWARE
and then upon MRP delete you'll remove the flag from the wrong port. In addition the flag
on the original port will stay set.

> +	struct br_mrp *mrp = br_mrp_find_id(p->br, role->ring_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	if (role->role == BR_MRP_PORT_ROLE_PRIMARY)
> +		rcu_assign_pointer(mrp->p_port, p);
> +	else
> +		rcu_assign_pointer(mrp->s_port, p);
> +
> +	br_mrp_port_switchdev_set_role(p, role->role);
> +
> +	return 0;
> +}
> +
> +/* Set ring state, ring state can be only Open or Closed
> + * note: already called with rcu_read_lock
> + */
> +int br_mrp_set_ring_state(struct net_bridge *br,
> +			  struct br_mrp_ring_state *state)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(br, state->ring_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	if (mrp->ring_state == BR_MRP_RING_STATE_CLOSED &&
> +	    state->ring_state != BR_MRP_RING_STATE_CLOSED)
> +		mrp->ring_transitions++;
> +
> +	mrp->ring_state = state->ring_state;
> +
> +	br_mrp_switchdev_set_ring_state(br, mrp, state->ring_state);
> +
> +	return 0;
> +}
> +
> +/* Set ring role, ring role can be only MRM(Media Redundancy Manager) or
> + * MRC(Media Redundancy Client).
> + * note: already called with rcu_read_lock
> + */
> +int br_mrp_set_ring_role(struct net_bridge *br,
> +			 struct br_mrp_ring_role *role)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(br, role->ring_id);
> +	int err;
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	mrp->ring_role = role->ring_role;
> +
> +	/* If there is an error just bailed out */
> +	err = br_mrp_switchdev_set_ring_role(br, mrp, role->ring_role);
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
> +/* Start to generate MRP test frames, the frames are generated by HW and if it
> + * fails, they are generated by the SW.
> + * note: already called with rcu_read_lock
> + */
> +int br_mrp_start_test(struct net_bridge *br,
> +		      struct br_mrp_start_test *test)
> +{
> +	struct br_mrp *mrp = br_mrp_find_id(br, test->ring_id);
> +
> +	if (!mrp)
> +		return -EINVAL;
> +
> +	/* Try to push is to the HW and if it fails then continue to generate in
> +	 * SW and if that also fails then return error
> +	 */
> +	if (!br_mrp_switchdev_send_ring_test(br, mrp, test->interval,
> +					     test->max_miss, test->period))
> +		return 0;
> +
> +	mrp->test_interval = test->interval;
> +	mrp->test_end = jiffies + usecs_to_jiffies(test->period);
> +	mrp->test_max_miss = test->max_miss;
> +	mrp->test_count_miss = 0;
> +	queue_delayed_work(system_wq, &mrp->test_work,
> +			   usecs_to_jiffies(test->interval));
> +
> +	return 0;
> +}
> +
> +/* Process only MRP Test frame. All the other MRP frames are processed by
> + * userspace application
> + * note: already called with rcu_read_lock
> + */
> +static void br_mrp_mrm_process(struct br_mrp *mrp, struct net_bridge_port *port,
> +			       struct sk_buff *skb)
> +{
> +	struct br_mrp_tlv_hdr *hdr;
> +
> +	hdr = (struct br_mrp_tlv_hdr *)(skb->data + sizeof(uint16_t));
> +
> +	if (!hdr)
> +		return;
> +
> +	if (hdr->type != BR_MRP_TLV_HEADER_RING_TEST)
> +		return;
> +
> +	mrp->test_count_miss = 0;
> +
> +	/* Notify the userspace that the ring is closed only when the ring is
> +	 * not closed
> +	 */
> +	if (mrp->ring_state != BR_MRP_RING_STATE_CLOSED)
> +		br_mrp_port_open(port->dev, false);
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
> +	struct net_bridge_port *p_port, *s_port;
> +	struct net_bridge *br;
> +	struct sk_buff *nskb;
> +	struct br_mrp *mrp;
> +
> +	/* If port is disabled don't accept any frames */
> +	if (p->state == BR_STATE_DISABLED)
> +		return 0;
> +
> +	br = p->br;
> +	mrp =  br_mrp_find_port(br, p);
> +	if (unlikely(!mrp))
> +		return 0;
> +
> +	p_port = rcu_dereference(mrp->p_port);
> +	if (!p_port)
> +		return 0;
> +
> +	s_port = rcu_dereference(mrp->s_port);
> +	if (!s_port)
> +		return 0;
> +
> +	/* If the role is MRM then don't forward the frames */
> +	if (mrp->ring_role == BR_MRP_RING_ROLE_MRM) {
> +		br_mrp_mrm_process(mrp, p, skb);
> +		return 1;
> +	}
> +
> +	/* Clone the frame and forward it on the other MRP port */
> +	nskb = skb_clone(skb, GFP_ATOMIC);
> +	if (!nskb)
> +		return 0;
> +
> +	p_dev = p_port->dev;
> +	s_dev = s_port->dev;
> +
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
> +/* Check if the frame was received on a port that is part of MRP ring
> + * and if the frame has MRP eth. In that case process the frame otherwise do
> + * normal forwarding.
> + * note: already called with rcu_read_lock
> + */
> +int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
> +{
> +	/* If there is no MRP instance do normal forwarding */
> +	if (likely(!(p->flags & BR_MRP_AWARE)))
> +		goto out;
> +
> +	if (unlikely(skb->protocol == htons(ETH_P_MRP)))
> +		return br_mrp_rcv(p, skb, p->dev);
> +
> +out:
> +	return 0;
> +}
> +
> +bool br_mrp_enabled(struct net_bridge *br)
> +{
> +	return !list_empty(&br->mrp_list);
> +}
> 

