Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E28B257BC3
	for <lists.bridge@lfdr.de>; Mon, 31 Aug 2020 17:10:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A730387B4D;
	Mon, 31 Aug 2020 15:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZslQE9VXOY9O; Mon, 31 Aug 2020 15:10:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4670A87ABF;
	Mon, 31 Aug 2020 15:10:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 38A12C07FF;
	Mon, 31 Aug 2020 15:10:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 90AE5C0051
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8ABEF21507
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7NlJNhU5M2+j for <bridge@lists.linux-foundation.org>;
 Mon, 31 Aug 2020 15:10:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 41A5E20C45
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:10:13 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id l9so1811317wme.3
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 08:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5rHaHeEW27aQeKn7DgkSF8lCaC4zYOPlmbEcK5oKJ8E=;
 b=WLhTbdMtV0EhI2mcciSJy6Eh9ashl1aJ7f4sQM4a25KHqlpcCCiLXhGiIeocun9A2+
 nIhczss47B88cfHmYJ9R9pV3zL5604w5hWNdxaEvJ8uLr2OW9hp6B2GkdWjxwvCLkNKk
 U/MkvB+BRRwmxWAY9NrO06Wvywin3iVI56ST8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5rHaHeEW27aQeKn7DgkSF8lCaC4zYOPlmbEcK5oKJ8E=;
 b=L2HqEIL8fAasEOQAbkRmwfPzd9ajOCilI2bg/TJayQ8O2tal1s3q3Si6B0XN7flmAd
 Kx5E3yEg6P3Nqvz/fFgpGjs7hC9i0Vzutu6izUEDPfkQGqu2Zmf7UBz+mnA9rC2HmDAO
 pDJm0CzPnjvJeXP9Di4VBu63KpYuYEMyMgY19pmI4bDcDWL6+NuJcBCa2wT9B44/sjQI
 C4/Vyo5sAYecFUo0hbQ0HHroPbDl4TtxL7e1cZebHirQUtFqJ4SF6h3W3axBgKsDId73
 zQ1uW/E9r+o8J8xtrD8BSmYXOzDg3heYS1KGQGrTAgR464SiEIZVx4uf0BMuBgFgjGih
 uxpQ==
X-Gm-Message-State: AOAM531Rd5KvpOa6K/OnqsiiH4vO+H7KTta4fraK6XCuJjSUzua+jFy/
 9jv2hQ9UvF3262I7P+0IQDe1Bw==
X-Google-Smtp-Source: ABdhPJzAnlyVPxABDimUPXeNjF1QiCzR2RZtLMSMwEzHIf1Yk8gce86GvJVM9NQSkYxSWISERzesXw==
X-Received: by 2002:a1c:6187:: with SMTP id v129mr1711883wmb.35.1598886611622; 
 Mon, 31 Aug 2020 08:10:11 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f6sm14181636wme.32.2020.08.31.08.10.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 08:10:10 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 31 Aug 2020 18:08:44 +0300
Message-Id: <20200831150845.1062447-15-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
References: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 14/15] net: bridge: mcast: improve v3
	query processing
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

When an IGMPv3 query is received and we're operating in v3 mode then we
need to avoid updating group timers if the suppress flag is set. Also we
should update only timers for groups in exclude mode.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 55c2729c61f4..3b1d9ef25723 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2052,7 +2052,8 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 		}
 	} else if (transport_len >= sizeof(*ih3)) {
 		ih3 = igmpv3_query_hdr(skb);
-		if (ih3->nsrcs)
+		if (ih3->nsrcs ||
+		    (br->multicast_igmp_version == 3 && group && ih3->suppress))
 			goto out;
 
 		max_delay = ih3->code ?
@@ -2087,7 +2088,9 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 	     pp = &p->next) {
 		if (timer_pending(&p->timer) ?
 		    time_after(p->timer.expires, now + max_delay) :
-		    try_to_del_timer_sync(&p->timer) >= 0)
+		    try_to_del_timer_sync(&p->timer) >= 0 &&
+		    (br->multicast_igmp_version == 2 ||
+		     p->filter_mode == MCAST_EXCLUDE))
 			mod_timer(&p->timer, now + max_delay);
 	}
 
-- 
2.25.4

