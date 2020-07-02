Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E29DA211DCE
	for <lists.bridge@lfdr.de>; Thu,  2 Jul 2020 10:13:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8865987D0A;
	Thu,  2 Jul 2020 08:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PXMp85U3S9o1; Thu,  2 Jul 2020 08:13:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BC3687CFE;
	Thu,  2 Jul 2020 08:13:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DB755C0890;
	Thu,  2 Jul 2020 08:13:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4A776C0733
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3938187D0A
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASBtWgL-a3WK for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 08:13:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B66B087CFE
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 08:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593677605; x=1625213605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PdW1XZ3MHRJsroDmSJ1DwasAvadWD6be00JFedG1d2Y=;
 b=nsBR7n1GUBTAOxNGU+77aWuJUuHTDrXU5Q1sTl21BeeCqTmv6Pb150jE
 BzI1BP3aDuf2gXe07QBoa86IyMijVMoVxvvX1vZP/sVev2K6SOrtseug2
 KLBcaTVkXjCxWKXyYaANV1GTqC7bJ3rzgHmLX6JosxBTHIS+JunrTaB5h
 G8ebdaI6Iz4Wid5422w0gD9dz3JG8Fr9hWtGDQJB/MmJ43kTO1hiryhJb
 iEu6tpKBcXgAkT4lB7FaAeiV8ecAJPFSwj1IVaPC+/ZzYEQDY/mJf47hU
 2DcmQkv/rPCWWK6U5hDmPUFOCiQ+RYDruKt1TBWMycHxJYhqDljddXaPH g==;
IronPort-SDR: P6KVoisUuR8tbsqlDtzu9JPJ2xJa+dGQP/OXGUdIwjGfcU2ziEsaqzD9k7UvXO+9c6W4tp9Gn7
 6nSezd4no5hFvoC3gjiwdvREntrn1EjRB70vHFZAA5OrhR2NRjJyhD4mllUgy5LPDwJkbsc9JX
 WvQ1AdKNLX2jH/Y04stFyk8l9qW3KVkj52w+PHM7G8982sWyAwgj3GKK+iJgdQ22b1Qfto9LW+
 p/1I8uZzzfEJQ8dMd3vswAO382GQUpaK78tJYnS74niAXQoyVXBBXCBX+p1oaAMtkKNMoNjMM0
 twQ=
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="81635220"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jul 2020 01:13:24 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 2 Jul 2020 01:13:23 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 2 Jul 2020 01:13:00 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@mellanox.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Thu, 2 Jul 2020 10:13:07 +0200
Message-ID: <20200702081307.933471-4-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200702081307.933471-1-horatiu.vultur@microchip.com>
References: <20200702081307.933471-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v3 3/3] bridge: Extend br_fill_ifinfo to
	return MPR status
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
From: Horatiu Vultur via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Horatiu Vultur <horatiu.vultur@microchip.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This patch extends the function br_fill_ifinfo to return also the MRP
status for each instance on a bridge. It also adds a new filter
RTEXT_FILTER_MRP to return the MRP status only when this is set, not to
interfer with the vlans. The MRP status is return only on the bridge
interfaces.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 include/uapi/linux/rtnetlink.h |  1 +
 net/bridge/br_netlink.c        | 25 ++++++++++++++++++++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/rtnetlink.h b/include/uapi/linux/rtnetlink.h
index 879e64950a0a2..9b814c92de123 100644
--- a/include/uapi/linux/rtnetlink.h
+++ b/include/uapi/linux/rtnetlink.h
@@ -778,6 +778,7 @@ enum {
 #define RTEXT_FILTER_BRVLAN	(1 << 1)
 #define RTEXT_FILTER_BRVLAN_COMPRESSED	(1 << 2)
 #define	RTEXT_FILTER_SKIP_STATS	(1 << 3)
+#define RTEXT_FILTER_MRP	(1 << 4)
 
 /* End of information exported to user level */
 
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 240e260e3461c..c532fa65c9834 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -453,6 +453,28 @@ static int br_fill_ifinfo(struct sk_buff *skb,
 		rcu_read_unlock();
 		if (err)
 			goto nla_put_failure;
+
+		nla_nest_end(skb, af);
+	}
+
+	if (filter_mask & RTEXT_FILTER_MRP) {
+		struct nlattr *af;
+		int err;
+
+		if (!br_mrp_enabled(br) || port)
+			goto done;
+
+		af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
+		if (!af)
+			goto nla_put_failure;
+
+		rcu_read_lock();
+		err = br_mrp_fill_info(skb, br);
+		rcu_read_unlock();
+
+		if (err)
+			goto nla_put_failure;
+
 		nla_nest_end(skb, af);
 	}
 
@@ -516,7 +538,8 @@ int br_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 	struct net_bridge_port *port = br_port_get_rtnl(dev);
 
 	if (!port && !(filter_mask & RTEXT_FILTER_BRVLAN) &&
-	    !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED))
+	    !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED) &&
+	    !(filter_mask & RTEXT_FILTER_MRP))
 		return 0;
 
 	return br_fill_ifinfo(skb, port, pid, seq, RTM_NEWLINK, nlflags,
-- 
2.27.0

