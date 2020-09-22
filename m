Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D81273BE9
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 09:30:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69E5586678;
	Tue, 22 Sep 2020 07:30:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5z0cr9LFeBg; Tue, 22 Sep 2020 07:30:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDA1A8667D;
	Tue, 22 Sep 2020 07:30:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B2428C0889;
	Tue, 22 Sep 2020 07:30:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6DB9BC0051
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 59ACE847E6
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SG7GFk4riwCb for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 07:30:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8B7D886382
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:49 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id b79so2210961wmb.4
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v0VyLBidFMgxaEIbE0qIA152wkMYPe0lHT8kdjtZmtI=;
 b=zbAOCZzno3G76ktSrpwFQ832xwc2ICqQyx1yQ4rBV/xmC/IoFF95FWd8yUAdc6Sm5W
 8LJpaWTWg7I8F4ipMdBDQDl4lylyzmJtfEZBLfS1JaGjX/ngr1b05vj/BH+vk/IcrRvu
 Nz0n1CQ30QMkNTsqN8mkeAA3QFPz0a8usehPA70ywRTeaload2kkOH59MCJWXPLjRqeg
 S0Ld7cB4QxTi6J1D0uIXwmtHWsTOz7/H2iKPuFlSDTjDj1AfIYe/ofPv502n+Q5DSWiq
 NE1zuN6KqA6nD8+im5KIKbDqB96O+wAnML3Y2WgIYZ4Equd13+9loI3D815Fdn3ZhCGb
 OOfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v0VyLBidFMgxaEIbE0qIA152wkMYPe0lHT8kdjtZmtI=;
 b=pr5ose1LXXuP+cVjdA8lSh1jca0HCJfIGg/sN0/2mHOZ8bd6hC/hKUA+yVa6EPZiUU
 iTqtwxHENkaw3QEm3hnQyoHKQYmeMq3A2r92mFVyNwU1ppoaRWutTA5TztfeKMOdhGRM
 RGafcJ72DPnbPyERvZBoiusKM1/IqZYBdJIyxHYkwK/IIQoXbaV080Yj4EHvxOUtGavs
 9dL85DetRcEnRyUhDtZtb+JSZtJwveurIM4Oh64dXX/tyT1/oE3X2lKUmOvgfbDFcv2n
 t02Yo5b+gEQLQ3B3K51dPDSkZO7fmJQJx9Oec+M+TedsWS1/M0b2rz4jAh/uvw+gKEZ/
 nHQQ==
X-Gm-Message-State: AOAM530ECmmHpcKWzInhAyr/9iYtFyciZoF+Lpr7fCl4iFNb8u/6gOc1
 j/Yi05HvaFvHWWlXDjm8ZRWKiw==
X-Google-Smtp-Source: ABdhPJxTSZwlJKrXg8yIFU3293BDY5mSne2Y9I/rD8Z+ZuqoUPHMuah1/sWNvM3c9qDV0/E9vE1JhA==
X-Received: by 2002:a05:600c:2118:: with SMTP id
 u24mr3016942wml.59.1600759848026; 
 Tue, 22 Sep 2020 00:30:48 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s26sm3258287wmh.44.2020.09.22.00.30.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 00:30:47 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 22 Sep 2020 10:30:15 +0300
Message-Id: <20200922073027.1196992-5-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922073027.1196992-1-razor@blackwall.org>
References: <20200922073027.1196992-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 04/16] net: bridge: add src field to
	br_ip
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

Add a new src field to struct br_ip which will be used to lookup S, G
entries. When SSM option is added we will enable full br_ip lookups.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/linux/if_bridge.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 6479a38e52fa..4fb9c4954f3a 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -18,6 +18,12 @@ struct br_ip {
 		__be32	ip4;
 #if IS_ENABLED(CONFIG_IPV6)
 		struct in6_addr ip6;
+#endif
+	} src;
+	union {
+		__be32	ip4;
+#if IS_ENABLED(CONFIG_IPV6)
+		struct in6_addr ip6;
 #endif
 	} u;
 	__be16		proto;
-- 
2.25.4

