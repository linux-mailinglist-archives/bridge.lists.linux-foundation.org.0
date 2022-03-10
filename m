Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 900F74D482A
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 14:36:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00DB48472F;
	Thu, 10 Mar 2022 13:36:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uKse6GwaCTcw; Thu, 10 Mar 2022 13:36:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8BAE484731;
	Thu, 10 Mar 2022 13:36:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 623F4C0073;
	Thu, 10 Mar 2022 13:36:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 445E9C001D
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21CB18472E
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fmztEEPu-DD1 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 13:36:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4945684731
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 13:36:50 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id q5so7718099ljb.11
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 05:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=NqCB67vT/c9mnsvCZbyxsMiWwZnjZ99KtMNG9ZRMdjE=;
 b=gkiTNDi5pZ9lk4PtAzuCZONXJq/Ix6gNIP6lS2X8nIxEocHHlWsxFVlQnakJrBoTpF
 oHT9ruoMDwEr5cLAj0Z3erdEOCp1ualiI3kJq7TIN7mYN1pqCvOzfqEhbFM6W/r8MOxb
 OS+q7KTn5rQEM8yha5bL9Hq8q4fBL0ePKYvUqYCvVhV4IZx+JI+ExouAmFZjPFZvFySd
 hn3IA4krwCpeyTjYje2DPMcl0ZVOwG12by+T3JqVPQc8xK/20D3EuGbTTf2JRWiXmTo9
 SI/bK9q33kbzhW+ElY1YHK16eercCeiIESDKv96IPGEMz+GYJqaSirVRbsAm6XulchXk
 Co+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=NqCB67vT/c9mnsvCZbyxsMiWwZnjZ99KtMNG9ZRMdjE=;
 b=SnlI65mRZTWJSKDIcmRTyAbnoYJchSNjTfuQB1RP58yjhRrfNiZXmb5UQi4GM+spiY
 D70ae2ZsRxqDD5a+IDVsicjER4BQCu9zAwUKEUwQqOgkULDTlhc7EC5vQyCsf5LkkrEx
 uigB23E4OPosniCPF7icdFBr8CtLH0QSkkpH0YQBsrc6jU/GrmWkNiIVHGu3GwsdCszK
 vnm0OrLJ0HZ62bl7WgAm02KZx8w+aMd4ObmPx3LU98W5fY/b9HTtd6IncEJJvSBZXcw9
 X6IsNSmyqEUpMoe9W3kE5m+aIhfXjEBEC3OhRsT/1cfWQO9826zMYs/10Dhqd6Rzw16B
 R+4A==
X-Gm-Message-State: AOAM531fx7FGsfjWLMro2IPkNDAJZi5kRpxaDNJ4FD1bnIvfZmaKlQ8+
 ojRE3t0mTw5sIAfnn/7fcN7l+X/yZUQYlw==
X-Google-Smtp-Source: ABdhPJzALSN85vM/MYGsqF+G/jpOWjdpM2jeGicHF1VoQtP/X7X4iNq+rg9zM5dEvzLmFwOgRPNbzQ==
X-Received: by 2002:a2e:3004:0:b0:223:c126:5d1a with SMTP id
 w4-20020a2e3004000000b00223c1265d1amr3079728ljw.408.1646919408328; 
 Thu, 10 Mar 2022 05:36:48 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 i2-20020a05651c120200b00247d22bc318sm1060299lja.22.2022.03.10.05.36.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 05:36:47 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 10 Mar 2022 14:36:16 +0100
Message-Id: <20220310133617.575673-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220310133617.575673-1-schultz.hans+netdev@gmail.com>
References: <20220310133617.575673-1-schultz.hans+netdev@gmail.com>
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
Subject: [Bridge] [PATCH iproute2-next 2/3] net: switchdev: add support for
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

