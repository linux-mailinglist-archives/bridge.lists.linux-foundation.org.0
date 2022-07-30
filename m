Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5971B586759
	for <lists.bridge@lfdr.de>; Mon,  1 Aug 2022 12:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5416560ABD;
	Mon,  1 Aug 2022 10:25:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5416560ABD
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=g0Q21Ubl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9s-r0UBFA8fN; Mon,  1 Aug 2022 10:25:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6E89F60AD6;
	Mon,  1 Aug 2022 10:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E89F60AD6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7BBF4C007F;
	Mon,  1 Aug 2022 10:25:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DC9DDC002D
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B32C560BDF
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B32C560BDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b6la_22N0QKV for <bridge@lists.linux-foundation.org>;
 Sat, 30 Jul 2022 16:03:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D59F560B33
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D59F560B33
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:03:49 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id d1so4050364qvs.0
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 09:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=44S36YW/XCMky1KM2xLak/T6CHlN1QC9bWrP+1FyJlw=;
 b=g0Q21UbliVaSVVRMLR3KfiO1ctfkqbex+ADs1SZPfocxQiayXVsduesPlZ4XJEiDIX
 MbPdTPlfkRj/GfrNerNSTILsktSvye1srw6OW48ozmemcia6FSJlgkXOKVrgKLANXPmu
 +FF/9kp/oYfvE7hwMdi6PzVw2QgMACsouWINDbI3zFGjUzpPw/b098zruYu7M0QyxJVR
 wkqAQxQKbgxWILj3gAe+4QNYGSNupa3H3lBxy4TR2c4d7ZMnUOr9D3b+A3G93pV0yHxu
 SjwEyUuZRP1dzX4nkN6wf9HzXqxi3wo2x6YbfP2j6OxJYslXCvJOkk6/wJiWe97PEDUP
 ii0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=44S36YW/XCMky1KM2xLak/T6CHlN1QC9bWrP+1FyJlw=;
 b=kOqvhSlBte7TI5YJVjBc3ifKzSrLag1AmHAiUtFGJSEgWdtnX6o6dgWlh7Z7kpa78J
 gz1qjBNxWAjuoYuhf3kzGqVCJHrQZwOOLxpUnGV/02hL8V5q3gamCkl9EvNdiRF8tOk2
 B9GuC8pU2OU/64FBVNj0b5B85c4xoAUJyhbLO+BuXCDxbLyxgPOq03T3cXVMprUs5kxs
 aJpumJdTaP3vj415k3PhVqwIKwMkf7X1HeZ+G7Me87EKSOQ40FBw+fjzVmCF7L6e3qjW
 3mL82n6GoEOU2bt5Za2kIyBolDtYmYTRRSLHR/HBoTgJ0ySB/cYZeDHUpDkXiFlk/Vna
 lXCg==
X-Gm-Message-State: ACgBeo2nUh4+JmZzlt2LSS0L3ii8i5Dt6nH+DMddENQy72kb+/5WP+zt
 iyJLosDr4wHOQmWKZQ6tFWg=
X-Google-Smtp-Source: AA6agR72LGiu7HIQOzRisPgkgt460ylBNaCgT7TT8h/4h/r1C95WTkSNIdRTCU8PS2wEFypJCH4CJA==
X-Received: by 2002:a05:6214:d47:b0:474:7f18:4764 with SMTP id
 7-20020a0562140d4700b004747f184764mr7535850qvr.15.1659197028459; 
 Sat, 30 Jul 2022 09:03:48 -0700 (PDT)
Received: from ada ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 do54-20020a05620a2b3600b006b5e833d996sm4877020qkb.22.2022.07.30.09.03.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Jul 2022 09:03:47 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: aroulin@nvidia.com
Date: Sat, 30 Jul 2022 12:03:30 -0400
Message-Id: <75d00c06deadc0386811874f9e4edbf5381df949.1659195179.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
References: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 01 Aug 2022 10:25:24 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next 1/3] net: bridge: export
	br_vlan_upper_change
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

This function contains the logic for correctly setting the bridge
binding behavior of a vlan interface. Therefore, it should be executed
whenever the bridge binding flag of a vlan interface changes via the
vlan_dev_change_flags function in the 8021q module. Currently this
function is private, and it is only executed when a vlan interface is
first created. Export the function so that it can be called from
vlan_dev_change_flags.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
Reviewed-by: Andy Roulin <aroulin@nvidia.com>
Reviewed-by: Roopa Prabhu <roopa@nvidia.com>
---
 include/linux/if_bridge.h | 9 +++++++++
 net/bridge/br_vlan.c      | 7 ++++---
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index d62ef428e3aa..0d92b0ed0961 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -180,6 +180,9 @@ void br_fdb_clear_offload(const struct net_device *dev, u16 vid);
 bool br_port_flag_is_set(const struct net_device *dev, unsigned long flag);
 u8 br_port_get_stp_state(const struct net_device *dev);
 clock_t br_get_ageing_time(const struct net_device *br_dev);
+void br_vlan_upper_change(struct net_device *dev,
+			  struct net_device *upper_dev,
+			  bool linking);
 #else
 static inline struct net_device *
 br_fdb_find_port(const struct net_device *br_dev,
@@ -208,6 +211,12 @@ static inline clock_t br_get_ageing_time(const struct net_device *br_dev)
 {
 	return 0;
 }
+
+static inline void br_vlan_upper_change(struct net_device *dev,
+					struct net_device *upper_dev,
+					bool linking)
+{
+}
 #endif
 
 #endif
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 6e53dc991409..6bfc36da5a88 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1653,9 +1653,9 @@ static void br_vlan_set_all_vlan_dev_state(struct net_bridge_port *p)
 	}
 }
 
-static void br_vlan_upper_change(struct net_device *dev,
-				 struct net_device *upper_dev,
-				 bool linking)
+void br_vlan_upper_change(struct net_device *dev,
+			  struct net_device *upper_dev,
+			  bool linking)
 {
 	struct net_bridge *br = netdev_priv(dev);
 
@@ -1670,6 +1670,7 @@ static void br_vlan_upper_change(struct net_device *dev,
 			      br_vlan_has_upper_bind_vlan_dev(dev));
 	}
 }
+EXPORT_SYMBOL_GPL(br_vlan_upper_change);
 
 struct br_vlan_link_state_walk_data {
 	struct net_bridge *br;
-- 
2.25.1

