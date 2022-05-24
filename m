Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F4C532D38
	for <lists.bridge@lfdr.de>; Tue, 24 May 2022 17:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 913A84162C;
	Tue, 24 May 2022 15:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8FHc4kdvqN5; Tue, 24 May 2022 15:22:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CAFC74161A;
	Tue, 24 May 2022 15:22:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9FF32C007E;
	Tue, 24 May 2022 15:22:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A3C46C002D
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D64B61223
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ZTPMuiRyLyf for <bridge@lists.linux-foundation.org>;
 Tue, 24 May 2022 15:22:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EC0D60E28
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 15:22:08 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id y32so31379330lfa.6
 for <bridge@lists.linux-foundation.org>; Tue, 24 May 2022 08:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=vzMtcD9pHVLI43F+btkmnpc3m8QPN+J/xH5CJZ3HJKk=;
 b=qJyMORyAD4liaf6/eFamHLowy+VN7viOwEkGNClY0X8YuwrCbmFqyi9EezgBu17MXi
 dvWQVZF1vmbFr1QGogcVMcNkqb5qGzFzEu6TFbVfFB11/zqbkG8ifWOu1Rat6N9IHfAl
 Jw67xsJZcK0Ty4SzXrE+B7pOP99pjyZ7JMQxtOiuFw9zDQ1vF5j/GfyX61fqSMu/VsJq
 PuYTWEInhL0u3j/XmEbXCKsLYGWRdzohWdWxRHvINdcOrwHyO/Cyss5ikrCX/U2U42J5
 tX6d9B3W3VFtH2PV88SvvLu036le46J7aYingyBWlnfaaH/2Jlsux1eIAVo0JHSQjjFZ
 56FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=vzMtcD9pHVLI43F+btkmnpc3m8QPN+J/xH5CJZ3HJKk=;
 b=LjVighLND31/38gcldnNd5P3NBRs0tTFpN17tBeyt/vJ3Qib5aWh4qQQnuiALPedSF
 w8/XI32HxlEQLwy8SJkCdQfpsrGXfdw4GC973vUtGxs38NTrTMqiuNZvxBCHCPzRyjh5
 3hJ8r0EY3CKWZ8VeXjpE4xADSrMubvponmOffnOtFSiilShRoryHQJOzgQRrLvbc5SyJ
 30cUeb+BS/5aRs+uHFd5qCY/jJV7qHB09pR1Kq3wW+EMG/qR/vLxQOI0jp9bqV5UXcwd
 UNwTgCKmvmgN/0Dh04WZw+AEksE9VWb7k/SFJlURKMBQ+9nbA85/hC66GxZL4fGLncpL
 u6Pw==
X-Gm-Message-State: AOAM533/4ZlpJ0H6oq9XZi7Iw0ir3FZK0Lai5U04aUQBOMM9V+8t8glD
 Mv/NwnyCLh1aurUgTTqFJ14=
X-Google-Smtp-Source: ABdhPJzoPEkjJ/htt2xeg04iTaS9VKTN+o0NgDeHwP+mYRcF2x3RwSMuVaiRHtcHiGalri0sFdYsdw==
X-Received: by 2002:a05:6512:3e0f:b0:478:97be:bc75 with SMTP id
 i15-20020a0565123e0f00b0047897bebc75mr1314274lfv.534.1653405726072; 
 Tue, 24 May 2022 08:22:06 -0700 (PDT)
Received: from wse-c0127.westermo.com
 (2-104-116-184-cable.dk.customer.tdc.net. [2.104.116.184])
 by smtp.gmail.com with ESMTPSA id
 d22-20020a2e3316000000b00253deeaeb3dsm2441404ljc.131.2022.05.24.08.22.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 08:22:05 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 24 May 2022 17:21:42 +0200
Message-Id: <20220524152144.40527-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH V3 net-next 2/4] net: switchdev: add support for
	offloading of fdb locked flag
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

Used for Mac-auth/MAB feature in the offloaded case.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 include/net/dsa.h       | 6 ++++++
 include/net/switchdev.h | 3 ++-
 net/bridge/br.c         | 3 ++-
 net/bridge/br_fdb.c     | 7 +++++--
 net/bridge/br_private.h | 2 +-
 5 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 14f07275852b..a5a843b2d67d 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -330,6 +330,12 @@ struct dsa_port {
 	/* List of VLANs that CPU and DSA ports are members of. */
 	struct mutex		vlans_lock;
 	struct list_head	vlans;
+
+	/* List and maintenance of locked ATU entries */
+	struct mutex		locked_entries_list_lock;
+	struct list_head	atu_locked_entries_list;
+	atomic_t		atu_locked_entry_cnt;
+	struct delayed_work	atu_work;
 };
 
 /* TODO: ideally DSA ports would have a single dp->link_dp member,
diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index aa0171d5786d..62f4f7c9c7c2 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -245,7 +245,8 @@ struct switchdev_notifier_fdb_info {
 	u16 vid;
 	u8 added_by_user:1,
 	   is_local:1,
-	   offloaded:1;
+	   offloaded:1,
+	   locked:1;
 };
 
 struct switchdev_notifier_port_obj_info {
diff --git a/net/bridge/br.c b/net/bridge/br.c
index 96e91d69a9a8..12933388a5a4 100644
--- a/net/bridge/br.c
+++ b/net/bridge/br.c
@@ -166,7 +166,8 @@ static int br_switchdev_event(struct notifier_block *unused,
 	case SWITCHDEV_FDB_ADD_TO_BRIDGE:
 		fdb_info = ptr;
 		err = br_fdb_external_learn_add(br, p, fdb_info->addr,
-						fdb_info->vid, false);
+						fdb_info->vid, false,
+						fdb_info->locked);
 		if (err) {
 			err = notifier_from_errno(err);
 			break;
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6b83e2d6435d..92469547283a 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1135,7 +1135,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 					   "FDB entry towards bridge must be permanent");
 			return -EINVAL;
 		}
-		err = br_fdb_external_learn_add(br, p, addr, vid, true);
+		err = br_fdb_external_learn_add(br, p, addr, vid, true, false);
 	} else {
 		spin_lock_bh(&br->hash_lock);
 		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
@@ -1365,7 +1365,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
 
 int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid,
-			      bool swdev_notify)
+			      bool swdev_notify, bool locked)
 {
 	struct net_bridge_fdb_entry *fdb;
 	bool modified = false;
@@ -1385,6 +1385,9 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (!p)
 			flags |= BIT(BR_FDB_LOCAL);
 
+		if (locked)
+			flags |= BIT(BR_FDB_ENTRY_LOCKED);
+
 		fdb = fdb_create(br, p, addr, vid, flags);
 		if (!fdb) {
 			err = -ENOMEM;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index be17c99efe65..88913e6a59e1 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -815,7 +815,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
 void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p);
 int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid,
-			      bool swdev_notify);
+			      bool swdev_notify, bool locked);
 int br_fdb_external_learn_del(struct net_bridge *br, struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid,
 			      bool swdev_notify);
-- 
2.30.2

