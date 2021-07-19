Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1F33CE735
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 19:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E40184036F;
	Mon, 19 Jul 2021 17:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jVQVyk4k34Ei; Mon, 19 Jul 2021 17:10:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id B84B0402EC;
	Mon, 19 Jul 2021 17:10:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8F440C001F;
	Mon, 19 Jul 2021 17:10:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0370FC001A
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 013DE833C7
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pqMR9a7PLHx6 for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 17:10:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1ABD4833CA
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 17:10:05 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id nd37so29932014ejc.3
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 10:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l2f8wSd2cFUSrpRoYeQ6oFo0IF2ypfibcU91DvCPZco=;
 b=wgmz7k/s54dbcXvrb+4rMBZQwTgHvK9EAWb8El5VRb4pA+H1C/njj2yPqKsVbkoDyq
 hb1QLfyM7pmQ4/LafPsodQpBu6ZS7Du86JZVHtcYDWCYpwXVHhlmE7augpY7WVW3XoNS
 uTZOVTmpp6BxA1p7n7amNMxqNBTlWYzSjr2y58XH4fpdUpZm9pjqmw5gumYK3EBmluLF
 nnbrqlvCU0ifK5hDRL9uT2tOQgx5vHbDIDUYqmzfOhGhQLPSGkl08MRIpQWQjlReK4P8
 8x2/CXBwbe0rN/FV4c0WmDwtS38M2Ub6GE1JI6yQDoH1TX7SgTPwMnEP5617q8it6mBb
 C78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l2f8wSd2cFUSrpRoYeQ6oFo0IF2ypfibcU91DvCPZco=;
 b=m8w0KBMJvMz7jTVTYk4OLFZG9KJ/aZ0PTofFZ5Wan4lRDxZf9Admhll/jWX7imrWqy
 oYLufpYDNeENeIAjR29AdjSGaWpL8cGrriiEunK0+rgQW+zUWoybfgvnAJaRbJ5grAoK
 grcyL9neV2yqgO3rDQCB78FfUs3906Q+6Wj/AKfhJXexLK6LswyGcHH1cQ/pDyXP5b1M
 8WxcVLzd6ZfpVYtATAKxdI2WjBEb2mFHbxsUR3jHqImlvE5agli5cdtdo0asfUJv4vcg
 d86rsFLgjVrCQ+NLfY89JEI2jfKI4CWgUTNfJaYd5F5kPa+88ZZhL7u3l4BOSEnvoD/I
 3rzw==
X-Gm-Message-State: AOAM5331+cAWdg3MTpGcQJ/iDasbFWE2ZZQqVAcQUgY6pU1biLPFLSI6
 qr2Cb0eQlnU2vYJy/Cv4wl+u7w==
X-Google-Smtp-Source: ABdhPJzwhFCcOiRVEyJmDZY6cZkJypwCnf5hzFzo6BMWKhnD0MY2PWKu9ajB0VhtCuIfg9+R9lgD3g==
X-Received: by 2002:a17:907:1c21:: with SMTP id
 nc33mr27486888ejc.436.1626714603306; 
 Mon, 19 Jul 2021 10:10:03 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id nc29sm6073896ejc.10.2021.07.19.10.10.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 10:10:02 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 19 Jul 2021 20:06:29 +0300
Message-Id: <20210719170637.435541-8-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719170637.435541-1-razor@blackwall.org>
References: <20210719170637.435541-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 07/15] net: bridge: multicast: add helper
	to get port mcast context from port group
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

Add br_multicast_pg_to_port_ctx() which returns the proper port multicast
context from either port or vlan based on bridge option and vlan flags.
As the comment inside explains the locking is a bit tricky, we rely on
the fact that BR_VLFLAG_MCAST_ENABLED requires multicast_lock to change
and we also require it to be held to call that helper. If we find the
vlan under rcu and it still has the flag then we can be sure it will be
alive until we unlock multicast_lock which should be enough.
Note that the context might change from vlan to bridge between different
calls to this helper as the mcast vlan knob requires only rtnl so it should
be used carefully and for read-only/check purposes.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index b71772828b23..353406f2971a 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -192,6 +192,44 @@ struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge_mcast *brmctx,
 	return br_mdb_ip_get_rcu(br, &ip);
 }
 
+/* IMPORTANT: this function must be used only when the contexts cannot be
+ * passed down (e.g. timer) and must be used for read-only purposes because
+ * the vlan snooping option can change, so it can return any context
+ * (non-vlan or vlan). Its initial intended purpose is to read timer values
+ * from the *current* context based on the option. At worst that could lead
+ * to inconsistent timers when the contexts are changed, i.e. src timer
+ * which needs to re-arm with a specific delay taken from the old context
+ */
+static struct net_bridge_mcast_port *
+br_multicast_pg_to_port_ctx(const struct net_bridge_port_group *pg)
+{
+	struct net_bridge_mcast_port *pmctx = &pg->key.port->multicast_ctx;
+	struct net_bridge_vlan *vlan;
+
+	lockdep_assert_held_once(&pg->key.port->br->multicast_lock);
+
+	/* if vlan snooping is disabled use the port's multicast context */
+	if (!pg->key.addr.vid ||
+	    !br_opt_get(pg->key.port->br, BROPT_MCAST_VLAN_SNOOPING_ENABLED))
+		goto out;
+
+	/* locking is tricky here, due to different rules for multicast and
+	 * vlans we need to take rcu to find the vlan and make sure it has
+	 * the BR_VLFLAG_MCAST_ENABLED flag set, it can only change under
+	 * multicast_lock which must be already held here, so the vlan's pmctx
+	 * can safely be used on return
+	 */
+	rcu_read_lock();
+	vlan = br_vlan_find(nbp_vlan_group(pg->key.port), pg->key.addr.vid);
+	if (vlan && !br_multicast_port_ctx_vlan_disabled(&vlan->port_mcast_ctx))
+		pmctx = &vlan->port_mcast_ctx;
+	else
+		pmctx = NULL;
+	rcu_read_unlock();
+out:
+	return pmctx;
+}
+
 static bool br_port_group_equal(struct net_bridge_port_group *p,
 				struct net_bridge_port *port,
 				const unsigned char *src)
-- 
2.31.1

