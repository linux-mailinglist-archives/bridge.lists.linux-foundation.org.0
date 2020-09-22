Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA59273BF8
	for <lists.bridge@lfdr.de>; Tue, 22 Sep 2020 09:31:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 933DF227AD;
	Tue, 22 Sep 2020 07:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5yyqrQxlYtqj; Tue, 22 Sep 2020 07:31:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 68155228AC;
	Tue, 22 Sep 2020 07:31:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49E8CC0891;
	Tue, 22 Sep 2020 07:31:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7E272C0891
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63E4622882
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AHicHqztY6fS for <bridge@lists.linux-foundation.org>;
 Tue, 22 Sep 2020 07:30:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id E3CB1227AD
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 07:30:55 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id z4so15859015wrr.4
 for <bridge@lists.linux-foundation.org>; Tue, 22 Sep 2020 00:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l5JzLPMeSD4caZ4wHfPPZr4JygseWiJe8yzApZMnhOA=;
 b=FHJ5o9QNENRX/vsvOtojGOaoVX/ooBOjoqHqry4nKpc7kq8ydzuc59EmVnd1OHR4wi
 x5hYswDm8A0SLY4X+0OpVCP2UEUQLzUTe8e3826LbFKlhKvmBbbb/ciywIh2rgioRl+D
 OorDlqKIPRIe4Umj8lHlExCUBRviKjiW6CuM7O6lAT7PEjB/lIyfVbh+Vm4KVVGdxjhN
 b0O5ZsCIGbSos+H1Pv3J1dwFTNzxqXd25hE84u2X7kc0LUcQFcAaWMGPdqXDpWgz6J8a
 LVy24MhNeqksjawhhhBo++6cS/SeDfmPLXGJ/jhWdt03/L8vgAw0d4YsFEYEvGUO/Wtt
 VYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l5JzLPMeSD4caZ4wHfPPZr4JygseWiJe8yzApZMnhOA=;
 b=XGPj4VkalktyjVA3BB6VlAYKctrPR/lBYS96LjsxnXc14jxLU3ovEAXpMVSIloXtJC
 WYm+nx3ItasL2tM9FySMFjl/lOyVBmH5khB6l8qkJftm5k/hcf7JRUKyzQfGMFD8EjeX
 BhnO+2G459EvvXZzkzDgmaVdVLdzHiYxIvGn4/My2CbAw+pGr71OzKtvM+OulBSBRrdx
 /4DGrZ2b9aqDtotGbjL+fAu40vGigDpnvklXC/YuHqZZFkYcZXC7RBEo0IBSpmYu8ELW
 Fy5MPW5SfwxeQstLf9MpA8oVCCG9i9FEJEvwag7QfbgUcQBzJJ6gOjmJZ86ta3C9R1B0
 pVeA==
X-Gm-Message-State: AOAM5336k5EkWBWwPTDD8jt2HKTCFMaNdDYvvHiqW5pnVDpia6q8xmc6
 wskLjzIcr71Q7bgYMX9+xrmyAg==
X-Google-Smtp-Source: ABdhPJxv8SwaPRlCqrTezQR9JsY948BSdSXuDIrm+dTnB5kIdZ0xtp/SV7eY5AlSa08hDMsuXEcNOA==
X-Received: by 2002:a5d:52ca:: with SMTP id r10mr3510001wrv.195.1600759854467; 
 Tue, 22 Sep 2020 00:30:54 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s26sm3258287wmh.44.2020.09.22.00.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 00:30:54 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 22 Sep 2020 10:30:20 +0300
Message-Id: <20200922073027.1196992-10-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200922073027.1196992-1-razor@blackwall.org>
References: <20200922073027.1196992-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 09/16] net: bridge: mcast: when
	igmpv3/mldv2 are enabled lookup (S, G) first, then (*, G)
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

If (S,G) entries are enabled (igmpv3/mldv2) then look them up first. If
there isn't a present (S,G) entry then try to find (*,G).

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index e1fb822b9ddb..4fd690bc848f 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -127,10 +127,28 @@ struct net_bridge_mdb_entry *br_mdb_get(struct net_bridge *br,
 	switch (skb->protocol) {
 	case htons(ETH_P_IP):
 		ip.dst.ip4 = ip_hdr(skb)->daddr;
+		if (br->multicast_igmp_version == 3) {
+			struct net_bridge_mdb_entry *mdb;
+
+			ip.src.ip4 = ip_hdr(skb)->saddr;
+			mdb = br_mdb_ip_get_rcu(br, &ip);
+			if (mdb)
+				return mdb;
+			ip.src.ip4 = 0;
+		}
 		break;
 #if IS_ENABLED(CONFIG_IPV6)
 	case htons(ETH_P_IPV6):
 		ip.dst.ip6 = ipv6_hdr(skb)->daddr;
+		if (br->multicast_mld_version == 2) {
+			struct net_bridge_mdb_entry *mdb;
+
+			ip.src.ip6 = ipv6_hdr(skb)->saddr;
+			mdb = br_mdb_ip_get_rcu(br, &ip);
+			if (mdb)
+				return mdb;
+			memset(&ip.src.ip6, 0, sizeof(ip.src.ip6));
+		}
 		break;
 #endif
 	default:
-- 
2.25.4

