Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC136139547
	for <lists.bridge@lfdr.de>; Mon, 13 Jan 2020 16:53:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5F66857F8;
	Mon, 13 Jan 2020 15:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BC4YabKN4jDW; Mon, 13 Jan 2020 15:53:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4558D85A58;
	Mon, 13 Jan 2020 15:53:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2BD68C077D;
	Mon, 13 Jan 2020 15:53:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F2DD6C077D
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EDF142042E
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hmn2PZDsIdWt for <bridge@lists.linux-foundation.org>;
 Mon, 13 Jan 2020 15:53:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 6EE49203ED
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 15:53:12 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id y19so7215973lfl.9
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jan 2020 07:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PRyqckMelSpsU5GT1G5t3lfW5edpIQYUQ5mkpJoZLoc=;
 b=B3RI9S6ux6Bz7F3Z6iJdMne3JGNiJyN/Cf1wlSsDYcpxEHzR2ennhEmVqawknl8aFL
 p7nlAc9947MP654THkWj7oO8m1jXCVZjjUoktDd9VdqrlWXSCfTAktvPkhCBzQ36JEpe
 AJTLaT4IhzNlc0tO2hrw2WkZDnaSnQOoCAYC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PRyqckMelSpsU5GT1G5t3lfW5edpIQYUQ5mkpJoZLoc=;
 b=AIRlAmIh6a/tW+eWsiyvXTmFt/Rnuc+ppITKveEkBwSxXF+snq+xWRQ8sv5kQ/X5iM
 3ipcNJvZbS07EmVYXRnucSyOVWbCTHoHI8gKokvjSKDlP2A/hJsBCGAy4mseS2ROtA+7
 daRAmR6QqD3MKcisYxLWhAe4+HvtZFbFzflAhZlvFNCkeoEQPXdOnoIR9ZDITj6k2YFV
 YIOFKlksGdikPK4h+dodTqy4W1BSFkSYdXA/Nf4vdC1ttYH02ItRbBOrXZAanKalbdWn
 21+wvSpkcO/qVD2CWvfmhAP3UBoBxUfj85SHkqG/h7db/k0JhP1qCXRQfOx1f0ez4tku
 Xu9g==
X-Gm-Message-State: APjAAAXvAlaesRiLHal2GxSFLmkB7llreE6vetezaz9rueCfLxyBswwf
 0gDB1Yj9Lux9uzY+aq7btZZiOg==
X-Google-Smtp-Source: APXvYqy7OgenELfveYV0yNpAN8onaC/V7cTEBIy4m7VmDX2ffCKIx3xe6I/Q5UTTJ8OTc/Pt3egUTw==
X-Received: by 2002:a19:ae18:: with SMTP id f24mr10001955lfc.155.1578930790551; 
 Mon, 13 Jan 2020 07:53:10 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id e20sm6175658ljl.59.2020.01.13.07.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 07:53:09 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 13 Jan 2020 17:52:30 +0200
Message-Id: <20200113155233.20771-6-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 5/8] net: bridge: vlan: add del rtm
	message support
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

Adding RTM_DELVLAN support similar to RTM_NEWVLAN is simple, just need to
map DELVLAN to DELLINK and register the handler.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_vlan.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index b8f52a7616c4..bd75cee48ad3 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1698,6 +1698,9 @@ static int br_vlan_rtm_process_one(struct net_device *dev,
 	case RTM_NEWVLAN:
 		cmdmap = RTM_SETLINK;
 		break;
+	case RTM_DELVLAN:
+		cmdmap = RTM_DELLINK;
+		break;
 	}
 
 	err = br_process_vlan_info(br, p, cmdmap, vinfo, &vinfo_last, &changed,
@@ -1757,10 +1760,13 @@ void br_vlan_rtnl_init(void)
 			     br_vlan_rtm_dump, 0);
 	rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_NEWVLAN,
 			     br_vlan_rtm_process, NULL, 0);
+	rtnl_register_module(THIS_MODULE, PF_BRIDGE, RTM_DELVLAN,
+			     br_vlan_rtm_process, NULL, 0);
 }
 
 void br_vlan_rtnl_uninit(void)
 {
 	rtnl_unregister(PF_BRIDGE, RTM_GETVLAN);
 	rtnl_unregister(PF_BRIDGE, RTM_NEWVLAN);
+	rtnl_unregister(PF_BRIDGE, RTM_DELVLAN);
 }
-- 
2.21.0

