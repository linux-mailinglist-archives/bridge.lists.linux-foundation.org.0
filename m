Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB3D3ED94F
	for <lists.bridge@lfdr.de>; Mon, 16 Aug 2021 16:57:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3A4040243;
	Mon, 16 Aug 2021 14:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qG2hxOLoD2-F; Mon, 16 Aug 2021 14:57:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 95FC240359;
	Mon, 16 Aug 2021 14:57:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6DC00C000E;
	Mon, 16 Aug 2021 14:57:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4E0D4C0010
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AD6660886
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x-rMKtre1FjV for <bridge@lists.linux-foundation.org>;
 Mon, 16 Aug 2021 14:57:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8BD1260073
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 14:57:22 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id z20so32314422ejf.5
 for <bridge@lists.linux-foundation.org>; Mon, 16 Aug 2021 07:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cEF4JoMHZEME1+G2CZln0Yotihc+zLCjsCuSYLc+j3Q=;
 b=ZjYbNocK7nQUZmK7tS1SYFaF524im4zpkYuIBe6PLoxPdvEg0nn2rcea6i9NgA8bX4
 5WxNZdktA5V1y3KOperLhnJRMWBEby8lRcK9l7YLqU355DpaS10sNON3jKYdlBXK8ytZ
 jcDmlbG/jOEGCna1DpdOLm16+JkjTsG1COKe/bBUmDBZ5Puj4LqLXK45s9LdVVItgSaS
 M8AU97MS3myCmrlBPZ+iXOeShvRSHzWI7WtrziFO2XoQv24HwBVQD9wl0A5CCtnsoMb2
 u2DlHGrvkSDUt3nAQmJ4Oz37oB5aH27bTak8L5rH0jBRcM/dBPzjZ2AcfcmnC3KJ48Is
 3kRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cEF4JoMHZEME1+G2CZln0Yotihc+zLCjsCuSYLc+j3Q=;
 b=WNHhIinAaKbvzCR0bMzZej7F1KrM8oClp0FWbVdJT9fV5ekMmCYUtYf8r9QtAmjlr/
 5L1EC2zHP3IohH8FpH47jgQJwnocV0lGkYsCnC7WGJjuji7QF2LSs1zmu0e/t6HOO4pb
 64bMRPkPmheDUwm7QOCqZ/eBYdAwj0cgbx/pTlISe3Dl3vk4jJ/3eEkkWY2UIxSCZtJx
 HQVRjGf5AV4IhZvZVp0Dm+Q3sf8pHaeALbQjKpKbw2P4eUQ9BOdA2mlJEiYwqy/yaleS
 Yjx5sReUUwNWAVT4p5YBuXwcXz+8yL0/9BfEjdSxhgwXQkoT3bIsiChNABhfZAfQpAvP
 5u3w==
X-Gm-Message-State: AOAM5318iFihpI2vaaNu/KFYyk3aVf7pvFpvEjFW2fFVdLUzw/bqOtLv
 JosmeHl0w/BSnu6OjKjnj3xKKA==
X-Google-Smtp-Source: ABdhPJw5OWKOOio/+Fe5CZbS7wFaCnTjZadQPBOSc04Ep5jRgCDHhWafz0loLdIDYEaFv5/2YsTkTw==
X-Received: by 2002:a17:906:2bd0:: with SMTP id
 n16mr16446539ejg.132.1629125840736; 
 Mon, 16 Aug 2021 07:57:20 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t25sm4946076edi.65.2021.08.16.07.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 07:57:20 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 16 Aug 2021 17:57:07 +0300
Message-Id: <20210816145707.671901-5-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210816145707.671901-1-razor@blackwall.org>
References: <20210816145707.671901-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 4/4] net: bridge: mcast: toggle also host
	vlan state in br_multicast_toggle_vlan
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

When changing vlan mcast state by br_multicast_toggle_vlan it iterates
over all ports and enables/disables the port mcast ctx based on the new
state, but I forgot to update the host vlan (bridge master vlan entry)
with the new state so it will be left out. Also that function is not
used outside of br_multicast.c, so make it static.

Fixes: f4b7002a7076 ("net: bridge: add vlan mcast snooping knob")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast.c | 5 ++++-
 net/bridge/br_private.h   | 6 ------
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index c9f7f56eaf9b..16e686f5b9e9 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -4074,7 +4074,7 @@ void br_multicast_toggle_one_vlan(struct net_bridge_vlan *vlan, bool on)
 	}
 }
 
-void br_multicast_toggle_vlan(struct net_bridge_vlan *vlan, bool on)
+static void br_multicast_toggle_vlan(struct net_bridge_vlan *vlan, bool on)
 {
 	struct net_bridge_port *p;
 
@@ -4089,6 +4089,9 @@ void br_multicast_toggle_vlan(struct net_bridge_vlan *vlan, bool on)
 			continue;
 		br_multicast_toggle_one_vlan(vport, on);
 	}
+
+	if (br_vlan_is_brentry(vlan))
+		br_multicast_toggle_one_vlan(vlan, on);
 }
 
 int br_multicast_toggle_vlan_snooping(struct net_bridge *br, bool on,
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index df0fa246c80c..21b292eb2b3e 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -938,7 +938,6 @@ void br_multicast_port_ctx_init(struct net_bridge_port *port,
 				struct net_bridge_mcast_port *pmctx);
 void br_multicast_port_ctx_deinit(struct net_bridge_mcast_port *pmctx);
 void br_multicast_toggle_one_vlan(struct net_bridge_vlan *vlan, bool on);
-void br_multicast_toggle_vlan(struct net_bridge_vlan *vlan, bool on);
 int br_multicast_toggle_vlan_snooping(struct net_bridge *br, bool on,
 				      struct netlink_ext_ack *extack);
 bool br_multicast_toggle_global_vlan(struct net_bridge_vlan *vlan, bool on);
@@ -1370,11 +1369,6 @@ static inline void br_multicast_toggle_one_vlan(struct net_bridge_vlan *vlan,
 {
 }
 
-static inline void br_multicast_toggle_vlan(struct net_bridge_vlan *vlan,
-					    bool on)
-{
-}
-
 static inline int br_multicast_toggle_vlan_snooping(struct net_bridge *br,
 						    bool on,
 						    struct netlink_ext_ack *extack)
-- 
2.31.1

