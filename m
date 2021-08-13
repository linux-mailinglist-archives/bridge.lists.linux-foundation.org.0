Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94023EB740
	for <lists.bridge@lfdr.de>; Fri, 13 Aug 2021 17:00:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12E3A40025;
	Fri, 13 Aug 2021 15:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FdSyNW30pmWC; Fri, 13 Aug 2021 15:00:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 843FB402BE;
	Fri, 13 Aug 2021 15:00:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6BD91C001A;
	Fri, 13 Aug 2021 15:00:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12A57C000E
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01DD9605C8
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1YKX3A2sBnLF for <bridge@lists.linux-foundation.org>;
 Fri, 13 Aug 2021 15:00:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49A2060B85
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 15:00:18 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id go31so18808889ejc.6
 for <bridge@lists.linux-foundation.org>; Fri, 13 Aug 2021 08:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aa6aODpsX834V6oU0xZmiqy1nFlZHpElVbhhKZgOhDo=;
 b=sQEOZPXHoxZtbTNkHHooY4Pumi+oskz2F8ufdb3z6JrWAZa1A6Q72GLJxcN3nWax19
 vihTl5SF3JYm2heSXB8FQ+QsvGRblKrLsjSWXbJ3D4a3Jx56AIA/ojVZn10ynMIiq/+z
 gPrEYy752hlctVr60LlMKKuPUpp5v2EoWndmvDAzPKzzHrjNSYltG4+ZWM0oM8hTYAyc
 RSLASk9DytjL35qgc/9+F0YRWQya24EEjesNUYKL/vELEnZ2KMaRUL60vYConZ7lTUwH
 nN4zfmFbt0wck+AGDxFMMRYtINkv5fV3oxZG4ePmPGi8X3wOk5YX7FT7pW7Cnpg4+sYF
 x6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aa6aODpsX834V6oU0xZmiqy1nFlZHpElVbhhKZgOhDo=;
 b=hoV5QbZedu4QVD59CPJ2zA78zhmryLlBvmB4IzTMP2fl6u93JRjcYYpnvsren7cgXl
 bYblQUysSWvZL3egt8mFkqlGZ2qBClaaRceqeIQy+sRB970TnSsoQvS/102lq0D1Ulbv
 HBz1yJzpSO5NJ2gZ2SmBCSQFTpK2SPsFOXZethIDjqpzHbyxdbmhVEBj30DTJR3r/oob
 kX+IBLxe6H6ljsTUXpZs6zbXcWDuCkl8ggBlDXjqt0RElML6zBjxxsO62hEk29wc1yIf
 U4Bz58Y42g8Jjxx/ZeS57/2RxBAqxd/i/1y+4tmRRbFjTvyb1agTOBbXCyc+7CpOtIRM
 XX4Q==
X-Gm-Message-State: AOAM532iteoCVz+o95FciI5DJ8TlreLQk16yuKa4+KosYNv0ovgtC9t0
 aTxtCQfGeAFKFSCbHyc+l60oGQ==
X-Google-Smtp-Source: ABdhPJzFsTMAlozstkoNR1mzooQNgJooaMiRFM9ZbCOcrTg0bzwofyZywtoh6eDuaMoWuHlZvOgzBw==
X-Received: by 2002:a17:906:c20d:: with SMTP id
 d13mr2796793ejz.259.1628866816195; 
 Fri, 13 Aug 2021 08:00:16 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d26sm1015711edp.90.2021.08.13.08.00.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 08:00:15 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 13 Aug 2021 18:00:02 +0300
Message-Id: <20210813150002.673579-7-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210813150002.673579-1-razor@blackwall.org>
References: <20210813150002.673579-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 6/6] net: bridge: vlan: dump mcast ctx
	querier state
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

Use the new mcast querier state dump infrastructure and export vlans'
mcast context querier state embedded in attribute
BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/uapi/linux/if_bridge.h | 1 +
 net/bridge/br_vlan_options.c   | 5 ++++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
index eceaad200bf6..f71a81fdbbc6 100644
--- a/include/uapi/linux/if_bridge.h
+++ b/include/uapi/linux/if_bridge.h
@@ -563,6 +563,7 @@ enum {
 	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER,
 	BRIDGE_VLANDB_GOPTS_MCAST_ROUTER,
 	BRIDGE_VLANDB_GOPTS_MCAST_ROUTER_PORTS,
+	BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE,
 	__BRIDGE_VLANDB_GOPTS_MAX
 };
 #define BRIDGE_VLANDB_GOPTS_MAX (__BRIDGE_VLANDB_GOPTS_MAX - 1)
diff --git a/net/bridge/br_vlan_options.c b/net/bridge/br_vlan_options.c
index b4fd5fa441b7..49dec53a4a74 100644
--- a/net/bridge/br_vlan_options.c
+++ b/net/bridge/br_vlan_options.c
@@ -299,7 +299,9 @@ bool br_vlan_global_opts_fill(struct sk_buff *skb, u16 vid, u16 vid_range,
 	    nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_QUERIER,
 		       v_opts->br_mcast_ctx.multicast_querier) ||
 	    nla_put_u8(skb, BRIDGE_VLANDB_GOPTS_MCAST_ROUTER,
-		       v_opts->br_mcast_ctx.multicast_router))
+		       v_opts->br_mcast_ctx.multicast_router) ||
+	    br_multicast_dump_querier_state(skb, &v_opts->br_mcast_ctx,
+					    BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE))
 		goto out_err;
 
 	clockval = jiffies_to_clock_t(v_opts->br_mcast_ctx.multicast_last_member_interval);
@@ -379,6 +381,7 @@ static size_t rtnl_vlan_global_opts_nlmsg_size(void)
 		+ nla_total_size(sizeof(u64)) /* BRIDGE_VLANDB_GOPTS_MCAST_STARTUP_QUERY_INTVL */
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER */
 		+ nla_total_size(sizeof(u8)) /* BRIDGE_VLANDB_GOPTS_MCAST_ROUTER */
+		+ br_multicast_querier_state_size() /* BRIDGE_VLANDB_GOPTS_MCAST_QUERIER_STATE */
 #endif
 		+ nla_total_size(sizeof(u16)); /* BRIDGE_VLANDB_GOPTS_RANGE */
 }
-- 
2.31.1

