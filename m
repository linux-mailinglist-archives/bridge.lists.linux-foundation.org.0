Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8DD4C100C
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 11:17:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5778B823CB;
	Wed, 23 Feb 2022 10:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zzrYWSGdyT89; Wed, 23 Feb 2022 10:17:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0E08482784;
	Wed, 23 Feb 2022 10:17:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CBC54C0073;
	Wed, 23 Feb 2022 10:17:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 15662C0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03EFF81400
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8mpjpXlCAZnv for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 10:17:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 408188275A
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 10:17:26 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id j7so30142527lfu.6
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 02:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=EwW1ad9aaDxzLEmHNXCm17nZVCt4Pcys+G0syr6CYU4=;
 b=jUiiuGYArmzRZQS3Y4XwRUrxAylVnKXbhlDvgmK5j4rEj3BPOn/kbijHKxC8iG/uV6
 vr5lYaimp0a2+TRviGmqzurM7LFfRTv0s6htX0kNJzNbcP2n7jA9BOyzBDy7pBEAliqR
 YNu706cfj6V6i0xsR+hL+nhuV0Kf6O22r20lDjppmVdu1L5xvdHBbzx1yiMXgl3wmFNm
 ioK23b38vbXcCkLWcwfcsvJGO9//yjEkw5au5fzgMtlt8/YjmDtXytC5e9aFamneDLxA
 OPN8bF+rtabSGIUHYzS/AqYauq8UnNhL+nN0T6v84vFjhm6OivSPMKoOBlnFUF0360jv
 hrKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=EwW1ad9aaDxzLEmHNXCm17nZVCt4Pcys+G0syr6CYU4=;
 b=YK2bG7UFM++lr8twFtnGSktMV3n0I6qfMdyogq4EAui3EXhQavi0lS9nrYlKcZk4nX
 wCchaMSQwymgStpo/gXou0aAA5+Kfybs5WtQ1ujiUqCRVajkVDkjMk7Tt4h06uHIlTpi
 xDaF8wJMePb26JJ823hBI6DxMN/l4ONeNvNcScsIMlVrP4bv1kbODMSyvHYs777XbguV
 /AuYyjw166jhaZOzBpO3sTniG9jzSUy+lxr2f0XwtghNDddoFZpoll5prvUbvx/bkRm8
 Cwex6+LXD+ROyI14bqwDW99jMT18Hiav2vlbr89zGMmw9igHJpcdp8LigeFU7Oo54/nt
 tXOw==
X-Gm-Message-State: AOAM531O3DNzJ7ZUShi2X3Y3y18DV7xlRmDj+9i0XA0KQsyPMaqTrY+d
 vhD7502FPTxOzOv35bF/6vc=
X-Google-Smtp-Source: ABdhPJzaupvlwXtXqw0xVsZYl8+D4TG0XQAcXBJlL9VMI5sb6HAslbzowG4xVttrjHRpZ3on1TdiAw==
X-Received: by 2002:a05:6512:1281:b0:439:f0fd:c96c with SMTP id
 u1-20020a056512128100b00439f0fdc96cmr19857951lfs.102.1645611444290; 
 Wed, 23 Feb 2022 02:17:24 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id d5sm1613102lfs.307.2022.02.23.02.17.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:17:23 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 23 Feb 2022 11:16:47 +0100
Message-Id: <20220223101650.1212814-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
References: <20220223101650.1212814-1-schultz.hans+netdev@gmail.com>
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
Subject: [Bridge] [PATCH net-next v5 2/5] net: bridge: Add support for
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

