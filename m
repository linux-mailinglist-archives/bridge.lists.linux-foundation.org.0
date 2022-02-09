Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 648454B3AC8
	for <lists.bridge@lfdr.de>; Sun, 13 Feb 2022 11:14:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A095381ADE;
	Sun, 13 Feb 2022 10:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kmCL6E9QdsS4; Sun, 13 Feb 2022 10:14:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CC2F181AAD;
	Sun, 13 Feb 2022 10:14:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94E13C0031;
	Sun, 13 Feb 2022 10:14:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F990C000B
 for <bridge@lists.linux-foundation.org>; Wed,  9 Feb 2022 13:06:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3C7582A29
 for <bridge@lists.linux-foundation.org>; Wed,  9 Feb 2022 13:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZiTtXT4OTZsj for <bridge@lists.linux-foundation.org>;
 Wed,  9 Feb 2022 13:06:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EA9C83032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Feb 2022 13:06:10 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id k10so312006ljq.2
 for <bridge@lists.linux-foundation.org>; Wed, 09 Feb 2022 05:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=C074Ts6t1RuR/7tYyDWuvKC2BHBuBtLTBdnTVQAyV3k=;
 b=BHfF3zx0V2sP0D4d9+4rLjIs4WhIhNDY1dUvDT1BnjD0DoY60k4YLXk4vZ/2sX9o0l
 ic6L8cfdLiZwXPn5XfgUwasbajiL1E2a5wbpCgI6OGunSPXEFeCHRvsRaszS+yqW7zHl
 0z42UAceKzRPgDE4Oo3DVcEfpJpyibXlIyVO3AdbvOSZz+EzcH8dX89ru+ljSjs23hEN
 Xzq7uvf29dXyR0yipFZ+NlhDZ63/YaepY2Hp5JhBWesdCFraQ4h0hKYQYZTb0NDIkPES
 R0KoHPC0Je6Y/1d9iaoX3c/w7ncJs99GNDZknH303itEaVbPUWhO+GfapMddu0S3bTCB
 +MRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=C074Ts6t1RuR/7tYyDWuvKC2BHBuBtLTBdnTVQAyV3k=;
 b=MEYGY7/r8HSUIhvjBAHee0g1HaWbhhoUkw2uhuw5farjz7IWgmQ6VkHM5DejAzhhND
 z87oWThG4DhcBUYApBVv+feRyHG472k7End3Ga7YevL2UK/Q9jLmep3qaszuZOmxK+qM
 EHzBLezx0LU48ogQV0OSUD3ePRigwJgxCDpKko30rVCpjvVh7LKyr3HSKISOaJCLWsQ2
 wxqO03vV5kfM/zzp8U1pm81jS60o+TWtGtf1EK29sqBQPSI+4Sos2vkUXbxwlc+IrkyL
 +PRArqPoU8W4uv2jgByg+RVindnnnm8QEPRfnz6JmiBOYTQ30/1gBSdlwYO2LcaDw9BZ
 hDPw==
X-Gm-Message-State: AOAM531ZTyWsbQhvQRZZqpQIsDEMlDeo0ph/3CNQln1s9DUp3BiNjhPh
 OdtBZipuy9eG5MaNu1PzqPA=
X-Google-Smtp-Source: ABdhPJyUubsoPOivNzS5dMGUwz5s440Yasi/ch4y35pJf4bQpsMQNQcSBZglFFfHu+ruwaOUzM0VTw==
X-Received: by 2002:a2e:8081:: with SMTP id i1mr1513730ljg.506.1644411968590; 
 Wed, 09 Feb 2022 05:06:08 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id k3sm2352608lfo.127.2022.02.09.05.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 05:06:08 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed,  9 Feb 2022 14:05:34 +0100
Message-Id: <20220209130538.533699-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209130538.533699-1-schultz.hans+netdev@gmail.com>
References: <20220209130538.533699-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 13 Feb 2022 10:14:02 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH net-next v2 2/5] net: bridge: Add support for
	offloading of locked port flag
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

Various switchcores support setting ports in locked mode, so that
clients behind locked ports cannot send traffic through the port
unless a fdb entry is added with the clients MAC address.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 net/bridge/br_switchdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index f8fbaaa7c501..bf549fc22556 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -72,7 +72,7 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 /* Flags that can be offloaded to hardware */
 #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
-				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
+				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED)
 
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-- 
2.30.2

