Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9BF4B3AC2
	for <lists.bridge@lfdr.de>; Sun, 13 Feb 2022 11:14:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED28581ABA;
	Sun, 13 Feb 2022 10:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eqtUL_22hhMK; Sun, 13 Feb 2022 10:14:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 76DEF814B5;
	Sun, 13 Feb 2022 10:14:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 71EA6C000B;
	Sun, 13 Feb 2022 10:14:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F58DC000B
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E0F160B2C
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L9AySfubajoc for <bridge@lists.linux-foundation.org>;
 Mon,  7 Feb 2022 10:08:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAE38605A7
 for <bridge@lists.linux-foundation.org>; Mon,  7 Feb 2022 10:08:03 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id a28so25721937lfl.7
 for <bridge@lists.linux-foundation.org>; Mon, 07 Feb 2022 02:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=5ZYkPwg18yvgYmxef6AHb9YRCv03BOZBd8uaes0yfmU=;
 b=BImELJqolH8kWQxr9XGv4T5MGYJ1xxUA9DFudLwNIJp/qFidf+f+k0qqn2rvcKldrS
 dsJBlpE3U7TU5ERAm9ZLuAaiB+2Zt5l3FmFdpTUF+RrO6kj4uyoMu3AIj889D72f6lgd
 78Aoo6eeRYZTWfmpsIUU96YRFb00rHhtvwmMk21z5s7RRD5BpGhuhKe/Nm+UHQsl0Swo
 q/tJNPLf3GQaKWeneh2a8BHH/bwZGyeOvWn1Z+IOULCtPsW4I9fnsei/4qRgid8p0mf9
 2KlViLmsHZC5Y4z3tPJykwJWxgP7YBlMD9yribUP7tCj4hwq6tNv3MNQGxzbjSGlmfBX
 U3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=5ZYkPwg18yvgYmxef6AHb9YRCv03BOZBd8uaes0yfmU=;
 b=q/dklxG72I3uu1WrWIZ0VWL75T+T+nVuwiNVK9/LbqzTM224UdlZAAraKLbE3zv9Qv
 s4g3xrWgTjR2G8WHHe3RvMi911EwITxffmkSLW3dnzb2UWNJPLrrfqgItyl9BRgSxzih
 yf2HNHA7fEQWF/Hd4hwWW1xmKyAk8KjgBqA4yOGcwiO0rcaZ4jgcKuMKq5Qx32knusOn
 aMwosu3sJHk+gmfa3ci4wQP8NEV8EJHJ/k3oFMOr0lZ3bk/js7RB/u3UaToK89enxjMO
 bu2DT+53T72GAvrz3G17j1/J4yK4ztfRH7sQSBTJEGphR1pKV9khbF9tuHAiPXvZMx1W
 /HPA==
X-Gm-Message-State: AOAM531yAXhrOVsqjWVotSznsjeH1qu7LYHr5WEeU6RA/phCZ+QgfdEl
 J5TPR+N3wW+ViEyJkOQPOPk=
X-Google-Smtp-Source: ABdhPJzsUrKR8lnToa/dHKe+tICvmhMzOl6mok7Lb4Lbwj0Qa6EnKIiBBtXDKSGm5cijBHo/AdALIA==
X-Received: by 2002:ac2:5201:: with SMTP id a1mr7540563lfl.146.1644228481827; 
 Mon, 07 Feb 2022 02:08:01 -0800 (PST)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id k12sm1546034ljh.45.2022.02.07.02.08.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 02:08:01 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Mon,  7 Feb 2022 11:07:40 +0100
Message-Id: <20220207100742.15087-3-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
References: <20220207100742.15087-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sun, 13 Feb 2022 10:14:02 +0000
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH net-next 2/4] net: bridge: dsa: Add support for
	offloading of locked port flag
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

Various switchcores support setting ports in locked mode, so that
clients behind locked ports cannot send traffic through the port
unless a fdb entry is added with the clients MAC address.

Among the switchcores that support this feature is the Marvell
mv88e6xxx family.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 net/bridge/br_switchdev.c | 2 +-
 net/dsa/port.c            | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_switchdev.c b/net/bridge/br_switchdev.c
index f8fbaaa7c501..bf549fc22556 100644
--- a/net/bridge/br_switchdev.c
+++ b/net/bridge/br_switchdev.c
@@ -72,7 +72,7 @@ bool nbp_switchdev_allowed_egress(const struct net_bridge_port *p,
 
 /* Flags that can be offloaded to hardware */
 #define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
-				  BR_MCAST_FLOOD | BR_BCAST_FLOOD)
+				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED)
 
 int br_switchdev_set_port_flag(struct net_bridge_port *p,
 			       unsigned long flags,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index bd78192e0e47..01ed22ed74a1 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -176,7 +176,7 @@ static int dsa_port_inherit_brport_flags(struct dsa_port *dp,
 					 struct netlink_ext_ack *extack)
 {
 	const unsigned long mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
-				   BR_BCAST_FLOOD;
+				   BR_BCAST_FLOOD | BR_PORT_LOCKED;
 	struct net_device *brport_dev = dsa_port_to_bridge_port(dp);
 	int flag, err;
 
@@ -200,7 +200,7 @@ static void dsa_port_clear_brport_flags(struct dsa_port *dp)
 {
 	const unsigned long val = BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD;
 	const unsigned long mask = BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD |
-				   BR_BCAST_FLOOD;
+				   BR_BCAST_FLOOD | BR_PORT_LOCKED;
 	int flag, err;
 
 	for_each_set_bit(flag, &mask, 32) {
-- 
2.30.2

