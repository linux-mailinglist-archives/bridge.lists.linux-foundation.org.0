Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 690C51953CE
	for <lists.bridge@lfdr.de>; Fri, 27 Mar 2020 10:22:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A3A0387686;
	Fri, 27 Mar 2020 09:22:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AIzU3q-fDl_n; Fri, 27 Mar 2020 09:22:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 882ED8768F;
	Fri, 27 Mar 2020 09:22:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 77407C0177;
	Fri, 27 Mar 2020 09:22:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EC6B0C0177
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DA45587C74
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hc3r+tRvZvPT for <bridge@lists.linux-foundation.org>;
 Fri, 27 Mar 2020 09:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C4D4588832
 for <bridge@lists.linux-foundation.org>; Fri, 27 Mar 2020 09:22:37 +0000 (UTC)
IronPort-SDR: yvnkNEMNgDVLrut7WZQULnkTIWcACvxTwT9BE3EnrGR9n0JKYXjMgOMH8bRyAgsroFVKp4uwhT
 6I8gyJK+sg9zZ4r2f/RqYk4VErF9OtbblgCNYdte2gYfYX3CTCkVWnO1rCc6OF+eyU1tBVoxVK
 kz9JZwM00PIIIOcJhvkEwvXdnbKcIIlML5CZgV9DgHdC+v0ttcDuk30SIGEslVyRXyU6fJ4eY8
 unt5mWd1zB+W2mEeliVBvLJEwAdfuFIGLpF9wBHSy+2qktoOjMi3akEieMpSv+YKjcPiQBiBul
 fxk=
X-IronPort-AV: E=Sophos;i="5.72,311,1580799600"; d="scan'208";a="68596765"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Mar 2020 02:22:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Mar 2020 02:22:37 -0700
Received: from soft-dev3.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 27 Mar 2020 02:22:34 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <davem@davemloft.net>, <jiri@resnulli.us>, <ivecera@redhat.com>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <olteanv@gmail.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Fri, 27 Mar 2020 10:21:24 +0100
Message-ID: <20200327092126.15407-8-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327092126.15407-1-horatiu.vultur@microchip.com>
References: <20200327092126.15407-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [RFC net-next v4 7/9] bridge: mrp: Connect MRP api with
	the switchev API
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

Implement the MRP api.

In case the HW can't generate MRP Test frames then the SW will try to generate
the frames. In case that also the SW will fail in generating the frames then a
error is return to the userspace. The userspace is responsible to generate all
the other MRP frames regardless if the test frames are generated by HW or SW.

The forwarding/termination of MRP frames is happening in the kernel and is done
by the MRP instance. The userspace application doesn't do the forwarding.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp.c | 514 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 514 insertions(+)
 create mode 100644 net/bridge/br_mrp.c

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
new file mode 100644
index 000000000000..f1de792d7a6e
--- /dev/null
+++ b/net/bridge/br_mrp.c
@@ -0,0 +1,514 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "br_private_mrp.h"
+
+static const u8 mrp_test_dmac[ETH_ALEN] = { 0x1, 0x15, 0x4e, 0x0, 0x0, 0x1 };
+
+static struct net_bridge_port *br_mrp_get_port(struct net_bridge *br,
+					       u32 ifindex)
+{
+	struct net_bridge_port *res = NULL;
+	struct net_bridge_port *port;
+
+	spin_lock_bh(&br->lock);
+
+	list_for_each_entry(port, &br->port_list, list) {
+		if (port->dev->ifindex == ifindex) {
+			res = port;
+			break;
+		}
+	}
+
+	spin_unlock_bh(&br->lock);
+
+	return res;
+}
+
+static struct br_mrp *br_mrp_find_id(struct net_bridge *br, u32 ring_id)
+{
+	struct br_mrp *res = NULL;
+	struct br_mrp *mrp;
+
+	rcu_read_lock();
+
+	list_for_each_entry_rcu(mrp, &br->mrp_list, list) {
+		if (mrp->ring_id == ring_id) {
+			res = mrp;
+			break;
+		}
+	}
+
+	rcu_read_unlock();
+
+	return res;
+}
+
+static struct br_mrp *br_mrp_find_port(struct net_bridge *br,
+				       struct net_bridge_port *p)
+{
+	struct br_mrp *res = NULL;
+	struct br_mrp *mrp;
+
+	rcu_read_lock();
+
+	list_for_each_entry_rcu(mrp, &br->mrp_list, list) {
+		if (rcu_dereference(mrp->p_port) == p ||
+		    rcu_dereference(mrp->s_port) == p) {
+			res = mrp;
+			break;
+		}
+	}
+
+	rcu_read_unlock();
+
+	return res;
+}
+
+static int br_mrp_next_seq(struct br_mrp *mrp)
+{
+	mrp->seq_id++;
+	return mrp->seq_id;
+}
+
+static struct sk_buff *br_mrp_skb_alloc(struct net_bridge_port *p,
+					const u8 *src, const u8 *dst)
+{
+	struct ethhdr *eth_hdr;
+	struct sk_buff *skb;
+	u16 *version;
+
+	skb = dev_alloc_skb(MRP_MAX_FRAME_LENGTH);
+	if (!skb)
+		return NULL;
+
+	skb->dev = p->dev;
+	skb->protocol = htons(ETH_P_MRP);
+	skb->priority = MRP_FRAME_PRIO;
+	skb_reserve(skb, sizeof(*eth_hdr));
+
+	eth_hdr = skb_push(skb, sizeof(*eth_hdr));
+	ether_addr_copy(eth_hdr->h_dest, dst);
+	ether_addr_copy(eth_hdr->h_source, src);
+	eth_hdr->h_proto = htons(ETH_P_MRP);
+
+	version = skb_put(skb, sizeof(*version));
+	*version = cpu_to_be16(MRP_VERSION);
+
+	return skb;
+}
+
+static void br_mrp_skb_tlv(struct sk_buff *skb,
+			   enum br_mrp_tlv_header_type type,
+			   u8 length)
+{
+	struct br_mrp_tlv_hdr *hdr;
+
+	hdr = skb_put(skb, sizeof(*hdr));
+	hdr->type = type;
+	hdr->length = length;
+}
+
+static void br_mrp_skb_common(struct sk_buff *skb, struct br_mrp *mrp)
+{
+	struct br_mrp_common_hdr *hdr;
+
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_COMMON, sizeof(*hdr));
+
+	hdr = skb_put(skb, sizeof(*hdr));
+	hdr->seq_id = cpu_to_be16(br_mrp_next_seq(mrp));
+	memset(hdr->domain, 0xff, MRP_DOMAIN_UUID_LENGTH);
+}
+
+static struct sk_buff *br_mrp_alloc_test_skb(struct br_mrp *mrp,
+					     struct net_device *dev,
+					     enum br_mrp_port_role_type port_role)
+{
+	struct net_bridge_port *p = br_port_get_rtnl(dev);
+	struct br_mrp_ring_test_hdr *hdr = NULL;
+	struct net_bridge *br = p->br;
+	struct sk_buff *skb = NULL;
+
+	if (!p)
+		return NULL;
+
+	br = p->br;
+
+	skb = br_mrp_skb_alloc(p, p->dev->dev_addr, mrp_test_dmac);
+	if (!skb)
+		return NULL;
+
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_RING_TEST, sizeof(*hdr));
+	hdr = skb_put(skb, sizeof(*hdr));
+
+	hdr->prio = cpu_to_be16(MRP_DEFAULT_PRIO);
+	ether_addr_copy(hdr->sa, p->br->dev->dev_addr);
+	hdr->port_role = cpu_to_be16(port_role);
+	hdr->state = cpu_to_be16(mrp->ring_state);
+	hdr->transitions = cpu_to_be16(mrp->ring_transitions);
+	hdr->timestamp = cpu_to_be32(jiffies_to_msecs(jiffies));
+
+	br_mrp_skb_common(skb, mrp);
+	br_mrp_skb_tlv(skb, BR_MRP_TLV_HEADER_END, 0x0);
+
+	return skb;
+}
+
+static void br_mrp_test_work_expired(struct work_struct *work)
+{
+	struct delayed_work *del_work = to_delayed_work(work);
+	struct br_mrp *mrp = container_of(del_work, struct br_mrp, test_work);
+	bool notify_open = false;
+	struct sk_buff *skb;
+
+	if (time_before_eq(mrp->test_end, jiffies))
+		return;
+
+	if (mrp->test_count_miss < mrp->test_max_miss) {
+		mrp->test_count_miss++;
+	} else {
+		/* Notify that the ring is open only if the ring state is
+		 * closed, otherwise it would continue to notify at every
+		 * interval.
+		 */
+		if (mrp->ring_state == BR_MRP_RING_STATE_CLOSED)
+			notify_open = true;
+	}
+
+	local_bh_disable();
+	rcu_read_lock();
+
+	if (!rcu_access_pointer(mrp->p_port) ||
+	    !rcu_access_pointer(mrp->s_port))
+		goto out;
+
+	/* Is it possible here to get call to delete the bridge port? If yes
+	 * I need to protect it
+	 */
+	dev_hold(rcu_dereference(mrp->p_port)->dev);
+
+	skb = br_mrp_alloc_test_skb(mrp, rcu_dereference(mrp->p_port)->dev,
+				    BR_MRP_PORT_ROLE_PRIMARY);
+	if (!skb)
+		goto out;
+
+	skb_reset_network_header(skb);
+	dev_queue_xmit(skb);
+
+	if (notify_open && !mrp->ring_role_offloaded)
+		br_mrp_port_open(rcu_dereference(mrp->p_port)->dev, true);
+
+	dev_put(rcu_dereference(mrp->p_port)->dev);
+
+	dev_hold(rcu_dereference(mrp->s_port)->dev);
+
+	skb = br_mrp_alloc_test_skb(mrp, rcu_dereference(mrp->s_port)->dev,
+				    BR_MRP_PORT_ROLE_SECONDARY);
+	if (!skb)
+		goto out;
+
+	skb_reset_network_header(skb);
+	dev_queue_xmit(skb);
+
+	if (notify_open && !mrp->ring_role_offloaded)
+		br_mrp_port_open(rcu_dereference(mrp->s_port)->dev, true);
+
+	dev_put(rcu_dereference(mrp->s_port)->dev);
+
+out:
+	rcu_read_unlock();
+	local_bh_enable();
+
+	queue_delayed_work(system_wq, &mrp->test_work,
+			   usecs_to_jiffies(mrp->test_interval));
+}
+
+/* Adds a new MRP instance.
+ * note: called under rtnl_lock
+ */
+int br_mrp_add(struct net_bridge *br, struct br_mrp_instance *instance)
+{
+	struct net_bridge_port *p;
+	struct br_mrp *mrp;
+
+	/* If the ring exists, it is not possible to create another one with the
+	 * same ring_id
+	 */
+	mrp = br_mrp_find_id(br, instance->ring_id);
+	if (mrp)
+		return -EINVAL;
+
+	if (!br_mrp_get_port(br, instance->p_ifindex) ||
+	    !br_mrp_get_port(br, instance->s_ifindex))
+		return -EINVAL;
+
+	mrp = devm_kzalloc(&br->dev->dev, sizeof(struct br_mrp), GFP_KERNEL);
+	if (!mrp)
+		return -ENOMEM;
+
+	/* I think is not needed because this can be replaced with rtnl lock*/
+	spin_lock_init(&mrp->lock);
+	spin_lock(&mrp->lock);
+
+	mrp->br = br;
+	mrp->ring_id = instance->ring_id;
+
+	p = br_mrp_get_port(br, instance->p_ifindex);
+	p->state = BR_STATE_FORWARDING;
+	p->flags |= BR_MRP_AWARE;
+	rcu_assign_pointer(mrp->p_port, p);
+
+	p = br_mrp_get_port(br, instance->s_ifindex);
+	p->state = BR_STATE_FORWARDING;
+	p->flags |= BR_MRP_AWARE;
+	rcu_assign_pointer(mrp->s_port, p);
+
+	br_mrp_switchdev_add(mrp);
+
+	spin_unlock(&mrp->lock);
+	synchronize_rcu();
+
+	list_add_tail_rcu(&mrp->list, &br->mrp_list);
+	INIT_DELAYED_WORK(&mrp->test_work, br_mrp_test_work_expired);
+
+	return 0;
+}
+
+/* Deletes existing MRP instance.
+ * note: called under rtnl_lock
+ */
+int br_mrp_del(struct net_bridge *br, struct br_mrp_instance *instance)
+{
+	struct br_mrp *mrp = br_mrp_find_id(br, instance->ring_id);
+	struct net_bridge_port *p;
+
+	if (!mrp)
+		return -EINVAL;
+
+	/* Stop sending MRP_Test frames */
+	cancel_delayed_work(&mrp->test_work);
+	br_mrp_switchdev_send_ring_test(mrp, 0, 0, 0);
+
+	spin_lock(&mrp->lock);
+
+	br_mrp_switchdev_del(mrp);
+
+	/* Reset the ports */
+	p = rcu_dereference_protected(mrp->p_port, lockdep_is_held(&mrp->lock));
+	if (p) {
+		spin_lock(&br->lock);
+		p->state = BR_STATE_FORWARDING;
+		p->flags &= ~BR_MRP_AWARE;
+		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
+		rcu_assign_pointer(mrp->p_port, NULL);
+		spin_unlock(&br->lock);
+	}
+
+	p = rcu_dereference_protected(mrp->s_port, lockdep_is_held(&mrp->lock));
+	if (p) {
+		spin_lock(&br->lock);
+		p->state = BR_STATE_FORWARDING;
+		p->flags &= ~BR_MRP_AWARE;
+		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
+		rcu_assign_pointer(mrp->s_port, NULL);
+		spin_unlock(&br->lock);
+	}
+
+	/* Destroy the ring */
+	mrp->br = NULL;
+
+	spin_unlock(&mrp->lock);
+	synchronize_rcu();
+
+	list_del_rcu(&mrp->list);
+	devm_kfree(&br->dev->dev, mrp);
+
+	return 0;
+}
+
+int br_mrp_set_port_state(struct net_bridge_port *p,
+			  enum br_mrp_port_state_type state)
+{
+	spin_lock(&p->br->lock);
+
+	if (state == BR_MRP_PORT_STATE_FORWARDING)
+		p->state = BR_STATE_FORWARDING;
+	else
+		p->state = BR_STATE_BLOCKING;
+
+	br_mrp_port_switchdev_set_state(p, state);
+
+	spin_unlock(&p->br->lock);
+
+	return 0;
+}
+
+int br_mrp_set_port_role(struct net_bridge_port *p,
+			 u32 ring_id, enum br_mrp_port_role_type role)
+{
+	struct br_mrp *mrp = br_mrp_find_id(p->br, ring_id);
+
+	if (!mrp)
+		return -EINVAL;
+
+	spin_lock(&mrp->lock);
+
+	if (role == BR_MRP_PORT_ROLE_PRIMARY)
+		rcu_assign_pointer(mrp->p_port, p);
+	if (role == BR_MRP_PORT_ROLE_SECONDARY)
+		rcu_assign_pointer(mrp->s_port, p);
+
+	br_mrp_port_switchdev_set_role(p, role);
+
+	spin_unlock(&mrp->lock);
+	synchronize_rcu();
+
+	return 0;
+}
+
+int br_mrp_set_ring_state(struct net_bridge *br, u32 ring_id,
+			  enum br_mrp_ring_state_type state)
+{
+	struct br_mrp *mrp = br_mrp_find_id(br, ring_id);
+
+	if (!mrp)
+		return -EINVAL;
+
+	if (mrp->ring_state == BR_MRP_RING_STATE_CLOSED &&
+	    state != BR_MRP_RING_STATE_CLOSED)
+		mrp->ring_transitions++;
+
+	mrp->ring_state = state;
+
+	br_mrp_switchdev_set_ring_state(mrp, state);
+
+	return 0;
+}
+
+int br_mrp_set_ring_role(struct net_bridge *br, u32 ring_id,
+			 enum br_mrp_ring_role_type role)
+{
+	struct br_mrp *mrp = br_mrp_find_id(br, ring_id);
+	int err;
+
+	if (!mrp)
+		return -EINVAL;
+
+	mrp->ring_role = role;
+
+	/* If there is an error just bailed out */
+	err = br_mrp_switchdev_set_ring_role(mrp, role);
+	if (err && err != -EOPNOTSUPP)
+		return err;
+
+	/* Now detect if the HW actually applied the role or not. If the HW
+	 * applied the role it means that the SW will not to do those operations
+	 * anymore. For example if the role ir MRM then the HW will notify the
+	 * SW when ring is open, but if the is not pushed to the HW the SW will
+	 * need to detect when the ring is open
+	 */
+	mrp->ring_role_offloaded = err == -EOPNOTSUPP ? 0 : 1;
+
+	return 0;
+}
+
+int br_mrp_start_test(struct net_bridge *br, u32 ring_id, u32 interval,
+		      u8 max_miss, u32 period)
+{
+	struct br_mrp *mrp = br_mrp_find_id(br, ring_id);
+
+	if (!mrp)
+		return -EINVAL;
+
+	/* Try to push is to the HW and if it fails then continue to generate in
+	 * SW and if that also fails then return error
+	 */
+	if (!br_mrp_switchdev_send_ring_test(mrp, interval, max_miss, period))
+		return 0;
+
+	mrp->test_interval = interval;
+	mrp->test_end = jiffies + usecs_to_jiffies(period);
+	mrp->test_max_miss = max_miss;
+	mrp->test_count_miss = 0;
+	queue_delayed_work(system_wq, &mrp->test_work,
+			   usecs_to_jiffies(interval));
+
+	return 0;
+}
+
+/* Process only MRP Test frame. All the other MRP frames are processed by
+ * userspace application
+ * note: already called with rcu_read_lock
+ */
+static void br_mrp_mrm_process(struct br_mrp *mrp, struct sk_buff *skb)
+{
+	struct br_mrp_tlv_hdr *hdr;
+
+	hdr = (struct br_mrp_tlv_hdr *)(skb->data + sizeof(uint16_t));
+
+	if (hdr->type != BR_MRP_TLV_HEADER_RING_TEST)
+		return;
+
+	mrp->test_count_miss = 0;
+
+	br_mrp_port_open(rcu_dereference(mrp->p_port)->dev, false);
+	br_mrp_port_open(rcu_dereference(mrp->s_port)->dev, false);
+}
+
+/* This will just forward the frame to the other mrp ring port(MRC role) or will
+ * not do anything.
+ * note: already called with rcu_read_lock
+ */
+static int br_mrp_rcv(struct net_bridge_port *p,
+		      struct sk_buff *skb, struct net_device *dev)
+{
+	struct net_device *s_dev, *p_dev, *d_dev;
+	struct net_bridge *br;
+	struct sk_buff *nskb;
+	struct br_mrp *mrp;
+
+	/* If port is disable don't accept any frames */
+	if (p->state == BR_STATE_DISABLED)
+		return 0;
+
+	br = p->br;
+	mrp =  br_mrp_find_port(br, p);
+	if (unlikely(!mrp))
+		return 0;
+
+	/* If the role is MRM then don't forward the frames */
+	if (mrp->ring_role == BR_MRP_RING_ROLE_MRM) {
+		br_mrp_mrm_process(mrp, skb);
+		return 1;
+	}
+
+	nskb = skb_clone(skb, GFP_ATOMIC);
+	if (!nskb)
+		return 0;
+
+	p_dev = rcu_dereference(mrp->p_port)->dev;
+	s_dev = rcu_dereference(mrp->s_port)->dev;
+
+	if (p_dev == dev)
+		d_dev = s_dev;
+	else
+		d_dev = p_dev;
+
+	nskb->dev = d_dev;
+	skb_push(nskb, ETH_HLEN);
+	dev_queue_xmit(nskb);
+
+	return 1;
+}
+
+int br_mrp_process(struct net_bridge_port *p, struct sk_buff *skb)
+{
+	/* If there is no MRP instance do normal forwarding */
+	if (unlikely(!(p->flags & BR_MRP_AWARE)))
+		goto out;
+
+	if (unlikely(skb->protocol == htons(ETH_P_MRP)))
+		return br_mrp_rcv(p, skb, p->dev);
+
+out:
+	return 0;
+}
-- 
2.17.1

