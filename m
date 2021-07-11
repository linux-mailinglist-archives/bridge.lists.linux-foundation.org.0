Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4293C3B6A
	for <lists.bridge@lfdr.de>; Sun, 11 Jul 2021 11:58:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EADA983A41;
	Sun, 11 Jul 2021 09:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aMfQ_4zzfbjg; Sun, 11 Jul 2021 09:58:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B3FDF839E9;
	Sun, 11 Jul 2021 09:58:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 752BCC001F;
	Sun, 11 Jul 2021 09:58:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D775AC000E
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C739B600CC
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0xDH8RJYS0Cc for <bridge@lists.linux-foundation.org>;
 Sun, 11 Jul 2021 09:58:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11899600CB
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:04 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id k32so5980878wms.4
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 02:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m+ppdXaepSm57DIGWDBCLlBbyDz4JtRjsnYacqgtWjM=;
 b=fnQhTuQfvikn8wsBlfQW8wa3TbTUdvL0BRKK1SsYvIwdDSwNo5zRHUXHIZiOrK1j0E
 DyOKpo7teKbeuC/1PSB5SYfWmdurOnmS2ML5Z3ywee1IsWq5zt134nq8CTF6o2Wpgagk
 vECivnNM30xVlMiDEndXTNjjyh24f6Uzcd5NrEZJRcUg4/anj/GxVspV+dI7IWBqik86
 utcc1VgQn9CSpmE3l212ly279r+QKBnk+8jfqmMAgn+bx31+Mus5OX/xNlcarV+grdl5
 Q+InIy7uEBcuh9LioRmh5VeBkXK1vglUBKECuZ3uu5JdQ8W2jW1QLLuft4wHStY4mr7Y
 b+MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m+ppdXaepSm57DIGWDBCLlBbyDz4JtRjsnYacqgtWjM=;
 b=b+XNHHClVZwkx7F0q/TDf3P9h8o8L4xvehQnVKLOZk2cjFp907utgsDd+7IXWUpzed
 KmkGL546DCge1m7moxx4xlrGTiCIp8bCQuOYNP+YtKV04cWmWX6ArkQl74Xt9SVbPbVL
 k5aaTmDiud5utryD+sPWFJphALwL6AsPzDZD/G3THmI7m8s7ASY8mdWS+TTOQ9VlXHw7
 B8cwtFW8KlZ/ZH5jNviPDjCiqgKGKzS3eKKp7ZLxs0wsglNmJKrAn13W/KgflZyiK2Wt
 rcq/itFZQpd1iebwytbYwsMnilQlj/FmfwOahjpoA2+cWjRqgNCunIBPz8ZPPjBHkvCM
 My6Q==
X-Gm-Message-State: AOAM531N63xjajEPVxIaNlB5xceqy0s+sq2s0FsSNPOvbZXiapvEvINV
 opYH8R5ZMch475sWB5El/7Iakg==
X-Google-Smtp-Source: ABdhPJxMh5N/ZT1NO0GnZgOu0FK2DLpUQFpXk8FKrgs6M75XgwrtwyhH5hhkTruYNbSlG7vuXVK94A==
X-Received: by 2002:a1c:7314:: with SMTP id d20mr48433637wmb.167.1625997483257; 
 Sun, 11 Jul 2021 02:58:03 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m18sm9095567wmq.45.2021.07.11.02.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Jul 2021 02:58:02 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sun, 11 Jul 2021 12:56:29 +0300
Message-Id: <20210711095629.2986949-3-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210711095629.2986949-1-razor@blackwall.org>
References: <20210711095629.2986949-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 stable@vger.kernel.org, roopa@nvidia.com
Subject: [Bridge] [PATCH net 2/2] net: bridge: multicast: fix MRD
	advertisement router port marking race
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

When an MRD advertisement is received on a bridge port with multicast
snooping enabled, we mark it as a router port automatically, that
includes adding that port to the router port list. The multicast lock
protects that list, but it is not acquired in the MRD advertisement case
leading to a race condition, we need to take it to fix the race.

Cc: stable@vger.kernel.org
Cc: linus.luessing@c0d3.blue
Fixes: 4b3087c7e37f ("bridge: Snoop Multicast Router Advertisements")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 3bbbc6d7b7c3..d0434dc8c03b 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -3277,7 +3277,9 @@ static int br_ip4_multicast_mrd_rcv(struct net_bridge *br,
 	    igmp_hdr(skb)->type != IGMP_MRDISC_ADV)
 		return -ENOMSG;
 
+	spin_lock(&br->multicast_lock);
 	br_ip4_multicast_mark_router(br, port);
+	spin_unlock(&br->multicast_lock);
 
 	return 0;
 }
@@ -3345,7 +3347,9 @@ static void br_ip6_multicast_mrd_rcv(struct net_bridge *br,
 	if (icmp6_hdr(skb)->icmp6_type != ICMPV6_MRDISC_ADV)
 		return;
 
+	spin_lock(&br->multicast_lock);
 	br_ip6_multicast_mark_router(br, port);
+	spin_unlock(&br->multicast_lock);
 }
 
 static int br_multicast_ipv6_rcv(struct net_bridge *br,
-- 
2.31.1

