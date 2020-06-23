Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65224206020
	for <lists.bridge@lfdr.de>; Tue, 23 Jun 2020 22:47:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F11FC87607;
	Tue, 23 Jun 2020 20:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BHW4xmauvQJj; Tue, 23 Jun 2020 20:47:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 672AE87463;
	Tue, 23 Jun 2020 20:47:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5A912C016F;
	Tue, 23 Jun 2020 20:47:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF92BC016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A0B5388257
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ViOKEif1eTTc for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 20:47:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B31838805B
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:43 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id v3so11684wrc.1
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 13:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PsVnZiU164smHUvfeaLehL8S/X1w62QMfoibHkfcTw8=;
 b=Djy+o3H71e3jVrH1oxVs/TKg65SF8T1ef5c1OnJdOmNtq1nGUFiJfPUyk6RBFwagNy
 q6mO8rf8A2KSQu5/Nd0Cdu0/nslWy9hcaIFGfRO8u9dJz1rTVZIgXjbvVYumTIyv2b/Y
 H6bdubYoXoYX97JdYF2kdf9/2eDkUgHJ5zOJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PsVnZiU164smHUvfeaLehL8S/X1w62QMfoibHkfcTw8=;
 b=n18lMl1NSzceXWJlzCYnRl5gXyqgga1f0dkfAUbRDCKHpecwB4ypPTO6xJZElX4dKg
 aamtBl4uiey57oSvRN3/PUcM0dEqw9d/LBH4xcQQFft8pcu+ptlABPHfTV6sGaLllK/e
 G7g1AGb9l5cVmd724pDxFF1LmZ+gtDrF0LfcY8VJyUd9QZGd0xUnxAMkk+doMXQ3UOYl
 6TOjvLZJ47ZzlRGLsbO2fGp1hNW0qFww/GMMAGkBDFx6NZTTt78MNVUFe33tXArmFu0P
 FKPhFWhE7a0r3E6FJP4u/A9DbtXnJpgBQ/8qbf+7iUlEWFB6pA7Nv8S91wCr4Vz+GYQn
 B5kQ==
X-Gm-Message-State: AOAM530QfLMl7vJt0gKvblnZ5GrTQ9rJQLU/Taleawi5GsgWfgzhDilS
 pk4awAtTM319GYSNqbHAMaRb0w==
X-Google-Smtp-Source: ABdhPJw6gRorTuL7N34Xr6y8T1Wtr2ZATURck/BUB/8ILF8R5bw8TtxeRWJshC+xHcpRsERcSFzdfQ==
X-Received: by 2002:a5d:6651:: with SMTP id f17mr13908746wrw.29.1592945262228; 
 Tue, 23 Jun 2020 13:47:42 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id j6sm5686924wmb.3.2020.06.23.13.47.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 13:47:41 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 23 Jun 2020 23:47:18 +0300
Message-Id: <20200623204718.1057508-5-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
References: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, anuradhak@cumulusnetworks.com
Subject: [Bridge] [PATCH net-next 4/4] net: bridge: add a flag to avoid
	refreshing fdb when changing/adding
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

When we modify or create a new fdb entry sometimes we want to avoid
refreshing its activity in order to track it properly. One example is
when a mac is received from EVPN multi-homing peer by FRR, which doesn't
want to change local activity accounting. It makes it static and sets a
flag to track its activity.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 include/uapi/linux/neighbour.h | 1 +
 net/bridge/br_fdb.c            | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index 21e569297355..dc8b72201f6c 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -191,6 +191,7 @@ enum {
 enum {
 	NFEA_UNSPEC,
 	NFEA_ACTIVITY_NOTIFY,
+	NFEA_DONT_REFRESH,
 	__NFEA_MAX
 };
 #define NFEA_MAX (__NFEA_MAX - 1)
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 642deb57c064..9db504baa094 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -860,6 +860,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 			 struct nlattr *nfea_tb[])
 {
 	bool is_sticky = !!(ndm->ndm_flags & NTF_STICKY);
+	bool refresh = !nfea_tb[NFEA_DONT_REFRESH];
 	struct net_bridge_fdb_entry *fdb;
 	u16 state = ndm->ndm_state;
 	bool modified = false;
@@ -937,7 +938,8 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 
 	fdb->used = jiffies;
 	if (modified) {
-		fdb->updated = jiffies;
+		if (refresh)
+			fdb->updated = jiffies;
 		fdb_notify(br, fdb, RTM_NEWNEIGH, true);
 	}
 
@@ -977,6 +979,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 
 static const struct nla_policy br_nda_fdb_pol[NFEA_MAX + 1] = {
 	[NFEA_ACTIVITY_NOTIFY]	= { .type = NLA_U8 },
+	[NFEA_DONT_REFRESH]	= { .type = NLA_FLAG },
 };
 
 /* Add new permanent fdb entry with RTM_NEWNEIGH */
-- 
2.25.4

