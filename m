Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1D67057CC
	for <lists.bridge@lfdr.de>; Tue, 16 May 2023 21:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1177616B4;
	Tue, 16 May 2023 19:46:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1177616B4
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=CYoYaBX+
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id srt7w319j3k0; Tue, 16 May 2023 19:46:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 35431616B0;
	Tue, 16 May 2023 19:46:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35431616B0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DCAD4C008A;
	Tue, 16 May 2023 19:46:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28BDAC002A
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 19:46:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6368616B1
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 19:46:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6368616B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JNBBo2Uahn8f for <bridge@lists.linux-foundation.org>;
 Tue, 16 May 2023 19:46:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEE916169F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EEE916169F
 for <bridge@lists.linux-foundation.org>; Tue, 16 May 2023 19:46:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4F790632D6;
 Tue, 16 May 2023 19:46:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 832C2C433D2;
 Tue, 16 May 2023 19:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1684266412;
 bh=Retqq5JfF+1v3Y0juT8ukUupAtMcuR+tzDBH2kPz0nA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CYoYaBX+m/LPk4VBRp8JNpVscrno+XDoOxsbtT049WnQxI9/kSv1bR5kiaTmgxUUy
 yyC7zNWfHk1n1+Bj8Et1dY92a6p0p51q4zMvCDb9u/iIFhC965iehJ9+OHPWqp9bok
 8fR9wBQWSjY95WV68eJL+MIsjiuxWDC3uu+Jjzd0BE4+In115Zc1eGavYGPScFq5OB
 6WFmKjetm6poZK2aA6o+B7/MSKLwV/Sim4gAPGVazWEZDClKW9/9Ibhr3Xv7uzOEp1
 5qU0+8VwZdehpR7d99IB8cS41Y3EeSlnta9+f3e9RwtJ+zwAvcGzKZJEpKMztEPuVn
 DkgRIf/FWV1mw==
From: Arnd Bergmann <arnd@kernel.org>
To: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 16 May 2023 21:45:35 +0200
Message-Id: <20230516194625.549249-3-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230516194625.549249-1-arnd@kernel.org>
References: <20230516194625.549249-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Roopa Prabhu <roopa@nvidia.com>
Subject: [Bridge] [PATCH 3/4] bridge: always declare tunnel functions
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

From: Arnd Bergmann <arnd@arndb.de>

When CONFIG_BRIDGE_VLAN_FILTERING is disabled, two functions are still
defined but have no prototype or caller. This causes a W=1 warning for
the missing prototypes:

net/bridge/br_netlink_tunnel.c:29:6: error: no previous prototype for 'vlan_tunid_inrange' [-Werror=missing-prototypes]
net/bridge/br_netlink_tunnel.c:199:5: error: no previous prototype for 'br_vlan_tunnel_info' [-Werror=missing-prototypes]

The functions are already contitional on CONFIG_BRIDGE_VLAN_FILTERING,
and I coulnd't easily figure out the right set of #ifdefs, so just
move the declarations out of the #ifdef to avoid the warning,
at a small cost in code size over a more elaborate fix.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/bridge/br_private_tunnel.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_private_tunnel.h b/net/bridge/br_private_tunnel.h
index 2b053289f016..efb096025151 100644
--- a/net/bridge/br_private_tunnel.h
+++ b/net/bridge/br_private_tunnel.h
@@ -27,6 +27,10 @@ int br_process_vlan_tunnel_info(const struct net_bridge *br,
 int br_get_vlan_tunnel_info_size(struct net_bridge_vlan_group *vg);
 int br_fill_vlan_tunnel_info(struct sk_buff *skb,
 			     struct net_bridge_vlan_group *vg);
+bool vlan_tunid_inrange(const struct net_bridge_vlan *v_curr,
+			const struct net_bridge_vlan *v_last);
+int br_vlan_tunnel_info(const struct net_bridge_port *p, int cmd,
+			u16 vid, u32 tun_id, bool *changed);
 
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
 /* br_vlan_tunnel.c */
@@ -43,10 +47,6 @@ void br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
 				   struct net_bridge_vlan_group *vg);
 int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
 				 struct net_bridge_vlan *vlan);
-bool vlan_tunid_inrange(const struct net_bridge_vlan *v_curr,
-			const struct net_bridge_vlan *v_last);
-int br_vlan_tunnel_info(const struct net_bridge_port *p, int cmd,
-			u16 vid, u32 tun_id, bool *changed);
 #else
 static inline int vlan_tunnel_init(struct net_bridge_vlan_group *vg)
 {
-- 
2.39.2

