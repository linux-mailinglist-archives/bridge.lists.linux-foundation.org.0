Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCF04BF962
	for <lists.bridge@lfdr.de>; Tue, 22 Feb 2022 14:29:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C255860ED6;
	Tue, 22 Feb 2022 13:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LRv85y-u3q64; Tue, 22 Feb 2022 13:29:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 65F2960EDB;
	Tue, 22 Feb 2022 13:29:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4436FC0073;
	Tue, 22 Feb 2022 13:29:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9E399C0011
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E6A8410B1
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6haX9jQaIen for <bridge@lists.linux-foundation.org>;
 Tue, 22 Feb 2022 13:29:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCC4B402BC
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:43 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id w27so7039982lfa.5
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 05:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=Z+hbLNvF0Nhve3XBOMxW8KtWdx8aJiHJ43sZ0z9sw1E=;
 b=qO5Sru+DZqGzH4+Za4ahOJYJK/duIXhEZA7V/VVfsVzC5RwvI/uX/oPlWpfAzaWqzV
 107TBki28TfJolkKkSAvh2IFNfqHT6f62lZ5mLMFDNS7EdYGIV9NwM9Kl6a9RNdOP5i+
 nkW26DL79MK2HzK5rsy47tYU7EQg9PhP1SyQYgc+NI92/MlgTF12CK7J5s6f0No+Zmop
 EZ/R9GrW/mbWigROLcu1w3qZBUYAnNWHE88/fvsrV4YZR4UviqsCv10r8EbOKrEyAXBg
 iEV+DlFF7X3WoMjYQTX+pDbeetysz/YOzRmQtJ7JhPY4Jm2SZDPu7RxYZTYvtUgWYyBi
 7kwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=Z+hbLNvF0Nhve3XBOMxW8KtWdx8aJiHJ43sZ0z9sw1E=;
 b=F480nY8b7BF2H6DoPGfwRam05g/ioXgutXwrmX+4DUL3AKnHNRrf/79XVMzalolYGX
 ddNjR+EmdsKNK1MwrTOgqQjZKgDXBxhgXUdMw7tUBnsFhRe6S8zz2utCqynvthG/Ouxa
 1s3iigwKrUrwWYHvhq2Oyto3l13lM/9yWf4mHHo/WtexmbF9msTsLvlc6HXN/PEzAxqn
 cBjVNoGObvobH88+OWk8kSiDxlLPonNtHKnIyMnn8nXXO9T4wmpOyztcUpa+OeJz260N
 uQYi/WeXtZ8JBJw1gVR6d7mGRkhLJLpw3MbmUpu8XKHtdf8XCJU5BJVF/uOkxoJxFuYf
 GYvg==
X-Gm-Message-State: AOAM532hvQHNvxvVEqHswKpGDw7PmME/K+t8YEvW5zxOC17HH9s+7Mbs
 IRWM5I84o44s3Lad815yZHs=
X-Google-Smtp-Source: ABdhPJwolKKl+qChVGRAvJCxdChiH+ZkxIpLXFQkRe02q8DltrOGJJiqQzm+Xu0ntqAFve+Idw9aCQ==
X-Received: by 2002:a05:6512:3f08:b0:443:3d74:2461 with SMTP id
 y8-20020a0565123f0800b004433d742461mr16779614lfa.461.1645536581597; 
 Tue, 22 Feb 2022 05:29:41 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id e22sm1703685ljb.17.2022.02.22.05.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 05:29:41 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 22 Feb 2022 14:28:16 +0100
Message-Id: <20220222132818.1180786-4-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
References: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v4 3/5] net: dsa: Include BR_PORT_LOCKED
	in the list of synced brport flags
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

Ensures that the DSA switch driver gets notified of changes to the
BR_PORT_LOCKED flag as well, for the case when a DSA port joins or
leaves a LAG that is a bridge port.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
---
 net/dsa/port.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/dsa/port.c b/net/dsa/port.c
index bd78192e0e47..01ed22ed74a1 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -176,7 +176,7 @@ static int dsa_port_inherit_brport_flags(struct dsa_port *dp,
 					 struct netlink_ext_ack *extack)
 {
 	const unsigned long mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
-				   BR_BCAST_FLOOD;
+				   BR_BCAST_FLOOD | BR_PORT_LOCKED;
 	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
 	int flag, err;
 
@@ -200,7 +200,7 @@ static void dsa_port_clear_brport_flags(struct dsa_port *dp)
 {
 	const unsigned long val = BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD;
 	const unsigned long mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
-				   BR_BCAST_FLOOD;
+				   BR_BCAST_FLOOD | BR_PORT_LOCKED;
 	int flag, err;
 
 	for_each_set_bit(flag, &mask, 32) {
-- 
2.30.2

