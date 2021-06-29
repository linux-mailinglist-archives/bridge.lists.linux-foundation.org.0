Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5953B73DB
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 115F8403BE;
	Tue, 29 Jun 2021 14:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lceTRGNqGVbv; Tue, 29 Jun 2021 14:07:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A368F403CE;
	Tue, 29 Jun 2021 14:07:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E03E5C0028;
	Tue, 29 Jun 2021 14:07:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 90162C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7310682846
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSBneqcsZnyq for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A870E82C21
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:30 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id v20so18035747eji.10
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F8Bq9LOrbkQe2teXAwhBAJEVwZD45ZGkMkz1XIbZDow=;
 b=bOyLRLO05LKRkEOc74lMre1hcIgPlqFfHeSIbnHbPi4AW+sKiRM4lbixxkhMx7H0od
 1azpY0RF/jRISRaWzcsGdNGp7xnV3LvfYg88OepcmbC4JFAXjXXzqxFfwI7mP7QF8FK1
 8TseTb6TCbMVv/F6egydkf+4UBFwgYcOqsDAjnScKoq/rqEnhyEYK/+JLLj3TJZ+inI9
 qX33sDyKc1XhNva9UXUfZ1hMt1xT/ujw/979jSj6bcs9UVIe1mrSOFJTqP6czAWRYlD0
 XMBjY0snHCATCHI30IKkum3MRWwwR9wmTTtmRUe+TArp7dcFi5+x+J6lb2nRo20/S1qo
 ElKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F8Bq9LOrbkQe2teXAwhBAJEVwZD45ZGkMkz1XIbZDow=;
 b=XTFDX7Z3AuZ73DkavNihitu39Tp/W5kQV3aIn09d+zk/2RAVKNJKNrH8CYMSVNxDoR
 0VLgbHnJAmVevSxPFAcZTwasBzhXY09AvoyWP4hPAzGPo7b6KY1G8bG95emliKfLente
 uipjMHPt0IZ4+J2eu5Dqfe8vg3rtCI/xNTv9ImzHXFhX25MGh9BgW+/Cc4J5ms3Np1w/
 K1VdLnpbzHQn7KIKgV+jzF/QRkDN+GQ8mkyuhFuQClSkpISuVv3lR1KYFGw0xm69056a
 O5dFm0PnA6HwpUl+M+cosd5soK+AONYuVPEcRdYmneP9vqfGKefU1jjsSOFoWcP7yJZV
 Q6HQ==
X-Gm-Message-State: AOAM530WKtmT31iaO3Sk/JQzQLd8x3oph6IBsyFQcrjXuLPibq/nkSZF
 nLniUAX3/bevKYEHzfb/piE=
X-Google-Smtp-Source: ABdhPJwGiLzWQkXhkH2cvJPS6bY913LHD5WNtCSLZHr3+61wEJZBRYxbc2d4WvhTVUaI0XndLjE/YA==
X-Received: by 2002:a17:906:2cca:: with SMTP id
 r10mr3806844ejr.298.1624975648786; 
 Tue, 29 Jun 2021 07:07:28 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:28 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:55 +0300
Message-Id: <20210629140658.2510288-13-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v5 net-next 12/15] net: dsa: include bridge
	addresses which are local in the host fdb list
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

From: Tobias Waldekranz <tobias@waldekranz.com>

The bridge automatically creates local (not forwarded) fdb entries
pointing towards physical ports with their interface MAC addresses.
For switchdev, the significance of these fdb entries is the exact
opposite of that of non-local entries: instead of sending these frame
outwards, we must send them inwards (towards the host).

NOTE: The bridge's own MAC address is also "local". If that address is
not shared with any port, the bridge's MAC is not be added by this
functionality - but the following commit takes care of that case.

NOTE 2: We mark these addresses as host-filtered regardless of the value
of ds->assisted_learning_on_cpu_port. This is because, as opposed to the
speculative logic done for dynamic address learning on foreign
interfaces, the local FDB entries are rather fixed, so there isn't any
risk of them migrating from one bridge port to another.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none

 net/dsa/slave.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index ea9a7c1ce83e..d006bd04f84a 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -2398,10 +2398,12 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 		fdb_info = ptr;
 
 		if (dsa_slave_dev_check(dev)) {
-			if (!fdb_info->added_by_user || fdb_info->is_local)
-				return NOTIFY_OK;
-
 			dp = dsa_slave_to_port(dev);
+
+			if (fdb_info->is_local)
+				host_addr = true;
+			else if (!fdb_info->added_by_user)
+				return NOTIFY_OK;
 		} else {
 			/* Snoop addresses added to foreign interfaces
 			 * bridged with us, or the bridge
@@ -2425,9 +2427,15 @@ static int dsa_slave_switchdev_event(struct notifier_block *unused,
 				return NOTIFY_DONE;
 
 			dp = p->dp;
-			host_addr = true;
+			host_addr = fdb_info->is_local;
 
-			if (!fdb_info->added_by_user &&
+			/* FDB entries learned by the software bridge should
+			 * be installed as host addresses only if the driver
+			 * requests assisted learning.
+			 * On the other hand, FDB entries for local termination
+			 * should always be installed.
+			 */
+			if (!fdb_info->added_by_user && !fdb_info->is_local &&
 			    !dp->ds->assisted_learning_on_cpu_port)
 				return NOTIFY_DONE;
 
-- 
2.25.1

