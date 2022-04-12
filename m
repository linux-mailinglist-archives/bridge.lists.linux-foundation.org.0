Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5759A4FE261
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9CC5403ED;
	Tue, 12 Apr 2022 13:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRnCsX3JccRo; Tue, 12 Apr 2022 13:23:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C571540304;
	Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 47871C0089;
	Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AB6DEC002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6E966103C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4OFh_AywWG_U for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:23:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0DBD60B9A
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:14 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id c6so7190123edn.8
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JYUem4jVllKE4fErwzsUEmzSIjtFH958yAp/oX4NO6c=;
 b=rhgdR0Yr5H06JUf05oWHKLjjoT1+tiA41ga1HncvSzBN67TKCJsdCCEqd6jqMmJXD3
 dZCOja0r6B4mxTixieRUYUcCpO75IrzSvrWrJArRnTIpe4U8tTcGb0g13MH64I4rTf1+
 xCwLEQfYai8lpSPGqaOD7hYfImpGgtaC4Acf/mV5PbGMbl83Hp07d5gTup62BQwWyfvW
 uQGG3ka1JWgwF+ByBRSuDWTOq4HrwCVhSd/D8dCZx5VylmN3AVcFqZ94K896EB73whOk
 qdWS/v/o3GNUfzRAl3Uk92LlcpN3szWQEFpjOuxf15cIhm8T1WDNXrWXCkZyxeF2o19F
 5O3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JYUem4jVllKE4fErwzsUEmzSIjtFH958yAp/oX4NO6c=;
 b=GtNVq+1/Xwz6Ap00OgDJ5WARwTMXjKErLB5zux3C+r5LvgxAAFR+KbA7DPTf6knKji
 HBv2GQOgUnylyvw7DmXaBPSlrTtfu/GlW7uO7Jnm35ks4F1qjv/23Fi6CsmJmeFTNM51
 W5cMdTKI2xVXAyG5/gvLvRqtzL0v27ftisA58eOpHlywGDg1KB708XMEf3rqcc/D0Uvr
 uNcH7arZzR2bvwgDRB0oRGFAizWLVq4FHahdxLhQL9BdncJ2OkYA5JgWouo8Pb1tU2eA
 iwAnvwOWpuWaCoYDJDsu7FPiWltVyRyjRVjEW19/G4iFoGxQ9o+JKmEHHtbkWOsOTwfU
 razw==
X-Gm-Message-State: AOAM532NHZ1ND9nIAnfM5/7b1lgp9hCGUWXYjW2ZlM61Vk1WCfww8ZgD
 1SEUCEJDsG+mxPI9WKjbOzcFVw==
X-Google-Smtp-Source: ABdhPJwsGXTRB0DSW4kgzXKegX1MacwRNtcWIm7EGlewK/Bq18TVrNiTk9X/G4hllkqNOTxMn35e4Q==
X-Received: by 2002:a05:6402:14d0:b0:41d:946b:7494 with SMTP id
 f16-20020a05640214d000b0041d946b7494mr2814997edx.190.1649769792890; 
 Tue, 12 Apr 2022 06:23:12 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z16-20020a17090665d000b006e8789e8cedsm3771301ejn.204.2022.04.12.06.23.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 06:23:12 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 12 Apr 2022 16:22:41 +0300
Message-Id: <20220412132245.2148794-5-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
References: <20220412132245.2148794-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v3 4/8] net: bridge: fdb: add
	ndo_fdb_del_bulk
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

Add a minimal ndo_fdb_del_bulk implementation which flushes all entries.
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
index 8d6bab244c4a..58a4f70e01e3 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -465,6 +465,7 @@ static const struct net_device_ops br_netdev_ops = {
 	.ndo_fix_features        = br_fix_features,
 	.ndo_fdb_add		 = br_fdb_add,
 	.ndo_fdb_del		 = br_fdb_delete,
+	.ndo_fdb_del_bulk	 = br_fdb_delete_bulk,
 	.ndo_fdb_dump		 = br_fdb_dump,
 	.ndo_fdb_get		 = br_fdb_get,
 	.ndo_bridge_getlink	 = br_getlink,
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6ccda68bd473..fd7012c32cd5 100644
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
 
+int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
+		       struct net_device *dev, u16 vid,
+		       struct netlink_ext_ack *extack)
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
index 6e62af2e07e9..3ba50e41aa4f 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -759,7 +759,8 @@ int br_fdb_init(void);
 void br_fdb_fini(void);
 int br_fdb_hash_init(struct net_bridge *br);
 void br_fdb_hash_fini(struct net_bridge *br);
-void br_fdb_flush(struct net_bridge *br);
+void __br_fdb_flush(struct net_bridge *br);
+
 void br_fdb_find_delete_local(struct net_bridge *br,
 			      const struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid);
@@ -781,6 +782,9 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 		  struct net_device *dev, const unsigned char *addr, u16 vid);
+int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
+		       struct net_device *dev, u16 vid,
+		       struct netlink_ext_ack *extack);
 int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
 	       const unsigned char *addr, u16 vid, u16 nlh_flags,
 	       struct netlink_ext_ack *extack);
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

