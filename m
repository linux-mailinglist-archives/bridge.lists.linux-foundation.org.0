Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CAB3B73D0
	for <lists.bridge@lfdr.de>; Tue, 29 Jun 2021 16:07:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A07F082F31;
	Tue, 29 Jun 2021 14:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vYtUFBAJHmJ3; Tue, 29 Jun 2021 14:07:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3E16F827AF;
	Tue, 29 Jun 2021 14:07:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0E88EC001A;
	Tue, 29 Jun 2021 14:07:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 47728C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29F65403B7
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XKEnQ-a1MCz8 for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 14:07:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FCDB403A0
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 14:07:27 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id hz1so36555147ejc.1
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 07:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gjWDWsqGFPq33uHG2/pkDwQ9agTCbn/w3aBTLpkMZyQ=;
 b=tsjkgnTaP0WUOLi0dEtuLaERJOhlV80VNEIVGDshG/3ttIwOqGC+La/wByEupA++o4
 UbdVZgtuVUeWeJdGyS1/6N/8CARldfdKa6d9Gs41ye8JTnf21qSg4Y5R0Is/lnSRsXpj
 6FmSRbXiv0/f6HtS8ppr6UiuPYJeBRu02DvjK1QjYDL0h7QqQl2AHYAQ3TYNfMronXoW
 ZGDjb54Rl74ld2jkfS0KUtKpLkJ+ac05HEDnrmNdXopdR6ra1xB51Qud50IDV1gvaVRm
 Rneofvjgl0JtMwlWRSe4ZTu/TkB+7gHh/fMyBGdh710BxY3njhCgfHpwnaroA+GufVq8
 0+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gjWDWsqGFPq33uHG2/pkDwQ9agTCbn/w3aBTLpkMZyQ=;
 b=e+3qFdzbIK4WYdfKrkseUeY9Wf8X391xhdk9aOP9qO2ZWEdM/rwz637M8ll4TvRQAg
 +EZpiE1633eTJxeFQNpNRXmAuepQfYFgLnBGOGFr5yFyfbQ7i+Gfm5vXS8gPiOSgdtWY
 fYV+YG4lnvMYTWX9xX3DaggOkeNGb3FI5FNHdZFDzQbpGqdvaFLCE+r99vtIAw0NdJ+S
 iHlz4WW93LJXzeNvGTQe3jZTOSSkiVLDbEIUZOsncCGovGkUBeAuphVCbQsVheoMXx+N
 tayz1qaYS/puxOcWT/4xl479P+j1saX9FP/qhGpP6rURnF/HN00tUZYwdphJu67F1knA
 nS6Q==
X-Gm-Message-State: AOAM53378YEvalTMManFDkjZKtY2cYhAQ6tDWmSFhbLcuLEzUv9S2+B7
 VohsHqnH2Iwxqt6y/oADOJE=
X-Google-Smtp-Source: ABdhPJx1m18M8c8XdK9eXuDgCHdXg8TNhbT33UxSKTRWCa3LGDgdkhyzfQ4PF/qQ7Tds5+CV+6MQyg==
X-Received: by 2002:a17:906:a28e:: with SMTP id
 i14mr29859088ejz.395.1624975645496; 
 Tue, 29 Jun 2021 07:07:25 -0700 (PDT)
Received: from localhost.localdomain ([188.26.224.68])
 by smtp.gmail.com with ESMTPSA id b27sm8220121ejl.10.2021.06.29.07.07.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 07:07:25 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue, 29 Jun 2021 17:06:52 +0300
Message-Id: <20210629140658.2510288-10-olteanv@gmail.com>
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
Subject: [Bridge] [PATCH v5 net-next 09/15] net: dsa: reference count the
	FDB addresses at the cross-chip notifier level
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

The same concerns expressed for host MDB entries are valid for host FDBs
just as well:

- in the case of multiple bridges spanning the same switch chip, deleting
  a host FDB entry that belongs to one bridge will result in breakage to
  the other bridge
- not deleting FDB entries across DSA links means that the switch's
  hardware tables will eventually run out, given enough wear&tear

So do the same thing and introduce reference counting for CPU ports and
DSA links using the same data structures as we have for MDB entries.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v4->v5: none

 include/net/dsa.h |  1 +
 net/dsa/dsa2.c    |  6 ++++
 net/dsa/switch.c  | 88 +++++++++++++++++++++++++++++++++++++++++++----
 3 files changed, 88 insertions(+), 7 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 2c50546f9667..33f40c1ec379 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -288,6 +288,7 @@ struct dsa_port {
 	/* List of MAC addresses that must be forwarded on this port.
 	 * These are only valid on CPU ports and DSA links.
 	 */
+	struct list_head	fdbs;
 	struct list_head	mdbs;
 
 	bool setup;
diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
index 2035d132682f..185629f27f80 100644
--- a/net/dsa/dsa2.c
+++ b/net/dsa/dsa2.c
@@ -348,6 +348,7 @@ static int dsa_port_setup(struct dsa_port *dp)
 	if (dp->setup)
 		return 0;
 
+	INIT_LIST_HEAD(&dp->fdbs);
 	INIT_LIST_HEAD(&dp->mdbs);
 
 	switch (dp->type) {
@@ -471,6 +472,11 @@ static void dsa_port_teardown(struct dsa_port *dp)
 		break;
 	}
 
+	list_for_each_entry_safe(a, tmp, &dp->fdbs, list) {
+		list_del(&a->list);
+		kfree(a);
+	}
+
 	list_for_each_entry_safe(a, tmp, &dp->mdbs, list) {
 		list_del(&a->list);
 		kfree(a);
diff --git a/net/dsa/switch.c b/net/dsa/switch.c
index 219fc9baaa1c..af71b8638098 100644
--- a/net/dsa/switch.c
+++ b/net/dsa/switch.c
@@ -253,6 +253,71 @@ static int dsa_switch_do_mdb_del(struct dsa_switch *ds, int port,
 	return 0;
 }
 
+static int dsa_switch_do_fdb_add(struct dsa_switch *ds, int port,
+				 const unsigned char *addr, u16 vid)
+{
+	struct dsa_port *dp = dsa_to_port(ds, port);
+	struct dsa_mac_addr *a;
+	int err;
+
+	/* No need to bother with refcounting for user ports */
+	if (!(dsa_port_is_cpu(dp) || dsa_port_is_dsa(dp)))
+		return ds->ops->port_fdb_add(ds, port, addr, vid);
+
+	a = dsa_mac_addr_find(&dp->fdbs, addr, vid);
+	if (a) {
+		refcount_inc(&a->refcount);
+		return 0;
+	}
+
+	a = kzalloc(sizeof(*a), GFP_KERNEL);
+	if (!a)
+		return -ENOMEM;
+
+	err = ds->ops->port_fdb_add(ds, port, addr, vid);
+	if (err) {
+		kfree(a);
+		return err;
+	}
+
+	ether_addr_copy(a->addr, addr);
+	a->vid = vid;
+	refcount_set(&a->refcount, 1);
+	list_add_tail(&a->list, &dp->fdbs);
+
+	return 0;
+}
+
+static int dsa_switch_do_fdb_del(struct dsa_switch *ds, int port,
+				 const unsigned char *addr, u16 vid)
+{
+	struct dsa_port *dp = dsa_to_port(ds, port);
+	struct dsa_mac_addr *a;
+	int err;
+
+	/* No need to bother with refcounting for user ports */
+	if (!(dsa_port_is_cpu(dp) || dsa_port_is_dsa(dp)))
+		return ds->ops->port_fdb_del(ds, port, addr, vid);
+
+	a = dsa_mac_addr_find(&dp->fdbs, addr, vid);
+	if (!a)
+		return -ENOENT;
+
+	if (!refcount_dec_and_test(&a->refcount))
+		return 0;
+
+	err = ds->ops->port_fdb_del(ds, port, addr, vid);
+	if (err) {
+		refcount_inc(&a->refcount);
+		return err;
+	}
+
+	list_del(&a->list);
+	kfree(a);
+
+	return 0;
+}
+
 static int dsa_switch_host_fdb_add(struct dsa_switch *ds,
 				   struct dsa_notifier_fdb_info *info)
 {
@@ -265,7 +330,7 @@ static int dsa_switch_host_fdb_add(struct dsa_switch *ds,
 	for (port = 0; port < ds->num_ports; port++) {
 		if (dsa_switch_host_address_match(ds, port, info->sw_index,
 						  info->port)) {
-			err = ds->ops->port_fdb_add(ds, port, info->addr,
+			err = dsa_switch_do_fdb_add(ds, port, info->addr,
 						    info->vid);
 			if (err)
 				break;
@@ -278,14 +343,23 @@ static int dsa_switch_host_fdb_add(struct dsa_switch *ds,
 static int dsa_switch_host_fdb_del(struct dsa_switch *ds,
 				   struct dsa_notifier_fdb_info *info)
 {
+	int err = 0;
+	int port;
+
 	if (!ds->ops->port_fdb_del)
 		return -EOPNOTSUPP;
 
-	if (ds->index == info->sw_index)
-		return ds->ops->port_fdb_del(ds, info->port, info->addr,
-					     info->vid);
+	for (port = 0; port < ds->num_ports; port++) {
+		if (dsa_switch_host_address_match(ds, port, info->sw_index,
+						  info->port)) {
+			err = dsa_switch_do_fdb_del(ds, port, info->addr,
+						    info->vid);
+			if (err)
+				break;
+		}
+	}
 
-	return 0;
+	return err;
 }
 
 static int dsa_switch_fdb_add(struct dsa_switch *ds,
@@ -296,7 +370,7 @@ static int dsa_switch_fdb_add(struct dsa_switch *ds,
 	if (!ds->ops->port_fdb_add)
 		return -EOPNOTSUPP;
 
-	return ds->ops->port_fdb_add(ds, port, info->addr, info->vid);
+	return dsa_switch_do_fdb_add(ds, port, info->addr, info->vid);
 }
 
 static int dsa_switch_fdb_del(struct dsa_switch *ds,
@@ -307,7 +381,7 @@ static int dsa_switch_fdb_del(struct dsa_switch *ds,
 	if (!ds->ops->port_fdb_del)
 		return -EOPNOTSUPP;
 
-	return ds->ops->port_fdb_del(ds, port, info->addr, info->vid);
+	return dsa_switch_do_fdb_del(ds, port, info->addr, info->vid);
 }
 
 static int dsa_switch_hsr_join(struct dsa_switch *ds,
-- 
2.25.1

