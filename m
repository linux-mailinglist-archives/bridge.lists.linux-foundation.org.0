Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0818125F705
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 12:00:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22FD385EE9;
	Mon,  7 Sep 2020 10:00:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFXoP3lFac4L; Mon,  7 Sep 2020 10:00:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEE8685ECE;
	Mon,  7 Sep 2020 10:00:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D60A0C0051;
	Mon,  7 Sep 2020 10:00:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 04706C0859
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F3CD685E9B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VsHu6BtwlrfN for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 10:00:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3685885E98
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:26 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c19so11974010wmd.1
 for <bridge@lists.linux-foundation.org>; Mon, 07 Sep 2020 03:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xPrgpvu8R7IeEavKBbZFAFtOZyz+o22/fgY3P1q+vxU=;
 b=e0/Y7WvqcsSW6S/j3Wr3KIJZjCEM2UZIU2Eap7CrxpAFou9DxSVQzUH5YVGsgd+uCB
 etikOn02AOvdyE3+6Prfuqe+LKZ2EyMQZ9lAu34WBxcbjN8yRw3QhQoyjfiJCJNI8Aew
 topxP9uI9mUm3ahS3bxJN3QbEIuAIXbUInMPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xPrgpvu8R7IeEavKBbZFAFtOZyz+o22/fgY3P1q+vxU=;
 b=D7shHo/xioysiPCafiVzB2mVnRWTgRrH88loTGQHb2qwKN4fizrhekRoBd8MCWjguP
 XUoCJ29wOXnsI7uw+3bJ8aPovapPO/gVjUWp9UmobFucXulHqXovk4slj5dzN4EXzPhV
 a5xeKiEZ2htg0zhjX8NGM51xpFRmQRPtwQJIneNFziVEzwNP8J8W+B2x2J6xJnxTr5sW
 Dxhr7AMGyAd0Fw0ufLeF4qfJt+ebeH3SNL7piP3+CRzvayVXLb9IFBmd5O0MpVE6hfN6
 rvhA3lEvGidAdK3xANpH18bHSzfbOgQxc4OU6sZNIJIRBQu+eBXeE7FXgFcXGNIiANZG
 cJ3Q==
X-Gm-Message-State: AOAM531tU2d4SrmhuRePVO0Snbab+V1IbBTgPa6qYmGYC2raIzedzAim
 +1O8H6Ni3a0oQvmrT3ioqgWOvQ==
X-Google-Smtp-Source: ABdhPJwbxNJwmpD8e1VkLqnIVS8IOypN9C+A23SLMLNr1p6jzW/Gerw1vDfcW0M6e+q62yV5GnwK2g==
X-Received: by 2002:a7b:cc13:: with SMTP id f19mr19825730wmh.168.1599472824827; 
 Mon, 07 Sep 2020 03:00:24 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 9sm6686289wmf.7.2020.09.07.03.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:00:24 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Sep 2020 12:56:13 +0300
Message-Id: <20200907095619.11216-10-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v4 09/15] net: bridge: mcast: delete
	expired port groups without srcs
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

If an expired port group is in EXCLUDE mode, then we have to turn it
into INCLUDE mode, remove all srcs with zero timer and finally remove
the group itself if there are no more srcs with an active timer.
For IGMPv2 use there would be no sources, so this will reduce to just
removing the group as before.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 541a22e130b0..ba2ce875a80e 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -222,15 +222,34 @@ static void br_multicast_find_del_pg(struct net_bridge *br,
 static void br_multicast_port_group_expired(struct timer_list *t)
 {
 	struct net_bridge_port_group *pg = from_timer(pg, t, timer);
+	struct net_bridge_group_src *src_ent;
 	struct net_bridge *br = pg->port->br;
+	struct hlist_node *tmp;
+	bool changed;
 
 	spin_lock(&br->multicast_lock);
 	if (!netif_running(br->dev) || timer_pending(&pg->timer) ||
 	    hlist_unhashed(&pg->mglist) || pg->flags & MDB_PG_FLAGS_PERMANENT)
 		goto out;
 
-	br_multicast_find_del_pg(br, pg);
+	changed = !!(pg->filter_mode == MCAST_EXCLUDE);
+	pg->filter_mode = MCAST_INCLUDE;
+	hlist_for_each_entry_safe(src_ent, tmp, &pg->src_list, node) {
+		if (!timer_pending(&src_ent->timer)) {
+			br_multicast_del_group_src(src_ent);
+			changed = true;
+		}
+	}
 
+	if (hlist_empty(&pg->src_list)) {
+		br_multicast_find_del_pg(br, pg);
+	} else if (changed) {
+		struct net_bridge_mdb_entry *mp = br_mdb_ip_get(br, &pg->addr);
+
+		if (WARN_ON(!mp))
+			goto out;
+		br_mdb_notify(br->dev, mp, pg, RTM_NEWMDB);
+	}
 out:
 	spin_unlock(&br->multicast_lock);
 }
-- 
2.25.4

