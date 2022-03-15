Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3A94D9156
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 01:26:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC86D60F48;
	Tue, 15 Mar 2022 00:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id peGhph5gfXOS; Tue, 15 Mar 2022 00:26:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5295B60F4A;
	Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 24676C000B;
	Tue, 15 Mar 2022 00:26:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2D419C000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7F3540583
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfOrmr6y9lbH for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 00:26:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E243408C9
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 00:26:30 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id e6so23565278lfc.1
 for <bridge@lists.linux-foundation.org>; Mon, 14 Mar 2022 17:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=aeFHqUQf014JdNM8SnwjKE1NY0OOpsJ45a5c0nxth/A=;
 b=zllb7l3VfNci4jRgZoBvkq+a/alefJj1HmF1O+MuOP5bKBdakeaFt2hvTv9GVm5E36
 cGHNOnXp7puxzQjNDEMw0eo7HwHgZDxZN9KYZKtV9xrUjvqpbARyHlPMprgPEYK0UcWF
 IZWtEtapMPZJkb+UqKwNlMfLvQJ//blW1Ao9f/yz7qFmI8P16SjIBAuJ01XbwRhs07hU
 kFIQCERqtjA6qilc+zFllPtQUKr5wHpXMgds8AJWpfi2URYYbDt58hoM7z/SmjVSn1V9
 7KhrnK/U5SW1Cl3mNYuGKkoc5ln/0+WHThIMueKH0ZRGleLc8iNaLrLMdEQ1RhwyAKnT
 p+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=aeFHqUQf014JdNM8SnwjKE1NY0OOpsJ45a5c0nxth/A=;
 b=Uue56HCBX32AvvDP5GGIax7iQRpQZXIJH/0GxBcIIcBmW4pt9TiidnXVO0orcwI3Fu
 BPIbONgi0kAT29c6e0RyPfqP1kfyOs//YZtgaSwr3ycUhUGLHV8Rb5EFXkoOiF8XOGZm
 Q1Y/IMDv/tMT5xc8ky7zyCEPFQOIsKgL5/V69MwZoXFh83BE8g/SB31PpOCCcaXBJxm3
 9ICBaLVSGT78YNP5ei8VyQ5XtWIhOBGCY6GH7POY2PruQZTLJNdBnXvTobDLX2sGHwqs
 mBDIedfLtoN9HGHy6RjA2cNACQbUbUyYLCNdO0+o1CY78THHcdEotUb37zEPeJZxI/4S
 bAkQ==
X-Gm-Message-State: AOAM53266E6mldGY6Wcaje9HulJQWUzcr4aIR30HmkbvKr6tSn4hIvZV
 NJjDi+K/InI8/g1HkN9xUwQH2A==
X-Google-Smtp-Source: ABdhPJwRUPdbjyr9jI+vbGfd0hMI1Zk0tfb4D2YJsvTHmK1dHpYqtCC8gGUazwhBd8bZXM0rYo60qA==
X-Received: by 2002:a05:6512:3f0d:b0:443:5f35:6360 with SMTP id
 y13-20020a0565123f0d00b004435f356360mr14602572lfa.661.1647303988309; 
 Mon, 14 Mar 2022 17:26:28 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se.
 [193.12.47.89]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2e544e000000b0024800f8286bsm4219923ljd.78.2022.03.14.17.26.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 17:26:27 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Tue, 15 Mar 2022 01:25:36 +0100
Message-Id: <20220315002543.190587-9-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315002543.190587-1-tobias@waldekranz.com>
References: <20220315002543.190587-1-tobias@waldekranz.com>
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
Subject: [Bridge] [PATCH v4 net-next 08/15] net: bridge: mst: Add helper to
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
index f50625a60b7e..fe0b807d46f2 100644
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

