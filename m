Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84BE3F47C1
	for <lists.bridge@lfdr.de>; Mon, 23 Aug 2021 11:39:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15D0E400CB;
	Mon, 23 Aug 2021 09:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IfgB6Q3dt3_x; Mon, 23 Aug 2021 09:39:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 97E8740187;
	Mon, 23 Aug 2021 09:39:24 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 478E6C001F;
	Mon, 23 Aug 2021 09:39:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DDDDCC000E
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 06:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9AC080C6E
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 06:19:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FyHEjvdME2Ql for <bridge@lists.linux-foundation.org>;
 Mon, 23 Aug 2021 06:19:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2DA0E80C66
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 06:19:43 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id e15so9519364plh.8
 for <bridge@lists.linux-foundation.org>; Sun, 22 Aug 2021 23:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+ZeKKxsi+JTCjIObZ4eE1fvYuLFReuH5GCzKzRZkgdE=;
 b=UCLzYMyaq7Rrmnp8ZFnPp4omrv77mq+4A6TSSxWbqeZmgcMawouGrIXO7wQEGX4ndh
 PYKaWptz3y5dYVq9LZjG7cqYZhlKesoDrBTXeVAHAlctv2iHKr1OPNQOOoqinC5hWa9x
 JV56yWZEL5kcLSl3Y9cNT872JEpREwb9UGmuHtZhNFyEXBQa4QZ4Xz/3Ms79Da8IgVcH
 e83V4rEDO67aDK3PMsP3dPDTrtC6D0B1IOk61uYp1euwsX2rXIwHoVRvewY6bDVWYW2i
 97DlNEAOs76P6GTtvaaHpyT73waBlhphm7jkMXPg/4v1swexZIXlhQ5bCnFwV6Bhuz+A
 PMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+ZeKKxsi+JTCjIObZ4eE1fvYuLFReuH5GCzKzRZkgdE=;
 b=h8fB1MWMRZaODuiUrsG7D1Mwu//J6/TYUUqfjyk6EuZ8YVM96+jtMjP822QBIRl0Gt
 pTvcXz3dcMJA4vioMNmcFSImzOs1jswT83MO3+fnMb27UCaFGLD50lKi4OoObPAWSrt6
 qytMGtBXQzUIZeXx4qik6xBhOtNT/sDj3392dr5zpea5Z3eb8kRsWv42c4EB9MGNHFOu
 H4WO0CB2+uoigDLQbl9RpAwT0y//u0+nSZO343G9/OEbY79+MGkzavF1XDw3ya/kQEsy
 VOkW4XEr25avzjb/ilq5FQEcmIZLDn+mwFKq1CA1wjdbwgpQQW/ITxe2wEEPq91eBqTn
 BP7g==
X-Gm-Message-State: AOAM531Y0WAZa3qHZDuSIzm7i/E8ghnsZO2CqWiOO5BXnqLuSYmBaO2D
 pJoLwNpXLgqLgnZEDajUT1I=
X-Google-Smtp-Source: ABdhPJw1tycfU8q3I7bG+LeG8Jkrs1BieOAdB8wva7RxHhdPGryWtEvwwDegHVxrcH9xXWjEa6cwfg==
X-Received: by 2002:a17:90a:6782:: with SMTP id
 o2mr18231339pjj.165.1629699583082; 
 Sun, 22 Aug 2021 23:19:43 -0700 (PDT)
Received: from localhost.localdomain ([1.240.193.107])
 by smtp.googlemail.com with ESMTPSA id l12sm17273425pgc.41.2021.08.22.23.19.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Aug 2021 23:19:42 -0700 (PDT)
From: Kangmin Park <l4stpr0gr4m@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>
Date: Mon, 23 Aug 2021 15:19:38 +0900
Message-Id: <20210823061938.28240-1-l4stpr0gr4m@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Aug 2021 09:39:22 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next] net: bridge: replace
	__vlan_hwaccel_put_tag with skb_vlan_push
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

br_handle_ingress_vlan_tunnel() is called in br_handle_frame() and
goto drop when br_handle_ingress_vlan_tunnel() return non-zero.

But, br_handle_ingress_vlan_tunnel() always return 0. So, the goto
routine is currently meaningless.

However, paired function br_handle_egress_vlan_tunnel() call
skb_vlan_pop(). So, change br_handle_ingress_vlan_tunnel() to call
skb_vlan_push() instead of __vlan_hwaccel_put_tag(). And return
the return value of skb_vlan_push().

Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>
---
 net/bridge/br_vlan_tunnel.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/bridge/br_vlan_tunnel.c b/net/bridge/br_vlan_tunnel.c
index 01017448ebde..7b5a33dc9d4d 100644
--- a/net/bridge/br_vlan_tunnel.c
+++ b/net/bridge/br_vlan_tunnel.c
@@ -179,9 +179,7 @@ int br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
 
 	skb_dst_drop(skb);
 
-	__vlan_hwaccel_put_tag(skb, p->br->vlan_proto, vlan->vid);
-
-	return 0;
+	return skb_vlan_push(skb, p->br->vlan_proto, vlan->vid);
 }
 
 int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
-- 
2.26.2

