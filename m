Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B44DE4BBC86
	for <lists.bridge@lfdr.de>; Fri, 18 Feb 2022 16:53:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64C1A84C1C;
	Fri, 18 Feb 2022 15:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dchXQwseCOXv; Fri, 18 Feb 2022 15:53:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 127A684C30;
	Fri, 18 Feb 2022 15:53:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D7201C0039;
	Fri, 18 Feb 2022 15:53:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EFD02C000B
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE795408BF
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZG8O5B_O_6UX for <bridge@lists.linux-foundation.org>;
 Fri, 18 Feb 2022 15:53:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1743A40110
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 15:53:09 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id j15so6233912lfe.11
 for <bridge@lists.linux-foundation.org>; Fri, 18 Feb 2022 07:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=xsR/hKbVC0DUFloHcPTPuu9npcAFNkMVex8QVbhOYjs=;
 b=PgVAF2CFxXClr7XtfIleyOCx+Gi9xnzlboqeOO6fOXSA4GfJD2Ha0fAgYXYPdDHteC
 vVpqeRpulaJTSnmFzPLBnW61aOBN8o/IHCO1jXT5f+Dl4hdm0GITuRs6lSQLQoK2PC/g
 pIIRO1x/od0SMlwA9qsptKJvUIuTiHb5ffM7Q3KwGC6EpDsKd5SmiSTUCqfUN4cKVXzD
 CyL3Zbh+2JNub0wD9nXiGQtIYWWRQmbJfNpp/OfwYI9X8R6GLysRgcKKwAGrzcDbNCib
 eD0KcsEZSDdTLX5/zZb+U2TCtTLJz+1//jTSo2e7/4HBAK9JuKLsqvps2AB9GiceJPNl
 Ekjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=xsR/hKbVC0DUFloHcPTPuu9npcAFNkMVex8QVbhOYjs=;
 b=RGDdlhVibdQ3cGVC2BrCbpSj1m70CwlgURyF+XQ6SA1Mjn2FNbR8aq3KaGAu+rF/rg
 WzhcK4QhekpxHevSRtvkOzwXFSFLMCE9upSB/ThCCmDwnAXDpWTy2quYV6KGLHL7MKmz
 vA2QnU0KT0uUGHdd5q7HOqwKMq0uPK5kbyIWHG0imT+77oGCKtWsmPOvy2DAArdiHDXQ
 ptdecuiQRgeX0jElEAvEvxESW+OGXztwsQdDPd19ku0TNi5//zmhseLtg8Sdw08jFcqt
 Ew7XMSm1lTeaE82SyVWF7EHnCuQZg245+L0WqCFJcTNFI5uT2Yeek1btzNM2mlsxXPE5
 G7wQ==
X-Gm-Message-State: AOAM531DWOCkAx64kzJCNkhG6bLYRJ8d5oXCZO3TcC4uT7sPEU0AmZDY
 u46IwjD+zDmZoXthIjzLa5mss8DEJBZVQahLdl4=
X-Google-Smtp-Source: ABdhPJxf1VgdE9FjUrG2Oi4IAPd+jiHT04vxuDLYzDhWK7uJvLNPkAjxOe6PtwjlzS+9t2RKS3e9vQ==
X-Received: by 2002:a19:7605:0:b0:443:1126:3756 with SMTP id
 c5-20020a197605000000b0044311263756mr5774248lff.641.1645199588095; 
 Fri, 18 Feb 2022 07:53:08 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id v11sm295453lfr.3.2022.02.18.07.53.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 07:53:07 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Fri, 18 Feb 2022 16:51:46 +0100
Message-Id: <20220218155148.2329797-4-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
References: <20220218155148.2329797-1-schultz.hans+netdev@gmail.com>
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
Subject: [Bridge] [PATCH net-next v3 3/5] net: dsa: Add support for
	offloaded locked port flag
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

Among the switchcores that support this feature is the Marvell
mv88e6xxx family.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
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

