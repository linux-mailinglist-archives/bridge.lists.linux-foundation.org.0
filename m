Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 054A2380572
	for <lists.bridge@lfdr.de>; Fri, 14 May 2021 10:47:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5E88842ED;
	Fri, 14 May 2021 08:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MG-tTzfJhD4N; Fri, 14 May 2021 08:47:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96A6083DFA;
	Fri, 14 May 2021 08:47:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6375CC001C;
	Fri, 14 May 2021 08:47:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6A47DC0001
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 01:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43276400DB
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 01:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OaOalxtBXOQc for <bridge@lists.linux-foundation.org>;
 Fri, 14 May 2021 01:53:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 61AC0400A7
 for <bridge@lists.linux-foundation.org>; Fri, 14 May 2021 01:53:55 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id t4so42574663ejo.0
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 18:53:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vf/w0gIA31yDofWDFARiKyZ1Z+Y8XK+6F1QRv5/kfU4=;
 b=Hg2FNvE2GdYgU1EYW8BMhnzdGtof8FDEimelSNES34DId+RGA5FV94xkvm1nX3Yh5B
 YxiB40o9lCUDghn4T3uWoDkQIbeGgBm1JeP+fe6WQdvlAMj5XrWiRsVWALMkdILomfQp
 RY5yB0nL/bc2HwB2agtoczMgvRrpy/qaM51FTBe+FJKdbbpCv0povP7Ss8mGh/9Zn3nG
 GNIKYX3ZyhniRaTMA6he8hp9RVKlMVoW/QLxhaV6MkpLgLRHBxhBuwg3r4XCP+JCDYML
 sG+kxVEDI7scBRC0XqraFk2Ts1Nv1tuKpgVJ6FMJ2td/TY4bkLOrYeUnwSlkP0RSu/VH
 AZgg==
X-Gm-Message-State: AOAM532Gy1pecKqwurWdU9kL7FL+C78Ww+ddHYnlidkMr1NH3DaRtZZG
 5vamV7DIgu+R8fMPBUb7ePo=
X-Google-Smtp-Source: ABdhPJwmNc70bqvNpE9Th6f/yEkJ1KOeim08uzo3Hnotd+SFjmYkETjPqnU1qh91bd+VYsVqs20Dbw==
X-Received: by 2002:a17:907:161e:: with SMTP id
 hb30mr45346717ejc.360.1620957233559; 
 Thu, 13 May 2021 18:53:53 -0700 (PDT)
Received: from msft-t490s.teknoraver.net (net-5-94-253-60.cust.vodafonedsl.it.
 [5.94.253.60])
 by smtp.gmail.com with ESMTPSA id w6sm3322574edc.25.2021.05.13.18.53.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 May 2021 18:53:53 -0700 (PDT)
From: Matteo Croce <mcroce@linux.microsoft.com>
To: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
Date: Fri, 14 May 2021 03:53:48 +0200
Message-Id: <20210514015348.15448-1-mcroce@linux.microsoft.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 14 May 2021 08:47:37 +0000
Cc: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kernel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH net-next] net: bridge: fix build when IPv6 is
	disabled
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

From: Matteo Croce <mcroce@microsoft.com>

The br_ip6_multicast_add_router() prototype is defined only when
CONFIG_IPV6 is enabled, but the function is always referenced, so there
is this build error with CONFIG_IPV6 not defined:

net/bridge/br_multicast.c: In function ‘__br_multicast_enable_port’:
net/bridge/br_multicast.c:1743:3: error: implicit declaration of function ‘br_ip6_multicast_add_router’; did you mean ‘br_ip4_multicast_add_router’? [-Werror=implicit-function-declaration]
 1743 |   br_ip6_multicast_add_router(br, port);
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
      |   br_ip4_multicast_add_router
net/bridge/br_multicast.c: At top level:
net/bridge/br_multicast.c:2804:13: warning: conflicting types for ‘br_ip6_multicast_add_router’
 2804 | static void br_ip6_multicast_add_router(struct net_bridge *br,
      |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~
net/bridge/br_multicast.c:2804:13: error: static declaration of ‘br_ip6_multicast_add_router’ follows non-static declaration
net/bridge/br_multicast.c:1743:3: note: previous implicit declaration of ‘br_ip6_multicast_add_router’ was here
 1743 |   br_ip6_multicast_add_router(br, port);
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~

Fix this build error by moving the definition out of the #ifdef.

Fixes: a3c02e769efe ("net: bridge: mcast: split multicast router state for IPv4 and IPv6")
Signed-off-by: Matteo Croce <mcroce@microsoft.com>
---
 net/bridge/br_multicast.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 0703725527b3..53c3a9d80d9c 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -62,9 +62,9 @@ static void br_multicast_port_group_rexmit(struct timer_list *t);
 
 static void
 br_multicast_rport_del_notify(struct net_bridge_port *p, bool deleted);
-#if IS_ENABLED(CONFIG_IPV6)
 static void br_ip6_multicast_add_router(struct net_bridge *br,
 					struct net_bridge_port *port);
+#if IS_ENABLED(CONFIG_IPV6)
 static void br_ip6_multicast_leave_group(struct net_bridge *br,
 					 struct net_bridge_port *port,
 					 const struct in6_addr *group,
-- 
2.31.1

