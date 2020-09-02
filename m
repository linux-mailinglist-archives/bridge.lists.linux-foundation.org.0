Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A40C825AA41
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 13:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AF9786824;
	Wed,  2 Sep 2020 11:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SRiS9dVuwr2L; Wed,  2 Sep 2020 11:29:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 984A086818;
	Wed,  2 Sep 2020 11:29:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E192C0051;
	Wed,  2 Sep 2020 11:29:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5D8B6C0051
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C01C86739
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z5C9zSSjRPmn for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 11:29:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A18C4866F2
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:29 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id l9so4141024wme.3
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 04:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YcxPQNiqZGfjRlM3agi/H9CXj/hoWpM61eljrbx6rLE=;
 b=WtJ+zPacVL8leVdtVXhM/VcdHCc/XQ9ai2STnwz8leWk31wiLaqlOt4eJpqcbJO0Sq
 omwLsTen3quNV8QaUHx6W920vl9qgqGcnzOYdB1oHEfs4RZsBHc7PegoeW64P5uLh40A
 SA0/iIlq973XfFHEOvdPYmsp3fdub8HKL/diU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YcxPQNiqZGfjRlM3agi/H9CXj/hoWpM61eljrbx6rLE=;
 b=VXsmcBiW29h154sdyJm1UttSs/OWM5wI3hXpJdetlQglvxvYhFy0exFGg4d0dpir1j
 KmQ778l0nPxQrtgG22UzqnBj3S5ym7qiJ+GTdXX/Lb6RWo+etwdaekAkgyWvdMNc3Skt
 SbW3ewG8ISnFRrX9zows55Tnyp83DvA0Easz4LhhQST4yUtlofwXEVhXHGnTaw1YtGg6
 1wa7ApOH0T4eIh9HuBpYQBYtknnxCshe9FlH4rBUjzSsauE28v69SFvAudcT8xAdUW0R
 Ln0Amb/Vl9eN9uISP5OrCbVgKRIv1zeyiooEHDedKdd6LIapV5Bpa2XOTN/l2okfuzIZ
 adsA==
X-Gm-Message-State: AOAM531Jvj7Pk26FOwCWnya1EGXDM6gNJ3YfPdLLzVBYwkTVAKa8q8+f
 hbSV+pUhNS+ZnlsfKgbqEYt3j49fVFbrcMf8
X-Google-Smtp-Source: ABdhPJyTnKSDWgIjCNX+g1r3pUsps04FY1kk8UesBPXAGa3Pty7u7ysUK4vXKBa88zmU+DtF9+Lusw==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr198001wmc.45.1599046168215;
 Wed, 02 Sep 2020 04:29:28 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 5sm5985172wmz.22.2020.09.02.04.29.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 04:29:27 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed,  2 Sep 2020 14:25:28 +0300
Message-Id: <20200902112529.1570040-15-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 14/15] net: bridge: mcast: improve v3
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
index 7df192e9ec50..db4b2621631c 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2034,7 +2034,8 @@ static void br_ip4_multicast_query(struct net_bridge *br,
 		}
 	} else if (transport_len >= sizeof(*ih3)) {
 		ih3 = igmpv3_query_hdr(skb);
-		if (ih3->nsrcs)
+		if (ih3->nsrcs ||
+		    (br->multicast_igmp_version == 3 && group && ih3->suppress))
 			goto out;
 
 		max_delay = ih3->code ?
@@ -2069,7 +2070,9 @@ static void br_ip4_multicast_query(struct net_bridge *br,
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

