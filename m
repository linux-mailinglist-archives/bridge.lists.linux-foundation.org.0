Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D3D1483B0
	for <lists.bridge@lfdr.de>; Fri, 24 Jan 2020 12:40:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4AD187747;
	Fri, 24 Jan 2020 11:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TI2GEckqjksL; Fri, 24 Jan 2020 11:40:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BEB787652;
	Fri, 24 Jan 2020 11:40:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 018CBC0174;
	Fri, 24 Jan 2020 11:40:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 343F3C0174
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 29825884A1
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UenS8aOfknyR for <bridge@lists.linux-foundation.org>;
 Fri, 24 Jan 2020 11:40:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BC4988488
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 11:40:34 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id w1so2146760ljh.5
 for <bridge@lists.linux-foundation.org>; Fri, 24 Jan 2020 03:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TnEYqQ0aM638zm5shZjohvbYMiyGDKjlDb9qY1Q3PJ4=;
 b=GD/dx8UVe5tvNlYYxpzpjbMyLrDCcLzKVZ2crw3ZgNu9815x9k0EcUjijE03rZbm+R
 MDq5hvKjguWSGOIGS+6w1tNfQjL3NGRv7Dm3jssfMPPNU6GPWaHd1IK+MIdioMXinJCK
 J1yPQf9XeoKj44dSGQPGZI+u+iitEwd083jU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TnEYqQ0aM638zm5shZjohvbYMiyGDKjlDb9qY1Q3PJ4=;
 b=Wx8oziqwKUwaBI+QKgc2iKBmzqognKPKz+a15SmP/tNLp9TYiq2ECF986qO5KDhLU2
 sYwJPmXrH1G0swv6Ys0DcCvL9JEn47JTX1ByWeFdoJAC6Itco9CvzzyNnKHLgSde81hA
 eyjUymj7nNz/cD+dK0SNzF1PfhhBbTnHlAgkxVhPd9KFq/O84uhUdWNgx7iRQ+dOP5Fj
 spXdotQoy+jb5bFeKIQs1NzrhVH0/JqBaQixR5PpqtCKF9Tx42JKNSUTt5RDumTX40oh
 JCwzxkbf4f2jh51ba9N5rQhSYkbuXIKbwkGdnCnEAXhcqREkrcMcMq5uYkPyCpaA7KU0
 L7Sw==
X-Gm-Message-State: APjAAAW9k7c31vp9Cua175ill4zAYNM7hC/ChrpcU4KyJryy1jgGMalu
 gIA4AKzRkiWIjDnoF1VLDOWfog==
X-Google-Smtp-Source: APXvYqwi7+Jgv7hY9jM3fvjkQZkFSn5ZYclSxJKh+lpT9t5uzFczPIhHZcnYRFJh24Mhxf6j9Cf0hA==
X-Received: by 2002:a2e:9118:: with SMTP id m24mr2047779ljg.105.1579866032256; 
 Fri, 24 Jan 2020 03:40:32 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s22sm2996185ljm.41.2020.01.24.03.40.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 03:40:31 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri, 24 Jan 2020 13:40:20 +0200
Message-Id: <20200124114022.10883-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200124114022.10883-1-nikolay@cumulusnetworks.com>
References: <20200124114022.10883-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 2/4] net: bridge: vlan: add basic
	option dumping support
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

We'll be dumping the options for the whole range if they're equal. The
first range vlan will be used to extract the options. The commit doesn't
change anything yet it just adds the skeleton for the support. The dump
will happen when the first option is added.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/Makefile          |  2 +-
 net/bridge/br_private.h      |  8 ++++++++
 net/bridge/br_vlan.c         | 20 ++++++++++++++------
 net/bridge/br_vlan_options.c | 25 +++++++++++++++++++++++++
 4 files changed, 48 insertions(+), 7 deletions(-)
 create mode 100644 net/bridge/br_vlan_options.c

diff --git a/net/bridge/Makefile b/net/bridge/Makefile
index ac9ef337f0fa..49da7ae6f077 100644
--- a/net/bridge/Makefile
+++ b/net/bridge/Makefile
@@ -20,7 +20,7 @@ obj-$(CONFIG_BRIDGE_NETFILTER) += br_netfilter.o
 
 bridge-$(CONFIG_BRIDGE_IGMP_SNOOPING) += br_multicast.o br_mdb.o
 
-bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o
+bridge-$(CONFIG_BRIDGE_VLAN_FILTERING) += br_vlan.o br_vlan_tunnel.o br_vlan_options.o
 
 bridge-$(CONFIG_NET_SWITCHDEV) += br_switchdev.o
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index a6226ff2f0cc..403df71d2cfa 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -1191,6 +1191,14 @@ static inline void br_vlan_notify(const struct net_bridge *br,
 }
 #endif
 
+/* br_vlan_options.c */
+#ifdef CONFIG_BRIDGE_VLAN_FILTERING
+bool br_vlan_opts_eq(const struct net_bridge_vlan *v1,
+		     const struct net_bridge_vlan *v2);
+bool br_vlan_opts_fill(struct sk_buff *skb, const struct net_bridge_vlan *v);
+size_t br_vlan_opts_nl_size(void);
+#endif
+
 struct nf_br_ops {
 	int (*br_dev_xmit_hook)(struct sk_buff *skb);
 };
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index e4f7dd10c3f8..75ec3da92b0b 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1547,7 +1547,9 @@ void br_vlan_port_event(struct net_bridge_port *p, unsigned long event)
 	}
 }
 
+/* v_opts is used to dump the options which must be equal in the whole range */
 static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 vid_range,
+			      const struct net_bridge_vlan *v_opts,
 			      u16 flags)
 {
 	struct bridge_vlan_info info;
@@ -1572,6 +1574,9 @@ static bool br_vlan_fill_vids(struct sk_buff *skb, u16 vid, u16 vid_range,
 	    nla_put_u16(skb, BRIDGE_VLANDB_ENTRY_RANGE, vid_range))
 		goto out_err;
 
+	if (v_opts && !br_vlan_opts_fill(skb, v_opts))
+		goto out_err;
+
 	nla_nest_end(skb, nest);
 
 	return true;
@@ -1586,7 +1591,8 @@ static size_t rtnl_vlan_nlmsg_size(void)
 	return NLMSG_ALIGN(sizeof(struct br_vlan_msg))
 		+ nla_total_size(0) /* BRIDGE_VLANDB_ENTRY */
 		+ nla_total_size(sizeof(u16)) /* BRIDGE_VLANDB_ENTRY_RANGE */
-		+ nla_total_size(sizeof(struct bridge_vlan_info)); /* BRIDGE_VLANDB_ENTRY_INFO */
+		+ nla_total_size(sizeof(struct bridge_vlan_info)) /* BRIDGE_VLANDB_ENTRY_INFO */
+		+ br_vlan_opts_nl_size(); /* bridge vlan options */
 }
 
 void br_vlan_notify(const struct net_bridge *br,
@@ -1595,7 +1601,7 @@ void br_vlan_notify(const struct net_bridge *br,
 		    int cmd)
 {
 	struct net_bridge_vlan_group *vg;
-	struct net_bridge_vlan *v;
+	struct net_bridge_vlan *v = NULL;
 	struct br_vlan_msg *bvm;
 	struct nlmsghdr *nlh;
 	struct sk_buff *skb;
@@ -1647,7 +1653,7 @@ void br_vlan_notify(const struct net_bridge *br,
 		goto out_kfree;
 	}
 
-	if (!br_vlan_fill_vids(skb, vid, vid_range, flags))
+	if (!br_vlan_fill_vids(skb, vid, vid_range, v, flags))
 		goto out_err;
 
 	nlmsg_end(skb, nlh);
@@ -1665,7 +1671,8 @@ static bool br_vlan_can_enter_range(const struct net_bridge_vlan *v_curr,
 				    const struct net_bridge_vlan *range_end)
 {
 	return v_curr->vid - range_end->vid == 1 &&
-	       range_end->flags == v_curr->flags;
+	       range_end->flags == v_curr->flags &&
+	       br_vlan_opts_eq(v_curr, range_end);
 }
 
 static int br_vlan_dump_dev(const struct net_device *dev,
@@ -1729,7 +1736,8 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 			u16 flags = br_vlan_flags(range_start, pvid);
 
 			if (!br_vlan_fill_vids(skb, range_start->vid,
-					       range_end->vid, flags)) {
+					       range_end->vid, range_start,
+					       flags)) {
 				err = -EMSGSIZE;
 				break;
 			}
@@ -1748,7 +1756,7 @@ static int br_vlan_dump_dev(const struct net_device *dev,
 	 */
 	if (!err && range_start &&
 	    !br_vlan_fill_vids(skb, range_start->vid, range_end->vid,
-			       br_vlan_flags(range_start, pvid)))
+			       range_start, br_vlan_flags(range_start, pvid)))
 		err = -EMSGSIZE;
 
 	cb->args[1] = err ? idx : 0;
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
new file mode 100644
index 000000000000..55fcdc9c380c
--- /dev/null
+++ b/net/bridge/br_vlan_options.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) 2020, Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/rtnetlink.h>
+#include <linux/slab.h>
+
+#include "br_private.h"
+
+/* check if the options between two vlans are equal */
+bool br_vlan_opts_eq(const struct net_bridge_vlan *v1,
+		     const struct net_bridge_vlan *v2)
+{
+	return true;
+}
+
+bool br_vlan_opts_fill(struct sk_buff *skb, const struct net_bridge_vlan *v)
+{
+	return true;
+}
+
+size_t br_vlan_opts_nl_size(void)
+{
+	return 0;
+}
-- 
2.21.0

