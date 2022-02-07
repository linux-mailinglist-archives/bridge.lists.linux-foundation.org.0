Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4664B3AC1
	for <lists.bridge@lfdr.de>; Sun, 13 Feb 2022 11:14:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E1A060C03;
	Sun, 13 Feb 2022 10:14:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kyZ1VCi4hL1p; Sun, 13 Feb 2022 10:14:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A6D8660BC1;
	Sun, 13 Feb 2022 10:14:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A744AC0070;
	Sun, 13 Feb 2022 10:14:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4BE6FC000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C186814B6
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vfX1gZwj-dSQ for <bridge@lists.linux-foundation.org>;
 Mon,  7 Feb 2022 10:08:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAA4B81339
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:21 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id e17so18766495ljk.5
 for <bridge@lists.linux-foundation.org>; Mon, 07 Feb 2022 02:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=s5p54l/5ghXdgSmZcw68jguzPsn8MNmzYbYS1HcBzhQ=;
 b=RzMbPy1Ln5QC6ew2bpQt2fFy5Gg4iv7JtdI3IUXtfqISS/HnN0e86EcT7Di/nEKMxE
 1NadGpBz6dm7Q4yJ5wejlLcbT2YiydWbY0KrhlqgdPm/o3bPUTm+yqbvl0nNIqjwoaD2
 SGBnI8aDBDsezm963aQhsje0reUXEAc0i9BHqFs6iUaa5NdDNOZ6kHeH+LqpXjDpUkE+
 5Z+l92urz0maruhjX3vzEGZf+tks0CM3tCNjn9Dzi0C+1ImRdLzgDv79IzTC0DzPlTs9
 eZNh5g0ZdlI8FpmT4zgLHyw1Twr3mcA0Vd2WzQUWxekdtA7YXTx6O4RNsztpkypFklQP
 sPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=s5p54l/5ghXdgSmZcw68jguzPsn8MNmzYbYS1HcBzhQ=;
 b=XFu6YSW5A/MGJBma3D8sjI7wkGzHfNjHqsRbfAq3ac9QxO2fvwAAf8JM/qlHr+ey+j
 cdZvAXLx8kyxVis69//dGlT8wcean0hh2KN+NVh0y5AzMG+he4gWAsIEUDu7GksbvYrc
 9PRZJuVrdRSZPNeQKVp0w7X017TvI9xh9sJ6tefYbyBfEt1JXD1jpAfhde4Y11pyFv54
 Ns06b/cPMeEMcBt2EP06fIuGgXNRjCoGF09kzCzG82jD6g2Gkkzu2uUDyCsOauDDa5C6
 QUsqigz72Pll/CCAiiyMxBa5J862dbWgRn6KRu/NGVkMAiWf1x8DC3h7xNUySOTMnLI/
 lHFA==
X-Gm-Message-State: AOAM533lTBLeuvdUGfuum+vVdgOukXO1sjLdNXN6tIhXX9CSRA5qle6/
 ChirzZmDqdmbaD/v7JKqnZ8=
X-Google-Smtp-Source: ABdhPJxMQy4Pq8xSBb2Kxdy0UnyMlVEthzWHERuU3S/+zvpQY031kDEBJGyRzezNzLjiKs+NiMTyJg==
X-Received: by 2002:a2e:5810:: with SMTP id m16mr8134875ljb.261.1644228499706; 
 Mon, 07 Feb 2022 02:08:19 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id k12sm1546034ljh.45.2022.02.07.02.08.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 02:08:19 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon,  7 Feb 2022 11:07:42 +0100
Message-Id: <20220207100742.15087-5-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 13 Feb 2022 10:14:02 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH net-next 4/4] net: bridge: Refactor bridge port in
	locked mode to use jump labels
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

As the locked mode feature is in the hot path of the bridge modules
reception of packets, it needs to be refactored to use jump labels
for optimization.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 net/bridge/br_input.c   | 22 ++++++++++++++++++----
 net/bridge/br_netlink.c |  6 ++++++
 net/bridge/br_private.h |  2 ++
 3 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
index 469e3adbce07..6fc428d6bac5 100644
--- a/net/bridge/br_input.c
+++ b/net/bridge/br_input.c
@@ -23,6 +23,18 @@
 #include "br_private.h"
 #include "br_private_tunnel.h"
 
+static struct static_key_false br_input_locked_port_feature;
+
+void br_input_locked_port_add(void)
+{
+	static_branch_inc(&br_input_locked_port_feature);
+}
+
+void br_input_locked_port_remove(void)
+{
+	static_branch_dec(&br_input_locked_port_feature);
+}
+
 static int
 br_netif_receive_skb(struct net *net, struct sock *sk, struct sk_buff *skb)
 {
@@ -91,10 +103,12 @@ int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb
 				&state, &vlan))
 		goto out;
 
-	if (p->flags & BR_PORT_LOCKED) {
-		fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
-		if (!(fdb_entry && fdb_entry->dst == p))
-			goto drop;
+	if (static_branch_unlikely(&br_input_locked_port_feature)) {
+		if (p->flags & BR_PORT_LOCKED) {
+			fdb_entry = br_fdb_find_rcu(br, eth_hdr(skb)->h_source, vid);
+			if (!(fdb_entry && fdb_entry->dst == p))
+				goto drop;
+		}
 	}
 
 	nbp_switchdev_frame_mark(p, skb);
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 7d4432ca9a20..e3dbe9fed75c 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -860,6 +860,7 @@ static int br_set_port_state(struct net_bridge_port *p, u8 state)
 static void br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
 			     int attrtype, unsigned long mask)
 {
+	bool locked = p->flags & BR_PORT_LOCKED;
 	if (!tb[attrtype])
 		return;
 
@@ -867,6 +868,11 @@ static void br_set_port_flag(struct net_bridge_port *p, struct nlattr *tb[],
 		p->flags |= mask;
 	else
 		p->flags &= ~mask;
+
+	if ((p->flags & BR_PORT_LOCKED) && !locked)
+		br_input_locked_port_add();
+	if (!(p->flags & BR_PORT_LOCKED) && locked)
+		br_input_locked_port_remove();
 }
 
 /* Process bridge protocol info on port */
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 2661dda1a92b..0ec3ef897978 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -832,6 +832,8 @@ void br_manage_promisc(struct net_bridge *br);
 int nbp_backup_change(struct net_bridge_port *p, struct net_device *backup_dev);
 
 /* br_input.c */
+void br_input_locked_port_add(void);
+void br_input_locked_port_remove(void);
 int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb);
 rx_handler_func_t *br_get_rx_handler(const struct net_device *dev);
 
-- 
2.30.2

