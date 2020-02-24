Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C6216A6D8
	for <lists.bridge@lfdr.de>; Mon, 24 Feb 2020 14:07:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0AD56204EA;
	Mon, 24 Feb 2020 13:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oKyp6eMxKh8t; Mon, 24 Feb 2020 13:07:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id AB72A2002E;
	Mon, 24 Feb 2020 13:07:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 86B3CC0177;
	Mon, 24 Feb 2020 13:07:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 84A20C0177
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 13:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7255A204DE
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 13:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xOc+5hE-3zdT for <bridge@lists.linux-foundation.org>;
 Mon, 24 Feb 2020 13:07:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BDB2C2002E
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 13:07:39 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id d10so9992289ljl.9
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 05:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mChaMVvWNoAtZi1nGZc55W0b1jW6bAc+WtjlbD6LhY0=;
 b=TR5eC0USeU6oHi0apikX1wcNfk3mz1J8HDHbv0m2R5/3V7m8B7lB6BstgHCOw80Lhb
 v/wWZiuDFlyTWepMzzkvYTroUVlKIkhBky8nmVDqmUWQ0s963F45OgFicE7/TmqCh5KE
 fg9r761XKu3hAa/jWqyJ7vHmnEnc4uNjexd+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mChaMVvWNoAtZi1nGZc55W0b1jW6bAc+WtjlbD6LhY0=;
 b=Cf5hVXYZhDlYydel/cFZsfrBh8DvaPttjtny927nvS/wtMnuLHHKEVtb9FxaOlZ18z
 e8JWVNHfrkFKtpQQUSYyPAMGj4ZI+/KCzP4ad3ZAzzcgEeFCEVm9Kvai1UxW3CY/TnTs
 cYWFHuV1+LrVs7eLSEVYAUMcYZWMsgFwWrw5Zz4G5EHDSSzhp4EbiHdZ+clNqPjiqTkL
 K4zrAAiWFDdMQp7ZPxShvQAOjjvpIMcf7BrksqU6m3xRFPBspq3Hs7W5NeoeVudG2Wdt
 ZuJmx7rlYZ8JOxjY3x387c6ZShlIXe/EhxlNQlA1SCwVtVGP8b62YcPLLE84SERTVqGn
 qkVw==
X-Gm-Message-State: APjAAAVcKxhQEw4q/SJLMd1cK7wEhmjw3H5aKuCu7SW5yYIpmq51Ozru
 ESOocRzA89IfUUibNNvIr0CBNw==
X-Google-Smtp-Source: APXvYqy7enhY1nUpwuiC4uB6pGMocRAbpJn5qLa/q1pLmunxc7PhA7lTtXUbrWHp0F7Uyk96A8kfyg==
X-Received: by 2002:a2e:556:: with SMTP id 83mr30277524ljf.127.1582549657707; 
 Mon, 24 Feb 2020 05:07:37 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t21sm6187772ljh.14.2020.02.24.05.07.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 05:07:37 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 24 Feb 2020 15:07:15 +0200
Message-Id: <20200224130715.1446935-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <08a2e28b-fcf5-b26c-da75-97df67f51c7c@cumulusnetworks.com>
References: <08a2e28b-fcf5-b26c-da75-97df67f51c7c@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 syzbot+18c8b623c66fc198c493@syzkaller.appspotmail.com,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net] net: bridge: fix stale eth hdr pointer in
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

Reported-by: syzbot+18c8b623c66fc198c493@syzkaller.appspotmail.com
Fixes: 057658cb33fb ("bridge: suppress arp pkts on BR_NEIGH_SUPPRESS ports")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
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

