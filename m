Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE8C3E9313
	for <lists.bridge@lfdr.de>; Wed, 11 Aug 2021 15:53:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51DF883A67;
	Wed, 11 Aug 2021 13:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id APTMnT754Bhj; Wed, 11 Aug 2021 13:53:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1880E82DE6;
	Wed, 11 Aug 2021 13:53:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C8555C001F;
	Wed, 11 Aug 2021 13:53:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 426E6C000E
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 13:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24CD383A67
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 13:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UqwTkWIgdewf for <bridge@lists.linux-foundation.org>;
 Wed, 11 Aug 2021 13:53:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 989A382DE6
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 13:53:17 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 hv22-20020a17090ae416b0290178c579e424so4979438pjb.3
 for <bridge@lists.linux-foundation.org>; Wed, 11 Aug 2021 06:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=McZHw6sQ4TwpaGC2g78JrbLUmpP0WSdIbTjyHIQHZDg=;
 b=IX2JCs+zddAvzfStvaEUhhbbYHBSt9n8HTPWZ3/t5mQ1TU3rlXnmZzyeO6NqlMVniN
 IlsOhAoy5rjlKPxKf1nDNMSRzYcCkuQXGZTaPjS9X5Df3HKv6AOb/Dq9kkRV3YhHBAYS
 Txyz8cSrY0O8FSCRMbuPV3ONHUxjWZ+MI4St8yeA8CTSDSp6AQMrrTzfAsv6k/lxX5sS
 fmR1h6LqYPgX5fuQkMpUhjvAn4EohaQqLlQD9CQpjAocSj2pjYcmzP6UOEEo+7sku4P/
 osqfp7ya4/LoEf85EZaokcXQe97Pt/WHoh49edxjQXSJgHHsPHB02IUz8atH/NyRNWjc
 7OwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=McZHw6sQ4TwpaGC2g78JrbLUmpP0WSdIbTjyHIQHZDg=;
 b=qHiAn77BURzYVe0S7329tMGEB7GU9TzYrEysWO6cw3fc7WH8PDlEQJ5swuvIHPboO2
 QMNNqDW/YA67oSriaYHpZvoIJNRdkRtTliGiYxolrlZHxL3GIIsm7LKSVgpdSKgKW7yw
 cTz2a8vuXNsC9NsbmTrhHJOHq6oNYG0w2t9aRV2DIw2dK3y5ocO9cnkFRODjXdC6Z0bx
 0dTyyjKNoVHTiEHSYmPOWgRppoR/qC3c5dBTIGrBI74zroTTO3wEPo9gRr2TvPcBzY+J
 s2dd7kSv329X0iF8jxqgM7mi1yE39r+BGLqEnqtg5YORqERXdm7lB6lNHOcr5z9DsWpg
 W4OA==
X-Gm-Message-State: AOAM531el4BgxCoquFEn3AG8MA2cMdYRYoGrz7IG7741hy5BPFNRY8QA
 e2lAPAyHpicDSC0QaJ7LtBg=
X-Google-Smtp-Source: ABdhPJzDjdhmDa4jqU41NbSggXWKEN6nzrnTBrFBOeBh4RXx2T7JYe/stuAzSJfp2geRSP5kQCJh/g==
X-Received: by 2002:a17:90a:dac4:: with SMTP id
 g4mr36766901pjx.233.1628689997001; 
 Wed, 11 Aug 2021 06:53:17 -0700 (PDT)
Received: from haswell-ubuntu20.lan ([138.197.212.246])
 by smtp.gmail.com with ESMTPSA id c136sm27603597pfc.53.2021.08.11.06.53.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Aug 2021 06:53:16 -0700 (PDT)
From: DENG Qingfang <dqfext@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 bridge@lists.linux-foundation.org (moderated list:ETHERNET BRIDGE),
 netdev@vger.kernel.org (open list:ETHERNET BRIDGE),
 linux-kernel@vger.kernel.org (open list)
Date: Wed, 11 Aug 2021 21:52:46 +0800
Message-Id: <20210811135247.1703496-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Vladimir Oltean <olteanv@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [Bridge] [PATCH net-next] net: bridge: switchdev: allow port
	isolation to be offloaded
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

Add BR_ISOLATED flag to BR_PORT_FLAGS_HW_OFFLOAD, to allow switchdev
drivers to offload port isolation.

Suggested-by: Vladimir Oltean <olteanv@gmail.com>
Signed-off-by: DENG Qingfang <dqfext@gmail.com>
---
 net/bridge/br_switchdev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 6bf518d78f02..898257153883 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -71,7 +71,8 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 /* Flags that can be offloaded to hardware */
 #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
-				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
+				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | \
+				  BR_ISOLATED)
 
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-- 
2.25.1

