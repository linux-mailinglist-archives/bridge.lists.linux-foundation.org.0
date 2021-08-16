Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919B23ED1AD
	for <lists.bridge@lfdr.de>; Mon, 16 Aug 2021 12:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9066D40228;
	Mon, 16 Aug 2021 10:11:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PRC4W8BEjdlw; Mon, 16 Aug 2021 10:11:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 25FD440221;
	Mon, 16 Aug 2021 10:11:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D3464C0022;
	Mon, 16 Aug 2021 10:11:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 17BAEC000E
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 137C86069B
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJGzzKcA9BAP for <bridge@lists.linux-foundation.org>;
 Mon, 16 Aug 2021 10:11:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5ACAD60650
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:47 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id r19so22222676eds.13
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 03:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VeAxzN5DXkah2WW1j0/kmj2z9yubcpseK6WCofF+3Js=;
 b=g6mPVuDPBag/AAVcsHK14Ce7QpDJMjTOWoV7FJ+tziCL01WHrAJoG64Amw0YaNQKjq
 dXKY/8LiqwzOTfi4lof4HfzWpf+SDvmTbNMrVH12wWrpUtNhM/k6r0Am3l7ne20e3wmF
 m3sFXIf6dOenFk61y4rjDslXOUMbv3Abjn7Y7NUNXoztX9F4UzW52vnxfEMGLG1ZbqAP
 Zd9JNo7V7BO+lf8JMYfaxaF6zSuVH3IXr3KZJ3xwyrpXuXhKeNuC8OWRqxRx55FSyd30
 WW3+/4aR8J3FozZYFYCSnWZ+X7lEpnsAJvcf7wb2ZnHTXQ9tp0Z+H2AwDQQ0P8qlaEmj
 enGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VeAxzN5DXkah2WW1j0/kmj2z9yubcpseK6WCofF+3Js=;
 b=oNjdB1YUM6Xb1ZzMrbidP1DykHU+Bmjati4GtWREYY21Rl1o8fSUIsMO9JEluFBTjy
 kY9dJ1Kb83C5BxRdUW4rcCAcJ9W4PsB0aHMTf5VJ8rqSheV8k3U6Mswg505rRmtGGknB
 PoZqHmEsW/X+Xfgn8oFo16MMUCNdfsuUEGlLBHWVN3caCll+rqMsgzNZtGodZ8Mq5g1v
 9VsIBs6Rf9O1/sbx6iphHrPh/0mfmX8OZ3jRmLQKcvY2rWXeNv9VLSWaMTexkY6VCHqJ
 iDJToB5cHM7hLrslTebCRAseP2zqF6JSoarMZ2YtYyn8S3mpfmCm10gmtmDP9jmmvv2s
 daOQ==
X-Gm-Message-State: AOAM532ZuftBbwZPuj2hkaJTHfINawzRlTyBMvhMZbH9IVu5gw+a4gRC
 8GJZ2s7jufiOQWWx+ERxEFZW8Q==
X-Google-Smtp-Source: ABdhPJyljAumV2r7rnIRE8L73ezYdjuO2ulEuxqg8XGlrm65lyb/CYkORdq2I8Nan30OG0F6Sv1WgQ==
X-Received: by 2002:a05:6402:89a:: with SMTP id
 e26mr19146030edy.196.1629108705507; 
 Mon, 16 Aug 2021 03:11:45 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a60sm4673779edf.59.2021.08.16.03.11.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 03:11:45 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 13:11:33 +0300
Message-Id: <20210816101134.577413-3-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210816101134.577413-1-razor@blackwall.org>
References: <20210816101134.577413-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kernel test robot <lkp@intel.com>, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 2/3] net: bridge: mcast: drop sizeof for
	nest attribute's zero size
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

This was a dumb error I made instead of writing nla_total_size(0)
for a nest attribute, I wrote nla_total_size(sizeof(0)).

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Fixes: 606433fe3e11 ("net: bridge: mcast: dump ipv4 querier state")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 9bdf12635871..76992ddac7e0 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2928,7 +2928,7 @@ __br_multicast_get_querier_port(struct net_bridge *br,
 
 size_t br_multicast_querier_state_size(void)
 {
-	return nla_total_size(sizeof(0)) +      /* nest attribute */
+	return nla_total_size(0) +		/* nest attribute */
 	       nla_total_size(sizeof(__be32)) + /* BRIDGE_QUERIER_IP_ADDRESS */
 	       nla_total_size(sizeof(int)) +    /* BRIDGE_QUERIER_IP_PORT */
 	       nla_total_size_64bit(sizeof(u64)); /* BRIDGE_QUERIER_IP_OTHER_TIMER */
-- 
2.31.1

