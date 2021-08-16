Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5687F3ED94C
	for <lists.bridge@lfdr.de>; Mon, 16 Aug 2021 16:57:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E18D40339;
	Mon, 16 Aug 2021 14:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B6p1jrJ7BkUk; Mon, 16 Aug 2021 14:57:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 8F1154033F;
	Mon, 16 Aug 2021 14:57:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 990C4C000E;
	Mon, 16 Aug 2021 14:57:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 943CCC0010
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8482680DDE
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x9I8Xigy7Tnf for <bridge@lists.linux-foundation.org>;
 Mon, 16 Aug 2021 14:57:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC70F81025
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:19 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id b10so23804868eju.9
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 07:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WwnW+GWJajN/nHK/Uu8SXGjaStKjr4BPobqUYTEyxn4=;
 b=hHDIhLqQj6tIa4w4qVJf800brqAuVR7rfr+AG9ipbfVi11s4nScM+Xibp+zDBVAzii
 hkuPeCjHsZ76AvynBapL8kF5odlTh+GOYV3RmrFzMiVTp6OGizUh7XLkDgJg/0+30Waw
 shC1D7SpfqudW6TBOtRVs8KoP1WtmJUbp8UCIgYkiWKAFxkd/8KzKcfIA1kdVCmbaxVs
 od1nxE3C5Ntg/CsaSs82plPxuYsT5V8PiAYsREpXB1FsLaqU6BX9nH4MGvalMe26FGCe
 wgHOj8zgTjecbISRYIBn+sMHQ7/pDvJ3yC4gDGkylHK1BduQ1Xal4OIF2lJrml648DzN
 JH2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WwnW+GWJajN/nHK/Uu8SXGjaStKjr4BPobqUYTEyxn4=;
 b=D8Ft70D4W7/hbo/pnlCfc3WifPiTBIV4B6LLLNZ5V0Zvj3VODH1bBp++KStvOKqUXT
 SmzQm7uKPgkpbPtDS4t5zhabgf3YaeF4jojdYvpS80hst/sa6DV7aFLkvw+0BPzRzu54
 MTPnko4WBeVLxIaGoLsfVSbpP8masQQAgigM/YJmdcj3p6erlKVNre3JGShsafX7K8G4
 u5PAjH/g5DtVX8KnmvSLY8ebPmO3vRqefxGStmUxhRia4WBclSz9qCI+0f4AQ9oralKR
 sfOJu6jfIX2IOZzSB3dan6Al/1vdEnOQUUCya5b4dywg7Wty8OIs/I9y8HE27oNW2uwn
 dwcQ==
X-Gm-Message-State: AOAM5328nvu8G8E5ktzFcHJCrvy2U4fEJaklXa9lmaOv04iz3nxynvRe
 7aDFPO6a3pKXbPECplAGOIFcqA==
X-Google-Smtp-Source: ABdhPJxqMtz9zZxKS+mZkhGaAszppeNwrGy17MtcxbPLFXs4I2+RGIMmU2ef/7QEnl9dmxvJ4xrbzw==
X-Received: by 2002:a17:906:4b42:: with SMTP id
 j2mr6762196ejv.437.1629125837966; 
 Mon, 16 Aug 2021 07:57:17 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t25sm4946076edi.65.2021.08.16.07.57.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 07:57:17 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 17:57:04 +0300
Message-Id: <20210816145707.671901-2-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210816145707.671901-1-razor@blackwall.org>
References: <20210816145707.671901-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 1/4] net: bridge: vlan: enable mcast
	snooping for existing master vlans
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

We always create a vlan with enabled mcast snooping, so when the user
turns on per-vlan mcast contexts they'll get consistent behaviour with
the current situation, but one place wasn't updated when a bridge/master
vlan which already exists (created due to port vlans) is being added as
real bridge vlan (BRIDGE_VLAN_INFO_BRENTRY). We need to enable mcast
snooping for that vlan when that happens.

Fixes: 7b54aaaf53cb ("net: bridge: multicast: add vlan state initialization and control")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_vlan.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index cbc922681a76..e25e288e7a85 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -694,6 +694,7 @@ static int br_vlan_add_existing(struct net_bridge *br,
 		vlan->flags |= BRIDGE_VLAN_INFO_BRENTRY;
 		vg->num_vlans++;
 		*changed = true;
+		br_multicast_toggle_one_vlan(vlan, true);
 	}
 
 	if (__vlan_add_flags(vlan, flags))
-- 
2.31.1

