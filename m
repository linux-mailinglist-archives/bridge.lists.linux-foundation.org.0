Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F2A4B3AC6
	for <lists.bridge@lfdr.de>; Sun, 13 Feb 2022 11:14:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 671E7823F6;
	Sun, 13 Feb 2022 10:14:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUan72q4mmHl; Sun, 13 Feb 2022 10:14:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3EF9B81501;
	Sun, 13 Feb 2022 10:14:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CCC14C007A;
	Sun, 13 Feb 2022 10:14:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B0205C000B
 for <bridge@lists.linux-foundation.org>; Wed,  9 Feb 2022 13:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACFAA60B67
 for <bridge@lists.linux-foundation.org>; Wed,  9 Feb 2022 13:06:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BGyFaNQoy8fp for <bridge@lists.linux-foundation.org>;
 Wed,  9 Feb 2022 13:06:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A38460B4C
 for <bridge@lists.linux-foundation.org>; Wed,  9 Feb 2022 13:06:21 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id o2so4102819lfd.1
 for <bridge@lists.linux-foundation.org>; Wed, 09 Feb 2022 05:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=inCVYeDu1fAept4QEpKoCkDC4Yb03qxpv1FlXIUns7I=;
 b=M6fijd92xKG7v+VrkmSvHMaDtbq/nAz0qMuwwXeK3zx2d2oUzm88mnnwcn7kLCBmZ9
 ZS8tlRUaikG/pKqHaot+sA8vRCtwngbdlwqkfqEjGwau30qHA0DW2AUL4mh8hk0PP38J
 t67jVBU0dJ1T4IMpd7SNXWDoB7VX5qY3wl9lkJwHXjudfQzWWxxRN+x/1mYqt/Qm9GbS
 S24lporKHPffI8akVjpH/Jk4YUWJegACOLhwi+6x9IQloBf4w1ono9to+Zvt1GRfkM/A
 0w4fRqNBMzUV8cP8Owr7iKyovAx9+0PmIfPqyFNFf/pFEhRXGlVjoe3SDij4ikyzHnkT
 z68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=inCVYeDu1fAept4QEpKoCkDC4Yb03qxpv1FlXIUns7I=;
 b=vKxKjue7fzED1wd+aBVXIoAOSQduWslS3gsab8WHsOnTEleFp6LXdpck3iFNOdX7m/
 kyk0z+Pts7mGyXFLRhfAzr6MC5bUHcbAJiWooJSaWVh94RXJv5DtTlpxIIuTNTxDNXLH
 c1ccAk1KCS4N5hdAw91LVMalJMCflwiGOnaOl7EGCeweBQN4FsVTY2911wj/v+ncrq5p
 Nx+dQ59sOAEydOpJN3LYjVGOmz7z/Y37IQ8VjyFs6N6730mJLbihELFReSxQ1XCP97/2
 kpjiVu4V+wj3Ab5Uhp6NHeuhoVnZbGzTxINzf9fkQNPS75YxHyxpSYLmqQgUiczVcahP
 ccZw==
X-Gm-Message-State: AOAM533BPI68jM/khMSvlFpKdItHPjERFlSZlfLAfvA2xsE9UpoNJKfd
 J5EaCf/FZex/Vhzt7cOm+uZp57WxwDROxN8h9PY=
X-Google-Smtp-Source: ABdhPJxArIjJy06rYv/F/8Maxi6QhxTI2ECVBt8J3IcsCVrOM+EO1KUfCDbLSNfVTmC5MwuPOKsgzw==
X-Received: by 2002:a05:6512:1597:: with SMTP id
 bp23mr1660573lfb.347.1644411979092; 
 Wed, 09 Feb 2022 05:06:19 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id k3sm2352608lfo.127.2022.02.09.05.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 05:06:18 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed,  9 Feb 2022 14:05:37 +0100
Message-Id: <20220209130538.533699-6-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209130538.533699-1-schultz.hans+netdev@gmail.com>
References: <20220209130538.533699-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 13 Feb 2022 10:14:02 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Hans Schultz <schultz.hans+lkml@gmail.com>
Subject: [Bridge] [PATCH net-next v2 5/5] net: bridge: Refactor bridge port
	in locked mode to use jump labels
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

From: Hans Schultz <schultz.hans+lkml@gmail.com>

As the locked mode feature is in the hot path of the bridge modules
reception of packets, it needs to be refactored to use jump labels
for optimization.

Signed-off-by: Hans Schultz <schultz.hans+lkml@gmail.com>
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

