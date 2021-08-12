Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2DA3EA678
	for <lists.bridge@lfdr.de>; Thu, 12 Aug 2021 16:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC4674027C;
	Thu, 12 Aug 2021 14:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pOQJFYQ7Q_AL; Thu, 12 Aug 2021 14:22:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6D2C940265;
	Thu, 12 Aug 2021 14:22:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3EEF2C0022;
	Thu, 12 Aug 2021 14:22:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E9EFDC000E
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 14:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC2D6829FE
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 14:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9vRLKyeKoiLf for <bridge@lists.linux-foundation.org>;
 Thu, 12 Aug 2021 14:22:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E2E6829A9
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 14:22:23 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id c17so2184090plz.2
 for <bridge@lists.linux-foundation.org>; Thu, 12 Aug 2021 07:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Th9WKl0IW7GpxbqwwqPmaZkhN6z6TMP9nRsqCNvkXyc=;
 b=B1kZBxgA7H8EfDvYb+YKpfkgRv4EqGRi2cH1Te2uNIimCZT5XlojbYszrNoi9qIQLx
 48uzO637fAGckSKocGF6qT99SFw0+S9cg6QmbUWk9xZF085QvQUC1Udn3QqoeTGM7y2s
 +QVOfLPW9B7K9hlkEQHBieJ8HT4t2UpyDEJdmo+f7kRlKCROqxlF/jZr9G02q13tsV8l
 5FqjNqllTJyw73LCn39+PxASzRsKmbLTeDPoQHU5rMJG51qbyU7nzbQGph6E7u9516r1
 RYtVZPTChFfyfGy2NRW53ClkrGI2mCNaHCUg4Uy4rICDjZpi67kB2NBgClxPDeiutpZh
 Rs1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Th9WKl0IW7GpxbqwwqPmaZkhN6z6TMP9nRsqCNvkXyc=;
 b=FzCmBmY7jU4YnWvjQst7AZ1ADTwuOoFIaa/koN6VHXyF+qriMqktNHn7AG//WT7lri
 oxZkd5Sw0v94rW03GvjnFkNejzXFwmLl01HdCiMl3Jf3Ahuje0nH6hkdWsFuYAj9bBXk
 O1xyINQhAFrIZiIhoKeCRauypGPv4D+RF99GYKtwQ/wkhfGFcEUa6Qho+XWKYGojA3hL
 pMFSQ7jVYi87WTKNND3vNjgFor/hGViB3YiUshaT7XfUSNH/YfsHrqW+i8Tt3/ODVxk2
 QzFnWtCS6ofjfQhDFvXiv5tB/gdRTixoZh5jc9qHT2PtXg5BIefMLyx0nkyjclgEk7Br
 k/1g==
X-Gm-Message-State: AOAM531n8OO+UgVj5S81yvJb7jNbRZwlqPXNk/1CTRuu5Dx4N4CmzpzZ
 mFI0IVoOv84n1Y62m+d078g=
X-Google-Smtp-Source: ABdhPJxPcSw90+TVPMjlF0M7lJSG4APT4BstUXA4LaFdE9T3ULA3zTfOten6M/1sqw2LsoSLCruwfg==
X-Received: by 2002:a63:5815:: with SMTP id m21mr4075188pgb.363.1628778142724; 
 Thu, 12 Aug 2021 07:22:22 -0700 (PDT)
Received: from haswell-ubuntu20.lan ([138.197.212.246])
 by smtp.gmail.com with ESMTPSA id x81sm3706010pfc.22.2021.08.12.07.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 07:22:22 -0700 (PDT)
From: DENG Qingfang <dqfext@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Ivan Vecera <ivecera@redhat.com>,
 bridge@lists.linux-foundation.org (moderated list:ETHERNET BRIDGE),
 netdev@vger.kernel.org (open list:ETHERNET BRIDGE),
 linux-kernel@vger.kernel.org (open list)
Date: Thu, 12 Aug 2021 22:22:12 +0800
Message-Id: <20210812142213.2251697-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ido Schimmel <idosch@idosch.org>, Vladimir Oltean <olteanv@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH net-next v2] net: bridge: switchdev: pass more port
	flags to drivers
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

These 3 port flags: BR_HAIRPIN_MODE, BR_MULTICAST_TO_UNICAST, and
BR_ISOLATED, affect the data path and should be handled by switchdev
drivers.

Add them to BR_PORT_FLAGS_HW_OFFLOAD so they can be passed down to
the drivers.

Suggested-by: Vladimir Oltean <olteanv@gmail.com>
Signed-off-by: DENG Qingfang <dqfext@gmail.com>
---
v1 -> v2: added more flags

 net/bridge/br_switchdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index 6bf518d78f02..2ab46178c47c 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -70,8 +70,10 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 }
 
 /* Flags that can be offloaded to hardware */
-#define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
-				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
+#define BR_PORT_FLAGS_HW_OFFLOAD (BR_HAIRPIN_MODE | BR_LEARNING | \
+				  BR_FLOOD | BR_MCAST_FLOOD | \
+				  BR_MULTICAST_TO_UNICAST | \
+				  BR_BCAST_FLOOD | BR_ISOLATED)
 
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
-- 
2.25.1

