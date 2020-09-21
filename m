Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F49E27223E
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:23:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CFB3585552;
	Mon, 21 Sep 2020 11:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kYBgIbbTbLBD; Mon, 21 Sep 2020 11:23:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 550A485513;
	Mon, 21 Sep 2020 11:23:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3BF14C0893;
	Mon, 21 Sep 2020 11:23:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B9D1EC0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A851286887
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LKZ3gAnTlQjD for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:23:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F87286758
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:23:33 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id e22so12382115edq.6
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W1k28u9m4opk3xAHXu3X6yCLygcG5WtwBqkfTVt8j0k=;
 b=xyGBhkOGELPKn//wEelqXKR2capv+rcr01F4odCptjBa5YW1aMl9K9f6t/0AE/wp2F
 H8mU9/tvQ/ES2Gn5EstZdkbKciKhK/oKiGIWUjX3LtKCma9GaXbvw+gfcBg+t5W49o1A
 JHjfV7vzht0dYR7MYq/zmlq1IYz/NJMcNp441j3HZy23AMNTTznaX74gHX3SCSMwFNrx
 Vaey+fwS46Ycelax5JgnPTb3YsMBtq1X2N9kPwkPkyiSHD7sLTOx++j4LpbTQLHkUFkn
 DB/tET4zDJ1tQGLh3sW/wGCKCaipL+70mXN5PY4rRkJKirCxLDGDKUw4OOZ6ERVM6Z6T
 X7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W1k28u9m4opk3xAHXu3X6yCLygcG5WtwBqkfTVt8j0k=;
 b=BOApV22yoGY41KUEuNj9YIHZjxwnd4+VwuKO+/RNU1N/ez+k4ZdgXSjonFjIR24S59
 irp+LnW8OjErrsmGOMguMtB9EPWphuSbF1xTdb/nUlkBZAU6govmnO6kiMsyIChz17/Z
 0jGjya8lYrrR0GFRbvqB8Smo0kk3eDCno95oTIpigR7mo0hk2gJXsPBKGBdmbN/XgJ2l
 NkmD9kB3ezvwf2d7QGV67SSA2QElcSz2eEYjj1mzXcnNb9UKd9j0CdF+Q3U7npGevFNo
 h0NWFkswHkl1A4cd749KnUAHd9xK7waF3AyzoxjzSRBMe7CLiGIC/SPQZBhObsFgCeXA
 3Chw==
X-Gm-Message-State: AOAM5338JaR26dZ3Y4x1tb9LVNVyc/3mf3/IE97e3y+05N0Xq0Kt/kX2
 G6ebg7DqCJqur/DXeaKXeGmBsdIoUyuEOwGW7tshIA==
X-Google-Smtp-Source: ABdhPJwcdLN2KgA8ISfNJtMrE9FRZfmoLfTdUJ1nxmQ+ZF48FONNG75fUXSJ8sUWvYqhodFwlbtEbg==
X-Received: by 2002:adf:f492:: with SMTP id l18mr54104001wro.280.1600685786973; 
 Mon, 21 Sep 2020 03:56:26 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:26 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:26 +0300
Message-Id: <20200921105526.1056983-17-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 16/16] net: bridge: mcast: when forwarding
	handle filter mode and blocked flag
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

We need to avoid forwarding to ports in MCAST_INCLUDE filter mode when the
mdst entry is a *,G or when the port has the blocked flag.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_forward.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index 4d12999e4576..e28ffadd1371 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -274,10 +274,19 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 	struct net_bridge *br = netdev_priv(dev);
 	struct net_bridge_port *prev = NULL;
 	struct net_bridge_port_group *p;
+	bool allow_mode_include = true;
 	struct hlist_node *rp;
 
 	rp = rcu_dereference(hlist_first_rcu(&br->router_list));
-	p = mdst ? rcu_dereference(mdst->ports) : NULL;
+	if (mdst) {
+		p = rcu_dereference(mdst->ports);
+		if (br_multicast_should_handle_mode(br, mdst->addr.proto) &&
+		    br_multicast_is_star_g(&mdst->addr))
+			allow_mode_include = false;
+	} else {
+		p = NULL;
+	}
+
 	while (p || rp) {
 		struct net_bridge_port *port, *lport, *rport;
 
@@ -292,6 +301,10 @@ void br_multicast_flood(struct net_bridge_mdb_entry *mdst,
 						   local_orig);
 				goto delivered;
 			}
+			if ((!allow_mode_include &&
+			     p->filter_mode == MCAST_INCLUDE) ||
+			    (p->flags & MDB_PG_FLAGS_BLOCKED))
+				goto delivered;
 		} else {
 			port = rport;
 		}
-- 
2.25.4

