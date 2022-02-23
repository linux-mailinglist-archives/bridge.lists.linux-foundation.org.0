Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F514C19E0
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 18:24:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D115C60F87;
	Wed, 23 Feb 2022 17:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OLIOnYCk9ki6; Wed, 23 Feb 2022 17:24:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 728FC60EAD;
	Wed, 23 Feb 2022 17:24:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01FD6C0073;
	Wed, 23 Feb 2022 17:24:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71BD9C0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 17:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 530F660F87
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 17:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id neyQQ10A9915 for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 17:24:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B53460EAD
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 17:24:26 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id j15so32342970lfe.11
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 09:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version:organization
 :content-transfer-encoding;
 bh=E6q9nT33+JhEWdWqbn7Jtyhs2XGadu1h5pizK24uBCg=;
 b=j5+HslsbTa454hYKu1B8fWo/elCJyO+/urMRd9Ycje9CO37gBlYKKIbGoeGrQC321d
 dXWtHIE9WmtZ2gO+RuqwkYkNxgbQcQsMcfoS0I0z5Gu6Vf4CM/DbuFBrYn6YLjGnNNUZ
 KLufBbIo8OqX0osCUm5Vck6LQA+k+1WkNdQNb5t5bfDEfwofwPKiEFr5YirC3UPXCwAA
 MIoEtvK53oN8ogfoUD4p41pGhaSj3IlonirRBsC4cFUIup0YgVhhBnvw5wmNHRFMdtMG
 zdadSG8QocJveFJ4+ErzHBtYK2lWDipyoeXban2wHE/FJT8P2DGz7qHoikig94oF7trM
 KVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :organization:content-transfer-encoding;
 bh=E6q9nT33+JhEWdWqbn7Jtyhs2XGadu1h5pizK24uBCg=;
 b=SbjqCIDOV8mTnjR5R9gPBJPq2SmEz/EAwUXMCehRkviPeH5sxxCr6V4ap50UXzQDnD
 qzw5yyexY/bpz7yt5BSaHxROsroGdBml7roKzD30/x77fnpl/262FzoQWZNCi273/SFM
 QoYQkd1OLbghNiDYeh3gdtyzaDxuFRKmScXLgHWuzhhzfEDYkF5ETtFJNZn6mXhrYw0Z
 PX/+dPDyHBqvUbyKf6KfiQSj2tIszDGt9HrqSWf25BQY1VwFOrPx8MCkPEKc3G1bl8qB
 c+kkYHflKdZOz54Idna5FmVedPTQQ7WOGd/vXT95Z18Hq9YnTwo6k/Od/wYeluwUZIYe
 YQMA==
X-Gm-Message-State: AOAM530BS7ft3li1Z4xJSdZ/GKXOpyiM37s0S5gJjUp2lDtZbHri3cuj
 HvO7usXWr9ULqswJzrAo7Pw=
X-Google-Smtp-Source: ABdhPJxwP/4eWrjw2G/tNiH+afZ+y/mKhi63FVaX1czMKzS71RYTJ3zBdTTQTfbdn3pl2ZU5Sr9p6A==
X-Received: by 2002:a05:6512:331b:b0:443:7db2:6af8 with SMTP id
 k27-20020a056512331b00b004437db26af8mr466231lfe.240.1645637064331; 
 Wed, 23 Feb 2022 09:24:24 -0800 (PST)
Received: from wbg.labs.westermo.se (a124.broadband3.quicknet.se.
 [46.17.184.124])
 by smtp.gmail.com with ESMTPSA id u6sm7981lfg.291.2022.02.23.09.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 09:24:23 -0800 (PST)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Wed, 23 Feb 2022 18:24:07 +0100
Message-Id: <20220223172407.175865-1-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Joachim Wiberg <troglobit@gmail.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>
Subject: [Bridge] [PATCH 1/1 net-next] net: bridge: add support for host l2
	mdb entries
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

This patch expands on the earlier work on layer-2 mdb entries by adding
support for host entries.  Due to the fact that host joined entries do
not have any flag field, we infer the permanent flag when reporting the
entries to userspace, which otherwise would be listed as 'temp'.

Before patch:

    ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee permanent
    Error: bridge: Flags are not allowed for host groups.
    ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee
    Error: bridge: Only permanent L2 entries allowed.

After patch:

    ~# bridge mdb add dev br0 port br0 grp 01:00:00:c0:ff:ee permanent
    ~# bridge mdb show
    dev br0 port br0 grp 01:00:00:c0:ff:ee permanent vid 1

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 net/bridge/br_mdb.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 4556d913955b..9ba5c5cc2f3d 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -257,8 +257,10 @@ static int __mdb_fill_info(struct sk_buff *skb,
 	else if (mp->addr.proto == htons(ETH_P_IPV6))
 		e.addr.u.ip6 = mp->addr.dst.ip6;
 #endif
-	else
+	else {
 		ether_addr_copy(e.addr.u.mac_addr, mp->addr.dst.mac_addr);
+		e.state = MDB_PG_FLAGS_PERMANENT;
+	}
 	e.addr.proto = mp->addr.proto;
 	nest_ent = nla_nest_start_noflag(skb,
 					 MDBA_MDB_ENTRY_INFO);
@@ -873,8 +875,8 @@ static int br_mdb_add_group(struct net_bridge *br, struct net_bridge_port *port,
 		return -EINVAL;
 
 	/* host join errors which can happen before creating the group */
-	if (!port) {
-		/* don't allow any flags for host-joined groups */
+	if (!port && !br_group_is_l2(&group)) {
+		/* don't allow any flags for host-joined IP groups */
 		if (entry->state) {
 			NL_SET_ERR_MSG_MOD(extack, "Flags are not allowed for host groups");
 			return -EINVAL;
-- 
2.25.1

