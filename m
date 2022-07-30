Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DFE586758
	for <lists.bridge@lfdr.de>; Mon,  1 Aug 2022 12:25:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47BFE403E9;
	Mon,  1 Aug 2022 10:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47BFE403E9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=e8obaoeK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IRmkQFYUBL8Y; Mon,  1 Aug 2022 10:25:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8FF00400FC;
	Mon,  1 Aug 2022 10:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FF00400FC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B6813C002D;
	Mon,  1 Aug 2022 10:25:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A4CECC002D
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72BD4813A3
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72BD4813A3
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=e8obaoeK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WgheH1P613uh for <bridge@lists.linux-foundation.org>;
 Sat, 30 Jul 2022 16:03:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8869C8139F
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8869C8139F
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:52 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id f14so5727720qkm.0
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 09:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zRKN74TQjwEeR1MXdcsMHUkpi1gfgBWwqBLJHY0W5pg=;
 b=e8obaoeKKLn4nDRJrPnpp+Nx91jHsh+5jGuLA3o7/VXte2H4xHqwCTGOn7N/ElemPK
 MFg6uCb2jlRoLX9GgA24VUIL1lnmH4D+w+C33UK9+pNXxer39+llNCC+Wr02JgR2Llw3
 Ran1qCCSgTh1O1r7SV95sNfZwjKyeZ1ogrlIUio3i9j98DyrUGqHbDhQU8GOD58+m2Kd
 /j5dUOQpykwJ/1eOkbrFTOeEdXCow4cXUi0V5K19/nkBL8e27mePsdpTwmt0yz6Vn8bS
 O+pKMBzosX+WPPzrYaxvj7oNz1b58i+aAP980qMehS8gGMkahcHDtrfQNj1DfE41DY6n
 f8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zRKN74TQjwEeR1MXdcsMHUkpi1gfgBWwqBLJHY0W5pg=;
 b=0/66RSWY19jdzXC2GUIT9ivGzaF0+1D7ISmRENlArw1xx1T9VFqc/UeY7FEeLwy1kD
 zNshuMSCWkUajdV73gzVE3/ruZTjU9ensISEBduLnR6WH26VY2RCdPgZ7gEKof+yqGAh
 CqaqJG325g/7SUq6LI6Fcs7vXEoVXNAEgNShhI2wBcp3sOA779BPy9Pa4Ck/8kL3Pzdx
 McI8OkgvZFH5pTQ215FdLL6QcEJDpMOA0f7zYFKHKzGwnW2+IWDoerqnODTGD0hzo+rg
 T20YPnma2vTYMIxs2H+5qJV+dLU9bhTMS045FgubjQVaa5eGy7AGqH9rDr0HOyP6FXee
 C6wg==
X-Gm-Message-State: AJIora9oTxiOB4cqiXdk9CSxUw8ymwcx2+tcJMV0ZzGISaKk35gotDuX
 MQQVKc2mTZ3JStxX84nfzAnfv0/etxn1Xw==
X-Google-Smtp-Source: AGRyM1tQF4ZDhWXmr4879jKeaqsCfxS0+QIrYK0Pb8ySlm3tndMJl7qWrMdy9M/hl4hg1/I5gQJxBw==
X-Received: by 2002:a05:620a:2453:b0:6b6:104a:b9b4 with SMTP id
 h19-20020a05620a245300b006b6104ab9b4mr6449215qkn.713.1659197031240; 
 Sat, 30 Jul 2022 09:03:51 -0700 (PDT)
Received: from ada ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 h3-20020a05620a400300b006b5da3c8d81sm4986651qko.73.2022.07.30.09.03.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Jul 2022 09:03:50 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: aroulin@nvidia.com
Date: Sat, 30 Jul 2022 12:03:31 -0400
Message-Id: <2b09fbacde7e8818f4ada4829818fdf015e36b58.1659195179.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
References: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 01 Aug 2022 10:25:24 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next 2/3] net: 8021q: fix bridge binding
	behavior for vlan interfaces
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

Currently, when one creates a vlan interface with the bridge binding
flag disabled (using ip link add... command) and then enables the
bridge binding flag afterwards (using ip link set... command), the
second command has no effect. In other words, the vlan interface does
not follow the status of the ports in its vlan.

The root cause of this problem is as follows. The correct bridge
binding behavior depends on two flags being set: a per vlan interface
flag (VLAN_FLAG_BRIDGE_BINDING) and global per bridge flag
(BROPT_VLAN_BRIDGE_BINDING); the ip link set command calls
vlan_dev_change_flags function, which sets only the per vlan interface
flag.

The correct behavior is to set/unset per bridge flag as well,
depending on whether there are other vlan interfaces with bridge
binding flags set. The logic for this behavior is already captured in
br_vlan_upper_change function. This patch fixes the bridge binding
behavior by calling the br_vlan_upper_change function whenever the per
interface flag is changed via vlan_dev_change_flags function.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
Reviewed-by: Andy Roulin <aroulin@nvidia.com>
Reviewed-by: Roopa Prabhu <roopa@nvidia.com>
---
 net/8021q/vlan.h     |  2 +-
 net/8021q/vlan_dev.c | 21 ++++++++++++++++++---
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/net/8021q/vlan.h b/net/8021q/vlan.h
index 5eaf38875554..71947cdcfaaa 100644
--- a/net/8021q/vlan.h
+++ b/net/8021q/vlan.h
@@ -130,7 +130,7 @@ void vlan_dev_set_ingress_priority(const struct net_device *dev,
 int vlan_dev_set_egress_priority(const struct net_device *dev,
 				 u32 skb_prio, u16 vlan_prio);
 void vlan_dev_free_egress_priority(const struct net_device *dev);
-int vlan_dev_change_flags(const struct net_device *dev, u32 flag, u32 mask);
+int vlan_dev_change_flags(struct net_device *dev, u32 flag, u32 mask);
 void vlan_dev_get_realdev_name(const struct net_device *dev, char *result,
 			       size_t size);
 
diff --git a/net/8021q/vlan_dev.c b/net/8021q/vlan_dev.c
index 035812b0461c..93680bac60b3 100644
--- a/net/8021q/vlan_dev.c
+++ b/net/8021q/vlan_dev.c
@@ -30,6 +30,7 @@
 #include "vlan.h"
 #include "vlanproc.h"
 #include <linux/if_vlan.h>
+#include <linux/if_bridge.h>
 #include <linux/netpoll.h>
 
 /*
@@ -211,10 +212,11 @@ int vlan_dev_set_egress_priority(const struct net_device *dev,
 /* Flags are defined in the vlan_flags enum in
  * include/uapi/linux/if_vlan.h file.
  */
-int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
+int vlan_dev_change_flags(struct net_device *dev, u32 flags, u32 mask)
 {
 	struct vlan_dev_priv *vlan = vlan_dev_priv(dev);
 	u32 old_flags = vlan->flags;
+	struct net_device *br_dev;
 
 	if (mask & ~(VLAN_FLAG_REORDER_HDR | VLAN_FLAG_GVRP |
 		     VLAN_FLAG_LOOSE_BINDING | VLAN_FLAG_MVRP |
@@ -223,19 +225,32 @@ int vlan_dev_change_flags(const struct net_device *dev, u32 flags, u32 mask)
 
 	vlan->flags = (old_flags & ~mask) | (flags & mask);
 
-	if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
+	if (!netif_running(dev))
+		return 0;
+
+	if ((vlan->flags ^ old_flags) & VLAN_FLAG_GVRP) {
 		if (vlan->flags & VLAN_FLAG_GVRP)
 			vlan_gvrp_request_join(dev);
 		else
 			vlan_gvrp_request_leave(dev);
 	}
 
-	if (netif_running(dev) && (vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
+	if ((vlan->flags ^ old_flags) & VLAN_FLAG_MVRP) {
 		if (vlan->flags & VLAN_FLAG_MVRP)
 			vlan_mvrp_request_join(dev);
 		else
 			vlan_mvrp_request_leave(dev);
 	}
+
+	if ((vlan->flags ^ old_flags) & VLAN_FLAG_BRIDGE_BINDING &&
+	    netif_is_bridge_port(dev)) {
+		br_dev = vlan->real_dev;
+		if (vlan->flags & VLAN_FLAG_BRIDGE_BINDING)
+			br_vlan_upper_change(br_dev, dev, true);
+		else
+			br_vlan_upper_change(br_dev, dev, false);
+	}
+
 	return 0;
 }
 
-- 
2.25.1

