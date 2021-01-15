Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7717A2F708A
	for <lists.bridge@lfdr.de>; Fri, 15 Jan 2021 03:24:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 135222039E;
	Fri, 15 Jan 2021 02:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZ5OA+67TOyD; Fri, 15 Jan 2021 02:24:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 9CB75203A2;
	Fri, 15 Jan 2021 02:24:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 87346C1DA7;
	Fri, 15 Jan 2021 02:24:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B2CE7C013A
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 02:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5F610203A2
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 02:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sykHaM-hpKy5 for <bridge@lists.linux-foundation.org>;
 Fri, 15 Jan 2021 02:24:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 2D3772039E
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 02:24:01 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id h186so4558135pfe.0
 for <bridge@lists.linux-foundation.org>; Thu, 14 Jan 2021 18:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0+CNzsPI08lc0FEN4jQWPjCrTyVyDSMDwF2TyVIOOB0=;
 b=W0HvD9T5SMroyQM1zDFU9Z+AoN9DEnCUXIuOY/TawBj4BB/GqU7nSgXjGnwYrQnye2
 Et7mJ2fjIxmbpSQEe6s/WMsLb3duB74xtdcW6dleS+yuAwOVEooii9h7S4NyweaO94N2
 jJcwHn1ALZjXAt1UxwIk3dq+jFqxPCFuiDn4p41riOdNAQQEcoz3PPkJbTuIEtNoImIS
 4H4xivrxtQFGRvGDM70dMlXLCKgSeQVeusJmzCUH/UGe3vIqYT9viDktBJsEqzg6asiR
 UhUVzk107+g8Ft2GAhfHrVOVF0NHy4JQj+WWyr/p6Ko2JdO5kGNGrtwbyM2yuvf3TrR8
 TCPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0+CNzsPI08lc0FEN4jQWPjCrTyVyDSMDwF2TyVIOOB0=;
 b=ivgtMie6tZoEW3kF+GKkLXa0UGvg1v39yt4Q2ikNl/x/biJF/v6mdn5DaSyKv5kX7I
 3/vJ0Sy/i4GQI2PPzTEUFkQwugV2ajnyF/mjF3wTfyxl0SMbEk/8aV+qVCMaRvUmqjLp
 mbb+QRttU7tT+JQrNLhjM3pt5M4HLwBewIicVlwuYSwQ47u8VqyBpKvvBPJ2fSNLHYSU
 tPTqQyWfU15jK707/KMHvy0lTv7aCzzjW9C+ol5PzzRjdPpogfnSCl27D66NsBRYk3qe
 PuWH+n7kXZdAE6HeVDQ9e6VDqTx8EWM1D/EJrRNnBzkbPHQPj+CYnUqDaa4SVEVgbkPB
 ofEQ==
X-Gm-Message-State: AOAM533XlmBvUxe5h8yCKMHcpGa6rzWF7Y1ryAp7hPdzNNdJ8mJ4PqpW
 n1zUghjM7r6MLxOTPdysms0=
X-Google-Smtp-Source: ABdhPJynUIMXg3f4JrUG9f9WwCA8Xf8sVPFjK8cXa0E0voFwWHMsfzn9D3V+64BdEkHL+67AeVuKVA==
X-Received: by 2002:a63:5d7:: with SMTP id 206mr10647259pgf.384.1610677440765; 
 Thu, 14 Jan 2021 18:24:00 -0800 (PST)
Received: from localhost.localdomain ([178.236.46.205])
 by smtp.gmail.com with ESMTPSA id b12sm6214127pft.114.2021.01.14.18.23.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 18:24:00 -0800 (PST)
From: menglong8.dong@gmail.com
X-Google-Original-From: dong.menglong@zte.com.cn
To: nikolay@nvidia.com
Date: Thu, 14 Jan 2021 18:23:44 -0800
Message-Id: <20210115022344.4407-1-dong.menglong@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH v2 net-next] net: bridge: check vlan with
	eth_type_vlan() method
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

From: Menglong Dong <dong.menglong@zte.com.cn>

Replace some checks for ETH_P_8021Q and ETH_P_8021AD with
eth_type_vlan().

Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>
---
v2:
- use eth_type_vlan() in br_validate() and __br_vlan_set_proto()
  too.
---
 net/bridge/br_forward.c |  3 +--
 net/bridge/br_netlink.c | 11 +++--------
 net/bridge/br_vlan.c    |  2 +-
 3 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index e28ffadd1371..6e9b049ae521 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -39,8 +39,7 @@ int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb
 	br_drop_fake_rtable(skb);
 
 	if (skb->ip_summed == CHECKSUM_PARTIAL &&
-	    (skb->protocol == htons(ETH_P_8021Q) ||
-	     skb->protocol == htons(ETH_P_8021AD))) {
+	    eth_type_vlan(skb->protocol)) {
 		int depth;
 
 		if (!__vlan_get_protocol(skb, skb->protocol, &depth))
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 49700ce0e919..15cfcad846c5 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1096,14 +1096,9 @@ static int br_validate(struct nlattr *tb[], struct nlattr *data[],
 		return 0;
 
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
-	if (data[IFLA_BR_VLAN_PROTOCOL]) {
-		switch (nla_get_be16(data[IFLA_BR_VLAN_PROTOCOL])) {
-		case htons(ETH_P_8021Q):
-		case htons(ETH_P_8021AD):
-			break;
-		default:
-			return -EPROTONOSUPPORT;
-		}
+	if (data[IFLA_BR_VLAN_PROTOCOL] &&
+	    !eth_type_vlan(nla_get_be16(data[IFLA_BR_VLAN_PROTOCOL]))) {
+		return -EPROTONOSUPPORT;
 	}
 
 	if (data[IFLA_BR_VLAN_DEFAULT_PVID]) {
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 701cad646b20..24660fe33545 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -917,7 +917,7 @@ int __br_vlan_set_proto(struct net_bridge *br, __be16 proto)
 
 int br_vlan_set_proto(struct net_bridge *br, unsigned long val)
 {
-	if (val != ETH_P_8021Q && val != ETH_P_8021AD)
+	if (!eth_type_vlan(val))
 		return -EPROTONOSUPPORT;
 
 	return __br_vlan_set_proto(br, htons(val));
-- 
2.25.1

