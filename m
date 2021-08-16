Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E65203ED1AC
	for <lists.bridge@lfdr.de>; Mon, 16 Aug 2021 12:11:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EAAE60711;
	Mon, 16 Aug 2021 10:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKUjwACitC0P; Mon, 16 Aug 2021 10:11:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 73FEF606FA;
	Mon, 16 Aug 2021 10:11:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 90431C0010;
	Mon, 16 Aug 2021 10:11:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 59177C000E
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C27F80E90
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vMDCB0pFya7c for <bridge@lists.linux-foundation.org>;
 Mon, 16 Aug 2021 10:11:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E8CC80E66
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 10:11:46 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id g21so11741373edw.4
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 03:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yXugY6d6T5JQ0E8sNO0/q9WRH/ek0UK4wOazUv+3iLQ=;
 b=InZAbQ1dDJW3JUG3tm2610Sm8jfyPUYpcoztYMjP3QPX6CrHuqXMLzK/lIOG9eHXzj
 XVJx/WMkrNhURHBhIuAgPtMx0M2VTQGFtbGXPMiqHX0LTXPsrXntccWmbh2HPcCdGxFR
 +3fZIMByMt0JmSB5Ui8t7oS+NYmfP361BAjXFmW2akUzQsy8+SkBQ/IeTnqsGkXjkfrJ
 fMoMdlTa0b69VVL4+zS/iXRezG2yKTrMep1xPT4HwmKblqo4G81uta6epcU6LsAOvhPC
 DomqSU+R2nra6h9rRHZrGh1z4C532asQSdb/roM0sUsGGNQu0SYlweJA0C4y7+XSu1dU
 oO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yXugY6d6T5JQ0E8sNO0/q9WRH/ek0UK4wOazUv+3iLQ=;
 b=sHCcEr/AETOLwh8n+9mQ0/bvyV9X2stfEnGWwI2asMPiVRqdEURzUo734xKpVOP5ih
 6lrk73nTU/HdUke10n+aPSH5fooJBuM7JVAq/X8pMT/+BbMMPryyAsBWThYYlzF57xdz
 Ph5nMmmZFJlYDJQ4KPBEgisX96WHOtVJ7h843FWZQU3ak/pSKriUGFRJ3kHTCkuoAR0j
 2KayjWb06X2vChagey+LXWpwdUOhSgvgbu02DdCr7r6g8mm8mag/4ozbUaG/IcV6R+Q3
 r5Ut1h4ByETG5W7QiwMZt/abDSLh9yI7ekKu9Ao6jDfKud1jIw61/Yh7dUQZahXkqCGo
 Iymg==
X-Gm-Message-State: AOAM533OL2oVTfEn8r69rrE39kwEaiUF0vCH2Z3SsFvuwkOWA7DffGC9
 fDaE3uFxAXLxe4bPW7AgE0C2OQ==
X-Google-Smtp-Source: ABdhPJxXMqyssyRDAaVHKKZHAxqRTwPslVkpP4lo0zhlzblNeZyoaadY5J41kFKz1+DE7YwIPI0EzA==
X-Received: by 2002:aa7:db8b:: with SMTP id u11mr1633238edt.362.1629108704494; 
 Mon, 16 Aug 2021 03:11:44 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a60sm4673779edf.59.2021.08.16.03.11.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 03:11:44 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 13:11:32 +0300
Message-Id: <20210816101134.577413-2-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210816101134.577413-1-razor@blackwall.org>
References: <20210816101134.577413-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 1/3] net: bridge: mcast: don't dump
	querier state if snooping is disabled
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

A minor improvement to avoid dumping mcast ctx querier state if snooping
is disabled for that context (either bridge or vlan).

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 0e5d6ba03457..9bdf12635871 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2943,6 +2943,10 @@ int br_multicast_dump_querier_state(struct sk_buff *skb,
 	struct net_bridge_port *p;
 	struct nlattr *nest;
 
+	if (!br_opt_get(brmctx->br, BROPT_MULTICAST_ENABLED) ||
+	    br_multicast_ctx_vlan_global_disabled(brmctx))
+		return 0;
+
 	nest = nla_nest_start(skb, nest_attr);
 	if (!nest)
 		return -EMSGSIZE;
-- 
2.31.1

