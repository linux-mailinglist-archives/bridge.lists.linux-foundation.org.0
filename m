Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 019B7206017
	for <lists.bridge@lfdr.de>; Tue, 23 Jun 2020 22:47:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12FE688267;
	Tue, 23 Jun 2020 20:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWNlXjg4L8Qh; Tue, 23 Jun 2020 20:47:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C2F8880FB;
	Tue, 23 Jun 2020 20:47:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6BA54C016F;
	Tue, 23 Jun 2020 20:47:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AE2B0C016F
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9C29E86B1C
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qq2HV4DuRsxC for <bridge@lists.linux-foundation.org>;
 Tue, 23 Jun 2020 20:47:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E6CAA8654C
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 20:47:39 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id o8so118480wmh.4
 for <bridge@lists.linux-foundation.org>; Tue, 23 Jun 2020 13:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iTn4YwU+nfTQfkZuPTzGncuZ8rRbBocyqzX19b4wUbA=;
 b=TMhFhm6nfkpXmHPW+lhJe1n7cOAbgmdnyRnYRF08ge1eyJ2DV9spltmSVwZ4VSK4Wc
 Jt+Vztp07cBJUvd//XpdL7CXGrBp15sBWw5RyPDAs6+VDyhZ7be6kNhjp3hxaN0BI85b
 IjevMCed9DomHmDIsfcEaVrrUegwc59D4qWVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iTn4YwU+nfTQfkZuPTzGncuZ8rRbBocyqzX19b4wUbA=;
 b=HZhnJ3CR7qrcMyUTyC8suhnDXQ+2myOh0XeINFAXNX32I4Pkr0VHAkJH/+MILkWFFQ
 IXnRwaJAwe3BuzSCW4LEKs8eWq2gDsUNrii9ihPgfAyWQZvah1Czr7W9ChlwWJnX5FvH
 oG8xrcg6c40pF3xxgxZoZtjbPK9FX3zj79R+b1InCMLiPOh03uljjcGSmWZXwnh25lYq
 H2Br3Z1jxwpWuvNSrlckQO/Sg6yDI1BdFUGDdzSo/EXP3WCJ67gSHUfMW4SBhXa39Z4e
 LrscfhvCnzYXgp7DkDUr7jpElA6WobGdTDFofZBA+d/Z6/aC8Janf/arzCBqljXOqgLq
 rVOA==
X-Gm-Message-State: AOAM5336eEMP8SmLX35aQXND8oyNtwmCtrNv74Z7PevDbZ5UW8BosyOI
 9CNP7YnNmfeI8k0zhWb2b2bAZw==
X-Google-Smtp-Source: ABdhPJwAZRWitfLDhWCfV+SJTBcZEhIS7z6ASJYKGDcNe5UxFBpwzSqkCG/Tlq/3z81d9mmT8PZ/Tw==
X-Received: by 2002:a1c:32ca:: with SMTP id y193mr4392078wmy.83.1592945258495; 
 Tue, 23 Jun 2020 13:47:38 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id j6sm5686924wmb.3.2020.06.23.13.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 13:47:37 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 23 Jun 2020 23:47:15 +0300
Message-Id: <20200623204718.1057508-2-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
References: <20200623204718.1057508-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net, anuradhak@cumulusnetworks.com
Subject: [Bridge] [PATCH net-next 1/4] net: bridge: fdb_add_entry takes ndm
	as argument
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

We can just pass ndm as an argument instead of its fields separately.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 4877a0db16c6..ed80d9ab0fb9 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -793,11 +793,11 @@ int br_fdb_get(struct sk_buff *skb,
 
 /* Update (create or replace) forwarding database entry */
 static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
-			 const u8 *addr, u16 state, u16 flags, u16 vid,
-			 u8 ndm_flags)
+			 const u8 *addr, struct ndmsg *ndm, u16 flags, u16 vid)
 {
-	bool is_sticky = !!(ndm_flags & NTF_STICKY);
+	bool is_sticky = !!(ndm->ndm_flags & NTF_STICKY);
 	struct net_bridge_fdb_entry *fdb;
+	u16 state = ndm->ndm_state;
 	bool modified = false;
 
 	/* If the port cannot learn allow only local and static entries */
@@ -893,8 +893,7 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 		err = br_fdb_external_learn_add(br, p, addr, vid, true);
 	} else {
 		spin_lock_bh(&br->hash_lock);
-		err = fdb_add_entry(br, p, addr, ndm->ndm_state,
-				    nlh_flags, vid, ndm->ndm_flags);
+		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid);
 		spin_unlock_bh(&br->hash_lock);
 	}
 
-- 
2.25.4

