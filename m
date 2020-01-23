Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C1B146909
	for <lists.bridge@lfdr.de>; Thu, 23 Jan 2020 14:28:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80AA286A44;
	Thu, 23 Jan 2020 13:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZNetbaCgm_T; Thu, 23 Jan 2020 13:28:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0952686A34;
	Thu, 23 Jan 2020 13:28:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5625C0174;
	Thu, 23 Jan 2020 13:28:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F6FAC0174
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EEEEA22091
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TY3FZSf5iY1o for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jan 2020 13:28:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 97B8320412
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 13:28:18 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id l18so2301560lfc.1
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 05:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mtj5BWUVGyinNX7wvC73dcZuNmbbOVj5imGPpnqwC7s=;
 b=UZd2c5nyGY2rKI/2SUt5BXQqvmIHkkRf+jsPzmIMbnYtgP5mjuvoRKkMSiclljwFWD
 8nH8mAzPwXXUk5Eg3xbzAcJmiUdIgN9NOiJPCkTfk+6TLJ8v21c15H+ymNSKNQDy2oPW
 O7tnKIJ5jSJMkKsN07BcWhSod4qIB/lo1+deE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mtj5BWUVGyinNX7wvC73dcZuNmbbOVj5imGPpnqwC7s=;
 b=ULVEZgo/86aeZm5em6905MtNl3V7K3rpjdNmhw2MTYUXDxdmpdpUEpZV5d64KkmGgK
 Q5FanAB8j865K0j5+tUl2ft2W+EetMp9+IHmRyvk1NFEn8SW+hL+f//H7dJ3IBq0WZEy
 7pIZT2RF0793zGnMt1CxHJgAbGMa1zgBPTx2Jkp2jgqiEmZshFk6ttZyGXZgUd+9g96z
 QDgLmRDXXfBfotjAAt6Z8Ovj4RLqMI1kH22FYeyahbBEOIeWdexhX6IHND096+9dYVjR
 WtjHvoKnGMea8WvxnEibXe9uzzqdMUcsOAhv/bnByOi8+LDqA4yYdoosgRU0cKNZQ06h
 W37A==
X-Gm-Message-State: APjAAAW9TaaRPws+Cj0qWrf6hddQrAhU3XQ/Ba9V/L1pWWCYalx//r6Q
 qy8GgSZgxfE3NSAicKUbliW4Zw==
X-Google-Smtp-Source: APXvYqyGSQMTA1c6s5oE1M0N0X8tb3IVqAOnwYf4Iapt4+LKCWPHBlrTKq5oaLfD4IhvG/8vbOgfxA==
X-Received: by 2002:a19:4849:: with SMTP id v70mr4779278lfa.30.1579786096460; 
 Thu, 23 Jan 2020 05:28:16 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b20sm1238571ljp.20.2020.01.23.05.28.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 05:28:15 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Thu, 23 Jan 2020 15:28:04 +0200
Message-Id: <20200123132807.613-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200123132807.613-1-nikolay@cumulusnetworks.com>
References: <20200123132807.613-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 1/4] net: bridge: check port state before
	br_allowed_egress
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

If we make sure that br_allowed_egress is called only when we have
BR_STATE_FORWARDING state then we can avoid a test later when we add
per-vlan state.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_forward.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 86637000f275..7629b63f6f30 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -25,7 +25,7 @@ static inline int should_deliver(const struct net_bridge_port *p,
 
 	vg = nbp_vlan_group_rcu(p);
 	return ((p->flags & BR_HAIRPIN_MODE) || skb->dev != p->dev) &&
-		br_allowed_egress(vg, skb) && p->state == BR_STATE_FORWARDING &&
+		p->state == BR_STATE_FORWARDING && br_allowed_egress(vg, skb) &&
 		nbp_switchdev_allowed_egress(p, skb) &&
 		!br_skb_isolated(p, skb);
 }
-- 
2.21.0

