Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F05F37334
	for <lists.bridge@lfdr.de>; Thu,  6 Jun 2019 13:43:19 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6ED26D13;
	Thu,  6 Jun 2019 11:42:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 11EFDCD1
	for <bridge@lists.linux-foundation.org>;
	Thu,  6 Jun 2019 11:42:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DE8BD34F
	for <bridge@lists.linux-foundation.org>;
	Thu,  6 Jun 2019 11:42:16 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id d18so2071651wrs.5
	for <bridge@lists.linux-foundation.org>;
	Thu, 06 Jun 2019 04:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=FN5439FA2aJXW/IaT+IhmEZap7FlBc8fhF6D/ECpsbQ=;
	b=cJLool9C/D9O0KvxLY92EDjo0Ot+DqejqsfifBvoKfmO1jUcn6JtFlATCg0g9npw4L
	PAsNmjkqgRdbGcuSnQK0ysOlFpIMFkAbT7pXqkVgqZ8XGZyd3Q2pm8qedHukSfmgtWFS
	E9A+3tpJxFtPaic6c1ajSiB1PIqVAHP9kPMTfxUO9Grlbm1aAmXeSkwg5otI/Xtlzsvx
	LLud5GwcN4n/crq4X6wmzgc68kmfL63ePTh8ahWj+FCxjIWhTWCTzDeZV1DlfCuP8OLu
	NXXjEcNj1cEvJ/NyIdwJy6eUaA37FIeMD/+gG+DaloQIkbiN9hA5tKhWrAkYdQQnbAhu
	s0sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=FN5439FA2aJXW/IaT+IhmEZap7FlBc8fhF6D/ECpsbQ=;
	b=Px2heOt1b9zlfPw+Va/76ptYSKj/eTNZqkBqLwJMwr9/aphOZ228axQApzBBqg6LdI
	SaVt6Q85ysJqpJGOZ+2SFPr97vxNTrF93b2Tl8urfSqHMcTGYFBUecGIu83WH9Trey7F
	RbizdALK6OBVNozClGabHKYL1J/Noo+vqs2x6Dq9IuyuBabRO7UPMsHyFAjqF7MyDosE
	vDGHoIOFdIUMH5ErLqM0VbvVTFIQ9jxlrQ5cbdTbLzzLP5E0+yUdIdGej3GpCBrolpaw
	Qe/RCgJ0cceLM9BqOAQ3Bu6436Cqna3CulbGZ/vinGYda9Fo2Nl1zYqCYaLiAVTeWntQ
	tFMw==
X-Gm-Message-State: APjAAAVp9v7LkHigrKnNfYOjbRenxaVfS0vAyeuK742Pmi7gGwFd75SA
	8iK+vqQOm7lbHUk72cwS6mLYqA==
X-Google-Smtp-Source: APXvYqx8efF0d+5VoImb6jPc6SKdp1km0r2xQYlvz2nWJ4noGst3mu9okDXxkO07JcLqGb3jdHndJQ==
X-Received: by 2002:adf:9062:: with SMTP id h89mr28561013wrh.20.1559821335451; 
	Thu, 06 Jun 2019 04:42:15 -0700 (PDT)
Received: from localhost.localdomain (p548C9938.dip0.t-ipconnect.de.
	[84.140.153.56])
	by smtp.gmail.com with ESMTPSA id 95sm2002583wrk.70.2019.06.06.04.42.14
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 06 Jun 2019 04:42:14 -0700 (PDT)
From: Christian Brauner <christian@brauner.io>
To: davem@davemloft.net, netdev@vger.kernel.org,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	bridge@lists.linux-foundation.org
Date: Thu,  6 Jun 2019 13:41:42 +0200
Message-Id: <20190606114142.15972-3-christian@brauner.io>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606114142.15972-1-christian@brauner.io>
References: <20190606114142.15972-1-christian@brauner.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ueberall@themenzentrisch.de, vapier@chromium.org, richardrose@google.com,
	nikolay@cumulusnetworks.com, joelhockey@chromium.org,
	roopa@cumulusnetworks.com, fw@strlen.de,
	linux-kernel@vger.kernel.org, tyhicks@canonical.com,
	bhthompson@google.com, Christian Brauner <christian@brauner.io>,
	kadlec@blackhole.kfki.hu, smbarber@chromium.org, pablo@netfilter.org
Subject: [Bridge] [PATCH RESEND net-next 2/2] br_netfilter: namespace bridge
	netfilter sysctls
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Currently, the /proc/sys/net/bridge folder is only created in the initial
network namespace. This patch ensures that the /proc/sys/net/bridge folder
is available in each network namespace if the module is loaded and
disappears from all network namespaces when the module is unloaded.

In doing so the patch makes the sysctls:

bridge-nf-call-arptables
bridge-nf-call-ip6tables
bridge-nf-call-iptables
bridge-nf-filter-pppoe-tagged
bridge-nf-filter-vlan-tagged
bridge-nf-pass-vlan-input-dev

apply per network namespace. This unblocks some use-cases where users would
like to e.g. not do bridge filtering for bridges in a specific network
namespace while doing so for bridges located in another network namespace.

The netfilter rules are afaict already per network namespace so it should
be safe for users to specify whether bridge devices inside a network
namespace are supposed to go through iptables et al. or not. Also, this can
already be done per-bridge by setting an option for each individual bridge
via Netlink. It should also be possible to do this for all bridges in a
network namespace via sysctls.

Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Reviewed-by: Tyler Hicks <tyhicks@canonical.com>
---
 include/net/netfilter/br_netfilter.h |   3 +-
 net/bridge/br_netfilter_hooks.c      | 116 ++++++++++++++++++++-------
 net/bridge/br_netfilter_ipv6.c       |   2 +-
 3 files changed, 91 insertions(+), 30 deletions(-)

diff --git a/include/net/netfilter/br_netfilter.h b/include/net/netfilter/br_netfilter.h
index 89808ce293c4..302fcd3aade2 100644
--- a/include/net/netfilter/br_netfilter.h
+++ b/include/net/netfilter/br_netfilter.h
@@ -42,7 +42,8 @@ static inline struct rtable *bridge_parent_rtable(const struct net_device *dev)
 	return port ? &port->br->fake_rtable : NULL;
 }
 
-struct net_device *setup_pre_routing(struct sk_buff *skb);
+struct net_device *setup_pre_routing(struct sk_buff *skb,
+				     const struct net *net);
 
 #if IS_ENABLED(CONFIG_IPV6)
 int br_validate_ipv6(struct net *net, struct sk_buff *skb);
diff --git a/net/bridge/br_netfilter_hooks.c b/net/bridge/br_netfilter_hooks.c
index b51c6b49fc6f..02960259e51b 100644
--- a/net/bridge/br_netfilter_hooks.c
+++ b/net/bridge/br_netfilter_hooks.c
@@ -68,17 +68,17 @@ static inline __be16 vlan_proto(const struct sk_buff *skb)
 		return 0;
 }
 
-#define IS_VLAN_IP(skb) \
+#define IS_VLAN_IP(skb, net) \
 	(vlan_proto(skb) == htons(ETH_P_IP) && \
-	 init_net.brnf.filter_vlan_tagged)
+	 net->brnf.filter_vlan_tagged)
 
-#define IS_VLAN_IPV6(skb) \
+#define IS_VLAN_IPV6(skb, net) \
 	(vlan_proto(skb) == htons(ETH_P_IPV6) && \
-	 init_net.brnf.filter_vlan_tagged)
+	 net->brnf.filter_vlan_tagged)
 
-#define IS_VLAN_ARP(skb) \
+#define IS_VLAN_ARP(skb, net) \
 	(vlan_proto(skb) == htons(ETH_P_ARP) &&	\
-	 init_net.brnf.filter_vlan_tagged)
+	 net->brnf.filter_vlan_tagged)
 
 static inline __be16 pppoe_proto(const struct sk_buff *skb)
 {
@@ -86,15 +86,15 @@ static inline __be16 pppoe_proto(const struct sk_buff *skb)
 			    sizeof(struct pppoe_hdr)));
 }
 
-#define IS_PPPOE_IP(skb) \
+#define IS_PPPOE_IP(skb, net) \
 	(skb->protocol == htons(ETH_P_PPP_SES) && \
 	 pppoe_proto(skb) == htons(PPP_IP) && \
-	 init_net.brnf.filter_pppoe_tagged)
+	 net->brnf.filter_pppoe_tagged)
 
-#define IS_PPPOE_IPV6(skb) \
+#define IS_PPPOE_IPV6(skb, net) \
 	(skb->protocol == htons(ETH_P_PPP_SES) && \
 	 pppoe_proto(skb) == htons(PPP_IPV6) && \
-	 init_net.brnf.filter_pppoe_tagged)
+	 net->brnf.filter_pppoe_tagged)
 
 /* largest possible L2 header, see br_nf_dev_queue_xmit() */
 #define NF_BRIDGE_MAX_MAC_HEADER_LENGTH (PPPOE_SES_HLEN + ETH_HLEN)
@@ -391,12 +391,14 @@ static int br_nf_pre_routing_finish(struct net *net, struct sock *sk, struct sk_
 	return 0;
 }
 
-static struct net_device *brnf_get_logical_dev(struct sk_buff *skb, const struct net_device *dev)
+static struct net_device *brnf_get_logical_dev(struct sk_buff *skb,
+					       const struct net_device *dev,
+					       const struct net *net)
 {
 	struct net_device *vlan, *br;
 
 	br = bridge_parent(dev);
-	if (init_net.brnf.pass_vlan_indev == 0 || !skb_vlan_tag_present(skb))
+	if (net->brnf.pass_vlan_indev == 0 || !skb_vlan_tag_present(skb))
 		return br;
 
 	vlan = __vlan_find_dev_deep_rcu(br, skb->vlan_proto,
@@ -406,7 +408,7 @@ static struct net_device *brnf_get_logical_dev(struct sk_buff *skb, const struct
 }
 
 /* Some common code for IPv4/IPv6 */
-struct net_device *setup_pre_routing(struct sk_buff *skb)
+struct net_device *setup_pre_routing(struct sk_buff *skb, const struct net *net)
 {
 	struct nf_bridge_info *nf_bridge = nf_bridge_info_get(skb);
 
@@ -417,7 +419,7 @@ struct net_device *setup_pre_routing(struct sk_buff *skb)
 
 	nf_bridge->in_prerouting = 1;
 	nf_bridge->physindev = skb->dev;
-	skb->dev = brnf_get_logical_dev(skb, skb->dev);
+	skb->dev = brnf_get_logical_dev(skb, skb->dev, net);
 
 	if (skb->protocol == htons(ETH_P_8021Q))
 		nf_bridge->orig_proto = BRNF_PROTO_8021Q;
@@ -452,8 +454,9 @@ static unsigned int br_nf_pre_routing(void *priv,
 		return NF_DROP;
 	br = p->br;
 
-	if (IS_IPV6(skb) || IS_VLAN_IPV6(skb) || IS_PPPOE_IPV6(skb)) {
-		if (!init_net.brnf.call_ip6tables &&
+	if (IS_IPV6(skb) || IS_VLAN_IPV6(skb, state->net) ||
+	    IS_PPPOE_IPV6(skb, state->net)) {
+		if (!state->net->brnf.call_ip6tables &&
 		    !br_opt_get(br, BROPT_NF_CALL_IP6TABLES))
 			return NF_ACCEPT;
 
@@ -461,11 +464,12 @@ static unsigned int br_nf_pre_routing(void *priv,
 		return br_nf_pre_routing_ipv6(priv, skb, state);
 	}
 
-	if (!init_net.brnf.call_iptables &&
+	if (!state->net->brnf.call_iptables &&
 	    !br_opt_get(br, BROPT_NF_CALL_IPTABLES))
 		return NF_ACCEPT;
 
-	if (!IS_IP(skb) && !IS_VLAN_IP(skb) && !IS_PPPOE_IP(skb))
+	if (!IS_IP(skb) && !IS_VLAN_IP(skb, state->net) &&
+	    !IS_PPPOE_IP(skb, state->net))
 		return NF_ACCEPT;
 
 	nf_bridge_pull_encap_header_rcsum(skb);
@@ -475,7 +479,7 @@ static unsigned int br_nf_pre_routing(void *priv,
 
 	if (!nf_bridge_alloc(skb))
 		return NF_DROP;
-	if (!setup_pre_routing(skb))
+	if (!setup_pre_routing(skb, state->net))
 		return NF_DROP;
 
 	nf_bridge = nf_bridge_info_get(skb);
@@ -498,7 +502,7 @@ static int br_nf_forward_finish(struct net *net, struct sock *sk, struct sk_buff
 	struct nf_bridge_info *nf_bridge = nf_bridge_info_get(skb);
 	struct net_device *in;
 
-	if (!IS_ARP(skb) && !IS_VLAN_ARP(skb)) {
+	if (!IS_ARP(skb) && !IS_VLAN_ARP(skb, net)) {
 
 		if (skb->protocol == htons(ETH_P_IP))
 			nf_bridge->frag_max_size = IPCB(skb)->frag_max_size;
@@ -553,9 +557,11 @@ static unsigned int br_nf_forward_ip(void *priv,
 	if (!parent)
 		return NF_DROP;
 
-	if (IS_IP(skb) || IS_VLAN_IP(skb) || IS_PPPOE_IP(skb))
+	if (IS_IP(skb) || IS_VLAN_IP(skb, state->net) ||
+	    IS_PPPOE_IP(skb, state->net))
 		pf = NFPROTO_IPV4;
-	else if (IS_IPV6(skb) || IS_VLAN_IPV6(skb) || IS_PPPOE_IPV6(skb))
+	else if (IS_IPV6(skb) || IS_VLAN_IPV6(skb, state->net) ||
+		 IS_PPPOE_IPV6(skb, state->net))
 		pf = NFPROTO_IPV6;
 	else
 		return NF_ACCEPT;
@@ -586,7 +592,7 @@ static unsigned int br_nf_forward_ip(void *priv,
 		skb->protocol = htons(ETH_P_IPV6);
 
 	NF_HOOK(pf, NF_INET_FORWARD, state->net, NULL, skb,
-		brnf_get_logical_dev(skb, state->in),
+		brnf_get_logical_dev(skb, state->in, state->net),
 		parent,	br_nf_forward_finish);
 
 	return NF_STOLEN;
@@ -605,18 +611,18 @@ static unsigned int br_nf_forward_arp(void *priv,
 		return NF_ACCEPT;
 	br = p->br;
 
-	if (!init_net.brnf.call_arptables &&
+	if (!state->net->brnf.call_arptables &&
 	    !br_opt_get(br, BROPT_NF_CALL_ARPTABLES))
 		return NF_ACCEPT;
 
 	if (!IS_ARP(skb)) {
-		if (!IS_VLAN_ARP(skb))
+		if (!IS_VLAN_ARP(skb, state->net))
 			return NF_ACCEPT;
 		nf_bridge_pull_encap_header(skb);
 	}
 
 	if (arp_hdr(skb)->ar_pln != 4) {
-		if (IS_VLAN_ARP(skb))
+		if (IS_VLAN_ARP(skb, state->net))
 			nf_bridge_push_encap_header(skb);
 		return NF_ACCEPT;
 	}
@@ -776,9 +782,11 @@ static unsigned int br_nf_post_routing(void *priv,
 	if (!realoutdev)
 		return NF_DROP;
 
-	if (IS_IP(skb) || IS_VLAN_IP(skb) || IS_PPPOE_IP(skb))
+	if (IS_IP(skb) || IS_VLAN_IP(skb, state->net) ||
+	    IS_PPPOE_IP(skb, state->net))
 		pf = NFPROTO_IPV4;
-	else if (IS_IPV6(skb) || IS_VLAN_IPV6(skb) || IS_PPPOE_IPV6(skb))
+	else if (IS_IPV6(skb) || IS_VLAN_IPV6(skb, state->net) ||
+		 IS_PPPOE_IPV6(skb, state->net))
 		pf = NFPROTO_IPV6;
 	else
 		return NF_ACCEPT;
@@ -1060,6 +1068,49 @@ static inline void br_netfilter_sysctl_default(struct netns_brnf *brnf)
 	brnf->pass_vlan_indev = 0;
 }
 
+static __net_init int br_netfilter_sysctl_init_net(struct net *net)
+{
+	struct ctl_table *table = brnf_table;
+
+	if (net_eq(net, &init_net))
+		return 0;
+
+	table = kmemdup(table, sizeof(brnf_table), GFP_KERNEL);
+	if (!table)
+		return -ENOMEM;
+
+	table[0].data = &net->brnf.call_arptables;
+	table[1].data = &net->brnf.call_iptables;
+	table[2].data = &net->brnf.call_ip6tables;
+	table[3].data = &net->brnf.filter_vlan_tagged;
+	table[4].data = &net->brnf.filter_pppoe_tagged;
+	table[5].data = &net->brnf.pass_vlan_indev;
+
+	net->brnf.ctl_hdr = register_net_sysctl(net, "net/bridge", table);
+	if (!net->brnf.ctl_hdr) {
+		kfree(table);
+		return -ENOMEM;
+	}
+
+	br_netfilter_sysctl_default(&net->brnf);
+
+	return 0;
+}
+
+static __net_exit void br_netfilter_sysctl_exit_net(struct net *net)
+{
+	if (net_eq(net, &init_net))
+		return;
+
+	unregister_net_sysctl_table(net->brnf.ctl_hdr);
+	kfree(net->brnf.ctl_hdr->ctl_table_arg);
+}
+
+static struct pernet_operations br_netfilter_sysctl_ops = {
+	.init = br_netfilter_sysctl_init_net,
+	.exit = br_netfilter_sysctl_exit_net,
+};
+
 static int __init br_netfilter_init(void)
 {
 	int ret;
@@ -1086,6 +1137,14 @@ static int __init br_netfilter_init(void)
 		unregister_pernet_subsys(&brnf_net_ops);
 		return -ENOMEM;
 	}
+
+	ret = register_pernet_subsys(&br_netfilter_sysctl_ops);
+	if (ret < 0) {
+		unregister_netdevice_notifier(&brnf_notifier);
+		unregister_pernet_subsys(&brnf_net_ops);
+		unregister_net_sysctl_table(init_net.brnf.ctl_hdr);
+		return ret;
+	}
 #endif
 	RCU_INIT_POINTER(nf_br_ops, &br_ops);
 	printk(KERN_NOTICE "Bridge firewalling registered\n");
@@ -1099,6 +1158,7 @@ static void __exit br_netfilter_fini(void)
 	unregister_pernet_subsys(&brnf_net_ops);
 #ifdef CONFIG_SYSCTL
 	unregister_net_sysctl_table(init_net.brnf.ctl_hdr);
+	unregister_pernet_subsys(&br_netfilter_sysctl_ops);
 #endif
 }
 
diff --git a/net/bridge/br_netfilter_ipv6.c b/net/bridge/br_netfilter_ipv6.c
index 0e63e5dc5ac4..e4e0c836c3f5 100644
--- a/net/bridge/br_netfilter_ipv6.c
+++ b/net/bridge/br_netfilter_ipv6.c
@@ -224,7 +224,7 @@ unsigned int br_nf_pre_routing_ipv6(void *priv,
 	nf_bridge = nf_bridge_alloc(skb);
 	if (!nf_bridge)
 		return NF_DROP;
-	if (!setup_pre_routing(skb))
+	if (!setup_pre_routing(skb, state->net))
 		return NF_DROP;
 
 	nf_bridge = nf_bridge_info_get(skb);
-- 
2.21.0

