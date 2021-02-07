Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDFB31282D
	for <lists.bridge@lfdr.de>; Mon,  8 Feb 2021 00:23:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0364086FE6;
	Sun,  7 Feb 2021 23:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id edGRt6jxOTea; Sun,  7 Feb 2021 23:23:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A91A86FF5;
	Sun,  7 Feb 2021 23:23:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4BC48C013A;
	Sun,  7 Feb 2021 23:23:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D47C8C013A
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C388D858B8
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id otcNl3gcLyS5 for <bridge@lists.linux-foundation.org>;
 Sun,  7 Feb 2021 23:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D01518587E
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:15 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id a9so21846482ejr.2
 for <bridge@lists.linux-foundation.org>; Sun, 07 Feb 2021 15:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zCy1EvMOOXH22EDc1HyamzeL1z53w13AeBEhwJyUZ3g=;
 b=c5j/diN8gx4zgCBwE67swYl3o8kHpanpQ7ncIHsLV3r7pplyNhBoRLoe+laZ3L+o3c
 lGqm7S7lddC8LMo9HwNtmj1ohpiCmcbAeiFh3zBTk/BKvSQqZ9J3nJiv6f9au4Z4Uv12
 u4Asyha9Q2k2uRK/yonDDmGRO8/wQlsTpQdbn+7DaZ8Mti/mIlQ2VJLSnRK8K7jo2LAc
 WL7cN2jJlVu9NKNM5xe1Ot7ZrlsTbHZ1YKJ82vUgk0SlGK+RJL0gVzqp4ntxHZJd+BI3
 mW2aglhzFA8yampMpg+tLL9Tjc1TpHkLUNwgjUKT0YMEFO8qUeJvSb4ONEl/Rx/EmnId
 yNWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zCy1EvMOOXH22EDc1HyamzeL1z53w13AeBEhwJyUZ3g=;
 b=mEBx+WSsudpArcLQ1LJo9UaZtBBg54RM7XOfVnexHtR5J3Qd61wF7UkIuE0xCRG56K
 alArPVB0jj6BPQkD6VNoLjSpoyScwCawLRGbGA5LmB4TLgSLCG/WFeuti192EQzrYR6B
 u2gom9JsTUGjnRPNsICLXNCWSSii5jiHc16lxcHrHrdXqXsNuoBLRx9LMdqgyFEESlLV
 wyOofDM8kPqeNgy7XsLPs2wTHluZfHPCYIArn0BtcTyYH+nIzxzs0qMH3LTw4IV8vAjk
 76dIz23glIihSf7jplMFiaZ60N6WHdN3ShfOu5qjOlIUICX5l8GA4xYEZ8bXkEw2yx6g
 i1Vg==
X-Gm-Message-State: AOAM532F+009PcQSOgkwvIlWxyQB8lo561ZA9X+8Vfwjlw0dXwlXysxO
 AFy6uzITXjoYl/5Aaa+gkFM=
X-Google-Smtp-Source: ABdhPJwquKnPTKBiRX+xvUdB0FvC7LMA7bWVQGIsqLYHs2piy0t0wfFUtEx4Ivvn63GpGu6/t0mfQA==
X-Received: by 2002:a17:906:805:: with SMTP id
 e5mr14217883ejd.104.1612740194366; 
 Sun, 07 Feb 2021 15:23:14 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u21sm7540016ejj.120.2021.02.07.15.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 15:23:13 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Mon,  8 Feb 2021 01:21:39 +0200
Message-Id: <20210207232141.2142678-8-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210207232141.2142678-1-olteanv@gmail.com>
References: <20210207232141.2142678-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH net-next 7/9] net: mscc: ocelot: use separate
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

