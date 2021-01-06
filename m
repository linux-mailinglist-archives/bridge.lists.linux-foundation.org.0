Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DA72EBBDB
	for <lists.bridge@lfdr.de>; Wed,  6 Jan 2021 10:52:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0061D8727D;
	Wed,  6 Jan 2021 09:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WAwJYD1B+LL9; Wed,  6 Jan 2021 09:52:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A901887256;
	Wed,  6 Jan 2021 09:52:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9E773C013A;
	Wed,  6 Jan 2021 09:52:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05C02C013A
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 028FB84FC9
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bPAlb9PICu-A for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jan 2021 09:52:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9258A85102
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:13 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id 6so4245686ejz.5
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jan 2021 01:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lC1LFiqDpicLin+YkECJxc7NkcTGlHpSR10OKpi+kks=;
 b=MMn0MBO1IZucAJil43VtDtQ9f/QhqzBoa/oWw9wIy2YCE59+Sjl2dDA9MMf0xia1H2
 eUh4zmvJqx2rP/Qv/ouqkMTvJXy8Yr+MrrOG+MndqjCTDdELMMS4PPSliKugftc7ZroU
 iFr1cfBkJDRuQQtas2XnCz52k8RQhJV6QO2Q1SNEM8mSSiyQmhIbnHINPhMfRAC2Qbnk
 HtqEpxtKGKfq1hO87BLdqKn2jXFW5EHdcccTUAyKT/FGDGl36rMc6m/ebNqE4sO+qR+Y
 hCOnFo6hSoNE9R3e9cKnBXuKq6YCAqkCnDaIFtwWEF8hxlet1OBxoCNs6zYtLu85UhRH
 U9wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lC1LFiqDpicLin+YkECJxc7NkcTGlHpSR10OKpi+kks=;
 b=jIFzw10hImL9rS+kZ+3Fg9Y+jyGapsF5CdIa7zrLuUTBHoYuNNI0vztm5FYbc4c5Xl
 uP8pHfsJjzIh2atPy13pOyXUMu5sp0KzKe/jXAo77s4ZBnL7cWr5D/slZG3mvNutVKG5
 K2kAlCAC5yKySJ9ib56AZOR9YsmQTvgrKDaQhVxVHSJOngtzwiNJQjEfSKMVR+E5Vn6D
 Kzh6DuIhNG1+wWYcKoPPxSxKO+F1SFFnRtDZgXEIH64l5M83S28Y0bFylS1U+wklh7jc
 dIZ5Bn5y6vQdce8luCkrYvEJJSDhGa/Zep+jCfdBzJkbQflrVv3xQxPiUx5kKbj79Hnh
 MVRg==
X-Gm-Message-State: AOAM5308EXmkSMns3VCNOzra1fapdsPSTKP5t/mjyDH6iwKKy+89NdBm
 6OutzMYFcUe3DQGo2y8ZcGs=
X-Google-Smtp-Source: ABdhPJwT0MuQxw54+W0T9eTfecMbPn2xm8U8M6W+sooSKxUngin825dSUjpqb2DvXgnlx63HNc3sGQ==
X-Received: by 2002:a17:906:578e:: with SMTP id
 k14mr2360423ejq.90.1609926732066; 
 Wed, 06 Jan 2021 01:52:12 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id n8sm1019587eju.33.2021.01.06.01.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 01:52:11 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Date: Wed,  6 Jan 2021 11:51:33 +0200
Message-Id: <20210106095136.224739-5-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210106095136.224739-1-olteanv@gmail.com>
References: <20210106095136.224739-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Jiri Pirko <jiri@resnulli.us>, Alexandra Winter <wintera@linux.ibm.com>,
 Ido Schimmel <idosch@idosch.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Marek Behun <marek.behun@nic.cz>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, UNGLinuxDriver@microchip.com,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v4 net-next 4/7] net: dsa: move switchdev event
	implementation under the same switch/case statement
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

We'll need to start listening to SWITCHDEV_FDB_{ADD,DEL}_TO_DEVICE
events even for interfaces where dsa_slave_dev_check returns false, so
we need that check inside the switch-case statement for SWITCHDEV_FDB_*.

This movement also avoids a useless allocation / free of switchdev_work
on the untreated "default event" case.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v4:
None.

Changes in v3:
None.

Changes in v2:
None.

 net/dsa/slave.c | 35 ++++++++++++++++-------------------
 1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 5e4fb44c2820..42ec18a4c7ba 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2119,31 +2119,29 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 	struct dsa_port *dp;
 	int err;
 
-	if (event == SWITCHDEV_PORT_ATTR_SET) {
+	switch (event) {
+	case SWITCHDEV_PORT_ATTR_SET:
 		err = switchdev_handle_port_attr_set(dev, ptr,
 						     dsa_slave_dev_check,
 						     dsa_slave_port_attr_set);
 		return notifier_from_errno(err);
-	}
-
-	if (!dsa_slave_dev_check(dev))
-		return NOTIFY_DONE;
+	case SWITCHDEV_FDB_ADD_TO_DEVICE:
+	case SWITCHDEV_FDB_DEL_TO_DEVICE:
+		if (!dsa_slave_dev_check(dev))
+			return NOTIFY_DONE;
 
-	dp = dsa_slave_to_port(dev);
+		dp = dsa_slave_to_port(dev);
 
-	switchdev_work = kzalloc(sizeof(*switchdev_work), GFP_ATOMIC);
-	if (!switchdev_work)
-		return NOTIFY_BAD;
+		switchdev_work = kzalloc(sizeof(*switchdev_work), GFP_ATOMIC);
+		if (!switchdev_work)
+			return NOTIFY_BAD;
 
-	INIT_WORK(&switchdev_work->work,
-		  dsa_slave_switchdev_event_work);
-	switchdev_work->ds = dp->ds;
-	switchdev_work->port = dp->index;
-	switchdev_work->event = event;
+		INIT_WORK(&switchdev_work->work,
+			  dsa_slave_switchdev_event_work);
+		switchdev_work->ds = dp->ds;
+		switchdev_work->port = dp->index;
+		switchdev_work->event = event;
 
-	switch (event) {
-	case SWITCHDEV_FDB_ADD_TO_DEVICE:
-	case SWITCHDEV_FDB_DEL_TO_DEVICE:
 		fdb_info = ptr;
 
 		if (!fdb_info->added_by_user) {
@@ -2156,13 +2154,12 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 		switchdev_work->vid = fdb_info->vid;
 
 		dev_hold(dev);
+		dsa_schedule_work(&switchdev_work->work);
 		break;
 	default:
-		kfree(switchdev_work);
 		return NOTIFY_DONE;
 	}
 
-	dsa_schedule_work(&switchdev_work->work);
 	return NOTIFY_OK;
 }
 
-- 
2.25.1

