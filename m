Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 576E64DC306
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:39:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3AC54052B;
	Thu, 17 Mar 2022 09:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HV4T2ESZFDXu; Thu, 17 Mar 2022 09:39:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4D87440B18;
	Thu, 17 Mar 2022 09:39:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 14D85C000B;
	Thu, 17 Mar 2022 09:39:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 01988C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F332541896
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KqXIXfTm4xxF for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:39:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0967141892
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:23 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id t25so8006266lfg.7
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=uwQnx6pwvh3u1NvgP1tcS0s4NRQpVnBsyx6kEU6UEk4=;
 b=k2kH5SHw44LX+U1I8vgVRDFxYoHVjCkRGfxHD/XVhACKFuDfdlyhwS79VhJqBVe1Sv
 ZyLiPp7rGfQu5J9UThvg5umZaEIxmlRYvRHzJHdY4bKA64MnmTClSRh+/5l37fXS+hiE
 +aoPn89ubtg6jgj9L59kxamoAPiT3Qk812c68GxOzV1AP+EDdGcv/MAAxE1bJHDfA9/b
 Q3cFIeanOs7HQklTpyEjGuaq0K54NE9OphWdpuCWgxIHDHxHOxbFPJ40VkzCUCvluPJI
 lYU+T38iERECXUx/1dFg0vEu7Qkjali7PfdqYHFdu8lVGVRwHSSfP9hKMtShBwaEwiMf
 d+OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=uwQnx6pwvh3u1NvgP1tcS0s4NRQpVnBsyx6kEU6UEk4=;
 b=Ke/GZCkmkxJenFy2li5zIx9ld8yd5DQa3ItcBY2W19HRYsMY6nHEIrZv4TUm9uxyaV
 uuuNKKDTF2Hb1mQ8XtaQRaAFFKbzHR764F+RW4QEDL3DycZplwigo7Nr4M2zW25YIfSP
 0x+S5ZY996LQzxOt1/4Hj1CUHFFSr9W9GY/zVILDTi3rWTAZjmmigFHZ/RW/jPbcmPnS
 KnrnmQVcB/w8X0cmMVyhlt9W4AvLc4vxEszGYFF/Q9YhtCEfiB+UDO3F6aOnJ3CQcrUe
 rSuWa8xxgqlcuLxkoS6uAUyKiqemU6V8OpJu56s0oIy1cHqEYBhbA068Y9fcLNW6h/oG
 sevg==
X-Gm-Message-State: AOAM532EV4O6ecvXlTt/KEPr7aKPaFRep8sQ5UVTBcSBzDEY7lKJ5/AW
 dbDx3P2RLfXLhct8Z2O/uk97oAT1RCWDiw==
X-Google-Smtp-Source: ABdhPJz2ESit2pwtBK0+dp42fWwk772KaV2IroyT2+W3Q+GDPLm+wy9O37fS8qnrLVrRU105KSbOYA==
X-Received: by 2002:a05:6512:32c2:b0:448:942a:3362 with SMTP id
 f2-20020a05651232c200b00448942a3362mr2368898lfg.356.1647509961939; 
 Thu, 17 Mar 2022 02:39:21 -0700 (PDT)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 w13-20020a2e998d000000b002496199495csm113479lji.55.2022.03.17.02.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 02:39:21 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 17 Mar 2022 10:39:00 +0100
Message-Id: <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support for
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
 include/net/switchdev.h | 3 ++-
 net/bridge/br.c         | 3 ++-
 net/bridge/br_fdb.c     | 7 +++++--
 net/bridge/br_private.h | 2 +-
 4 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/include/net/switchdev.h b/include/net/switchdev.h
index 3e424d40fae3..d5d923411f5e 100644
--- a/include/net/switchdev.h
+++ b/include/net/switchdev.h
@@ -229,7 +229,8 @@ struct switchdev_notifier_fdb_info {
 	u16 vid;
 	u8 added_by_user:1,
 	   is_local:1,
-	   offloaded:1;
+	   offloaded:1,
+	   locked:1;
 };
 
 struct switchdev_notifier_port_obj_info {
diff --git a/net/bridge/br.c b/net/bridge/br.c
index b1dea3febeea..adcdbecbc218 100644
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
index 57ec559a85a7..57aa1955d34d 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -987,7 +987,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 					   "FDB entry towards bridge must be permanent");
 			return -EINVAL;
 		}
-		err = br_fdb_external_learn_add(br, p, addr, vid, true);
+		err = br_fdb_external_learn_add(br, p, addr, vid, true, false);
 	} else {
 		spin_lock_bh(&br->hash_lock);
 		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
@@ -1216,7 +1216,7 @@ void br_fdb_unsync_static(struct net_bridge *br, struct net_bridge_port *p)
 
 int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 			      const unsigned char *addr, u16 vid,
-			      bool swdev_notify)
+			      bool swdev_notify, bool locked)
 {
 	struct net_bridge_fdb_entry *fdb;
 	bool modified = false;
@@ -1236,6 +1236,9 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 		if (!p)
 			flags |= BIT(BR_FDB_LOCAL);
 
+		if (locked)
+			flags |= BIT(BR_FDB_ENTRY_LOCKED);
+
 		fdb = fdb_create(br, p, addr, vid, flags);
 		if (!fdb) {
 			err = -ENOMEM;
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index f5a0b68c4857..3275e33b112f 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -790,7 +790,7 @@ int br_fdb_sync_static(struct net_bridge *br, struct net_bridge_port *p);
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

