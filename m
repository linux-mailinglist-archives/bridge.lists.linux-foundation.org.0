Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A66B2356F2
	for <lists.bridge@lfdr.de>; Sun,  2 Aug 2020 14:50:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB13485C19;
	Sun,  2 Aug 2020 12:50:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avYzkp3vdrpJ; Sun,  2 Aug 2020 12:50:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5827285C00;
	Sun,  2 Aug 2020 12:50:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B79CC004C;
	Sun,  2 Aug 2020 12:50:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 360D0C004C
 for <bridge@lists.linux-foundation.org>; Sun,  2 Aug 2020 12:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1937587F92
 for <bridge@lists.linux-foundation.org>; Sun,  2 Aug 2020 12:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EI7V4i-LzLMw for <bridge@lists.linux-foundation.org>;
 Sun,  2 Aug 2020 12:50:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 358C887FA4
 for <bridge@lists.linux-foundation.org>; Sun,  2 Aug 2020 12:50:48 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id o18so10940764eds.10
 for <bridge@lists.linux-foundation.org>; Sun, 02 Aug 2020 05:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x10urBDzl/1yXhZ8GCaxKLSPxTgXwMHg2Y0MjkjC5Qs=;
 b=eb6qJ9msfsxDPfqxmJe+ctSp7WX2cpWSq5V+Vim2tYDvkRtrfpibqTlwyk7YXW7KUF
 fxHPJ3UtznwDuY7xShHVE3BaqDw8yqWyrUoseoN7FqMXrglt12ruFKfvm/Pc9vrutITQ
 wN240TJGQZ6bBxGMPdxgkKICikQEieaqses2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x10urBDzl/1yXhZ8GCaxKLSPxTgXwMHg2Y0MjkjC5Qs=;
 b=IptbynkhNGpuYIwp1Fn+3B02yJ9pKotUmrK1YPI5lkYQxJcmXtPWOawDYdA3s6Sa+Y
 Atp5lxB3jDgquaucFTTVjltY05FcrSPfb2X9H4wJhB1FbMeNDABWKlkatlxZ0OQR38bO
 FN314eJ3yXuyb1KELrGVBd2DsNNf0OMARkfW8xyYgsyxAE5lYBDyoIrBFt8rNZjnmU5N
 +bWQKf+Gzxp95jmAJ1l+T9igeD90YQRTJtRx/e8JhwXEe+jtNuCpGAtqt37K/LhJsFWa
 1IzmlCUBkq+ASCndP8MfhIIlVwThlpERfcO76HBRWWao5K+QM5j69q/GZn0clxsMa6A/
 Z9YQ==
X-Gm-Message-State: AOAM533HdOwhRM5D/Pv+4HKKwbsABHMwilZ3UzS+V8az+dA89c4b6L5x
 HUMf0iGB3Dp4EkpMCIwvFDl1wA==
X-Google-Smtp-Source: ABdhPJzOwTgsFFdDzGh08UM7ypKAKtHe3igoMWEAvrLnI/jXSyAwVlEfmLf3MNZD7KXreu3SzYxrZg==
X-Received: by 2002:aa7:cf19:: with SMTP id a25mr11334050edy.67.1596372646378; 
 Sun, 02 Aug 2020 05:50:46 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x21sm13382416edq.84.2020.08.02.05.50.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Aug 2020 05:50:45 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sun,  2 Aug 2020 15:50:39 +0300
Message-Id: <20200802125039.648571-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <39736ed8-8565-ab64-5163-da6f2acba68a@cumulusnetworks.com>
References: <39736ed8-8565-ab64-5163-da6f2acba68a@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, dsahern@gmail.com
Subject: [Bridge] [PATCH net v2] net: bridge: clear skb private space on
	bridge dev xmit
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

We need to clear all of the bridge private skb variables as they can be
stale due to the packet having skb->cb initialized earlier and then
transmitted through the bridge device. Similar memset is already done on
bridge's input. We've seen cases where proxyarp_replied was 1 on routed
multicast packets transmitted through the bridge to ports with neigh
suppress and were getting dropped. Same thing can in theory happen with the
port isolation bit as well. We clear only the struct part after the bridge
pointer (currently 8 bytes) since the pointer is always set later.
We can now remove the redundant zeroing of frag_max_size.
Also add a BUILD_BUG_ON to make sure we catch any movement of the bridge
dev pointer.

Fixes: 821f1b21cabb ("bridge: add new BR_NEIGH_SUPPRESS port flag to suppress arp and nd flood")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
v2: clear only the second half of the struct which contains the
fields that are used in various bridge parts, this replaced the rep stos
instruction with a single movq on my x86 and in general reduces
the clear area to 8 bytes, and in addition we can remove the now
redundant zeroing of frag_max_size as it will be already cleared,
add a build_bug_on to make sure we catch any movement of the bridge
dev pointer

 net/bridge/br_device.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 8c7b78f8bc23..4f7880c99d3c 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -36,6 +36,12 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	const unsigned char *dest;
 	u16 vid = 0;
 
+	/* clear all private fields after the bridge dev pointer */
+	BUILD_BUG_ON(offsetof(struct br_input_skb_cb, brdev) > 0);
+	memset(skb->cb + sizeof(struct net_device *),
+	       0,
+	       sizeof(struct br_input_skb_cb) - sizeof(struct net_device *));
+
 	rcu_read_lock();
 	nf_ops = rcu_dereference(nf_br_ops);
 	if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
@@ -50,7 +56,6 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	br_switchdev_frame_unmark(skb);
 	BR_INPUT_SKB_CB(skb)->brdev = dev;
-	BR_INPUT_SKB_CB(skb)->frag_max_size = 0;
 
 	skb_reset_mac_header(skb);
 	skb_pull(skb, ETH_HLEN);
-- 
2.25.4

