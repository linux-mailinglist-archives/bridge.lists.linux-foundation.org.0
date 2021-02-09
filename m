Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF69315289
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 16:20:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D68586B80;
	Tue,  9 Feb 2021 15:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxOWEVH+Zajn; Tue,  9 Feb 2021 15:19:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id B975386B9A;
	Tue,  9 Feb 2021 15:19:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AEEA2C013A;
	Tue,  9 Feb 2021 15:19:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8648C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D78DD85F71
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJArxveAixSQ for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 15:19:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1BC5E85F46
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:19:58 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id q2so24218339edi.4
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 07:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AkDQjrnrduVZMAhweD9hW9j4GkN22HKFVzGcpRaV+qE=;
 b=e2T4P1lz4I17kuV+wPzF1odR3ie/Bvx7chGzyBa5nLxDS8zpjyOYw8E+gekxi6Njg9
 ulUBBz8A8aEw+NvwMpr0MF+G1OJwGToo92OHEW3NLxI0xqx1P7AlcP+NzOYNcxadP5AS
 WK4ofM/FGyYPIoMFl3mP0MWvBuXplNVio5f69uaUqTR5lFdls58Nv3Hq+Rte3izKImPA
 YCod4c7oT1Z/WDDmZAXNgyRjPW4RHyNLszvIPSVzKPBsTwQjxwKUEID5lzKBN7yCcaIp
 jouIKljFoOWvTyqSUDR8Brx2jsMHaYw06yglaGx/QJHduZF6+x0auRXnfR+gNzyUv8Vt
 FobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AkDQjrnrduVZMAhweD9hW9j4GkN22HKFVzGcpRaV+qE=;
 b=TE/OudB409nyeQoJjAkqiqC9A0fAwIWOPZXoA9yz70prDOwr5vLWZ9g3f0vDrKm8xp
 vs7/RmKVEEmQMvbAX0aisuSI6Abw3LUzHLSQnEK7gG4MQugmr0/DwalAS+wcFxhPW+1S
 u3lP5Ceb6FxF6p1kytQfVa/JpRBPnGtcY95UQ2//y0O+mujKo7odH4IcZ6zFma0CLyjR
 uM8GWP3QiFQwgzFoueudUBWwDZD2xeZsGc3jEBbG6AwmIoARfibJ4+1lzuAbkkZm+MZ0
 Y42xpc2dOuYEycrw7kFmExtsytVmbkTSQm0khbuM5Tjr29u32wKMkXFzrHaUHsIvhn39
 9yCg==
X-Gm-Message-State: AOAM531L5qRbX4AcnJVT/XbFNUfuLAzBZNehjCyw0wcK/CXx/4rXttEK
 qPU8myqP2WpAvdkieDnpXk2dou263LQ=
X-Google-Smtp-Source: ABdhPJzuQ7mcFJMPpcDbAQrcHufwzjpf1Hv43yQmuPKOGw0AryBbWqbIGRzaRdH0jH3N8t3NrTFg4A==
X-Received: by 2002:aa7:ce15:: with SMTP id d21mr24001894edv.246.1612883996701; 
 Tue, 09 Feb 2021 07:19:56 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id q2sm11686108edv.93.2021.02.09.07.19.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 07:19:55 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Tue,  9 Feb 2021 17:19:30 +0200
Message-Id: <20210209151936.97382-6-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210209151936.97382-1-olteanv@gmail.com>
References: <20210209151936.97382-1-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v2 net-next 05/11] net: dsa: stop setting initial
	and final brport flags
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

With the bridge driver doing that for us now, we can simplify our
mid-layer logic a little bit, which would have otherwise needed some
tuning for the disabling of address learning that is necessary in
standalone mode.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v2:
None.

 net/dsa/port.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/net/dsa/port.c b/net/dsa/port.c
index 5e079a61528e..aa1cbba7f89f 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -132,11 +132,6 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br)
 	};
 	int err;
 
-	/* Set the flooding mode before joining the port in the switch */
-	err = dsa_port_bridge_flags(dp, BR_FLOOD | BR_MCAST_FLOOD);
-	if (err)
-		return err;
-
 	/* Here the interface is already bridged. Reflect the current
 	 * configuration so that drivers can program their chips accordingly.
 	 */
@@ -145,10 +140,8 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br)
 	err = dsa_broadcast(DSA_NOTIFIER_BRIDGE_JOIN, &info);
 
 	/* The bridging is rolled back on error */
-	if (err) {
-		dsa_port_bridge_flags(dp, 0);
+	if (err)
 		dp->bridge_dev = NULL;
-	}
 
 	return err;
 }
@@ -172,9 +165,6 @@ void dsa_port_bridge_leave(struct dsa_port *dp, struct net_device *br)
 	if (err)
 		pr_err("DSA: failed to notify DSA_NOTIFIER_BRIDGE_LEAVE\n");
 
-	/* Port is leaving the bridge, disable flooding */
-	dsa_port_bridge_flags(dp, 0);
-
 	/* Port left the bridge, put in BR_STATE_DISABLED by the bridge layer,
 	 * so allow it to be in BR_STATE_FORWARDING to be kept functional
 	 */
-- 
2.25.1

