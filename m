Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97E92EBBDA
	for <lists.bridge@lfdr.de>; Wed,  6 Jan 2021 10:52:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D61C78721A;
	Wed,  6 Jan 2021 09:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rj+yhPrgvE5S; Wed,  6 Jan 2021 09:52:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 438838721E;
	Wed,  6 Jan 2021 09:52:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 383E8C013A;
	Wed,  6 Jan 2021 09:52:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7EDCC013A
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 974F5867C1
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dG6-p2rAdI+G for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jan 2021 09:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD43985682
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jan 2021 09:52:10 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id ce23so4202549ejb.8
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jan 2021 01:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Oyqqq/X9qdu3xx65zVGG4PWH/PNLT4F1km7kqg9CwhU=;
 b=gzddoHJOCVay1ZtwAg6gpZYehIhSRqUIQSdK4JUH+wPjfbt4c780257hgbJRUZZ0ZC
 i9KHrBmIsFtgQvFjDsTf2XoSa4rJGVoyx/WKywr3FvG1ot0/gXU9nB+lWK6l+aFqxR0R
 LvcGmC+ZWUIbjKMYyuMmV6a7Ur40nOQSw/CVGIrtgjg778xGuFveUJfmadVczelFyf0W
 M/0XtJ4D4x2wgj7yI+dTV5HRtqEtO410+bkvou21VP4UP767x4tRzG2mSrouCS+UN7Ic
 7yhz8MtN27k2KQwgU83zQiyXSq13jEdR2prrmCrKgp+BkOJML+CaYOOFNa/sWxQJ5igr
 0HvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Oyqqq/X9qdu3xx65zVGG4PWH/PNLT4F1km7kqg9CwhU=;
 b=X/hYacpCLtBEOxDbllyXmYirSNXrS3Sxrg8vTjrKlk6hYmaiS2kFS1UYGFvmQjDg2X
 Mt6u2KbcUgTJuWQvjztuezzlXJ5CLP/s3Qc/pZ1QPsS80TLDdam95ygjs5jF3+VzrKE9
 9w28U7Q4Vi+T7kV3H58p419nND1xoyH8VDMorX1mxemGNKYLPvbEjtrCyiDyyjOHXXti
 qlwi5VvQ/SBH49dfM93Thk+fPBLOsaAKaf42tM1/5kaHSQYAN5qeMbkAdo/LYiBpLvDH
 2LuDh9k6FRRU4RvXO0PCHBfAAeiQ5N7UovYLR+TtTavF9xIuHiV/Yr7R3pnsy/8rvKnI
 jRuw==
X-Gm-Message-State: AOAM5301TbqZMvp9e08/akz3qkE+IDeb30+oRQmVGZB5kCQPDIuJeNyU
 wTRzuGzd7DjxlF2wOsHwpvU=
X-Google-Smtp-Source: ABdhPJzq0FCe5EV/63tubiMzkQ44Wkkk+QVgy3AIICkXzaUOGz8TCuIvKt45D+hHVgZ5EO/NiUKvjg==
X-Received: by 2002:a17:906:118c:: with SMTP id
 n12mr2377284eja.167.1609926729109; 
 Wed, 06 Jan 2021 01:52:09 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id n8sm1019587eju.33.2021.01.06.01.52.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 01:52:08 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Date: Wed,  6 Jan 2021 11:51:31 +0200
Message-Id: <20210106095136.224739-3-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v4 net-next 2/7] net: dsa: be louder when a
	non-legacy FDB operation fails
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

The dev_close() call was added in commit c9eb3e0f8701 ("net: dsa: Add
support for learning FDB through notification") "to indicate inconsistent
situation" when we could not delete an FDB entry from the port.

bridge fdb del d8:58:d7:00:ca:6d dev swp0 self master

It is a bit drastic and at the same time not helpful if the above fails
to only print with netdev_dbg log level, but on the other hand to bring
the interface down.

So increase the verbosity of the error message, and drop dev_close().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
Changes in v4:
None.

Changes in v3:
Patch is new.

 net/dsa/slave.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index 4a0498bf6c65..d5d389300124 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2072,7 +2072,9 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
 
 		err = dsa_port_fdb_add(dp, fdb_info->addr, fdb_info->vid);
 		if (err) {
-			netdev_dbg(dev, "fdb add failed err=%d\n", err);
+			netdev_err(dev,
+				   "failed to add %pM vid %d to fdb: %d\n",
+				   fdb_info->addr, fdb_info->vid, err);
 			break;
 		}
 		fdb_info->offloaded = true;
@@ -2087,9 +2089,11 @@ static void dsa_slave_switchdev_event_work(struct work_struct *work)
 
 		err = dsa_port_fdb_del(dp, fdb_info->addr, fdb_info->vid);
 		if (err) {
-			netdev_dbg(dev, "fdb del failed err=%d\n", err);
-			dev_close(dev);
+			netdev_err(dev,
+				   "failed to delete %pM vid %d from fdb: %d\n",
+				   fdb_info->addr, fdb_info->vid, err);
 		}
+
 		break;
 	}
 	rtnl_unlock();
-- 
2.25.1

