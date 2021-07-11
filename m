Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5771E3C3B67
	for <lists.bridge@lfdr.de>; Sun, 11 Jul 2021 11:58:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A736F83A57;
	Sun, 11 Jul 2021 09:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RgzvOgOIxbek; Sun, 11 Jul 2021 09:58:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4C6DE839E9;
	Sun, 11 Jul 2021 09:58:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 31A64C001F;
	Sun, 11 Jul 2021 09:58:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F0889C0020
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CCF29600CB
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QL3j0l8O1lux for <bridge@lists.linux-foundation.org>;
 Sun, 11 Jul 2021 09:58:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C191600C4
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 09:58:03 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 k16-20020a05600c1c90b02901f4ed0fcfe7so9253467wms.5
 for <bridge@lists.linux-foundation.org>; Sun, 11 Jul 2021 02:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pLzFV9bVvdr4KYBirs5X2mj4DUo8QQJaXp8K6ahEWRc=;
 b=Y2HnxZE9uISH43M340AOZ5mIqJD9tWGUhE68UhwL5YsyErc23G25PBlgG2ZDFdrqO+
 zQvXelHcRrwzaMKgoRQTYrOe/Zbgc5xWWOtjitlCxiVXQTV9mR9PhLvkpznLLte/hZ7t
 aGeMcAUvRjXnP552wFKcFI4hkyoR/0AicsmPs4nOLZ9mSwlI8OPWp+AQroaSDaeTsr9c
 QmzPBqHQYahnIyxUPKKtM8P1EnhXJEeR5smsWWbJvKBaPRn2Yd+3zowbFIgc47bwfPsa
 8DT8b94QLKevyQvHkav+/nUKuiSUzdYlv7mheI2AR1VpagAnnBmzGSvDp127ZRq4oHrM
 +d6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pLzFV9bVvdr4KYBirs5X2mj4DUo8QQJaXp8K6ahEWRc=;
 b=iIfyglUqXXGnXF/Ne9srCkgNf0G6RI/7dI93Y04JEcJTpQtfFbYEZ/YSs68hICFQz1
 XZCWNCPq9TEkReRmtro0Jf/4SQu2A9SFDcZS5KJjH6W4rp66ifRpGEjxtqVHNuI+j4Pd
 B5wVvJb0eArDcbVyGLUjTJEBxU6j7o9gwk7boNcq2Wr7RUBGikBvb2tV9c5OQInzUpSK
 rLm8linhCsaFri7MYbzOpLzSxVtc6JzJC2FL361Vf38NRx0iGnNlHeI0onLPRkZhTiXa
 geWbRbEcCqJ4feHpRzcc8gsOrcjAhDivtOb7Hz3hHGgb9xPnECLADr78GBSG9PygYUpD
 CZNw==
X-Gm-Message-State: AOAM531oDZ/Z9Z+G+QRTo9XHyAvx9tK5yV1t+us+jQUlJaT2/eW8Inl4
 0BhRG1PwQeOWGF+fpZGZ6p2H9A==
X-Google-Smtp-Source: ABdhPJyalwUZFSHhyZ4Lc8XVzGNjSWk8JzjA5IhRBFMi881bU4Pz4wujoBnDe/4bLHXjEUJ+Jcs3rQ==
X-Received: by 2002:a1c:7308:: with SMTP id d8mr19627179wmb.20.1625997482179; 
 Sun, 11 Jul 2021 02:58:02 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m18sm9095567wmq.45.2021.07.11.02.58.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Jul 2021 02:58:01 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Sun, 11 Jul 2021 12:56:28 +0300
Message-Id: <20210711095629.2986949-2-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210711095629.2986949-1-razor@blackwall.org>
References: <20210711095629.2986949-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 stable@vger.kernel.org, roopa@nvidia.com
Subject: [Bridge] [PATCH net 1/2] net: bridge: multicast: fix PIM hello
	router port marking race
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

When a PIM hello packet is received on a bridge port with multicast
snooping enabled, we mark it as a router port automatically, that
includes adding that port the router port list. The multicast lock
protects that list, but it is not acquired in the PIM message case
leading to a race condition, we need to take it to fix the race.

Cc: stable@vger.kernel.org
Fixes: 91b02d3d133b ("bridge: mcast: add router port on PIM hello message")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 53c3a9d80d9c..3bbbc6d7b7c3 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -3264,7 +3264,9 @@ static void br_multicast_pim(struct net_bridge *br,
 	    pim_hdr_type(pimhdr) != PIM_TYPE_HELLO)
 		return;
 
+	spin_lock(&br->multicast_lock);
 	br_ip4_multicast_mark_router(br, port);
+	spin_unlock(&br->multicast_lock);
 }
 
 static int br_ip4_multicast_mrd_rcv(struct net_bridge *br,
-- 
2.31.1

