Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F79F16ABFD
	for <lists.bridge@lfdr.de>; Mon, 24 Feb 2020 17:46:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B12085413;
	Mon, 24 Feb 2020 16:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7hfFPCRRWMq2; Mon, 24 Feb 2020 16:46:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 881E584581;
	Mon, 24 Feb 2020 16:46:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6473EC0177;
	Mon, 24 Feb 2020 16:46:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 67A82C0177
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 16:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5570020498
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 16:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QCHf99M9lHBa for <bridge@lists.linux-foundation.org>;
 Mon, 24 Feb 2020 16:46:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id B115F203F4
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 16:46:33 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id x14so10823322ljd.13
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 08:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KlzZTw/zsM+mHRD9C+w/KLZyZ8oyoiKmmQWyQ1wQFKo=;
 b=cb7xwylQmtYWxawQ959uekX5jF4nO8RFP5CCSKs24JW2oM2ZOS1KCQO4AHRiiG/Kth
 60wZgQXQIjDRF198UipR/GSeQnI76tCZ/2jBF+jf3hCokwAIUFnkKCJlvWXqKdFrrG18
 mDZ7fcSZTzvqczeSPB8QZyioVKIxjotTCoGAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KlzZTw/zsM+mHRD9C+w/KLZyZ8oyoiKmmQWyQ1wQFKo=;
 b=dTfGRmvAyoXBShwcmb8RK1RClJCywSfaHmMBWkNZY6AsJg/x94zugQujzBSO/RQIXa
 I2NK3/oOFZZ9Ee7V3K2oZBW7He4nXLx/BA8KDHdDMzhcIWQYDphPdHj7fHbWS3U+18Wx
 evriZhGZVHvtKWfmRDEXiM/6s/hqO1NTwqUI4R7BIsm1ZfHEnbCG6b3aGQxy9kNH3yIu
 6FEX+aJIDMh/mR6RV19JdgTe0g+RBjLwrOQuVpKCdvbiDAzMuXWrowCp/FLHzptSfwFL
 iV6i0kxcH7UQcTzLRxsr9Qu3Grtsd/EFYAipWNVkzgE4F/puOPpMPTOKN1VCR0xHpxXO
 yyvA==
X-Gm-Message-State: APjAAAVx/wD7oLZzZ/OzU1+L2FfIcDfNwzD9+8mEupNPOKPLYWKETE8c
 jZ1pSUDpMAIF/rRuNe0zept5/g==
X-Google-Smtp-Source: APXvYqxlSlQyErPFoueeAe4DEhVEzzr5u63/LYIqMtSyhTRf6tQ4/pdE7jVgVPtTM3NqOBKJRakyqw==
X-Received: by 2002:a05:651c:1a2:: with SMTP id
 c2mr32127323ljn.79.1582562791188; 
 Mon, 24 Feb 2020 08:46:31 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id i67sm3804654lfi.11.2020.02.24.08.46.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:46:30 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 24 Feb 2020 18:46:22 +0200
Message-Id: <20200224164622.1472051-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <83cadec7-d659-cf2a-c0c0-a85d2f6503bc@cumulusnetworks.com>
References: <83cadec7-d659-cf2a-c0c0-a85d2f6503bc@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net v2] net: bridge: fix stale eth hdr pointer in
	br_dev_xmit
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

In br_dev_xmit() we perform vlan filtering in br_allowed_ingress() but
if the packet has the vlan header inside (e.g. bridge with disabled
tx-vlan-offload) then the vlan filtering code will use skb_vlan_untag()
to extract the vid before filtering which in turn calls pskb_may_pull()
and we may end up with a stale eth pointer. Moreover the cached eth header
pointer will generally be wrong after that operation. Remove the eth header
caching and just use eth_hdr() directly, the compiler does the right thing
and calculates it only once so we don't lose anything.

Fixes: 057658cb33fb ("bridge: suppress arp pkts on BR_NEIGH_SUPPRESS ports")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
v2: remove syzbot's reported-by tag, this seems to be a different bug

 net/bridge/br_device.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index dc3d2c1dd9d5..0e3dbc5f3c34 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -34,7 +34,6 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	const struct nf_br_ops *nf_ops;
 	u8 state = BR_STATE_FORWARDING;
 	const unsigned char *dest;
-	struct ethhdr *eth;
 	u16 vid = 0;
 
 	rcu_read_lock();
@@ -54,15 +53,14 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	BR_INPUT_SKB_CB(skb)->frag_max_size = 0;
 
 	skb_reset_mac_header(skb);
-	eth = eth_hdr(skb);
 	skb_pull(skb, ETH_HLEN);
 
 	if (!br_allowed_ingress(br, br_vlan_group_rcu(br), skb, &vid, &state))
 		goto out;
 
 	if (IS_ENABLED(CONFIG_INET) &&
-	    (eth->h_proto == htons(ETH_P_ARP) ||
-	     eth->h_proto == htons(ETH_P_RARP)) &&
+	    (eth_hdr(skb)->h_proto == htons(ETH_P_ARP) ||
+	     eth_hdr(skb)->h_proto == htons(ETH_P_RARP)) &&
 	    br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED)) {
 		br_do_proxy_suppress_arp(skb, br, vid, NULL);
 	} else if (IS_ENABLED(CONFIG_IPV6) &&
-- 
2.24.1

