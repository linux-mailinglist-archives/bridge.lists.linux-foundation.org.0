Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE404DB439
	for <lists.bridge@lfdr.de>; Wed, 16 Mar 2022 16:09:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81C7F417AA;
	Wed, 16 Mar 2022 15:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NrygIYytxC0o; Wed, 16 Mar 2022 15:09:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 17504417B0;
	Wed, 16 Mar 2022 15:09:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E15CDC001A;
	Wed, 16 Mar 2022 15:09:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12A6CC001A
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F19C740A88
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IM1zjh6Wj6KO for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 15:09:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D398440A94
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 15:09:16 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id 25so3519403ljv.10
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 08:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=76757SLn2m3kynx16q8kTjn2S8FyWnl1tPy4d5M2WAU=;
 b=fOo4unQQPl/kO4jXHli7n90QN01vhns0vLZqV98YC5kcPh3XSV4992TiZQhGEWLRkO
 4kQIWapNT6BhIwx1qJMnISKt1aVfLh+wmFCjRFNnyo87bfUqDdyQXxi4JyoyVi7jVrdY
 AS70kYTbecf/dmgzPTY/g6vBo8hAUwaLrQ71P4J6OIdGUmvi25LuDBqaP0i32eXebJh2
 XZ11KLYwSgtlweOgOO+6geRrcVtKd3XWEKWuFGTV9QaA1TAbExBR1NiZF8tk3narzKcH
 D6X2aS7K94orJvwQlXXN0/WKsgPPGoPEBS7nVyFdP86HCRk8hZFSU57Le42G3Y0afvAu
 H1cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=76757SLn2m3kynx16q8kTjn2S8FyWnl1tPy4d5M2WAU=;
 b=XuzM3nolTkCafHDrGGGbyVr1+k5q7hKT0EVZDr7h/K+xzfJxmmJQPy6YZRxj6fIKZ0
 HEagqeaQV9xmfQfNUar6UA7erc92rK4aj9iJ5LwbnjrcK98JuJ7kJAOuLKcphZRgS9X3
 6krkrDMiwp7nApAWbzr+cMkIab9jK9KqdmMblzuALfJUCrqWGy4wtCdcMZBrEtMVxHRw
 XMq+8I+95QSdvr1iraqUwXi1lQNjCgp+7aLulxQzyladYXSraAXq7hdfgJDu4i1WJ6xG
 iH4qhF+EBoNne7JtMl2zgusmDUfwfSwwld5df2SZFvBd5O3niSeL1aQ+RLzDknCzkRpH
 L4xw==
X-Gm-Message-State: AOAM532R97CQuxb3j6DkFRUN2LSvvzC/Y+Fu9SOfyqK67xfKaG1b1vPw
 BIWMMCYL23+aTeS7Ecv/NACdHA==
X-Google-Smtp-Source: ABdhPJzEsCMh5g9BO8NN8Iqwc1t6E2YmNjvMLJFHxbt292Q6BiPJ4ktUOEzR47lkrBf3I78m/9p78g==
X-Received: by 2002:a2e:9847:0:b0:244:4deb:70d1 with SMTP id
 e7-20020a2e9847000000b002444deb70d1mr91331ljj.146.1647443354786; 
 Wed, 16 Mar 2022 08:09:14 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 d2-20020a194f02000000b00448b915e2d3sm176048lfb.99.2022.03.16.08.09.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 08:09:14 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Wed, 16 Mar 2022 16:08:50 +0100
Message-Id: <20220316150857.2442916-9-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220316150857.2442916-1-tobias@waldekranz.com>
References: <20220316150857.2442916-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, Matt Johnston <matt@codeconstruct.com.au>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v5 net-next 08/15] net: bridge: mst: Add helper to
	check if MST is enabled
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

This is useful for switchdev drivers that might want to refuse to join
a bridge where MST is enabled, if the hardware can't support it.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/linux/if_bridge.h | 6 ++++++
 net/bridge/br_mst.c       | 9 +++++++++
 2 files changed, 15 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 1cf0cc46d90d..4efd5540279a 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -119,6 +119,7 @@ int br_vlan_get_info(const struct net_device *dev, u16 vid,
 		     struct bridge_vlan_info *p_vinfo);
 int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
 			 struct bridge_vlan_info *p_vinfo);
+bool br_mst_enabled(const struct net_device *dev);
 int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids);
 #else
 static inline bool br_vlan_enabled(const struct net_device *dev)
@@ -153,6 +154,11 @@ static inline int br_vlan_get_info_rcu(const struct net_device *dev, u16 vid,
 	return -EINVAL;
 }
 
+static inline bool br_mst_enabled(const struct net_device *dev)
+{
+	return false;
+}
+
 static inline int br_mst_get_info(const struct net_device *dev, u16 msti,
 				  unsigned long *vids)
 {
diff --git a/net/bridge/br_mst.c b/net/bridge/br_mst.c
index 00b36e629224..830a5746479f 100644
--- a/net/bridge/br_mst.c
+++ b/net/bridge/br_mst.c
@@ -13,6 +13,15 @@
 
 DEFINE_STATIC_KEY_FALSE(br_mst_used);
 
+bool br_mst_enabled(const struct net_device *dev)
+{
+	if (!netif_is_bridge_master(dev))
+		return false;
+
+	return br_opt_get(netdev_priv(dev), BROPT_MST_ENABLED);
+}
+EXPORT_SYMBOL_GPL(br_mst_enabled);
+
 int br_mst_get_info(const struct net_device *dev, u16 msti, unsigned long *vids)
 {
 	const struct net_bridge_vlan_group *vg;
-- 
2.25.1

