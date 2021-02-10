Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2AF3161F2
	for <lists.bridge@lfdr.de>; Wed, 10 Feb 2021 10:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 981DE8723B;
	Wed, 10 Feb 2021 09:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mgyCuz1BO+ck; Wed, 10 Feb 2021 09:19:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC5E78726A;
	Wed, 10 Feb 2021 09:19:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ADEE5C1E6F;
	Wed, 10 Feb 2021 09:19:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F73EC0891
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 24A9984553
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TzODiL00ogLU for <bridge@lists.linux-foundation.org>;
 Wed, 10 Feb 2021 09:19:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 019EC8454F
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 09:19:20 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id b9so2747029ejy.12
 for <bridge@lists.linux-foundation.org>; Wed, 10 Feb 2021 01:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oxbGJHr2KscLJg3Jp7wNmlUMCtlznjqgTotwuzodnos=;
 b=EQtiSoYI3Xw5uRAtZwkexizLRt1f3HgSFAUttbijJLbYb7M9rB3WAG5SyY/tmTW/VS
 p9ZFxnK77Gq1ff6vY0astsy6Ra7I3k1DGWtULUD8v+gPV0hnOHKNIwoGLK4//rkFAqZD
 Sb4wTXl+ndq87klUNQYtyEm/WI2OMW1gB1l3Qt0dYnUsGoYPF3q+wy7+TrHjC/Xem2QA
 G3V0MrOAZsvPmCX92c0Uj2C56N/tqHrjgM6x0qQgrRkTJ+fg8g2Oj+KFqkoT4tJnf5gF
 /ZLhk+ieYSrrekB5uxl7fCjHlR5Suy+UXFY7Iv+YTA8nB4eLE0KQbXL5mvKNz2nWFUtN
 8Z+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oxbGJHr2KscLJg3Jp7wNmlUMCtlznjqgTotwuzodnos=;
 b=krYWa/ZuMszFRkajVNURCVobqiQlqKKxS176BxBI+B3pO50Abp4ME0k1VqWffEKybA
 EJfsN/l6AO/MGAfPc+cN8U3mk7Wi5jl4PxBSd3323IWMa2Q+5zfT8lfFJI1XZWSt8Wc2
 PjTkj20P1k2h4dSeRFfFF8EZ4C08nOjlRlLy+Ypdiqo+bGBFQmIuQqI8OB9vWYV636pB
 99mqNcUq8BalJr9E22HpSAw3FMxqMk00XiAz3kSTUE/P4EUJu0pmWmaLxcncmsNyEJUa
 jp7KHnEz1PIjNAiMgN6uIL0x88AplRmqscJB+vnpP21BUgb2cjguKIhV6uYm/AWbBant
 Aujg==
X-Gm-Message-State: AOAM533GSSMGgA8+fWKODmSxvMMnVQqVastgHxisotcIwOuY6PqE9RHp
 Sntbg6DisUVro1ORabCGsz4=
X-Google-Smtp-Source: ABdhPJxdlFHG7ODZylr+Ph6nD4vX1N2CPPbhFJFobSzxHe1QgaEkyuGjSlGSO1p0ZUQ/gc5q8zdZbA==
X-Received: by 2002:a17:906:17d5:: with SMTP id
 u21mr2039544eje.541.1612948759519; 
 Wed, 10 Feb 2021 01:19:19 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u2sm701801ejb.65.2021.02.10.01.19.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 01:19:18 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Wed, 10 Feb 2021 11:14:38 +0200
Message-Id: <20210210091445.741269-5-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v3 net-next 04/11] net: dsa: configure proper
	brport flags when ports leave the bridge
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

For a DSA switch port operating in standalone mode, address learning
doesn't make much sense since that is a bridge function. In fact,
address learning even breaks setups such as this one:

   +---------------------------------------------+
   |                                             |
   | +-------------------+                       |
   | |        br0        |    send      receive  |
   | +--------+-+--------+ +--------+ +--------+ |
   | |        | |        | |        | |        | |
   | |  swp0  | |  swp1  | |  swp2  | |  swp3  | |
   | |        | |        | |        | |        | |
   +-+--------+-+--------+-+--------+-+--------+-+
          |         ^           |          ^
          |         |           |          |
          |         +-----------+          |
          |                                |
          +--------------------------------+

because if the switch has a single FDB (can offload a single bridge)
then source address learning on swp3 can "steal" the source MAC address
of swp2 from br0's FDB, because learning frames coming from swp2 will be
done twice: first on the swp1 ingress port, second on the swp3 ingress
port. So the hardware FDB will become out of sync with the software
bridge, and when swp2 tries to send one more packet towards swp1, the
ASIC will attempt to short-circuit the forwarding path and send it
directly to swp3 (since that's the last port it learned that address on),
which it obviously can't, because swp3 operates in standalone mode.

So DSA drivers operating in standalone mode should still configure a
list of bridge port flags even when they are standalone. Currently DSA
attempts to call dsa_port_bridge_flags with 0, which disables egress
flooding of unknown unicast and multicast, something which doesn't make
much sense. For the switches that implement .port_egress_floods - b53
and mv88e6xxx, it probably doesn't matter too much either, since they
can possibly inject traffic from the CPU into a standalone port,
regardless of MAC DA, even if egress flooding is turned off for that
port, but certainly not all DSA switches can do that - sja1105, for
example, can't. So it makes sense to use a better common default there,
such as "flood everything".

It should also be noted that what DSA calls "dsa_port_bridge_flags()"
is a degenerate name for just calling .port_egress_floods(), since
nothing else is implemented - not learning, in particular. But disabling
address learning, something that this driver is also coding up for, will
be supported by individual drivers once .port_egress_floods is replaced
with a more generic .port_bridge_flags.

Previous attempts to code up this logic have been in the common bridge
layer, but as pointed out by Ido Schimmel, there are corner cases that
are missed when doing that:
https://patchwork.kernel.org/project/netdevbpf/patch/20210209151936.97382-5-olteanv@gmail.com/

So, at least for now, let's leave DSA in charge of setting port flags
before and after the bridge join and leave.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v3:
Patch is new, logically it was moved from the bridge layer to the DSA
layer.

 net/dsa/port.c | 45 ++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 38 insertions(+), 7 deletions(-)

diff --git a/net/dsa/port.c b/net/dsa/port.c
index 5e079a61528e..9f65ba11ad00 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -122,6 +122,27 @@ void dsa_port_disable(struct dsa_port *dp)
 	rtnl_unlock();
 }
 
+static void dsa_port_change_brport_flags(struct dsa_port *dp,
+					 bool bridge_offload)
+{
+	unsigned long mask, flags;
+	int flag, err;
+
+	mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD;
+	if (bridge_offload)
+		flags = mask;
+	else
+		flags = mask & ~BR_LEARNING;
+
+	for_each_set_bit(flag, &mask, 32) {
+		err = dsa_port_pre_bridge_flags(dp, BIT(flag));
+		if (err)
+			continue;
+
+		dsa_port_bridge_flags(dp, flags & BIT(flag));
+	}
+}
+
 int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br)
 {
 	struct dsa_notifier_bridge_info info = {
@@ -132,10 +153,10 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br)
 	};
 	int err;
 
-	/* Set the flooding mode before joining the port in the switch */
-	err = dsa_port_bridge_flags(dp, BR_FLOOD | BR_MCAST_FLOOD);
-	if (err)
-		return err;
+	/* Notify the port driver to set its configurable flags in a way that
+	 * matches the initial settings of a bridge port.
+	 */
+	dsa_port_change_brport_flags(dp, true);
 
 	/* Here the interface is already bridged. Reflect the current
 	 * configuration so that drivers can program their chips accordingly.
@@ -146,7 +167,7 @@ int dsa_port_bridge_join(struct dsa_port *dp, struct net_device *br)
 
 	/* The bridging is rolled back on error */
 	if (err) {
-		dsa_port_bridge_flags(dp, 0);
+		dsa_port_change_brport_flags(dp, false);
 		dp->bridge_dev = NULL;
 	}
 
@@ -172,8 +193,18 @@ void dsa_port_bridge_leave(struct dsa_port *dp, struct net_device *br)
 	if (err)
 		pr_err("DSA: failed to notify DSA_NOTIFIER_BRIDGE_LEAVE\n");
 
-	/* Port is leaving the bridge, disable flooding */
-	dsa_port_bridge_flags(dp, 0);
+	/* Configure the port for standalone mode (no address learning,
+	 * flood everything).
+	 * The bridge only emits SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS events
+	 * when the user requests it through netlink or sysfs, but not
+	 * automatically at port join or leave, so we need to handle resetting
+	 * the brport flags ourselves. But we even prefer it that way, because
+	 * otherwise, some setups might never get the notification they need,
+	 * for example, when a port leaves a LAG that offloads the bridge,
+	 * it becomes standalone, but as far as the bridge is concerned, no
+	 * port ever left.
+	 */
+	dsa_port_change_brport_flags(dp, false);
 
 	/* Port left the bridge, put in BR_STATE_DISABLED by the bridge layer,
 	 * so allow it to be in BR_STATE_FORWARDING to be kept functional
-- 
2.25.1

