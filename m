Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 403663161F9
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 10:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7C7B86739;
	Wed, 10 Feb 2021 09:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aISYUKTO2P3u; Wed, 10 Feb 2021 09:19:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E8678674A;
	Wed, 10 Feb 2021 09:19:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 31561C1DA9;
	Wed, 10 Feb 2021 09:19:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E059AC013A
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CDC6F8671E
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qOAxL88xp1I2 for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 09:19:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F8658672E
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:29 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id p20so2811062ejb.6
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 01:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VuZTEPYHMg3ShgofbvGoqs9eGEg01aAq4yuwAM+XNnk=;
 b=llFPHmLvhLGFXxaCSMKvKR0NGGdq6GpGMXgrxyQCDOIka8JKqsSparIRtSjxe96eV1
 DHAkUwEu0RHu21UwzoqJNk2/ES3lCxlHp1SQwMW1zX1QHHygDY3K01k0veSt5SnBsnxv
 ALD7cEku3cRKPvRv8fNNkrIRvtsA7BH0TeuE46Xeq0u6dRvaLCprMdoBvt8t8k4QUD2E
 +WShvWxi4FimoshbiVNux+9Hb1TUQBfZwcSxAPbJXFOE5UuxnZ68ZXAgSvC+KhG7WJAM
 3moz+4OzfhfsPP1hU2RS6R6Trf7KDZSRTXPGuq2o0t3oYdwseF55pmEDunto0I/YtVsr
 JK1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VuZTEPYHMg3ShgofbvGoqs9eGEg01aAq4yuwAM+XNnk=;
 b=lrNn+j5Ss98FyOUAKfcOtK3yyUQSi3e8Y3e8BKDPg9zzS+yiH7q3TJtyaTDjmPY9qZ
 lRTBDbVofRAYlUqym8NAMepZUNwIr2odnM2rN5qs6/HLR/PEpnlB5Kg/oBualuJDxqY4
 0cUwVo0rhhrKpbU4ol1fZcn5epP8yPfMNLbleCoq3M17ca2g5ujkm+x8G5yVoHv0PB+g
 CdtXENic6A577ZguaIl+h+DztXyvanihcjeZ00gz2/Rtb7HYUDk0ZGVsEpXpM8Yz2gTy
 omKhc8I+o8GNozDMznBCyOFJ1mW4YQ+hh7ViDQZEp1zcwJfunGBZLTRv76owrBIcMGQc
 jAEA==
X-Gm-Message-State: AOAM530Sn3pAgOAEgiaG9/i0IG1NDwM5StgeQbMb6APxvke/rwoxJbQ1
 6srL+cSMLmhjAGMNp3bf27NeNnW7HqI=
X-Google-Smtp-Source: ABdhPJwB9VtIyoHc/zrVGuzGDT/17ShUtoozr6R9sBXBCEoP7emi3VI12qbh4zybbeAQsLLYETVQJg==
X-Received: by 2002:a17:907:262b:: with SMTP id
 aq11mr1987073ejc.360.1612948767790; 
 Wed, 10 Feb 2021 01:19:27 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u2sm701801ejb.65.2021.02.10.01.19.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 01:19:27 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Wed, 10 Feb 2021 11:14:43 +0200
Message-Id: <20210210091445.741269-10-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210210091445.741269-1-olteanv@gmail.com>
References: <20210210091445.741269-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 09/11] net: mscc: ocelot: use separate
	flooding PGID for broadcast
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

From: Vladimir Oltean <vladimir.oltean@nxp.com>

In preparation of offloading the bridge port flags which have
independent settings for unknown multicast and for broadcast, we should
also start reserving one destination Port Group ID for the flooding of
broadcast packets, to allow configuring it individually.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v3:
None.

Changes in v2:
None.

 drivers/net/ethernet/mscc/ocelot.c | 13 ++++++++-----
 include/soc/mscc/ocelot.h          | 15 ++++++++-------
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/mscc/ocelot.c b/drivers/net/ethernet/mscc/ocelot.c
index f8b85ab8be5d..8c1052346b58 100644
--- a/drivers/net/ethernet/mscc/ocelot.c
+++ b/drivers/net/ethernet/mscc/ocelot.c
@@ -1662,7 +1662,7 @@ int ocelot_init(struct ocelot *ocelot)
 	/* Setup flooding PGIDs */
 	for (i = 0; i < ocelot->num_flooding_pgids; i++)
 		ocelot_write_rix(ocelot, ANA_FLOODING_FLD_MULTICAST(PGID_MC) |
-				 ANA_FLOODING_FLD_BROADCAST(PGID_MC) |
+				 ANA_FLOODING_FLD_BROADCAST(PGID_BC) |
 				 ANA_FLOODING_FLD_UNICAST(PGID_UC),
 				 ANA_FLOODING, i);
 	ocelot_write(ocelot, ANA_FLOODING_IPMC_FLD_MC6_DATA(PGID_MCIPV6) |
@@ -1683,15 +1683,18 @@ int ocelot_init(struct ocelot *ocelot)
 		ocelot_write_rix(ocelot, 0, ANA_PGID_PGID, PGID_SRC + port);
 	}
 
-	/* Allow broadcast MAC frames. */
 	for_each_nonreserved_multicast_dest_pgid(ocelot, i) {
 		u32 val = ANA_PGID_PGID_PGID(GENMASK(ocelot->num_phys_ports - 1, 0));
 
 		ocelot_write_rix(ocelot, val, ANA_PGID_PGID, i);
 	}
-	ocelot_write_rix(ocelot,
-			 ANA_PGID_PGID_PGID(GENMASK(ocelot->num_phys_ports, 0)),
-			 ANA_PGID_PGID, PGID_MC);
+	/* Allow broadcast and unknown L2 multicast to the CPU. */
+	ocelot_rmw_rix(ocelot, ANA_PGID_PGID_PGID(BIT(ocelot->num_phys_ports)),
+		       ANA_PGID_PGID_PGID(BIT(ocelot->num_phys_ports)),
+		       ANA_PGID_PGID, PGID_MC);
+	ocelot_rmw_rix(ocelot, ANA_PGID_PGID_PGID(BIT(ocelot->num_phys_ports)),
+		       ANA_PGID_PGID_PGID(BIT(ocelot->num_phys_ports)),
+		       ANA_PGID_PGID, PGID_BC);
 	ocelot_write_rix(ocelot, 0, ANA_PGID_PGID, PGID_MCIPV4);
 	ocelot_write_rix(ocelot, 0, ANA_PGID_PGID, PGID_MCIPV6);
 
diff --git a/include/soc/mscc/ocelot.h b/include/soc/mscc/ocelot.h
index d0d48e9620fb..7ee85527cb5f 100644
--- a/include/soc/mscc/ocelot.h
+++ b/include/soc/mscc/ocelot.h
@@ -54,16 +54,17 @@
  * PGID_CPU: used for whitelisting certain MAC addresses, such as the addresses
  *           of the switch port net devices, towards the CPU port module.
  * PGID_UC: the flooding destinations for unknown unicast traffic.
- * PGID_MC: the flooding destinations for broadcast and non-IP multicast
- *          traffic.
+ * PGID_MC: the flooding destinations for non-IP multicast traffic.
  * PGID_MCIPV4: the flooding destinations for IPv4 multicast traffic.
  * PGID_MCIPV6: the flooding destinations for IPv6 multicast traffic.
+ * PGID_BC: the flooding destinations for broadcast traffic.
  */
-#define PGID_CPU			59
-#define PGID_UC				60
-#define PGID_MC				61
-#define PGID_MCIPV4			62
-#define PGID_MCIPV6			63
+#define PGID_CPU			58
+#define PGID_UC				59
+#define PGID_MC				60
+#define PGID_MCIPV4			61
+#define PGID_MCIPV6			62
+#define PGID_BC				63
 
 #define for_each_unicast_dest_pgid(ocelot, pgid)		\
 	for ((pgid) = 0;					\
-- 
2.25.1

