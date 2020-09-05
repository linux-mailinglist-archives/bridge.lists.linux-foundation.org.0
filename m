Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE6725E678
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:25:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC52C2E1BE;
	Sat,  5 Sep 2020 08:25:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id quiA1uKeVfXb; Sat,  5 Sep 2020 08:25:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A5C8B2E1F2;
	Sat,  5 Sep 2020 08:25:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7C082C088B;
	Sat,  5 Sep 2020 08:25:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1A843C0052
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A8F2286EE3
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ar5lYN2PTP0T for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:25:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0126086EFE
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:25:02 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id j2so9656894wrx.7
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cLshL1qy2NWFVL3YMKKQ9DjLnzo1vTCjeiGuQjkekDY=;
 b=gUlcnVXhi18kYG1Srs+mVbGk2OpckgyGwERFFVf7L2ki1oDHWg1OskxZC4x2IPjacu
 bSTMtqIpIMoTP9zXiEKFnJpaVfH8JuHSmntxjzF3vn6BlwEPLaEry6PP+pMfX7LwMtWz
 Q4tPkiiwczOyD7Ea5Z363HLNBJUh/jzUw+RQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cLshL1qy2NWFVL3YMKKQ9DjLnzo1vTCjeiGuQjkekDY=;
 b=Tz1ePrqTbMFuJxZCjjEhsK2GzJfr5atTsYVFmhKwDDW+zS0Of/OVa4wPWC3kikV5ko
 lypLC9mj3Wi/Uf1xPMT7R6zIsZc0l0+hqnCX77WSJF1mUhHq/ToR+nX21VFPH39dXgpK
 Bm7AWhoRai+tTCinI8ahsSCPgUm4fH+KqeCnGWGG3NgR6awxeYaMbnUvfdYiaA7eZIzL
 AOcnOqj9AZNGKVWK35RZSYn6x883Q62iICxE8DDna1oU4bYAhSY2DUMf2TOphEg+e9ah
 lMX52k3EYWJeiXTHsu7LU6+eUsr9AVxBR2+hnsbco3tiQW4r5x/z00yyAWH24pIE0uMc
 q4aw==
X-Gm-Message-State: AOAM530ghLmz6G9eG2q4f/41n2N4qlXhmsYw2H7pcbc67jSlOkWcQmu/
 Wo8E+iTTSxH+I4q1heUqjvpQMg==
X-Google-Smtp-Source: ABdhPJyiJVJyzt58L+LNX8R6h9gwXlTpQ2dlnuv/pk59SB1qXgakN1XsOTHwI//j5WdX6yVMDugbIQ==
X-Received: by 2002:adf:e449:: with SMTP id t9mr11561889wrm.154.1599294301545; 
 Sat, 05 Sep 2020 01:25:01 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.25.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:25:00 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:24:09 +0300
Message-Id: <20200905082410.2230253-15-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
References: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 14/15] net: bridge: mcast: improve
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
index 2ded3f3c51c0..f146e00cea66 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2196,7 +2196,8 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 		}
 	} else if (transport_len >= sizeof(*ih3)) {
 		ih3 = igmpv3_query_hdr(skb);
-		if (ih3->nsrcs)
+		if (ih3->nsrcs ||
+		    (br->multicast_igmp_version == 3 && group && ih3->suppress))
 			goto out;
 
 		max_delay = ih3->code ?
@@ -2231,7 +2232,9 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 	     pp = &p->next) {
 		if (timer_pending(&p->timer) ?
 		    time_after(p->timer.expires, now + max_delay) :
-		    try_to_del_timer_sync(&p->timer) >= 0)
+		    try_to_del_timer_sync(&p->timer) >= 0 &&
+		    (br->multicast_igmp_version == 2 ||
+		     p->filter_mode == MCAST_EXCLUDE))
 			mod_timer(&p->timer, now + max_delay);
 	}
 
@@ -2281,6 +2284,10 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 		mld2q = (struct mld2_query *)icmp6_hdr(skb);
 		if (!mld2q->mld2q_nsrcs)
 			group = &mld2q->mld2q_mca;
+		if (br->multicast_mld_version == 2 &&
+		    !ipv6_addr_any(&mld2q->mld2q_mca) &&
+		    mld2q->mld2q_suppress)
+			goto out;
 
 		max_delay = max(msecs_to_jiffies(mldv2_mrc(mld2q)), 1UL);
 	}
@@ -2314,7 +2321,9 @@ static int br_ip6_multicast_query(struct net_bridge *br,
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

