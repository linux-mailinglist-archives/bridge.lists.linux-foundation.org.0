Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5BF31282B
	for <lists.bridge@lfdr.de>; Mon,  8 Feb 2021 00:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A7BAF20510;
	Sun,  7 Feb 2021 23:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6vR2t2gvb8lD; Sun,  7 Feb 2021 23:23:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8AD06204BA;
	Sun,  7 Feb 2021 23:23:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6FEE2C013A;
	Sun,  7 Feb 2021 23:23:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B2E39C013A
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A191986A9B
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id egnRCLQXqqPA for <bridge@lists.linux-foundation.org>;
 Sun,  7 Feb 2021 23:23:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B976086FDA
 for <bridge@lists.linux-foundation.org>; Sun,  7 Feb 2021 23:23:08 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id f14so21814676ejc.8
 for <bridge@lists.linux-foundation.org>; Sun, 07 Feb 2021 15:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e9XiWgYMfVUBSKTt2/GH7FXs22RSflWWzqO+GytFND8=;
 b=hrNsNNr92ti6PuUoJlwmbCFI/0za7J7d0/Mr1fl7pIVF/V67yqcNAU7YeBI1zSE4BR
 vSgZbG8ewwmWuad2Q2X9OSAP4c84PibFdy8bnfSPBkaQ9FmMBRHaN3w/O9cdp6mm9EV8
 peKBNbGwlC6Vf40m7+O7ezFrNYLrfBDQGu+ob/LKU8JvBMEyGf3HXYSNIAPqbIBS7vif
 3Eri2/HMq/LZ13WJHBIo1J5K9kcfOKCIJav6wJ+e3tptTsOgagQ5kZPg9d+zYB7WFel+
 pb0WnbEwHIyu8EbFSKaQgXu1bBNnxT99UcGWQbSWSZ1xu9g3g6ZWAW8/5kh+P6vKWZ9M
 uU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e9XiWgYMfVUBSKTt2/GH7FXs22RSflWWzqO+GytFND8=;
 b=ky9lR7ccAeeich5sw6Sty1tV+9Y4PZ6ELYkLonOxAOLaAW95WtqLpQUR5f0zQeQwLI
 XrLKoegzuL1m0mpEwscDfh/gQEljgSRrWBE7FFoLY0qvNlfVn70RTlI1k8Dq1PuJ57BT
 dgPYB6gIC5tYpxbtRbyXlBqDxeL3LVLYJiqKwd/5QNXWT5TsRGn0ccClIfqgs1ev4oqS
 thnzqOvbn4YN5gVViyrbqk3RCkug0yS1AkJzzT1bKxlNJ3cEVIlR9QMW03QgREWy0Er0
 9KYTFgaQOn/WiCFBsadhoIMA2fTK9CL2meSSU766MHfybu8soAhwkEDGgxgr5KWLDp+p
 hMWQ==
X-Gm-Message-State: AOAM533gvA4s9FP5HtnCUTY+KXlUM0sdcM//OlyY91qJKe73Wb6X14HQ
 FOtCYjtBtuiP+N2NzUYezgI=
X-Google-Smtp-Source: ABdhPJzZ9hMYurUekGo++xUICdbenx+WJqC9rfS+Fr5RgTrA/SSw5oKu9PUajnSEZ4VhPv4nmDn8BQ==
X-Received: by 2002:a17:906:f4f:: with SMTP id
 h15mr14443806ejj.498.1612740187258; 
 Sun, 07 Feb 2021 15:23:07 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id u21sm7540016ejj.120.2021.02.07.15.23.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 15:23:06 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Mon,  8 Feb 2021 01:21:35 +0200
Message-Id: <20210207232141.2142678-4-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH net-next 3/9] net: dsa: stop setting initial and
	final brport flags
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

