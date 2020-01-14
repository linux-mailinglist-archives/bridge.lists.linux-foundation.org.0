Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0364813B191
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 18:58:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AF248112C;
	Tue, 14 Jan 2020 17:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OIqAsryIfbhX; Tue, 14 Jan 2020 17:58:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BFCB86411;
	Tue, 14 Jan 2020 17:58:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 47D61C077D;
	Tue, 14 Jan 2020 17:58:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7ECB7C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E04E20531
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zuddOSlMOmFk for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 17:58:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A73431FD43
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:58:38 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id o13so15391289ljg.4
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 09:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mr/2MNCOIx0U4K+Pv+vAm/4J6d5/EukzrdHaRzf8ia0=;
 b=Vu8D4RL6/Waqf9k5QySzdYA8kN/YYdxNE6u5TyyBc96Hjee7hyf456xV2xTRY9m22Y
 wfz0bVNsBE1FQ8o3LN8L+cpKDvGjCsA5xQBT9qt3s0ZxZq6N0Z8rW0KnR9s7/5Jvqn+T
 au4rW07YhX9WcRcX9CXKtj7KbrNrcHs2Wh6Zk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mr/2MNCOIx0U4K+Pv+vAm/4J6d5/EukzrdHaRzf8ia0=;
 b=lLTnryowZdUAike1EMh/01OFOn2R/GHFli5GQJ+ZlIxE1ykNcbjj80PSFdbavfh0aU
 dtPvBn97s/EI0L5FyREElYhzOMxT/GwSgnepQZxpfxJVzN7Tjzr4QWiOgcD8LurFd7ZE
 qU68w5ET+I1T38p0BLVYAM9PpafG2Xz6FdT9lvATjHpVDYgV6WYUQ3LN6CdVCkdZ4qBP
 Ywaht5uSYaK362kYnvtnjSBr6qTVs2YuQOPr+rS+xE3/Q7ke2v5Lwm701WfyDDJz2daN
 DvHRd1Rt2VPiMOXA2jFyV1fh0IMM6uGXG3xiG6xfoaYPY3rOfKhAXCBHyM2ff9M8C5/Z
 kyaA==
X-Gm-Message-State: APjAAAVUu61Ku28YEBi8q7X7sE7veOzYs1xlZOCt8ii8RIknbxVBarLR
 eepfnxCOm/K5EcK20Qn0Ehlepw==
X-Google-Smtp-Source: APXvYqwqISi5BeDV9j50traAdQe+aBO2Zh+s2xpanT8oNb1FJ8x8ZwAg01rwen2ob2lQSzoIR2YrmQ==
X-Received: by 2002:a2e:a486:: with SMTP id h6mr15127964lji.235.1579024716978; 
 Tue, 14 Jan 2020 09:58:36 -0800 (PST)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a15sm7685655lfi.60.2020.01.14.09.58.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 09:58:36 -0800 (PST)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 14 Jan 2020 19:56:11 +0200
Message-Id: <20200114175614.17543-6-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
References: <20200114175614.17543-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com, kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 5/8] net: bridge: vlan: add del rtm
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
index 6da0210b01eb..89d5fa75c575 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -1697,6 +1697,9 @@ static int br_vlan_rtm_process_one(struct net_device *dev,
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

