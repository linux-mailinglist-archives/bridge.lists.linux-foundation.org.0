Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5F92FD358
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 16:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A04B86A84;
	Wed, 20 Jan 2021 15:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QMpkUXrVOW3d; Wed, 20 Jan 2021 15:00:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A43086A10;
	Wed, 20 Jan 2021 15:00:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 40B5BC013A;
	Wed, 20 Jan 2021 15:00:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 920EAC013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8BA1020504
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAFVfh3WiqMa for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 15:00:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by silver.osuosl.org (Postfix) with ESMTPS id 15E44204AC
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:00:23 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id a10so17318215ejg.10
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 07:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xs9gPZTNfwtouWL9L4Nwr/WiYcl05VUqiVfBi+fW7JY=;
 b=G2//UHT/o2c5Z0+ywqgYEJtbnhHs25pOiB5Hi603BHS9wXvsRRDCgkJiKUxbQ0KJDO
 e1Yndcf9jirckWBmIvpPn0gHoyqQB22I4w1kw1kZuePA9nf2fbkR+Ktb0FVFdfLnhunp
 nZmMBKaFi7SwtLDb3fPiIISvtcC1deEyhBZvO9LDTqJhPmQRyugqN6QNg1KRHRhZWegI
 lM3JM3qOesjLASCsNv8loWGV81f8X3jD7lS1lKDPmfvx97Y8lEpIMJ4a/oYOVHqm5SPT
 PqLYo01xDXT1OIuY0lwjOpGVWTYcvho3K2apPsSHaEnG+/fBQNZt9q+qUcmw0XOE2vgv
 Ba5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xs9gPZTNfwtouWL9L4Nwr/WiYcl05VUqiVfBi+fW7JY=;
 b=TY/eoOfuv2EN59pLiJODh2mTEkaqnEtBsJ2G1gCyNXb/66BFJjb1UBSSzJqcPnL6As
 3kW3siX/9aWmVEMMmulmYHS9gSyw9t7ZI5XKDPzgWefg9CnRoZjxQcjEQiPG7+Xozdod
 GDsFccNb65fONU+vff6I8FptkzFhfbmZQaJUMY/iS2fHba0NZvT3f9nsgN138EoL4gNm
 xBBPv17Psib2oJvdMvgDie9Z+7KfA7E7UvcijpyzW1RMA1cj/oAxphqMI5xRZUjzf+BG
 Nu1Mqxa6HujL9S0Ua4Ih6hjG4KobcRCVzeD/+aE7uiFq4orSCh3Bf/pKACJ8aLZWrWca
 +T4A==
X-Gm-Message-State: AOAM532YcJfBcYyCsKjUJAZIhfhMD65bnfwkfZlzIOBbfKZoHpVrs9bF
 sDlk9Ch2HEYAxQhOKeFknFDezWdpASP2Td7LOg0=
X-Google-Smtp-Source: ABdhPJxYWtI/+xhWcQjLakBo7f1LtDsY3rbEJ8g1rI5gFBMRGuitDHC2HKAAblIe6Z0ZrC9CexNYUw==
X-Received: by 2002:a17:907:7292:: with SMTP id
 dt18mr6658252ejc.317.1611154391937; 
 Wed, 20 Jan 2021 06:53:11 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:11 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:51:57 +0200
Message-Id: <20210120145203.1109140-9-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120145203.1109140-1-razor@blackwall.org>
References: <20210120145203.1109140-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 08/14] net: bridge: multicast: add EHT
	host delete function
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Now that we can delete set entries, we can use that to remove EHT hosts.
Since the group's host set entries exist only when there are related
source set entries we just have to flush all source set entries
joined by the host set entry and it will be automatically removed.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast_eht.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index f4bbf2dc9fc8..409fced7eae2 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -434,3 +434,20 @@ static bool br_multicast_del_eht_set_entry(struct net_bridge_port_group *pg,
 out:
 	return set_deleted;
 }
+
+static void br_multicast_del_eht_host(struct net_bridge_port_group *pg,
+				      union net_bridge_eht_addr *h_addr)
+{
+	struct net_bridge_group_eht_set_entry *set_h;
+	struct net_bridge_group_eht_host *eht_host;
+	struct hlist_node *tmp;
+
+	eht_host = br_multicast_eht_host_lookup(pg, h_addr);
+	if (!eht_host)
+		return;
+
+	hlist_for_each_entry_safe(set_h, tmp, &eht_host->set_entries, host_list)
+		br_multicast_del_eht_set_entry(set_h->eht_set->pg,
+					       &set_h->eht_set->src_addr,
+					       &set_h->h_addr);
+}
-- 
2.29.2

