Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9634FF531
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7334540B72;
	Wed, 13 Apr 2022 10:52:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSvppEEl8tst; Wed, 13 Apr 2022 10:52:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 10C3140B6B;
	Wed, 13 Apr 2022 10:52:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C5C97C0088;
	Wed, 13 Apr 2022 10:52:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0719EC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB564610C3
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rI_Yp7PT7jpU for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CAB860D70
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:31 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id s18so3204706ejr.0
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rJB5kY6uPDJBtefnM9IfoNFJA4wwW57RZ1b7IzeHqA8=;
 b=hFdUSE4bdm3dm9ztdRKdeW/8cbk4xAYciXTuexkfId9nwCQCdmTBDzeHXaqgfzjQeN
 TZ/NsAKsRRvweTRt2EAW52YSO+2mnhtdOAADDKVaHA29uMQoS03VdTeW+86igTTMvECm
 ACUEP0LU5+tvPzhM4FJMzoBBmtRsIdRlXdQybuROhvIA4uHgrdlQvGSuaUsKQsOfSfVd
 RAybgRhJX6iwXEaoer6mxl6iJv8mrCSldsW804bEl+UIOMiYiD/oT8/MH7A8qdcFgKGj
 f5lFRyib564wGTYRT586IEXe6XyOsMfYecXCpGxRiZOTZQWKxMFiVOVTROU+brqsTDm6
 xBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rJB5kY6uPDJBtefnM9IfoNFJA4wwW57RZ1b7IzeHqA8=;
 b=sPXdCoiTWqbX2w5+oJLWQ+osUuG7I00kZftmNxCy34hEYtd1A7pkmA068vyxMAZyce
 E1kpRQupe6SuhDzVz0Pw5lxWgncOtaFbslVrvfNWy9BDVS66iWBeFhQTD6IpPOFNXBdr
 lNqtqujqbIk2nI6zOHNVPyYIYhkBB9kw0xKkrkkPYiVd5S0NEh5LpsePjhW+39hDsPul
 HjrVdh62t3vnKxXiVGaFQxNCRuyNz0vElKh2AuRXJ+20lliXje1VFye5xU7S2kjVR/ni
 MwKF49dmoKBGYd5WH1VWdI14ymIxhtzqVTHGrAJRiCYmuUotcgcK34zv10qBF1wpRkfE
 N2gw==
X-Gm-Message-State: AOAM533wW+Qby3KOfB2qGtRbpW1MxB1D6V4aBCTkq6UZcjFtb8vzbHIq
 VCnaChbmh7M5YCT616neJjcWaA==
X-Google-Smtp-Source: ABdhPJxijpQhvK5fjap/CpjUrcUOdp8IrX5N4BwQia6pFPOIIL6KglnkwHXURm36vZ9YMjhMtvDBHg==
X-Received: by 2002:a17:907:9506:b0:6da:b4cd:515b with SMTP id
 ew6-20020a170907950600b006dab4cd515bmr38189893ejc.602.1649847149264; 
 Wed, 13 Apr 2022 03:52:29 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:28 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:58 +0300
Message-Id: <20220413105202.2616106-9-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 08/12] net: bridge: fdb: add
	ndo_fdb_del_bulk
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

Add a minimal ndo_fdb_del_bulk implementation which flushes all entries.
Support for more fine-grained filtering will be added in the following
patches.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v4: don't rename br_fdb_flush

 net/bridge/br_device.c  |  1 +
 net/bridge/br_fdb.c     | 23 +++++++++++++++++++++++
 net/bridge/br_private.h |  3 +++
 3 files changed, 27 insertions(+)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 8d6bab244c4a..58a4f70e01e3 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -465,6 +465,7 @@ static const struct net_device_ops br_netdev_ops = {
 	.ndo_fix_features        = br_fix_features,
 	.ndo_fdb_add		 = br_fdb_add,
 	.ndo_fdb_del		 = br_fdb_delete,
+	.ndo_fdb_del_bulk	 = br_fdb_delete_bulk,
 	.ndo_fdb_dump		 = br_fdb_dump,
 	.ndo_fdb_get		 = br_fdb_get,
 	.ndo_bridge_getlink	 = br_getlink,
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 6ccda68bd473..363985f1a540 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -572,6 +572,29 @@ void br_fdb_flush(struct net_bridge *br)
 	spin_unlock_bh(&br->hash_lock);
 }
 
+int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
+		       struct net_device *dev, u16 vid,
+		       struct netlink_ext_ack *extack)
+{
+	struct net_bridge_port *p = NULL;
+	struct net_bridge *br;
+
+	if (netif_is_bridge_master(dev)) {
+		br = netdev_priv(dev);
+	} else {
+		p = br_port_get_rtnl(dev);
+		if (!p) {
+			NL_SET_ERR_MSG_MOD(extack, "Device is not a bridge port");
+			return -EINVAL;
+		}
+		br = p->br;
+	}
+
+	br_fdb_flush(br);
+
+	return 0;
+}
+
 /* Flush all entries referring to a specific port.
  * if do_all is set also flush static entries
  * if vid is set delete all entries that match the vlan_id
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 6e62af2e07e9..f37d49bf5637 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -781,6 +781,9 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 		  struct net_device *dev, const unsigned char *addr, u16 vid);
+int br_fdb_delete_bulk(struct ndmsg *ndm, struct nlattr *tb[],
+		       struct net_device *dev, u16 vid,
+		       struct netlink_ext_ack *extack);
 int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
 	       const unsigned char *addr, u16 vid, u16 nlh_flags,
 	       struct netlink_ext_ack *extack);
-- 
2.35.1

