Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1584FC369
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8AB3D4049F;
	Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t_STxt3cru8w; Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1D2F04061F;
	Mon, 11 Apr 2022 17:30:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A1077C0086;
	Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3D41CC002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B382405F8
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 07EuU6LJXiFm for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:30:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FDF4405B4
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:01 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id s18so9881867ejr.0
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B5S8XFRnGS4ZuUwwM582W5V1tDhecUOXpZ4BPJOGbzU=;
 b=IgONo8IR+mPW+pBo96EoLpsMBSlaoliTJ80GEJ4cI2aamHqnxEvremcO0WUtzXOfpv
 8e/TREd3DDQVzzDe9PaA7g57+WIDuZjWgY0NECehgdmLB/gY0SGEm1Z/eYuLJmlXxkB+
 cZ0yPBZOEM4rYjCa8JL9On1ASJaznbSxjrnrf8+Aa4h78FEw+N9D4tmzMSrLmX1ylASZ
 9hiMa9Ei/bikJEdX5nkwMEQAsH8dUy7FII7eWGy/GsVqs7xGZ5QFESeJOxQaZzEcOQh9
 XI2rPv6ETi8vTrXV8R5M4UbcOyRCFfvxZ2xZm+rht7LxEzFDhvLjYMyaIc+FbFXF/f1D
 reUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B5S8XFRnGS4ZuUwwM582W5V1tDhecUOXpZ4BPJOGbzU=;
 b=Hhg8bw9wTok2Manjz4a/RlBrTszlbirhmPj0EsjzK5JrCSsMHLoZOEyM8irhgSUTNj
 uxLt0uilBNnZ/OKnjiggye29bkHCgExQB/ipiLhK9eDDtxXPAyeFCjQ+c8sNMM7NXc8d
 XAchezAdDP2Cf5C+iNdg3fUQNEM4VZkL3NIK8QyVPdXdCmhp0Jq0OSGy8Zc0usk4Bp5f
 Auhk8x4ao8PQ0DHtHSIBAKd8d1jh0aKI94D6tGpAm420+Meb5yEd+5tuMIxab1CoLHVu
 7OtvQwtDuT8sAtHzzARtQtqeB3fMAxWx4eNIUmPmYp24Cto++WlL25D2ww4X+kjoE4Tn
 FoIw==
X-Gm-Message-State: AOAM533jbKWkR4paG/FsPwRl20aKybD4Oizgr4qsj7et1vBFeWVWpE0C
 ThS5MRshpJIJkcE8FtsnN/tdTwh78lBeMMJY
X-Google-Smtp-Source: ABdhPJx0rBGHTyNa11mn+yvRXnLrQNT6EirEP7Vexyk2a1eeyeWQJRXNGTLf7IAtUsmcyPePMmTvMQ==
X-Received: by 2002:a17:907:6296:b0:6da:64ee:1031 with SMTP id
 nd22-20020a170907629600b006da64ee1031mr31462695ejc.601.1649698199623; 
 Mon, 11 Apr 2022 10:29:59 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm10325084ejc.176.2022.04.11.10.29.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 10:29:59 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 11 Apr 2022 20:29:29 +0300
Message-Id: <20220411172934.1813604-4-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 3/8] net: bridge: fdb: add
	ndo_fdb_flush op
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

Add a minimal ndo_fdb_flush implementation which flushes all entries.
Support for more fine-grained filtering will be added in the following
patches.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/bridge/br_device.c   |  1 +
 net/bridge/br_fdb.c      | 25 ++++++++++++++++++++++++-
 net/bridge/br_netlink.c  |  2 +-
 net/bridge/br_private.h  |  6 +++++-
 net/bridge/br_sysfs_br.c |  2 +-
 5 files changed, 32 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 8d6bab244c4a..76ee2675457a 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -466,6 +466,7 @@ static const struct net_device_ops br_netdev_ops = {
 	.ndo_fdb_add		 = br_fdb_add,
 	.ndo_fdb_del		 = br_fdb_delete,
 	.ndo_fdb_dump		 = br_fdb_dump,
+	.ndo_fdb_flush		 = br_fdb_flush,
 	.ndo_fdb_get		 = br_fdb_get,
 	.ndo_bridge_getlink	 = br_getlink,
 	.ndo_bridge_setlink	 = br_setlink,
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6ccda68bd473..64a549acdac8 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -559,7 +559,7 @@ void br_fdb_cleanup(struct work_struct *work)
 }
 
 /* Completely flush all dynamic entries in forwarding database.*/
-void br_fdb_flush(struct net_bridge *br)
+void __br_fdb_flush(struct net_bridge *br)
 {
 	struct net_bridge_fdb_entry *f;
 	struct hlist_node *tmp;
@@ -572,6 +572,29 @@ void br_fdb_flush(struct net_bridge *br)
 	spin_unlock_bh(&br->hash_lock);
 }
 
+int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
+		 struct net_device *dev, u16 vid,
+		 struct netlink_ext_ack *extack)
+{
+	struct net_bridge *br;
+
+	if (netif_is_bridge_master(dev)) {
+		br = netdev_priv(dev);
+	} else {
+		struct net_bridge_port *p = br_port_get_rtnl(dev);
+
+		if (!p) {
+			NL_SET_ERR_MSG_MOD(extack, "Device is not a bridge port");
+			return -EINVAL;
+		}
+		br = p->br;
+	}
+
+	__br_fdb_flush(br);
+
+	return 0;
+}
+
 /* Flush all entries referring to a specific port.
  * if do_all is set also flush static entries
  * if vid is set delete all entries that match the vlan_id
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 200ad05b296f..c59c775730bb 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1327,7 +1327,7 @@ static int br_changelink(struct net_device *brdev, struct nlattr *tb[],
 	}
 
 	if (data[IFLA_BR_FDB_FLUSH])
-		br_fdb_flush(br);
+		__br_fdb_flush(br);
 
 #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
 	if (data[IFLA_BR_MCAST_ROUTER]) {
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 6e62af2e07e9..23ef2982d1bc 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -759,7 +759,11 @@ int br_fdb_init(void);
 void br_fdb_fini(void);
 int br_fdb_hash_init(struct net_bridge *br);
 void br_fdb_hash_fini(struct net_bridge *br);
-void br_fdb_flush(struct net_bridge *br);
+void __br_fdb_flush(struct net_bridge *br);
+int br_fdb_flush(struct ndmsg *ndm, struct nlattr *tb[],
+		 struct net_device *dev, u16 vid,
+		 struct netlink_ext_ack *extack);
+
 void br_fdb_find_delete_local(struct net_bridge *br,
 			      const struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid);
diff --git a/net/bridge/br_sysfs_br.c b/net/bridge/br_sysfs_br.c
index 3f7ca88c2aa3..7a2cf3aebc84 100644
--- a/net/bridge/br_sysfs_br.c
+++ b/net/bridge/br_sysfs_br.c
@@ -344,7 +344,7 @@ static DEVICE_ATTR_RW(group_addr);
 static int set_flush(struct net_bridge *br, unsigned long val,
 		     struct netlink_ext_ack *extack)
 {
-	br_fdb_flush(br);
+	__br_fdb_flush(br);
 	return 0;
 }
 
-- 
2.35.1

