Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1A63E5435
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 09:21:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6629D40201;
	Tue, 10 Aug 2021 07:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVHgNOkVpCMm; Tue, 10 Aug 2021 07:21:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C032840012;
	Tue, 10 Aug 2021 07:21:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 88C80C001F;
	Tue, 10 Aug 2021 07:21:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 39E6DC000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 07:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2361260620
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 07:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zCYYmOo13g96 for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 07:21:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A0AF60618
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 07:21:49 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id g21so28811182edb.4
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 00:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=up+eew742X9QXmow643XmONFSJDHCmQiISaU60otKWY=;
 b=Hj6XIanI3u2F1shNBA3Vyc+8RWLtizk9WYkfA1YQliwp9LxB8743ERNDZ1NOhwS5NO
 c/FXufFGrZ0A9Ttt4tNCMet0B6blA8q3DDcGog5oL0gLLHpuHYrncXmkNyxHNfamrFUB
 f94yI+jcT93NbNFUP1XRjXxW6oGJypqX+f6kZ4CAJiuw5hvImbJdLu00Dd7BrlUpoxrP
 IYRA2gxyT0rrX3ybz58u2qpfDjC0MxkwNcvkAFNQoSugDDBts+jV6arlHnpXUejU/GlM
 T88EZEDQAk9F/M/dWDAuO4WkOAZZXO4qKFtttU8adSRuQit6myk/xka7e+++ODKgdxBR
 bd1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=up+eew742X9QXmow643XmONFSJDHCmQiISaU60otKWY=;
 b=ENnpg86maQMyhEnF2fXj14aDJSiSlCD/Xi+X5QO3eXf+UCploB/6bBpHA9w/5Cf3mb
 ACCwWPBASBeLjO+jQsscIV3OSLSHVXa0B2qjjCl9pvoxaPpFIQ9J911kWhiQWAWYdgz9
 Sd5ETXmx9xjohujHCJGwrfDo9vARiAShYOJ/NncUdaN5PMaPb3aubJorpy2+Bi255PMz
 wUTgGNIphq3WtbpvN1TF/UWlomhMzo148ceq6C9jKHrebx56TTGr01tTwxd0M4BX7LxA
 AEAWJB4MoU+3Rj/jyGcr8KjXIwPKzMl4kUzBxyZxdleXzryQU2G4R59a1oMChzVASLL9
 umQg==
X-Gm-Message-State: AOAM531+RaZLjnzSBJLK+ZNroianeXNjueUrRb9zb7/MlL2NkQ2Oh4pE
 R6H3pEHlZZm9QdVbGhY5hlhkQg==
X-Google-Smtp-Source: ABdhPJzyiED0fEl+efvYe4jeXCQUt5Op8b4nYFC7UVLWft2HvFbF4JCi+uojgtNHGlrhWtFUeJ6n+Q==
X-Received: by 2002:a05:6402:1514:: with SMTP id
 f20mr3303243edw.336.1628580107222; 
 Tue, 10 Aug 2021 00:21:47 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f26sm9141725edu.4.2021.08.10.00.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 00:21:46 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 10 Aug 2021 10:21:39 +0300
Message-Id: <20210810072139.1597621-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <YRIfT6vLL16hr+7p@shredder>
References: <YRIfT6vLL16hr+7p@shredder>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: vladimir.oltean@nxp.com, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net] net: bridge: fix flags interpretation for
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

Fixes: eb100e0e24a2 ("net: bridge: allow to add externally learned entries from user-space")
Fixes: 0541a6293298 ("net: bridge: validate the NUD_PERMANENT bit when adding an extern_learn FDB entry")
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
Tested-by: Ido Schimmel <idosch@nvidia.com>
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
As discussed I decided to keep the error for !p and !NUD_PERMANENT case.

 net/bridge/br.c         |  3 +--
 net/bridge/br_fdb.c     | 11 ++++-------
 net/bridge/br_private.h |  2 +-
 3 files changed, 6 insertions(+), 10 deletions(-)

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

