Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155093B73E0
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A66E403D2;
	Tue, 29 Jun 2021 14:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IND3Sv7CDOFj; Tue, 29 Jun 2021 14:07:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 761DA403D7;
	Tue, 29 Jun 2021 14:07:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5139BC000E;
	Tue, 29 Jun 2021 14:07:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3392CC001B
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C795D404A2
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VUst_rBG1eyK for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D58ED404A3
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:32 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id w13so25518302edc.0
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BOMzh8BvHskVBrXcwAoloE2yOIC+E69XRfT1jHkRC1Q=;
 b=fO/0/fnnnR63NQyNWELQzWLeqGg3F+vEXP6dbYjC8bNeQw7J3Bjmb4WxBhj3tjx/ns
 s2okUXZC6wkt2i96ClUKWd69J+f33i+V5l9LVv2nLe8JOUftGJVogTJTm/yD3rxp2Cn5
 ZDLL26CuapdYY9r2iLrozwTnVHdLYy2+/4fSuJbUyfiitKny6iCdiXhvaa7TWAkXIWYM
 z0qgN4O/f+mQA0xQoEdZpDeuoMtLicmD3kENRvCOefpqnb/Wjt/ewL+AhLGjpbDCuY0v
 bxkBsWzh1s84j/IQZaKo//A7+yM6sQxdx5DQKIMpGlzQRF6tiaeZ/BPjFUJni0X9D4IH
 mSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BOMzh8BvHskVBrXcwAoloE2yOIC+E69XRfT1jHkRC1Q=;
 b=hNjO95hOn3fyLF5el46HVjMD1MOYX2Hu+ghEJZh6woFvP1eRsfLorr/2z4bvD69/ej
 VquIS8l5iaV+CIUupCPjB8pHx/R6KUbOuUtqxAjrmw7mqIWrytjREueAj3vzqRam52w6
 p1Yt97ST6f5Mwx1IAMDCm4vr1h+GUJxI+wwkoLEohaBAErPG0K5XnM66N1gHYm4wz91+
 NCRd04amuGgnHK6ftjPrTwkif6YFKtsXGX4OPbvv//mhw99YMVgiEeyCVAixOYpxWfjQ
 rznAWvKaUbp/jKZb86hTFwzCpeqk83E1HlbPjg3R14pJ4L2eBjtSue6/fFB97/yAaWvi
 ThJQ==
X-Gm-Message-State: AOAM532+QDhLDRGCx4abyLUBe1weRElEkfp4otiL0sk2OOCs3GBpfsf5
 ao57T3SxUYiPyMCEULwIDYI=
X-Google-Smtp-Source: ABdhPJxodBWegIv9JxWdAxD3DDeD8A6DYVxOsxaHi9l21ZpnZLIkC/D/5eejp45sFGwnHFlrcqFvww==
X-Received: by 2002:aa7:d78b:: with SMTP id s11mr5813879edq.280.1624975651063; 
 Tue, 29 Jun 2021 07:07:31 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:30 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:57 +0300
Message-Id: <20210629140658.2510288-15-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210629140658.2510288-1-olteanv@gmail.com>
References: <20210629140658.2510288-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@idosch.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH v5 net-next 14/15] net: dsa: ensure during
	dsa_fdb_offload_notify that dev_hold and dev_put are on the same dev
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

When
(a) "dev" is a bridge port which the DSA switch tree offloads, but is
    otherwise not a dsa slave (such as a LAG netdev), or
(b) "dev" is the bridge net device itself

then strange things happen to the dev_hold/dev_put pair:
dsa_schedule_work() will still be called with a DSA port that offloads
that netdev, but dev_hold() will be called on the non-DSA netdev.
Then the "if" condition in dsa_slave_switchdev_event_work() does not
pass, because "dev" is not a DSA netdev, so dev_put() is not called.

This results in the simple fact that we have a reference counting
mismatch on the "dev" net device.

This can be seen when we add support for host addresses installed on the
bridge net device.

ip link add br1 type bridge
ip link set br1 address 00:01:02:03:04:05
ip link set swp0 master br1
ip link del br1
[  968.512278] unregister_netdevice: waiting for br1 to become free. Usage count = 5

It seems foolish to do penny pinching and not add the net_device pointer
in the dsa_switchdev_event_work structure, so let's finally do that.
As an added bonus, when we start offloading local entries pointing
towards the bridge, these will now properly appear as 'offloaded' in
'bridge fdb' (this was not possible before, because 'dev' was assumed to
only be a DSA net device):

00:01:02:03:04:05 dev br0 vlan 1 offload master br0 permanent
00:01:02:03:04:05 dev br0 offload master br0 permanent

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none

 net/dsa/dsa_priv.h | 1 +
 net/dsa/slave.c    | 9 ++++-----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/dsa/dsa_priv.h b/net/dsa/dsa_priv.h
index 36e667ea94db..f201c33980bf 100644
--- a/net/dsa/dsa_priv.h
+++ b/net/dsa/dsa_priv.h
@@ -116,6 +116,7 @@ struct dsa_notifier_mrp_ring_role_info {
 struct dsa_switchdev_event_work {
 	struct dsa_switch *ds;
 	int port;
+	struct net_device *dev;
 	struct work_struct work;
 	unsigned long event;
 	/* Specific for SWITCHDEV_FDB_ADD_TO_DEVICE and
diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index a7b5d2a41472..ffbba1e71551 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2349,9 +2349,8 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
 	}
 	rtnl_unlock();
 
+	dev_put(switchdev_work->dev);
 	kfree(switchdev_work);
-	if (dsa_is_user_port(ds, dp->index))
-		dev_put(dp->slave);
 }
 
 static int dsa_lower_dev_walk(struct net_device *lower_dev,
@@ -2469,15 +2468,15 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 		switchdev_work->ds = dp->ds;
 		switchdev_work->port = dp->index;
 		switchdev_work->event = event;
+		switchdev_work->dev = dev;
 
 		ether_addr_copy(switchdev_work->addr,
 				fdb_info->addr);
 		switchdev_work->vid = fdb_info->vid;
 		switchdev_work->host_addr = host_addr;
 
-		/* Hold a reference on the slave for dsa_fdb_offload_notify */
-		if (dsa_is_user_port(dp->ds, dp->index))
-			dev_hold(dev);
+		/* Hold a reference for dsa_fdb_offload_notify */
+		dev_hold(dev);
 		dsa_schedule_work(&switchdev_work->work);
 		break;
 	default:
-- 
2.25.1

