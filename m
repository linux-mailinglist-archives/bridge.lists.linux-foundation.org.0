Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6826282070
	for <lists.bridge@lfdr.de>; Mon,  5 Aug 2019 17:38:16 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8B5D8F98;
	Mon,  5 Aug 2019 15:37:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 32DD1F84
	for <bridge@lists.linux-foundation.org>;
	Mon,  5 Aug 2019 15:37:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7D86482F
	for <bridge@lists.linux-foundation.org>;
	Mon,  5 Aug 2019 15:37:53 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id f17so73441765wme.2
	for <bridge@lists.linux-foundation.org>;
	Mon, 05 Aug 2019 08:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=fZNiR8UXezexSeFBHI8i8I7EphOoZwS9xbXvpUZluFA=;
	b=VjyuYlwT1WDshbqkNomDWjPVcEcZY/AKBmTpWML/ifXseaW8mm/iJGm0dGZMebWjri
	mwusnrKaGn0YgVHY30Ytyv1iQdXew1I5B/6TX10A3abpg7U6Dpj0X41+LmU4c5HSMUtK
	iPGSw87gjs7es7OJUsjYISsjchU7Mlb922iA2CbMHQlgnKLdl5RWS7C8TjhZaLHPM4oD
	ZrEFE/FmT5DT8ZZClboRWz0F7aCIosHIVzcrz9f6bxKe1gF4gls5U6lwJDEvgY+iePVL
	L66h4icZgdnmNO/lqqqd/H76wplhqXS9cwxZVlUJgr1nhi4xdeJA9tsYjUt69vmn46cc
	2bRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=fZNiR8UXezexSeFBHI8i8I7EphOoZwS9xbXvpUZluFA=;
	b=PtBqyYZOH6zXWm/tRZIlHCP6qiQZth1/O2/HBdNciW+ApLqaHPViX4YhCZooYzWufY
	SLUAvHAT2IyP6Zi9vGCYsJN+VLsh7B8SIlZ/CHi99K645MHeJ9RSu5Bo4StBsR/hpnPV
	dVglxyNstl6uLt4brFhbK8zqgKIBO+zzcqfg7Y/QJy/4r3WwnU1efRX2NipDUOO7Dx51
	skSU+iWrO34tTQxt6Qd5whOZ4kfgq+zoSo4t5zW+ehgBkp8YlfUS1Rus7Txp4ngBf2pV
	pHMkpDN5CfYP7dRJa6sjaY9OrBf6DrDH7+Jdx2pyQfOAntscTkM5wgja5Ub7KHzB2VIF
	abyQ==
X-Gm-Message-State: APjAAAXTdNRVT+MFn0o2uOxHox8h8sosf/S8iYCV4LeqHYV+UE4Xzfgu
	J+E+fuFziNH4UmbZFPzdYZs=
X-Google-Smtp-Source: APXvYqwlQ/ucpowqiFox5fF8mCiV686ImXEMDbsUlYc5CE2ocm/qL6O/hn6E4U/DAcu/35nt7c89sg==
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr19387075wme.103.1565019472124;
	Mon, 05 Aug 2019 08:37:52 -0700 (PDT)
Received: from tycho.fritz.box ([188.192.146.8])
	by smtp.gmail.com with ESMTPSA id
	z5sm60816364wmf.48.2019.08.05.08.37.51
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 05 Aug 2019 08:37:51 -0700 (PDT)
From: Zahari Doychev <zahari.doychev@linux.com>
To: netdev@vger.kernel.org
Date: Mon,  5 Aug 2019 17:37:40 +0200
Message-Id: <20190805153740.29627-2-zahari.doychev@linux.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805153740.29627-1-zahari.doychev@linux.com>
References: <20190805153740.29627-1-zahari.doychev@linux.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: makita.toshiaki@lab.ntt.co.jp, jiri@resnulli.us,
	nikolay@cumulusnetworks.com, simon.horman@netronome.com,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	Zahari Doychev <zahari.doychev@linux.com>, jhs@mojatatu.com,
	dsahern@gmail.com, xiyou.wangcong@gmail.com,
	johannes@sipsolutions.net, ast@plumgrid.com
Subject: [Bridge] [PATCH v2 1/1] net: bridge: use mac_len in bridge
	forwarding
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

The bridge code cannot forward packets from various paths that set up the
SKBs in different ways. Some of these packets get corrupted during the
forwarding as not always is just ETH_HLEN pulled at the front. This happens
e.g. when VLAN tags are pushed bu using tc act_vlan on ingress.

The problem is fixed by using skb->mac_len instead of ETH_HLEN, which makes
sure that the skb headers are correctly restored. This usually does not
change anything, execpt the local bridge transmits which now need to set
the skb->mac_len correctly in br_dev_xmit, as well as the broken case noted
above.

Signed-off-by: Zahari Doychev <zahari.doychev@linux.com>
---
 net/bridge/br_device.c  | 3 ++-
 net/bridge/br_forward.c | 4 ++--
 net/bridge/br_vlan.c    | 3 ++-
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 681b72862c16..aeb77ff60311 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -55,8 +55,9 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	BR_INPUT_SKB_CB(skb)->frag_max_size = 0;
 
 	skb_reset_mac_header(skb);
+	skb_reset_mac_len(skb);
 	eth = eth_hdr(skb);
-	skb_pull(skb, ETH_HLEN);
+	skb_pull(skb, skb->mac_len);
 
 	if (!br_allowed_ingress(br, br_vlan_group_rcu(br), skb, &vid))
 		goto out;
diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 86637000f275..edb4f3533f05 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -32,7 +32,7 @@ static inline int should_deliver(const struct net_bridge_port *p,
 
 int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb)
 {
-	skb_push(skb, ETH_HLEN);
+	skb_push(skb, skb->mac_len);
 	if (!is_skb_forwardable(skb->dev, skb))
 		goto drop;
 
@@ -94,7 +94,7 @@ static void __br_forward(const struct net_bridge_port *to,
 		net = dev_net(indev);
 	} else {
 		if (unlikely(netpoll_tx_running(to->br->dev))) {
-			skb_push(skb, ETH_HLEN);
+			skb_push(skb, skb->mac_len);
 			if (!is_skb_forwardable(skb->dev, skb))
 				kfree_skb(skb);
 			else
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 021cc9f66804..88244c9cc653 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -466,13 +466,14 @@ static bool __allowed_ingress(const struct net_bridge *br,
 		/* Tagged frame */
 		if (skb->vlan_proto != br->vlan_proto) {
 			/* Protocol-mismatch, empty out vlan_tci for new tag */
-			skb_push(skb, ETH_HLEN);
+			skb_push(skb, skb->mac_len);
 			skb = vlan_insert_tag_set_proto(skb, skb->vlan_proto,
 							skb_vlan_tag_get(skb));
 			if (unlikely(!skb))
 				return false;
 
 			skb_pull(skb, ETH_HLEN);
+			skb_reset_network_header(skb);
 			skb_reset_mac_len(skb);
 			*vid = 0;
 			tagged = false;
-- 
2.22.0

