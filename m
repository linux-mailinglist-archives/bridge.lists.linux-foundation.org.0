Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5929431A150
	for <lists.bridge@lfdr.de>; Fri, 12 Feb 2021 16:16:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB89A8750F;
	Fri, 12 Feb 2021 15:16:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 106KxWYINN2S; Fri, 12 Feb 2021 15:16:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78B8F873BF;
	Fri, 12 Feb 2021 15:16:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9104C1825;
	Fri, 12 Feb 2021 15:16:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AEF0AC013A
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9BBCF86D7B
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGuoJaWLN_fv for <bridge@lists.linux-foundation.org>;
 Fri, 12 Feb 2021 15:16:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E4B3986D52
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 15:16:20 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id w1so16182774ejf.11
 for <bridge@lists.linux-foundation.org>; Fri, 12 Feb 2021 07:16:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9apr4CU9ROkXpvdUS3JqoM5muZRLGcdC/mdCAjUO/2I=;
 b=qq/gRN94YuTLfdmLPHGrMIymx/OC2yPfwrCmUNWPUscQWFrnpX9Qp5prLEZZ5Smiqo
 +v48lKSnWO0bE2Yv4ibxQkAwGA4SuHUXkq/uoDWJyALgI/GCIuNFyEafXA0mWQbKTGsv
 AzVIlmgvxYH2bnlddkYkKKJss1qZQHIrqiaPtp0LoxhXt+cdWFUh4zl64DGC+L5Be7ym
 jWRZmZlxilq64BzvYo8meIs3IyHBvOzUAZ5xf3Sjt1pEAH++M6p4svBVQUhJN/OkeQ+Z
 LJDTJZ7Q+M2FTnRF/S5qeT/x4FQFCAT3v0OSc28sNm2WvN4suT9W58TDscjR/wDX0RFu
 j+Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9apr4CU9ROkXpvdUS3JqoM5muZRLGcdC/mdCAjUO/2I=;
 b=dqvjQkUdsNNIZDjS0s34ervJXI4FdAIwmkaPmj+xEKhbJzzf4GFcdjk3OFWMFT1uAC
 agiGrqYwq1aHnoE0MJc7NXReH6ehkPT6RXpoOpiIfWYJikc7cMwMeerwLu/zgplUzQvU
 KOG/ufQOB038RTACxPp5y8ieHlN+7OmiItP7XZilhRE5dWsq2aOvcCBOmCReQ+TglxZN
 FjD+bCopU3v94mYqx3or5dkXhb0B1uJsAxKuaTBClijP+ZX1/uiLMOYvrh5ycvYwct13
 XIjhxCD8UoB7KfZJ3P1EAVIHaCTIbnt/OL4jDrjQl7zCrf96KffUImMKMFaWUIDXxg2F
 Jn0Q==
X-Gm-Message-State: AOAM5318ZZUo82Kz7jX0AUMR8AiIPON94HyIZhl4wmUuK5uNNpZnQaGF
 BmNVfK2zwaLgIPdCxanxpJY=
X-Google-Smtp-Source: ABdhPJwHssbN/+yfFPMDwZu6omt1qgfcrLFY+m+hvPdQyX857QadMgG6m5v5GhoDlYC2fYMeyC7HYQ==
X-Received: by 2002:a17:906:378d:: with SMTP id
 n13mr3387451ejc.386.1613142979490; 
 Fri, 12 Feb 2021 07:16:19 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z19sm6515456edr.69.2021.02.12.07.16.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 07:16:19 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Fri, 12 Feb 2021 17:15:57 +0200
Message-Id: <20210212151600.3357121-8-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210212151600.3357121-1-olteanv@gmail.com>
References: <20210212151600.3357121-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vignesh Raghavendra <vigneshr@ti.com>, Vadym Kochan <vkochan@marvell.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Ido Schimmel <idosch@idosch.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v5 net-next 07/10] net: dsa: felix: restore
	multicast flood to CPU when NPI tagger reinitializes
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

ocelot_init sets up PGID_MC to include the CPU port module, and that is
fine, but the ocelot-8021q tagger removes the CPU port module from the
unknown multicast replicator. So after a transition from the default
ocelot tagger towards ocelot-8021q and then again towards ocelot,
multicast flooding towards the CPU port module will be disabled.

Fixes: e21268efbe26 ("net: dsa: felix: perform switch setup for tag_8021q")
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v5:
Patch is new.

 drivers/net/dsa/ocelot/felix.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
index 386468e66c41..ae11d3f030ac 100644
--- a/drivers/net/dsa/ocelot/felix.c
+++ b/drivers/net/dsa/ocelot/felix.c
@@ -411,6 +411,7 @@ static int felix_setup_tag_npi(struct dsa_switch *ds, int cpu)
 	 */
 	cpu_flood = ANA_PGID_PGID_PGID(BIT(ocelot->num_phys_ports));
 	ocelot_rmw_rix(ocelot, cpu_flood, cpu_flood, ANA_PGID_PGID, PGID_UC);
+	ocelot_rmw_rix(ocelot, cpu_flood, cpu_flood, ANA_PGID_PGID, PGID_MC);
 
 	return 0;
 }
-- 
2.25.1

