Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 471DF4D7F14
	for <lists.bridge@lfdr.de>; Mon, 14 Mar 2022 10:53:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC66660EC6;
	Mon, 14 Mar 2022 09:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XycYeLhVeugR; Mon, 14 Mar 2022 09:53:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7A8A660EDB;
	Mon, 14 Mar 2022 09:53:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B6DE9C0089;
	Mon, 14 Mar 2022 09:53:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 77424C000B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 631464060B
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBWFyrB8-aiD for <bridge@lists.linux-foundation.org>;
 Mon, 14 Mar 2022 09:53:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E68B40182
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 09:53:07 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id r22so20985617ljd.4
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 02:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=O8maULfjhyJR+IE8gj0IaXrGz2EfvemPnJwdNZ90D7o=;
 b=28vfELY4sLfx291r+KHjYUMVh4slEJAFpwd7s/KlUQxFnVAmbFaSwtOm3OKf3C1eSn
 sReh7nzukVteaRSK8ERsMSUREpQNso80rGWQCwHQjx5XE7WqK0iMrxCOp5WSMJXNoz/w
 IYJ8Lj5rU5uzdffqWkqyVd/lQeBWL9JLDoRcNwQ/htlc7YRU0IrrtTkxU8FZqVwZejyb
 YOJ/lbaq0fRsm6cnLC7UuOkZx/OgPbXrPJuXqE/SqEBCqpJlAcSy5BudQ2NA4oZIvxLJ
 NydZNST5RP+7rV9CSaZ/FjrrnwluUv0oJpeQn0sTmc0GpU35RTWjogDI/xw+pVp6iXNh
 NVqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=O8maULfjhyJR+IE8gj0IaXrGz2EfvemPnJwdNZ90D7o=;
 b=f+JEDO0RiHi10nZOY/m2J9GPMVsqKFT3e85oghngxwx9seXtybIFuzTt5ZvME+OfAu
 r66AGW07Pv0wjEYlT01RwDd2QMUt2F8afFFgNRTHWBVa3w1zXDmL+BFRu6006H0ndw3f
 sRbXDGFNzbKBgUn03Yr/Je2LLCs81fTsXe+eI1MLso/4vwqEfbsrmhMS+UIaEIbxStwm
 glsdAu5tuj2dBrKvKq8Symf9u9A3nCkWOV6jSTNmy38oVc9mgKG29zezTx7j56dWMN2F
 1VQZuSTJZ1uhAhLIHqsmONkUDaCi2DSwY8O6ELhka/Ch7OnsUrRWFz7JKku5lADAQU4N
 Mn2A==
X-Gm-Message-State: AOAM533L6vLXGIkuv35iCIIEbbzCVV/UaaEmCqk2qllq06vpJJkIhs2m
 /6HHUgo+CXsJb0arKCZmZSvfJw==
X-Google-Smtp-Source: ABdhPJxYupU6c8PZ/GgL2NJ3edWebJC3iRJvPMPbhZyHLmF3r7fiPzJCP94eJb6WrsSxGUeNyid6Eg==
X-Received: by 2002:a05:651c:1503:b0:244:c075:2103 with SMTP id
 e3-20020a05651c150300b00244c0752103mr13520132ljf.442.1647251584949; 
 Mon, 14 Mar 2022 02:53:04 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 b3-20020a056512304300b004488e49f2fasm984870lfb.129.2022.03.14.02.53.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 02:53:04 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon, 14 Mar 2022 10:52:24 +0100
Message-Id: <20220314095231.3486931-8-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314095231.3486931-1-tobias@waldekranz.com>
References: <20220314095231.3486931-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Petr Machata <petrm@nvidia.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v3 net-next 07/14] net: bridge: mst: Add helper to
	map an MSTI to a VID set
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

br_mst_get_info answers the question: "On this bridge, which VIDs are
mapped to the given MSTI?"

This is useful in switchdev drivers, which might have to fan-out
operations, relating to an MSTI, per VLAN.

An example: When a port's MST state changes from forwarding to
blocking, a driver may choose to flush the dynamic FDB entries on that
port to get faster reconvergence of the network, but this should only
be done in the VLANs that are managed by the MSTI in question.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/linux/if_bridge.h |  6 ++++++
 net/bridge/br_mst.c       | 26 ++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 3aae023a9353..46e6327fef06 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -119,6 +119,7 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
 		     struct bridge_vlan_info *p_vinfo);
 int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
 			 struct bridge_vlan_info *p_vinfo);
+int br_mst_get_info(struct net_device *dev, u16 msti, unsigned long *vids);
 #else
 static inline bool br_vlan_enabled(const struct net_device *dev)
 {
@@ -151,6 +152,11 @@ static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
 {
 	return -EINVAL;
 }
+static inline int br_mst_get_info(struct net_device *dev, u16 msti,
+				  unsigned long *vids)
+{
+	return -EINVAL;
+}
 #endif
 
 #if IS_ENABLED(CONFIG_BRIDGE)
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index 7d16926a3a31..eb18dbd5838f 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -13,6 +13,32 @@
 
 DEFINE_STATIC_KEY_FALSE(br_mst_used);
 
+int br_mst_get_info(struct net_device *dev, u16 msti, unsigned long *vids)
+{
+	struct net_bridge_vlan_group *vg;
+	struct net_bridge_vlan *v;
+	struct net_bridge *br;
+
+	ASSERT_RTNL();
+
+	if (!netif_is_bridge_master(dev))
+		return -EINVAL;
+
+	br = netdev_priv(dev);
+	if (!br_opt_get(br, BROPT_MST_ENABLED))
+		return -EINVAL;
+
+	vg = br_vlan_group(br);
+
+	list_for_each_entry(v, &vg->vlan_list, vlist) {
+		if (v->msti == msti)
+			set_bit(v->vid, vids);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(br_mst_get_info);
+
 static void br_mst_vlan_set_state(struct net_bridge_port *p, struct net_bridge_vlan *v,
 				  u8 state)
 {
-- 
2.25.1

