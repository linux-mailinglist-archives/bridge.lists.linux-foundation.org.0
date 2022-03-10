Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA6A4D4966
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 15:23:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5FAC140012;
	Thu, 10 Mar 2022 14:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3H357o2Kx66; Thu, 10 Mar 2022 14:23:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 92CE8408D1;
	Thu, 10 Mar 2022 14:23:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6C601C0073;
	Thu, 10 Mar 2022 14:23:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9742EC000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 84B4481301
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y0RbQEFIBsha for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 14:23:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B92F58135E
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:23:49 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id g17so9751588lfh.2
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 06:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=NqCB67vT/c9mnsvCZbyxsMiWwZnjZ99KtMNG9ZRMdjE=;
 b=nCKpcv8pOchn2LpC3a/sEnI8cxJFMz8viJQDl7VV8+p0GiE3TYJ7Tvz1BJEHn/4MfZ
 T7gX/nVKdlYi3BEEDxDduv+dwNSZ6h3g6OBm0IvBc8qgolkU0UP0kMcjP+RYSQpZM9I+
 NFQmUbZGwC2h1JkqvAY5XbGLqyvEWKrisf/O0hMRFPLuXTaD/TYBtiR/W5Br/qxcoxev
 hHid6O4YHi50rYahmytGQ36sGAdlyvB6xYuq5pfU/UWIQXGXDpLenJwB/pX08zahrUEK
 6NUOjLb80aPnM8ZT8Y0VsVa1rz6SiO0yAowTfsS4eSbX/c0iRZwRzu+vjyBhUT99hebH
 WAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=NqCB67vT/c9mnsvCZbyxsMiWwZnjZ99KtMNG9ZRMdjE=;
 b=dCn/VKZvfl2FyC7EnTEIem+hTmQb+CVfqOq5rmLGBDEOQkw37AAc1RUe7oHT5dkqUF
 KC6YkkvK+8jKW/PK+xMlugBib2KJYb95Wnp+fd9Bv/1lgdghPtkDwVhbwInnduGTm16o
 5RzBYHQ/6Zj+lnWMfo+nhPyaGW1jQJv5bMoN8Hf58nhjomqU4OBD76Auf2uqpbGUahXW
 lOkah9GxPsZAxy0EDxBAr+4HcyzJ7iigcTiDjLGGdJX1uwnDrHVGW6/6xcdd+0DBzlqd
 I6WBWgNOEZr6Pggd0SAtkAqbZcWZVGYTvpi7xNNfHpal6iJfFls2AhyRZZHdHxawyIki
 Ws6A==
X-Gm-Message-State: AOAM532bsoQ0msBC8JEVg62gwCtbizXsHdcAA2jIyfFdtWDrcxWtx2nB
 hGtD73KpZJbZghxbcFnVOfw=
X-Google-Smtp-Source: ABdhPJycknNX5QY9A00iArbnxz8DgutUT/nn0zkVJ+dDezoA+QItx/kkE8HXhBp2tgEHq05zhytS0w==
X-Received: by 2002:a05:6512:1698:b0:445:bc1d:3835 with SMTP id
 bu24-20020a056512169800b00445bc1d3835mr3065989lfb.122.1646922227753; 
 Thu, 10 Mar 2022 06:23:47 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 10-20020a2e080a000000b00247f82bbc6fsm1088932lji.54.2022.03.10.06.23.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 06:23:47 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 10 Mar 2022 15:23:19 +0100
Message-Id: <20220310142320.611738-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next 2/3] net: switchdev: add support for
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
index 396dcf3084cf..91387aa7e400 100644
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

