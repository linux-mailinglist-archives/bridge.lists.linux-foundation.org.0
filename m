Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE744C1013
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 11:17:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E39DC40614;
	Wed, 23 Feb 2022 10:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E0uDyl0fN9fC; Wed, 23 Feb 2022 10:17:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4204A40605;
	Wed, 23 Feb 2022 10:17:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0EFBEC0077;
	Wed, 23 Feb 2022 10:17:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0CB69C0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E882D8275A
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9-usiyP-SfI9 for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 10:17:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D3B681400
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:29 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id f11so16067040ljq.11
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 02:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=Z+hbLNvF0Nhve3XBOMxW8KtWdx8aJiHJ43sZ0z9sw1E=;
 b=EquzZhxnieCrk3INNeTDu6kmQ8PDFht+473pRAMO2lVGaI5CtlUgrT19oecm4EbYCw
 hD6M14xHzJXWrndGSkPG4myjk46PwiuoXhCGn8s7I6u/nBqTi7YXbUL+s4VLsKyn6XfO
 m1a6muPJyaMEX4pfdpXdQKf1dd9hLUs7Xs3DHZqrBVjJG9yWu3ZEpGhxlQWbtusDskTG
 g/Cv78MImpgV3i0Br+nrhxXoFWVhYV98vIQ/VJNd17kXrgnupVZhcSJCNj0WYRqveCCB
 JSvyMH/eyilIIJn2yp4wfdhMPnMavV+Peq3Z4de/JtuoNGG2lzZzmOFfQXnLsxAPY5u4
 WPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=Z+hbLNvF0Nhve3XBOMxW8KtWdx8aJiHJ43sZ0z9sw1E=;
 b=afJGeNf5Z2zcz2PcDZqmgpRqy7YIRmG8MPtzKxe/lgpG6brO5ysb8L2gcb5aLfpVHu
 O+0tGQ25yUfIZyIrlAFlTRE/0cbknbrVenEofKqOs0/ss7EYlUT9EBY6NhyHFf5JqZID
 kj8/G7aM9DPaa/M7MLwhLVwMQu8NDGp4NhkB3Ol537kwo84xgdXhJrampnid/FwsuRvq
 SejXuSd090t02xQwwLhZ5m7lHGUivR2l125jq8gLtXyfpEOuVJCezBAa/9LdLKvi9V4J
 Z+fPzrrN5egcAz48rq03tUtMKVl7yOw2qEu19/M6SQ3ySL0boLXjWt9kS14gyKYa777s
 9wYg==
X-Gm-Message-State: AOAM530CrDSUn8cRl4xP4Y7ArQIeSDPJuisxls22IPyerxwhqxxNaTaZ
 RUSTWBYW74og39+3APUwBKU=
X-Google-Smtp-Source: ABdhPJxCjF1OGtpiBw3vg13o77EowmB9BU3Qbo6AYEM19Kfrt9DUszhfgV9BxvJGm5kBwmiinUx70g==
X-Received: by 2002:a2e:819a:0:b0:244:c4cb:5141 with SMTP id
 e26-20020a2e819a000000b00244c4cb5141mr21329064ljg.477.1645611447205; 
 Wed, 23 Feb 2022 02:17:27 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id d5sm1613102lfs.307.2022.02.23.02.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:17:26 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 23 Feb 2022 11:16:48 +0100
Message-Id: <20220223101650.1212814-4-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
References: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
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
Subject: [Bridge] [PATCH net-next v5 3/5] net: dsa: Include BR_PORT_LOCKED
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

