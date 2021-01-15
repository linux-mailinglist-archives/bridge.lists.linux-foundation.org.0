Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 440802F71A3
	for <lists.bridge@lfdr.de>; Fri, 15 Jan 2021 05:41:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC8E6203AE;
	Fri, 15 Jan 2021 04:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ISHJFmzw+hsd; Fri, 15 Jan 2021 04:41:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E8160203A9;
	Fri, 15 Jan 2021 04:41:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9443C013A;
	Fri, 15 Jan 2021 04:41:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CE12BC013A
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 04:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B70D986AC4
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 04:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iU7BleIh5QTd for <bridge@lists.linux-foundation.org>;
 Fri, 15 Jan 2021 04:41:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2193D86AAB
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jan 2021 04:41:38 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id j13so4495951pjz.3
 for <bridge@lists.linux-foundation.org>; Thu, 14 Jan 2021 20:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X5IUJFfkhyOjUeQe/gYauu/2sKrd/DEbUds1gC+B5RU=;
 b=DpDvfQf3vyJbpzghRJ8Cew7bzqpKpLzkvro4EJtc49amvTSAelFioDvmVj1BFNrFcN
 vpotcO2IAcg8vzQ1dZqwVLHvDHERBOGOjZ/1eQLboSDqY+YHQ7ZLtNnkM0kXqHEU8sdy
 t+rgEfzXJ900nUH2ET41LCxgZ00KFeW33M0etBMG/M8ssVzO9BgybOlF8uobyQ4SnU3E
 189WhrVboNLOjebfz/Qf+s+xUQqcuCof5n7aGc8bnsNWK/HsU8LgYKnqyVV7YrHg5wnE
 LMcth4tbTxbGxECyb6GG/fA6LBkSeWHaiU6ssOfmQWLa7vu+ldc8M3rFpTOkZB03o4Nu
 YlCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X5IUJFfkhyOjUeQe/gYauu/2sKrd/DEbUds1gC+B5RU=;
 b=lFmjFkNW4wq4ML/55wCwEWunhTdc+UHaj7cJT0uMu43mizx8+Vt11huH5U+CYxGq/A
 CRJI3j+yiHPH987z9VNFHJ4uSDtokbjHcFF22oCGqoMzdJoZUw34TFUATC4gXBjJQrkJ
 Hi34dluTsbr95vc8ktbvT1+t9aXE/+rReOgGcRf0siuiPkGjJ3l8v9qMxRFc4WBPMM3/
 Kt3LybveHoaUvi2sCzL4FEiCpjJWtneODXGvkf0sI0IxpzAUcqA77ltBH05kfbAt5QHJ
 BCjfG/nKvRCo/Mw3QlCX106eLQVyedZpy2zMfqpKsU0NgUDog5Xa+yc4Z2/N8AoWeGzX
 kMwg==
X-Gm-Message-State: AOAM531X/XHLv3R4ocnJtcvHeLDXFW402E9eoSSFq85G1MjgSaDQbV+f
 AsueCMY/VX+WMaiAykk0hSk=
X-Google-Smtp-Source: ABdhPJzVhnD2uVEfIuermtvP0wV3QoRtfc7kohfEt+M9NsHkXTbBJQJGw/HgElaYrtHLps9wW83qgg==
X-Received: by 2002:a17:90a:ae02:: with SMTP id
 t2mr8458110pjq.169.1610685697862; 
 Thu, 14 Jan 2021 20:41:37 -0800 (PST)
Received: from localhost.localdomain ([178.236.46.205])
 by smtp.gmail.com with ESMTPSA id r185sm6358600pfc.53.2021.01.14.20.41.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 20:41:37 -0800 (PST)
From: menglong8.dong@gmail.com
X-Google-Original-From: dong.menglong@zte.com.cn
To: kuba@kernel.org
Date: Thu, 14 Jan 2021 20:41:31 -0800
Message-Id: <20210115044131.6039-1-dong.menglong@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, davem@davemloft.net
Subject: [Bridge] [PATCH v3 net-next] net: bridge: check vlan with
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
v3:
- fix compile warning in br_vlan_set_proto() by casting 'val' to
  be16.

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
index 701cad646b20..bb2909738518 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -917,7 +917,7 @@ int __br_vlan_set_proto(struct net_bridge *br, __be16 proto)
 
 int br_vlan_set_proto(struct net_bridge *br, unsigned long val)
 {
-	if (val != ETH_P_8021Q && val != ETH_P_8021AD)
+	if (!eth_type_vlan(htons(val)))
 		return -EPROTONOSUPPORT;
 
 	return __br_vlan_set_proto(br, htons(val));
-- 
2.25.1

