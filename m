Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 373342104E2
	for <lists.bridge@lfdr.de>; Wed,  1 Jul 2020 09:23:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC8C68C343;
	Wed,  1 Jul 2020 07:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 254qjgypB9CM; Wed,  1 Jul 2020 07:23:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id D742B8C357;
	Wed,  1 Jul 2020 07:23:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CBFBAC0733;
	Wed,  1 Jul 2020 07:23:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D8B62C0733
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:23:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B63D38ABD6
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:23:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9BfYCPXEmRP for <bridge@lists.linux-foundation.org>;
 Wed,  1 Jul 2020 07:23:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 92F888ABC6
 for <bridge@lists.linux-foundation.org>; Wed,  1 Jul 2020 07:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593588183; x=1625124183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VjgLRTFAQQXiSnYU+FqcPS5U5gonGnZE5EKr2nGUPtg=;
 b=PA2WT8RffrGKQEJwPK/FWhtNyaexD7QNqsdwR76Ltf92icZfgA3cYa/m
 9QcEVTE7nEXmp2J2JEsBWiVbsrFL5Rf/mX6fR9adoqSY8c6RB+tBAi+ON
 2ZT15xNDUKDWVKTQWac4HHSCNXdF/h546KWIAfj3FXnjxrSJ8mMs/N9tt
 Hw7Ve16wXG1YwX3yQ5Qvq0upjf5QkJk7RjOqTSr1tCq95etccA8bjZ/Yk
 UPmfLR4UBk1IWALX2lJ1rHGPOOz4yLlt/oFgocrFmy4vmXN0CwH6d/bMI
 s1cZvg9WKrPNrNrLtdcmn/TtTCihPUrObI/0DJjoJX3WShx+8mdpkP4zu w==;
IronPort-SDR: FCy9FZHsX/Mc3hOW+u56FTK4CIBtnlDSZXW4jABO0OLzzkKnYj/a65UooUV22/Twc4nRjf2DZ+
 xs7d4B2zdrQrlqsV7qrbBDTJmpMC9JwObgS2M8zpTQGeBELJlGCaai577K5UCj3K50l5LIEVAe
 h0BHvt0zfionf3U/n19Jm8qGeyJgLxA8H0Rr8BdlDI37FHmZVunx2NGweRKnHkGVZrKSQHDKgZ
 3UAyGxwSnbfbOO/d6DSbYlFh6Fia+4PtJ244I8RQQCH9UDRxgwsvNtFGMnVnGyEIGC/9IB043g
 +24=
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="80314221"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jul 2020 00:23:01 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 1 Jul 2020 00:23:01 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 1 Jul 2020 00:22:39 -0700
To: <nikolay@cumulusnetworks.com>, <roopa@cumulusnetworks.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <jiri@mellanox.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bridge@lists.linux-foundation.org>, <UNGLinuxDriver@microchip.com>
Date: Wed, 1 Jul 2020 09:22:39 +0200
Message-ID: <20200701072239.520807-4-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200701072239.520807-1-horatiu.vultur@microchip.com>
References: <20200701072239.520807-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH net-next v2 3/3] bridge: Extend br_fill_ifinfo to
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
 net/bridge/br_netlink.c        | 29 ++++++++++++++++++++++++++++-
 2 files changed, 29 insertions(+), 1 deletion(-)

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
index 240e260e3461c..6ecb7c7453dcb 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -453,6 +453,32 @@ static int br_fill_ifinfo(struct sk_buff *skb,
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
+		/* RCU needed because of the VLAN locking rules (rcu || rtnl) */
+		rcu_read_lock();
+		if (!br_mrp_enabled(br) || port) {
+			rcu_read_unlock();
+			goto done;
+		}
+		af = nla_nest_start_noflag(skb, IFLA_AF_SPEC);
+		if (!af) {
+			rcu_read_unlock();
+			goto nla_put_failure;
+		}
+
+		err = br_mrp_fill_info(skb, br);
+
+		rcu_read_unlock();
+		if (err)
+			goto nla_put_failure;
+
 		nla_nest_end(skb, af);
 	}
 
@@ -516,7 +542,8 @@ int br_getlink(struct sk_buff *skb, u32 pid, u32 seq,
 	struct net_bridge_port *port = br_port_get_rtnl(dev);
 
 	if (!port && !(filter_mask & RTEXT_FILTER_BRVLAN) &&
-	    !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED))
+	    !(filter_mask & RTEXT_FILTER_BRVLAN_COMPRESSED) &&
+	    !(filter_mask & RTEXT_FILTER_MRP))
 		return 0;
 
 	return br_fill_ifinfo(skb, port, pid, seq, RTM_NEWLINK, nlflags,
-- 
2.27.0

