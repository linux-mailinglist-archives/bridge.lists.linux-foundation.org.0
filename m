Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A62A29F7F7
	for <lists.bridge@lfdr.de>; Thu, 29 Oct 2020 23:28:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21EEE85CD0;
	Thu, 29 Oct 2020 22:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SF7l2BCRUMBt; Thu, 29 Oct 2020 22:28:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AC8A85ADB;
	Thu, 29 Oct 2020 22:28:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E0727C0051;
	Thu, 29 Oct 2020 22:28:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AC488C0051
 for <bridge@lists.linux-foundation.org>; Thu, 29 Oct 2020 22:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8ED4584AA7
 for <bridge@lists.linux-foundation.org>; Thu, 29 Oct 2020 22:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G3oFfgOeC2jf for <bridge@lists.linux-foundation.org>;
 Thu, 29 Oct 2020 22:28:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98DE8849D2
 for <bridge@lists.linux-foundation.org>; Thu, 29 Oct 2020 22:28:48 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id w25so4708599edx.2
 for <bridge@lists.linux-foundation.org>; Thu, 29 Oct 2020 15:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RXMc5OSGpgSuMJ24cCnWO2LiNVxOAy2zAp+LUmQlsfc=;
 b=lj6ynL4ahqFevPNd366kcEIifQfswQRS3HkifRdvYvebwHO07T6Fvzg8KJCyz0hFY5
 FzskV9YvPFCc4Rzk4Oow+VoWKNIExu5l34uFGh/HQBimJfsADE8H6DAgKnsyM4et+2zF
 rWDUcxU9W1c0qHMUYouZCXkZEtQHXwO53rGn/P5oIqtoah3F5ItqWfcXf4eKpmlXdowr
 EU5RW8BrIg6gcYRIX7sN+OQqiNcljGuPGnOc47vk36tzJ1bNs2vJT8K31mDhvJ03dKZB
 GmRV1fW/ZFBW+P8B0WUmQGa1NrMw4Z5zAtjKKkR5uSoX/t3sBF9w9uCyiRx6fdHPgXKV
 gRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RXMc5OSGpgSuMJ24cCnWO2LiNVxOAy2zAp+LUmQlsfc=;
 b=pF3ZzG01ym9O8JhAL4fku9QUugk27YSI6v4ydXA+e2K8tllYU4mq0weiNcJCBis4by
 MnGXni8ot/XSS13jH7UJzv7qyi+ojkvGJBqYLoJNgcHm8e0eRHWPbiJuCOBjjnYco+ZM
 uhANb3sM4d+x2e5eVneXadE7B/fwn99DlO1UazDHuTxXK4uCebUiTsE0d8nH7PmV1fdt
 7ZcXvfvAbB3OAea+7BP5l4tLH+RfFsaQzjee87gZlhQZpfEulcTccNvHXuukEm+Nt7Jx
 LccLD0q/mQICkVQBiSi3P/JVdjyJG5B9o55Iw5GW/Rk6TfviQsKm4YVBemuJHY0uYXLW
 Q9cQ==
X-Gm-Message-State: AOAM532y13XToHCpz2hYM7Cbw1hZaHtqqeTKI1HvCmYOEgZbubkEnA8k
 293m4ysOFUzT7ynAC9IgMJM=
X-Google-Smtp-Source: ABdhPJxMla1hQY3H5lpvyzRbQs8GPoKs4WJAe/tRW4FScgMjEHEPi0tXWBQovxfJ0xdUmvgh9DqrMw==
X-Received: by 2002:aa7:c490:: with SMTP id m16mr6354399edq.298.1604010527112; 
 Thu, 29 Oct 2020 15:28:47 -0700 (PDT)
Received: from localhost.localdomain ([188.25.2.177])
 by smtp.gmail.com with ESMTPSA id v6sm2154708ejj.112.2020.10.29.15.28.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 15:28:46 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: David Ahern <dsahern@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Fri, 30 Oct 2020 00:28:28 +0200
Message-Id: <20201029222828.2149980-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: andrew@lunn.ch, f.fainelli@gmail.com, idosch@idosch.org, jiri@mellanox.com,
 vivien.didelot@gmail.com
Subject: [Bridge] [PATCH v2 iproute2-next] bridge: add support for L2
	multicast groups
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

Extend the 'bridge mdb' command for the following syntax:
bridge mdb add dev br0 port swp0 grp 01:02:03:04:05:06 permanent

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
Changes in v2:
- Removed the const void casts.
- Removed MDB_FLAGS_L2 from the UAPI to be in sync with the latest
  kernel patch:
  https://patchwork.ozlabs.org/project/netdev/patch/20201028233831.610076-1-vladimir.oltean@nxp.com/

 bridge/mdb.c                   | 54 ++++++++++++++++++++++++++--------
 include/uapi/linux/if_bridge.h |  1 +
 2 files changed, 42 insertions(+), 13 deletions(-)

diff --git a/bridge/mdb.c b/bridge/mdb.c
index 4cd7ca762b78..f2723ab122d0 100644
--- a/bridge/mdb.c
+++ b/bridge/mdb.c
@@ -149,6 +149,7 @@ static void print_mdb_entry(FILE *f, int ifindex, const struct br_mdb_entry *e,
 			    struct nlmsghdr *n, struct rtattr **tb)
 {
 	const void *grp, *src;
+	const char *addr;
 	SPRINT_BUF(abuf);
 	const char *dev;
 	int af;
@@ -156,9 +157,16 @@ static void print_mdb_entry(FILE *f, int ifindex, const struct br_mdb_entry *e,
 	if (filter_vlan && e->vid != filter_vlan)
 		return;
 
-	af = e->addr.proto == htons(ETH_P_IP) ? AF_INET : AF_INET6;
-	grp = af == AF_INET ? (const void *)&e->addr.u.ip4 :
-			      (const void *)&e->addr.u.ip6;
+	if (!e->addr.proto) {
+		af = AF_PACKET;
+		grp = &e->addr.u.mac_addr;
+	} else if (e->addr.proto == htons(ETH_P_IP)) {
+		af = AF_INET;
+		grp = &e->addr.u.ip4;
+	} else {
+		af = AF_INET6;
+		grp = &e->addr.u.ip6;
+	}
 	dev = ll_index_to_name(ifindex);
 
 	open_json_object(NULL);
@@ -168,9 +176,14 @@ static void print_mdb_entry(FILE *f, int ifindex, const struct br_mdb_entry *e,
 	print_string(PRINT_ANY, "port", " port %s",
 		     ll_index_to_name(e->ifindex));
 
+	if (af == AF_INET || af == AF_INET6)
+		addr = inet_ntop(af, grp, abuf, sizeof(abuf));
+	else
+		addr = ll_addr_n2a(grp, ETH_ALEN, 0, abuf, sizeof(abuf));
+
 	print_color_string(PRINT_ANY, ifa_family_color(af),
-			    "grp", " grp %s",
-			    inet_ntop(af, grp, abuf, sizeof(abuf)));
+			    "grp", " grp %s", addr);
+
 	if (tb && tb[MDBA_MDB_EATTR_SOURCE]) {
 		src = (const void *)RTA_DATA(tb[MDBA_MDB_EATTR_SOURCE]);
 		print_color_string(PRINT_ANY, ifa_family_color(af),
@@ -440,6 +453,25 @@ static int mdb_show(int argc, char **argv)
 	return 0;
 }
 
+static int mdb_parse_grp(const char *grp, struct br_mdb_entry *e)
+{
+	if (inet_pton(AF_INET, grp, &e->addr.u.ip4)) {
+		e->addr.proto = htons(ETH_P_IP);
+		return 0;
+	}
+	if (inet_pton(AF_INET6, grp, &e->addr.u.ip6)) {
+		e->addr.proto = htons(ETH_P_IPV6);
+		return 0;
+	}
+	if (ll_addr_a2n((char *)e->addr.u.mac_addr, sizeof(e->addr.u.mac_addr),
+			grp) == ETH_ALEN) {
+		e->addr.proto = 0;
+		return 0;
+	}
+
+	return -1;
+}
+
 static int mdb_modify(int cmd, int flags, int argc, char **argv)
 {
 	struct {
@@ -497,14 +529,10 @@ static int mdb_modify(int cmd, int flags, int argc, char **argv)
 	if (!entry.ifindex)
 		return nodev(p);
 
-	if (!inet_pton(AF_INET, grp, &entry.addr.u.ip4)) {
-		if (!inet_pton(AF_INET6, grp, &entry.addr.u.ip6)) {
-			fprintf(stderr, "Invalid address \"%s\"\n", grp);
-			return -1;
-		} else
-			entry.addr.proto = htons(ETH_P_IPV6);
-	} else
-		entry.addr.proto = htons(ETH_P_IP);
+	if (mdb_parse_grp(grp, &entry)) {
+		fprintf(stderr, "Invalid address \"%s\"\n", grp);
+		return -1;
+	}
 
 	entry.vid = vid;
 	addattr_l(&req.n, sizeof(req), MDBA_SET_ENTRY, &entry, sizeof(entry));
diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index 69b99901fc5a..db41a5ff34af 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -526,6 +526,7 @@ struct br_mdb_entry {
 		union {
 			__be32	ip4;
 			struct in6_addr ip6;
+			unsigned char mac_addr[ETH_ALEN];
 		} u;
 		__be16		proto;
 	} addr;
-- 
2.25.1

