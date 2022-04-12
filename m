Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD854FE263
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:23:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB4686104F;
	Tue, 12 Apr 2022 13:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ze3f-zt7_ryq; Tue, 12 Apr 2022 13:23:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7AD8961049;
	Tue, 12 Apr 2022 13:23:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 51318C0085;
	Tue, 12 Apr 2022 13:23:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E04ECC002C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFF4161046
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OSg3qy3mUdEe for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:23:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F5B06103C
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:18 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id w18so22289862edi.13
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=egLzN7/s9/QZ3qlg41Rj8BKSB1yfeA3ZGBvqcFvmni0=;
 b=XoRKm7gWr72tnpuMrPmdTcwkzSX48VLbwDbDflfb7NstKPnbU6B7PsuSPmIzYL50Uk
 p49Py1tQHUeOPMQE3filRxSm8yXFyQQdgeV0fwXFHuOghxb8NcpWKEZkvGaJgbcfrMtc
 gJZNiktJqYfNN7vMv67fU4LviUN54RuWPGdEAgcu2hr5SRx4Az+nVJVRXpTWMV/BMkkk
 aQ7oUhkBufIfJvH+UfMstsyY5AbzhtLje+zSDBLC6lhzXTFLYkn4/dmDPto6zNDM/hJ0
 ego4SqcnkzljllnqpdOqFuF9hb7QhxqTXILj98Oja19NBcuEZxNPlS4JOrL1zPugbxe+
 E3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=egLzN7/s9/QZ3qlg41Rj8BKSB1yfeA3ZGBvqcFvmni0=;
 b=6Vn3jimN+RR9CCKu16IVf82o2vt/Z9QDzbkw3tNyZxVEUruJa8YWFubk2AXV9NSO6F
 UF7IjEXoqK02yn06lY9/uQVydJGKIvKRrHGcIZB8GlBRRpDI2/EqBQnUDY+yML0kzRQJ
 y8FydxHOqQ64jvhXvRwZboo6fLwZNGU7DGy6SSj3bZ/yusHPnjIIGbEp+uxhUtaP8P+v
 hiFU4vlXn3YocWJMWkUYzopWLtY94p9+dZv9p4CmpcP268cC0oEKF2IW/Bd+SYsA17yp
 kdKkzjEpLDJ3Zo3hTHIpiipfFHwEYiPBXBVgLjZlf3T2pxyVLu8clFKdV1dpQ/K14Xq8
 Vu8Q==
X-Gm-Message-State: AOAM532AD4jxGxL+LXb9jiq+43+r0J6ztnohKl6ciWRm3fxCA/7DXfDs
 nzFmnyjjvAEeDov1TWyRg8CYjA==
X-Google-Smtp-Source: ABdhPJys3pdSysfXP0n7n9kFByanJwNxCn2koANT+ueJboT7ny9u4vCxrCXaaoo6Lj13xRaGq0X+hA==
X-Received: by 2002:a05:6402:331c:b0:41d:9354:97c2 with SMTP id
 e28-20020a056402331c00b0041d935497c2mr3237826eda.300.1649769797232; 
 Tue, 12 Apr 2022 06:23:17 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z16-20020a17090665d000b006e8789e8cedsm3771301ejn.204.2022.04.12.06.23.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 06:23:16 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 12 Apr 2022 16:22:45 +0300
Message-Id: <20220412132245.2148794-9-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
References: <20220412132245.2148794-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v3 8/8] net: bridge: fdb: add support for
	flush filtering based on ifindex and vlan
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
rtnl_fdb_flush, we just need to fill it in.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v2: validate ifindex and fill in vlan id
v3: NDFA -> NDA attributes

 net/bridge/br_fdb.c | 42 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index bbb00a75ef0a..c44ea83ac3d9 100644
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
 	struct net_bridge *br;
 
 	if (netif_is_bridge_master(dev)) {
@@ -663,6 +695,14 @@ int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
 
 		desc.flags_mask |= __ndm_flags_to_fdb_flags(ndm_flags_mask);
 	}
+	if (tb[NDA_IFINDEX]) {
+		int err, ifidx = nla_get_s32(tb[NDA_IFINDEX]);
+
+		err = __fdb_flush_validate_ifindex(br, ifidx, extack);
+		if (err)
+			return err;
+		desc.port_ifindex = ifidx;
+	}
 
 	br_debug(br, "flushing port ifindex: %d vlan id: %u flags: 0x%lx flags mask: 0x%lx\n",
 		 desc.port_ifindex, desc.vlan_id, desc.flags, desc.flags_mask);
-- 
2.35.1

