Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 547C83E58C2
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 13:00:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2ADC60888;
	Tue, 10 Aug 2021 11:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pYhkYiTNaW7f; Tue, 10 Aug 2021 11:00:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5EE0F6087E;
	Tue, 10 Aug 2021 11:00:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1784BC001F;
	Tue, 10 Aug 2021 11:00:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9905EC000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 11:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FF4E60888
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 11:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5cnm3YJkuKt for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 11:00:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 890CC6087E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 11:00:22 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id d6so29550420edt.7
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 04:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pl+AN+3T8L0wo4+egXAtjgAHIcgLN6DYu3BvZ5GYJfs=;
 b=ViSavQ26cd7UQHMH2Wet6fh3f1SwkvVoGnaHhGjvuSwYQ0sffku+Y/11xRJwCsqvyH
 AlAYGn+uICS7sWr2/Zvzhn+mxMCS0V3pkpaWXSjsNKtlKGzRme4sjmVKqJ14TUYpikXK
 LyXcFHtiAq7IRZkegArs5l/TR19yXYt33TLNTVk5fL9sEPuwNqInd1a4b+k+YvsjHWjH
 ZY2QNjx5KrVu2L2wqdFtKAFxM77/HYIdgvP7LdXX6oWg9V787kMbbeW3oPVBu9K54FWE
 jokMHAjXohvuze9mon5R6aV/UR4QblfykETzPLLqH0TmiYiRXqSjPt3vLRnUI3GJwVnL
 buxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pl+AN+3T8L0wo4+egXAtjgAHIcgLN6DYu3BvZ5GYJfs=;
 b=COOLgD4tJ+pIMWJF3Jfwzh2Aa79RXzWg0I8kV3StG9XZRcqPzOHgUdNP+9oCpp4bE+
 R2kUg0TxRdVpXEhPVZEW8hhRJXWaLycEx4taHCMyLOnWhUxLZQWxCrblj4/uPWXbtda+
 o22HaW8DC/OPCKPa4/ZjcIca0KYUfHHnR7NGnXWD6lZ5a/nIoAfwgTRIDVc0UCyk/0Qy
 dOqOwOU58SOFkbYSzh0sPUXCJt3C2wlKYYjc3fQxawOVnc9TPjpiD9UFhAX5/3uKEvNF
 r8JDOEs3wNgjWmoZUyupZEdu6158g/LV/oIq8ic5i8Xqn6VDJzG5vPymNWYN9hmMil5E
 8szQ==
X-Gm-Message-State: AOAM532XnUZtI6qZIBDtgGEqSSo33M5QmBIfiAEmBGWRyj4GOJ1SlpFu
 zul6CXGve4f80dBJvNaRH0aeTA==
X-Google-Smtp-Source: ABdhPJzYffhzudO2oNgrTYCjAlKXGP/Vujv3U2IlKGoHEajfzCIOjQF6wMtyaXQz9nM31fd2sePiog==
X-Received: by 2002:a05:6402:b99:: with SMTP id
 cf25mr4224044edb.130.1628593220487; 
 Tue, 10 Aug 2021 04:00:20 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id gl2sm62946ejb.110.2021.08.10.04.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 04:00:20 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 14:00:10 +0300
Message-Id: <20210810110010.43859-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210810072139.1597621-1-razor@blackwall.org>
References: <20210810072139.1597621-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: vladimir.oltean@nxp.com, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net v2] net: bridge: fix flags interpretation for
	extern learn fdb entries
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

Ignore fdb flags when adding port extern learn entries and always set
BR_FDB_LOCAL flag when adding bridge extern learn entries. This is
closest to the behaviour we had before and avoids breaking any use cases
which were allowed.

This patch fixes iproute2 calls which assume NUD_PERMANENT and were
allowed before, example:
$ bridge fdb add 00:11:22:33:44:55 dev swp1 extern_learn

Extern learn entries are allowed to roam, but do not expire, so static
or dynamic flags make no sense for them.

Also add a comment for future reference.

Fixes: eb100e0e24a2 ("net: bridge: allow to add externally learned entries from user-space")
Fixes: 0541a6293298 ("net: bridge: validate the NUD_PERMANENT bit when adding an extern_learn FDB entry")
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
Tested-by: Ido Schimmel <idosch@nvidia.com>
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
v2: add a comment as suggested, no functional changes

 include/uapi/linux/neighbour.h |  7 +++++--
 net/bridge/br.c                |  3 +--
 net/bridge/br_fdb.c            | 11 ++++-------
 net/bridge/br_private.h        |  2 +-
 4 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index dc8b72201f6c..00a60695fa53 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -66,8 +66,11 @@ enum {
 #define NUD_NONE	0x00
 
 /* NUD_NOARP & NUD_PERMANENT are pseudostates, they never change
-   and make no address resolution or NUD.
-   NUD_PERMANENT also cannot be deleted by garbage collectors.
+ * and make no address resolution or NUD.
+ * NUD_PERMANENT also cannot be deleted by garbage collectors.
+ * When NTF_EXT_LEARNED is set for a bridge fdb entry the different cache entry
+ * states don't make sense and thus are ignored. Such entries don't age and
+ * can roam.
  */
 
 struct nda_cacheinfo {
diff --git a/net/bridge/br.c b/net/bridge/br.c
index bbab9984f24e..ef743f94254d 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -166,8 +166,7 @@ static int br_switchdev_event(struct notifier_block *unused,
 	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
 		fdb_info = ptr;
 		err = br_fdb_external_learn_add(br, p, fdb_info->addr,
-						fdb_info->vid,
-						fdb_info->is_local, false);
+						fdb_info->vid, false);
 		if (err) {
 			err = notifier_from_errno(err);
 			break;
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 835cec1e5a03..5dee30966ed3 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1044,10 +1044,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 					   "FDB entry towards bridge must be permanent");
 			return -EINVAL;
 		}
-
-		err = br_fdb_external_learn_add(br, p, addr, vid,
-						ndm->ndm_state & NUD_PERMANENT,
-						true);
+		err = br_fdb_external_learn_add(br, p, addr, vid, true);
 	} else {
 		spin_lock_bh(&br->hash_lock);
 		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
@@ -1275,7 +1272,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
 }
 
 int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
-			      const unsigned char *addr, u16 vid, bool is_local,
+			      const unsigned char *addr, u16 vid,
 			      bool swdev_notify)
 {
 	struct net_bridge_fdb_entry *fdb;
@@ -1293,7 +1290,7 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (swdev_notify)
 			flags |= BIT(BR_FDB_ADDED_BY_USER);
 
-		if (is_local)
+		if (!p)
 			flags |= BIT(BR_FDB_LOCAL);
 
 		fdb = fdb_create(br, p, addr, vid, flags);
@@ -1322,7 +1319,7 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (swdev_notify)
 			set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
 
-		if (is_local)
+		if (!p)
 			set_bit(BR_FDB_LOCAL, &fdb->flags);
 
 		if (modified)
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index aa64d8d63ca3..2b48b204205e 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -711,7 +711,7 @@ int br_fdb_get(struct sk_buff *skb, struct nlattr *tb[], struct net_device *dev,
 int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
 void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
 int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
-			      const unsigned char *addr, u16 vid, bool is_local,
+			      const unsigned char *addr, u16 vid,
 			      bool swdev_notify);
 int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid,
-- 
2.31.1

