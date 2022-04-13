Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBC44FF535
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8777582D45;
	Wed, 13 Apr 2022 10:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WYbjwSCbsXJM; Wed, 13 Apr 2022 10:52:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2512A82EF0;
	Wed, 13 Apr 2022 10:52:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0A279C0088;
	Wed, 13 Apr 2022 10:52:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14034C0088
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70C7A40B4D
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6_pz9RRcf89 for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C016A40B55
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:35 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id b24so1838762edu.10
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mqsQMGWoSGIiSBxMnK2lmj4CXMMwYXskZS4euBUat3E=;
 b=CqDiUuwWy9Ar00ARP8AYHLDoMiZ0B5XU5oPXE/n2LzKIKzDb49qspNm4EVvgWriuLB
 KZinTcU15VppmpjZEA9orOK8DU7Fo2EdjIq516B5dDIi3jLwGJ4d1e3sGe2O+aDhJKY+
 H9VjOjlcifF4ptjMaqMKm55ysi4GaMzGDDfudxGhosRVz+6ueUxA+jloInbsRhcDb53O
 BwZTcmhYey2vPRJNCxvZxI2Xuz5WeRJyvv6jWAxY+JB7qlxOUvKlNqP06BAXFyx5wTRW
 u2a2YqRGR7QoqxFD7gp5t4D9kXT208DcQkRoSH6JOZTt+0/FHhUaA1KOsD5huESnC9iO
 hKvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mqsQMGWoSGIiSBxMnK2lmj4CXMMwYXskZS4euBUat3E=;
 b=bFwqi1/VXy1SGdcyypbYe5sLByT2KFyiigkHs/GgoLWdNzF8fLs6Ybp3CoxNzqRUZJ
 xS4/2URYapqHaumfu6KRjpom1IaM3/KuN4utzCPeJ/r83F/0TZ35JmzL3hCulruRmZyU
 CZ0qW95cmhsXfZ+vBk4DgS5S3xC4WeIbgN7XkXI/U9r+OfdrdybYIsijplhW524EvEAJ
 G68W73BeGhB8h1X8uBgzDR3nNrbb/fLEfkeIHhpi5gewUSeH1WewWry4G/PqpCaIl+Gk
 LtcB8km5l0e0Ch1Uck9nV+Jp8fwbIS/NG3ITYdjPJT4w6ZMEoEkjyBKhSxMi9h+t66aN
 YobA==
X-Gm-Message-State: AOAM530M8WgOoWcMu8Nc2z7z49hubQSgo4ci5ClWLf/rFiB+6pvs6TmZ
 N35BTXe4kD8u9jh811eiijGhSg==
X-Google-Smtp-Source: ABdhPJyxmiTlU/gzlQY4BZV1whXOgPfQ2aPbByMtiLISua5V8l2KvoggVWfXCVu9uWjQFwcmNY+YoA==
X-Received: by 2002:a05:6402:270b:b0:419:3383:7a9f with SMTP id
 y11-20020a056402270b00b0041933837a9fmr43266917edd.191.1649847153925; 
 Wed, 13 Apr 2022 03:52:33 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:33 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:52:02 +0300
Message-Id: <20220413105202.2616106-13-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 12/12] net: bridge: fdb: add support
	for flush filtering based on ifindex and vlan
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

Add support for fdb flush filtering based on destination ifindex and
vlan id. The ifindex must either match a port's device ifindex or the
bridge's. The vlan support is trivial since it's already validated by
rtnl_fdb_del, we just need to fill it in.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v2: validate ifindex and fill in vlan id
v3: NDFA -> NDA attributes
v4: use port's ifindex if NTF_MASTER is used and NDA_IFINDEX is not
    specified

 net/bridge/br_fdb.c | 45 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 44 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 74d759d09f94..1a3d583fbc8e 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -622,12 +622,44 @@ static unsigned long __ndm_flags_to_fdb_flags(u8 ndm_flags)
 	return flags;
 }
 
+static int __fdb_flush_validate_ifindex(const struct net_bridge *br,
+					int ifindex,
+					struct netlink_ext_ack *extack)
+{
+	const struct net_device *dev;
+
+	dev = __dev_get_by_index(dev_net(br->dev), ifindex);
+	if (!dev) {
+		NL_SET_ERR_MSG_MOD(extack, "Unknown flush device ifindex");
+		return -ENODEV;
+	}
+	if (!netif_is_bridge_master(dev) && !netif_is_bridge_port(dev)) {
+		NL_SET_ERR_MSG_MOD(extack, "Flush device is not a bridge or bridge port");
+		return -EINVAL;
+	}
+	if (netif_is_bridge_master(dev) && dev != br->dev) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Flush bridge device does not match target bridge device");
+		return -EINVAL;
+	}
+	if (netif_is_bridge_port(dev)) {
+		struct net_bridge_port *p = br_port_get_rtnl(dev);
+
+		if (p->br != br) {
+			NL_SET_ERR_MSG_MOD(extack, "Port belongs to a different bridge device");
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
 		       struct net_device *dev, u16 vid,
 		       struct netlink_ext_ack *extack)
 {
 	u8 ndm_flags = ndm->ndm_flags & ~FDB_FLUSH_IGNORED_NDM_FLAGS;
-	struct net_bridge_fdb_flush_desc desc = {};
+	struct net_bridge_fdb_flush_desc desc = { .vlan_id = vid };
 	struct net_bridge_port *p = NULL;
 	struct net_bridge *br;
 
@@ -663,6 +695,17 @@ int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
 
 		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
 	}
+	if (tb[NDA_IFINDEX]) {
+		int err, ifidx = nla_get_s32(tb[NDA_IFINDEX]);
+
+		err = __fdb_flush_validate_ifindex(br, ifidx, extack);
+		if (err)
+			return err;
+		desc.port_ifindex = ifidx;
+	} else if (p) {
+		/* flush was invoked with port device and NTF_MASTER */
+		desc.port_ifindex = p->dev->ifindex;
+	}
 
 	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
 		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
-- 
2.35.1

