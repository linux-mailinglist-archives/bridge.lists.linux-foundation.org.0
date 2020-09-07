Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBE725F70F
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 12:00:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A7E685F5F;
	Mon,  7 Sep 2020 10:00:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rroL-KHv8ZGF; Mon,  7 Sep 2020 10:00:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADBE385F56;
	Mon,  7 Sep 2020 10:00:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2359C0859;
	Mon,  7 Sep 2020 10:00:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A4ECAC0859
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8CCC285F57
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S82YwBGFlemP for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 10:00:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 08F1F85F53
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:35 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id o5so15098850wrn.13
 for <bridge@lists.linux-foundation.org>; Mon, 07 Sep 2020 03:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gcib5npC4llvtu4+LbYVHXG0s/irec0HvJtAMaXEsuA=;
 b=ZIDfZGPxAQkTQXSDtB8+PJTEtY90uoFIXO2gmEPLNfFxIq2Ap68yD4hTccf7IGV9Jw
 CMuLilXTrkxtZ/1D9jLiADgI8Pan2WqWwTwbjYoCuofFsJcstLEws0SoGBcbLTELv7w/
 YAL8GyevJzPUZYcv2Uf7vn+JiHAOPAc4IyB7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gcib5npC4llvtu4+LbYVHXG0s/irec0HvJtAMaXEsuA=;
 b=XG9emAHiKBWfKhK5i+UnBw7BdcrmLguCO9N+9WJcx6DOFB5kq/+pdgHSI+v0A3KJj+
 0SQtW/P3wdB0LEnxEziXkfFX8lvCgcWS/CtyDFeofZOKIGe4OJHX7k3dZ43VXgORcfNB
 c+2p2SxSGHgD6vFRxT6bex1OH/VWZX+BU7wC4Db01RAnXA3O0wiS1VUQDNn4yZMGx8qB
 xxpY8d19KJDIhfEzUkISKn2Z2oiHvf1leugc4nXeb0Ldc6s1pyKhXdv6zHfzyt6ZKSzC
 NbJrREFWW3GJn03eoitEWV1Vfbd5h/iqezjurtbWt4kW+ousCpLWn321XssU1T9gwvqj
 BkUA==
X-Gm-Message-State: AOAM531Rr2HYTPdq2RYmjXqWIGe5FvKp/X8W509/3yqLBJUJkkbuFv6D
 +NNiDf2o9GCKqL0psIrm2ObveA==
X-Google-Smtp-Source: ABdhPJzkOD+reBG25304mK3qJigYYg32yVreS/zABWM9YSkBDWxr4rc6yt4AhNBnoppbUKolI4gbsg==
X-Received: by 2002:a5d:5150:: with SMTP id u16mr20752969wrt.197.1599472832322; 
 Mon, 07 Sep 2020 03:00:32 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 9sm6686289wmf.7.2020.09.07.03.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:00:31 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Sep 2020 12:56:18 +0300
Message-Id: <20200907095619.11216-15-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
References: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v4 14/15] net: bridge: mcast: improve
	IGMPv3/MLDv2 query processing
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

When an IGMPv3/MLDv2 query is received and we're operating in such mode
then we need to avoid updating group timers if the suppress flag is set.
Also we should update only timers for groups in exclude mode.

v3: add IPv6/MLDv2 support

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 6cfac6cbaf3b..0bf791ed0f56 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2194,7 +2194,8 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 		}
 	} else if (transport_len >= sizeof(*ih3)) {
 		ih3 = igmpv3_query_hdr(skb);
-		if (ih3->nsrcs)
+		if (ih3->nsrcs ||
+		    (br->multicast_igmp_version == 3 && group && ih3->suppress))
 			goto out;
 
 		max_delay = ih3->code ?
@@ -2229,7 +2230,9 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 	     pp = &p->next) {
 		if (timer_pending(&p->timer) ?
 		    time_after(p->timer.expires, now + max_delay) :
-		    try_to_del_timer_sync(&p->timer) >= 0)
+		    try_to_del_timer_sync(&p->timer) >= 0 &&
+		    (br->multicast_igmp_version == 2 ||
+		     p->filter_mode == MCAST_EXCLUDE))
 			mod_timer(&p->timer, now + max_delay);
 	}
 
@@ -2279,6 +2282,10 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 		mld2q = (struct mld2_query *)icmp6_hdr(skb);
 		if (!mld2q->mld2q_nsrcs)
 			group = &mld2q->mld2q_mca;
+		if (br->multicast_mld_version == 2 &&
+		    !ipv6_addr_any(&mld2q->mld2q_mca) &&
+		    mld2q->mld2q_suppress)
+			goto out;
 
 		max_delay = max(msecs_to_jiffies(mldv2_mrc(mld2q)), 1UL);
 	}
@@ -2312,7 +2319,9 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 	     pp = &p->next) {
 		if (timer_pending(&p->timer) ?
 		    time_after(p->timer.expires, now + max_delay) :
-		    try_to_del_timer_sync(&p->timer) >= 0)
+		    try_to_del_timer_sync(&p->timer) >= 0 &&
+		    (br->multicast_mld_version == 1 ||
+		     p->filter_mode == MCAST_EXCLUDE))
 			mod_timer(&p->timer, now + max_delay);
 	}
 
-- 
2.25.4

