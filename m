Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 796BB1DB114
	for <lists.bridge@lfdr.de>; Wed, 20 May 2020 13:11:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AFDBB237C8;
	Wed, 20 May 2020 11:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VZEXSIyqJW8l; Wed, 20 May 2020 11:11:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0BC4722836;
	Wed, 20 May 2020 11:11:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F21DDC0176;
	Wed, 20 May 2020 11:11:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E6D3AC0176
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB4B423799
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TNx9O43J3U0m for <bridge@lists.linux-foundation.org>;
 Wed, 20 May 2020 11:11:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id C6C1322836
 for <bridge@lists.linux-foundation.org>; Wed, 20 May 2020 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589973085; x=1621509085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WV0s6syDCFCLZ7SWuRmHom6k1uwxvsH4yqT1PpZ4Ge4=;
 b=iryf6IwZgwKZH2Ik4k+rjS8+ypExZ8mdzy+vj6mV+VBH6TD5BKdgSp+C
 IxocxXTLhUyggKpxxFYvJBs3+cCCjFSuabLLFM1eORB6JI+5VxQQxkmYg
 Oyd6WTax/8FybwQvQs72L1P9ak671ScMxFHPxLVG5whGjVbRjn7+zLxnx
 CY+Iw/pSDwelJynpx5K64ngSdOOAbG0tjBS9AjOy8mJsDpxyLty/vlVNH
 sSygmz0ukfFdZZq/KKuvlDY/a2mLra0iJE5iZrW91ed9I+6WDEppRw5SP
 iXU8aNbpiGs1JUi3YMl3Fi9t438cNSvkxrA3MAR/BigP5XURqbiwWJ/2r Q==;
IronPort-SDR: U0TDrSaBqtVelQF5n+U25gGaKV9aN0DQc1R3iyJwBRLJVDQsICrbjbVa+IIgB4o0Obnlg1a+bS
 /99/O+RJ4d8dkDeQTJmA9LENFqCbjxOOpgl9Pe1dJFkgBBBs1ECM6speUWoSxiTScaz0rjfI//
 MT7QU5BHSdD2xkpo9d3e80Xxu+DsUS24YaCgXCkFg52p6akS2GPN/hTwvqAiAAMjPEvF+efhJ7
 fOOhfPQnx977nWUYPw4mqU3NjIpZwndNgtyzVzDMJvszec6y9R+gOZe2rH5MoFpyEEN4f/MaLl
 1do=
X-IronPort-AV: E=Sophos;i="5.73,413,1583218800"; d="scan'208";a="77278945"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 May 2020 04:11:25 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 May 2020 04:11:24 -0700
Received: from soft-dev3.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 20 May 2020 04:11:22 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <jiri@resnulli.us>, <ivecera@redhat.com>, <davem@davemloft.net>,
 <kuba@kernel.org>, <roopa@cumulusnetworks.com>,
 <nikolay@cumulusnetworks.com>, <andrew@lunn.ch>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bridge@lists.linux-foundation.org>
Date: Wed, 20 May 2020 13:09:23 +0000
Message-ID: <20200520130923.3196432-4-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
References: <20200520130923.3196432-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [Bridge] [PATCH 3/3] bridge: mrp: Restore port state when deleting
	MRP instance
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

When a MRP instance is deleted, then restore the port according to the
bridge state. If the bridge is up then the ports will be in forwarding
state otherwise will be in disabled state.

Fixes: 9a9f26e8f7ea ("bridge: mrp: Connect MRP API with the switchdev API")
Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 net/bridge/br_mrp.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
index a5a3fa59c078a..bdd8920c15053 100644
--- a/net/bridge/br_mrp.c
+++ b/net/bridge/br_mrp.c
@@ -229,6 +229,7 @@ static void br_mrp_test_work_expired(struct work_struct *work)
 static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
 {
 	struct net_bridge_port *p;
+	u8 state;
 
 	/* Stop sending MRP_Test frames */
 	cancel_delayed_work_sync(&mrp->test_work);
@@ -240,20 +241,24 @@ static void br_mrp_del_impl(struct net_bridge *br, struct br_mrp *mrp)
 	p = rtnl_dereference(mrp->p_port);
 	if (p) {
 		spin_lock_bh(&br->lock);
-		p->state = BR_STATE_FORWARDING;
+		state = netif_running(br->dev) ?
+				BR_STATE_FORWARDING : BR_STATE_DISABLED;
+		p->state = state;
 		p->flags &= ~BR_MRP_AWARE;
 		spin_unlock_bh(&br->lock);
-		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
+		br_mrp_port_switchdev_set_state(p, state);
 		rcu_assign_pointer(mrp->p_port, NULL);
 	}
 
 	p = rtnl_dereference(mrp->s_port);
 	if (p) {
 		spin_lock_bh(&br->lock);
-		p->state = BR_STATE_FORWARDING;
+		state = netif_running(br->dev) ?
+				BR_STATE_FORWARDING : BR_STATE_DISABLED;
+		p->state = state;
 		p->flags &= ~BR_MRP_AWARE;
 		spin_unlock_bh(&br->lock);
-		br_mrp_port_switchdev_set_state(p, BR_STATE_FORWARDING);
+		br_mrp_port_switchdev_set_state(p, state);
 		rcu_assign_pointer(mrp->s_port, NULL);
 	}
 
-- 
2.26.2

