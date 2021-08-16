Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EE63ED1AE
	for <lists.bridge@lfdr.de>; Mon, 16 Aug 2021 12:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 369E6403D7;
	Mon, 16 Aug 2021 10:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q09agvApfYDI; Mon, 16 Aug 2021 10:11:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E99DF40397;
	Mon, 16 Aug 2021 10:11:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0569AC000E;
	Mon, 16 Aug 2021 10:11:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C7115C000E
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B675A40276
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ArtOX1tWXtzs for <bridge@lists.linux-foundation.org>;
 Mon, 16 Aug 2021 10:11:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57F6C40278
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:48 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id g21so11741481edw.4
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 03:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hom66D7QlF74ZChwS4t+afVi3WhkjTNJBXj7NjSNFVM=;
 b=tzWe0JAh41Gch5AiXUler1lJGHcqpdBUfWCEMcGGoBuvpGARlOm/fBp4GAqpPZr/eg
 /v2jlAxpf4/MDN2h3VP8hyxcd76IvPO8N2VDN+JgQ3qg0xKxraMsW6v0VrIrxEOClZ8a
 nEffjvCvE2bsllavHYmQd1SPwBRHushTPBFjxy3vRyWhv48f8+xx/apSuijmabUtsO1q
 a/1Tt1jyHBRpsXnr5I5bPhh/uYU2JqkQrh8qp0VwurSmfVGPN3tRdTYU39bkgc1El1ip
 RU7F1RPlIBqriUWYGtNhHP0hr49wbmP57GjqDvgCoSdnb84jZ34lWjhMkdaxKlgHwQE3
 ykIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hom66D7QlF74ZChwS4t+afVi3WhkjTNJBXj7NjSNFVM=;
 b=CO//SS8D8b8/v2VMG6Q2yecpQBigiEAjtqjwon0K3oXunuUW48wfphp/dpU90uyqg0
 I7/ey6eyKxEDfuYaQuvCm0yKqlwhDE+RzyVOqUCeyKL1LaOrEEyDdjrNdCbr4pork++Q
 CV+bi+XrSqsaF2nY8dwjBf0pIh9Zx226lq3AByINx24RPZv9uUB63nnDoOWy9yQptBPO
 4L2+XdE7v4odE6Rf19GNFwrcEeB8prlvhknPD9tpFizr9ywixVVfBpKB3lM1zlUI56oa
 oX2jk6z2P8cGGBUgZJq1wZAtm18U2T+gdjfQQYo9vyVtup+De65rLx5b/gYU0B25WBdg
 kf3Q==
X-Gm-Message-State: AOAM532sQvO8O3nFdW+AnIerwLd71QbJvaR6JtvQKlxMXOGpCF5NIL0g
 0hG/047cb746Qzqqtyr5kSUlCw==
X-Google-Smtp-Source: ABdhPJw99vMmXDCLexrjgcOJFxMkdW98wBQ/KdlS/eX4xE1TFTFw04btcQSgI+FBUsmxRIGzKrUGag==
X-Received: by 2002:aa7:d896:: with SMTP id u22mr19052986edq.290.1629108706486; 
 Mon, 16 Aug 2021 03:11:46 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a60sm4673779edf.59.2021.08.16.03.11.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 03:11:46 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 13:11:34 +0300
Message-Id: <20210816101134.577413-4-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210816101134.577413-1-razor@blackwall.org>
References: <20210816101134.577413-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 3/3] net: bridge: mcast: account for ipv6
	size when dumping querier state
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

We need to account for the IPv6 attributes when dumping querier state.

Fixes: 5e924fe6ccfd ("net: bridge: mcast: dump ipv6 querier state")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 76992ddac7e0..e411dd814c58 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2931,7 +2931,13 @@ size_t br_multicast_querier_state_size(void)
 	return nla_total_size(0) +		/* nest attribute */
 	       nla_total_size(sizeof(__be32)) + /* BRIDGE_QUERIER_IP_ADDRESS */
 	       nla_total_size(sizeof(int)) +    /* BRIDGE_QUERIER_IP_PORT */
-	       nla_total_size_64bit(sizeof(u64)); /* BRIDGE_QUERIER_IP_OTHER_TIMER */
+	       nla_total_size_64bit(sizeof(u64)) + /* BRIDGE_QUERIER_IP_OTHER_TIMER */
+#if IS_ENABLED(CONFIG_IPV6)
+	       nla_total_size(sizeof(struct in6_addr)) + /* BRIDGE_QUERIER_IPV6_ADDRESS */
+	       nla_total_size(sizeof(int)) +		 /* BRIDGE_QUERIER_IPV6_PORT */
+	       nla_total_size_64bit(sizeof(u64)) +	 /* BRIDGE_QUERIER_IPV6_OTHER_TIMER */
+#endif
+	       0;
 }
 
 /* protected by rtnl or rcu */
-- 
2.31.1

