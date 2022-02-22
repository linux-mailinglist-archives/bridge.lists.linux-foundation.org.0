Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4E14BF959
	for <lists.bridge@lfdr.de>; Tue, 22 Feb 2022 14:29:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A251F60ECE;
	Tue, 22 Feb 2022 13:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id II8WLLmbvtsv; Tue, 22 Feb 2022 13:29:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 52B9B60ED6;
	Tue, 22 Feb 2022 13:29:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0E9AEC0073;
	Tue, 22 Feb 2022 13:29:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E1868C0077
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D49E060ED6
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tmFOBcQBsoHN for <bridge@lists.linux-foundation.org>;
 Tue, 22 Feb 2022 13:29:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28CEA60EC6
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 13:29:37 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id o9so19570893ljq.4
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 05:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=EwW1ad9aaDxzLEmHNXCm17nZVCt4Pcys+G0syr6CYU4=;
 b=pZe7+VYM2Ch4tnW0vNrVk4kIXpos0UkPqBnqRz0liSSCmjg5WR46ijNkTFp1HCgHFG
 G7xtFljcmI1+/ai2y4SDM+SuB0bYJ6ujqEiFCprXncNFqQuO3QTWAYzw1L2HjZjT4H3N
 v/0RVdM4I4DpTyyct5KApt+YAfxnXRgaxNJUJAMngBXVw0Ri55ZE9X1fL2nhUd6LZcrn
 skDkxgDKgNOhZFP6P6RWDaFGYspOza6cihrkcaaDHNr72RtORhJmLoMNX/dxH0eZmcRY
 MNvzvYmKHTdpW8/Glo8PDfXtx+xP4+15Juf+9hRUfW87XIYD64cyFvB8sH6Ie98g2nc5
 gR+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=EwW1ad9aaDxzLEmHNXCm17nZVCt4Pcys+G0syr6CYU4=;
 b=3Ldr0rv3ouBHRGHko0yI4nU1iUxBAr4TSR8SAe2N9337em9BbySCkhAaJ3xrm9RT49
 fqyrr4ys1rG407ZtfTOUSl2kYSXba/wKgWYPgUHD4OWdn/zO1IkTfXLX8BZDGKfbdhP9
 rL9FqpDjpCGRziwS1aGzr+lK7I+5KKdodNCtAssnqjo541fNJrGdUpRYQqO48uQMCejJ
 oqKZfOV28fITb1XUYQyDFK4TBvdK/g/4OmR5+pFyMudHQT/vAb6FmbMYgsNjicVsxPci
 P492Py+v4ieKg4uHomkeqL4P2pVLCcTIcUti2D6dek0+lbX3jfDqd4xJDg9aMZ8zG6Pc
 IT/A==
X-Gm-Message-State: AOAM531jqX0bPvAaw0vQUKAVrHTODZW1deHf7O6n9hkSJ9hM84LY6rf3
 2XO3xyWNdVCb4SlvsV5KlbI=
X-Google-Smtp-Source: ABdhPJzHDYyISKgjREvcwBLgHfMKpwDFHOum7zloAcofWXBg+CYq18JOmAuV0xwIBhhLStIP1a2GLQ==
X-Received: by 2002:a2e:8752:0:b0:23e:d951:4184 with SMTP id
 q18-20020a2e8752000000b0023ed9514184mr18296155ljj.410.1645536575198; 
 Tue, 22 Feb 2022 05:29:35 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id e22sm1703685ljb.17.2022.02.22.05.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 05:29:34 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 22 Feb 2022 14:28:15 +0100
Message-Id: <20220222132818.1180786-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
References: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Roopa Prabhu <roopa@nvidia.com>,
 linux-kernel@vger.kernel.org, Stephen Suryaputra <ssuryaextr@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next v4 2/5] net: bridge: Add support for
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
Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
Reviewed-by: Ido Schimmel <idosch@nvidia.com>
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

