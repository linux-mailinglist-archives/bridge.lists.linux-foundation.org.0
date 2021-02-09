Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A74D631528B
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 16:20:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6246A85F71;
	Tue,  9 Feb 2021 15:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uM9tl_jBF_c1; Tue,  9 Feb 2021 15:20:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B4BF85FD4;
	Tue,  9 Feb 2021 15:20:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6238EC013A;
	Tue,  9 Feb 2021 15:20:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9E45CC013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E13786B9F
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pRKa91mi2yFZ for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 15:20:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 32C3F86B9A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 15:20:05 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id sa23so32292676ejb.0
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 07:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=33/uyGIN3FY3+rBdv4FUVUP8dhmUMuazcIsOv+i6Gos=;
 b=Jze5auyHPDoC6rfV73gY30Hp1USjjzyfk4eUjoUSm/ZtmJUo0//B9gg5YM1xmx4SGA
 m94yMWYIaoLHQTuURAvVTDpiYHPvDU77il0aNvTjxzRWzpLI3MLnPLZQ49Dn6FDU1YMO
 WCid8yzpagqm6Y7xzh0cHgqLG8Ql5cImK1tQemFDvTKZDl+e9Sk7XVRbfd0+5tuSAy/p
 evF3lWgG/HM/6d/Wdq8YDdLeGNrSErN5MGA0MjwtHrP+Hnljy04hYROZEUD7slwsoc0q
 4LVZ2xKfV1sdpKkuFDA16wmfRF40pE0B8XEdTIEommbKbT94DQTO6GYAR1r0cixMb4mO
 xJMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=33/uyGIN3FY3+rBdv4FUVUP8dhmUMuazcIsOv+i6Gos=;
 b=PLAiJ9AfX9v7UrkweYnq0vXYfAv/TvmvQzQT432dvMw/adneQmY/FV0CL3Ipr85pch
 7ww/lRxFJQjwzslAFNlkpqC4B3Y2byRwwV6zRdz0+4UYNPhPuVnvGKbGesRSQyMFaES2
 X43et/xCGCWuNHi6K7J59zWcE6OCXueXpFtUzJnDKR8utWrQwskcu46nqKYfMZtT/1Iq
 EPYcbTRxwhGskBsZL+VOzHnTYVJ9yf9fFBkHU73/bzEigmpoNvVgzTZyHbAnxJj5UWOJ
 6OlMZqDcWNmG/NWzI6s2aJdWpJDg8xHDruqvv+QMpyRwSZQoZrFgFOfJTfA0c9/5dV2j
 FKag==
X-Gm-Message-State: AOAM530a4ltuSd82ToHd0j3HX7DxEmoSrSHG/5cXs3lGbJdnmuSlpoG4
 HNiP/mh3hl9irC6wqljQ9Aw=
X-Google-Smtp-Source: ABdhPJwHMb8dV//9wzvmRBUxMtLkeULCNCUPZ7qXpiVjPoOKJDet9k5bhYqeP5+XbWGve9rt9ntjYg==
X-Received: by 2002:a17:906:364b:: with SMTP id
 r11mr22773043ejb.447.1612884003462; 
 Tue, 09 Feb 2021 07:20:03 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id q2sm11686108edv.93.2021.02.09.07.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 07:20:01 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Date: Tue,  9 Feb 2021 17:19:33 +0200
Message-Id: <20210209151936.97382-9-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v2 net-next 08/11] net: bridge: put
	SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS on the blocking call chain
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

Now that br_switchdev_set_port_flag is never called from under br->lock,
it runs in sleepable context.

All switchdev drivers handle SWITCHDEV_PORT_ATTR_SET as both blocking
and atomic, so no changes are needed on that front.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v2:
Patch is new.

 net/bridge/br_switchdev.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index bc63b10b2e67..3b152f2cd9b5 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -79,9 +79,8 @@ int br_switchdev_set_port_flag(struct net_bridge_port *p,
 	attr.u.brport_flags.val = flags;
 	attr.u.brport_flags.mask = mask;
 
-	/* We run from atomic context here */
-	err = call_switchdev_notifiers(SWITCHDEV_PORT_ATTR_SET, p->dev,
-				       &info.info, extack);
+	err = call_switchdev_blocking_notifiers(SWITCHDEV_PORT_ATTR_SET, p->dev,
+						&info.info, extack);
 	err = notifier_to_errno(err);
 	if (err == -EOPNOTSUPP)
 		return 0;
-- 
2.25.1

