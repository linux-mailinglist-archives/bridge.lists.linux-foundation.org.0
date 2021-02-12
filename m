Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B786131AA6F
	for <lists.bridge@lfdr.de>; Sat, 13 Feb 2021 09:04:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 784DC87847;
	Sat, 13 Feb 2021 08:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ySWFSO1e-xch; Sat, 13 Feb 2021 08:04:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4AC93877FD;
	Sat, 13 Feb 2021 08:04:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2D8B2C013A;
	Sat, 13 Feb 2021 08:04:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 34FA6C013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 14:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 17CBB86A61
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 14:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XxABH2eanRoF for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 14:40:31 +0000 (UTC)
X-Greylist: delayed 00:08:40 by SQLgrey-1.7.6
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD04D86A4F
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 14:40:30 +0000 (UTC)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11CEVf9t111660;
 Fri, 12 Feb 2021 08:31:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1613140301;
 bh=lUakNV+CV5NffMQmGC2Drd4lNwe79cgtFz1V4jCRJcY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lbseuewDdWlwxmebUNQ0jeNXKuGvUuIfQVSJjNLEKm1S8j+KqXF7lDUpoaMmbawQt
 rkyu1MpMhaWm3RagWE/UhEIr4fK9IH6SlrSTnPvJylIoigO+WYMygLn6vOTTVByei5
 Lt3+0OIbkUVogWqSTMckQZguGd7RM9DKNpY34SXE=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11CEVfNa091029
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Feb 2021 08:31:41 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Feb 2021 08:31:41 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Feb 2021 08:31:41 -0600
Received: from [10.250.234.120] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11CEVYtG076171;
 Fri, 12 Feb 2021 08:31:35 -0600
To: Grygorii Strashko <grygorii.strashko@ti.com>, Vladimir Oltean
 <olteanv@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller"
 <davem@davemloft.net>
References: <20210212010531.2722925-1-olteanv@gmail.com>
 <97ae293a-f59d-cc7c-21a6-f83880c69c71@ti.com>
Message-ID: <ba7350f1-f9ff-b77e-65c9-cd5a4ae652d8@ti.com>
Date: Fri, 12 Feb 2021 20:01:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <97ae293a-f59d-cc7c-21a6-f83880c69c71@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Mailman-Approved-At: Sat, 13 Feb 2021 08:04:50 +0000
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v4 net-next 0/9] Cleanup in brport flags
 switchdev offload for DSA
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
From: Vignesh Raghavendra via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Vignesh Raghavendra <vigneshr@ti.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Hi Vladimir,

On 2/12/21 7:47 PM, Grygorii Strashko wrote:
> 
> 
> On 12/02/2021 03:05, Vladimir Oltean wrote:
>> From: Vladimir Oltean <vladimir.oltean@nxp.com>
[...]
> 
> Sorry, but we seems just added more work for you.
> https://lore.kernel.org/patchwork/cover/1379380/
> 

Could you squash these when you post new version:
Sorry for not noticing earlier.

-- >8 --

From 69f3a1ff1ea0777f5deceefdb0e79ce625e6488a Mon Sep 17 00:00:00 2001
From: Vignesh Raghavendra <vigneshr@ti.com>
Date: Fri, 12 Feb 2021 19:34:46 +0530
Subject: [PATCH 1/2] fixup! net: switchdev: propagate extack to port
 attributes

---
 drivers/net/ethernet/ti/am65-cpsw-switchdev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-switchdev.c b/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
index 1067e7772dbf..314825acf0a0 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
@@ -81,7 +81,8 @@ static int am65_cpsw_port_attr_br_flags_pre_set(struct net_device *netdev,
 }
 
 static int am65_cpsw_port_attr_set(struct net_device *ndev,
-				   const struct switchdev_attr *attr)
+				   const struct switchdev_attr *attr,
+				   struct netlink_ext_ack *extack)
 {
 	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
 	int ret;


-- >8 --

From 7d7fdb79a8b255a1e9fe5d205b0ff1824a16ce56 Mon Sep 17 00:00:00 2001
From: Vignesh Raghavendra <vigneshr@ti.com>
Date: Fri, 12 Feb 2021 19:40:48 +0530
Subject: [PATCH 2/2] fixup! net: switchdev: pass flags and mask to both
 {PRE_,}BRIDGE_FLAGS attributes

---
 drivers/net/ethernet/ti/am65-cpsw-switchdev.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/ti/am65-cpsw-switchdev.c b/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
index 314825acf0a0..03c7a012f5c5 100644
--- a/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
+++ b/drivers/net/ethernet/ti/am65-cpsw-switchdev.c
@@ -55,12 +55,12 @@ static int am65_cpsw_port_stp_state_set(struct am65_cpsw_port *port, u8 state)
 
 static int am65_cpsw_port_attr_br_flags_set(struct am65_cpsw_port *port,
 					    struct net_device *orig_dev,
-					    unsigned long brport_flags)
+					    struct switchdev_brport_flags flags)
 {
 	struct am65_cpsw_common *cpsw = port->common;
 	bool unreg_mcast_add = false;
 
-	if (brport_flags & BR_MCAST_FLOOD)
+	if (flags.mask & BR_MCAST_FLOOD)
 		unreg_mcast_add = true;
 	netdev_dbg(port->ndev, "BR_MCAST_FLOOD: %d port %u\n",
 		   unreg_mcast_add, port->port_id);
@@ -72,9 +72,9 @@ static int am65_cpsw_port_attr_br_flags_set(struct am65_cpsw_port *port,
 }
 
 static int am65_cpsw_port_attr_br_flags_pre_set(struct net_device *netdev,
-						unsigned long flags)
+						struct switchdev_brport_flags flags)
 {
-	if (flags & ~(BR_LEARNING | BR_MCAST_FLOOD))
+	if (flags.mask & ~(BR_LEARNING | BR_MCAST_FLOOD))
 		return -EINVAL;
 
 	return 0;
-- 
2.30.0


