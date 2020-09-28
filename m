Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05CF27B0EF
	for <lists.bridge@lfdr.de>; Mon, 28 Sep 2020 17:30:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BBC68702F;
	Mon, 28 Sep 2020 15:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1fVfMFxpIFLd; Mon, 28 Sep 2020 15:30:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA9F386FFA;
	Mon, 28 Sep 2020 15:30:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9E7A2C016F;
	Mon, 28 Sep 2020 15:30:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9BF50C016F
 for <bridge@lists.linux-foundation.org>; Mon, 28 Sep 2020 15:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B04585625
 for <bridge@lists.linux-foundation.org>; Mon, 28 Sep 2020 15:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJ99azg3f-lR for <bridge@lists.linux-foundation.org>;
 Mon, 28 Sep 2020 15:30:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B0A18577C
 for <bridge@lists.linux-foundation.org>; Mon, 28 Sep 2020 15:30:09 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id s13so1566693wmh.4
 for <bridge@lists.linux-foundation.org>; Mon, 28 Sep 2020 08:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6VVT8An+NVIG2uzRBeTIUimQFMuHQujGalFijHXJVJI=;
 b=XhxW9IkpduseHfGezLNC9OdGxB2wtvIOpXqB3BDtu6tTq9Mm4FSLxbmnCPAiejqzMy
 lLX5xwhrs8gWvpa5OyzpjP6uZYDLzVIOU4TL07RRpNUAELUUd8PS2twg43gLPUp3BPQD
 7m9PLhMfF9D87ue2POf2SWtB8NjmNEp/qwxs/RWEnYYFWLu2RElcCLRQS2cfluakSu+M
 mNiVE39M/ItzKQxu2zEpZY9HrgzS7khanvvW1O5vP8iSG+DT+L2yOyCZb57PmkPHvy+A
 HXGbGKaatNVxbed9XwCQjOewVAV19W+0NmkgLSZQGztFMpRv3BlvlUfp8dQ0oqCo+vBL
 U6QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6VVT8An+NVIG2uzRBeTIUimQFMuHQujGalFijHXJVJI=;
 b=s5Y5SXzcUKQ0eav5lRIn2ij0o628vrh3Lxs7adBe0hxuwVf/kKzg/xZFEj9bBLxUZX
 cPrIHMpRzT5iDxFoEDHuffbi1HNA/gPKRudxmQeS+DvOId7NjxF7H2JPjskJhtlNABNZ
 k+3Na+sSo5PukyjMfPoVTOZkpzBMT/A2RNGUtT3gYx66pXOU8ZvTOZkySFdNj6A+MTZS
 0ht5n5dcKCq6R99kRqYxx6/NjagC/vhvPrF8/1IIPwRHXZp/uhpiFxUATfxnb2fvcoKZ
 /3LCqXK/HRXluFvAI7apM2ooa72UaId0iYLpjgWXnWhzAPYSgK1c8hJXxviHjviZncmc
 JkxA==
X-Gm-Message-State: AOAM530CoFSsRSH+2tRK+k2q2LPQgpBhO5UnveHtD7FhmVjjgQLDUARd
 JpFcZECBRVhaN4v5Q3EUqIfXXw==
X-Google-Smtp-Source: ABdhPJyZxVWjvMtpvvDZIeNbOCG85h7F4zAnClzOR6Fcdz82eVkdT6zckKyT8PxXBJLiXdFfiDNEzA==
X-Received: by 2002:a7b:cd89:: with SMTP id y9mr2152572wmj.72.1601307008336;
 Mon, 28 Sep 2020 08:30:08 -0700 (PDT)
Received: from localhost.localdomain ([78.128.78.220])
 by smtp.gmail.com with ESMTPSA id t202sm1903247wmt.14.2020.09.28.08.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 08:30:07 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 28 Sep 2020 18:30:02 +0300
Message-Id: <20200928153002.1697183-1-razor@blackwall.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, idosch@nvidia.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net] net: bridge: fdb: don't flush ext_learn entries
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

When a user-space software manages fdb entries externally it should
set the ext_learn flag which marks the fdb entry as externally managed
and avoids expiring it (they're treated as static fdbs). Unfortunately
on events where fdb entries are flushed (STP down, netlink fdb flush
etc) these fdbs are also deleted automatically by the bridge. That in turn
causes trouble for the managing user-space software (e.g. in MLAG setups
we lose remote fdb entries on port flaps).
These entries are completely externally managed so we should avoid
automatically deleting them, the only exception are offloaded entries
(i.e. BR_FDB_ADDED_BY_EXT_LEARN + BR_FDB_OFFLOADED). They are flushed as
before.

Fixes: eb100e0e24a2 ("net: bridge: allow to add externally learned entries from user-space")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_fdb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 9db504baa094..32ac8343b0ba 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -413,6 +413,8 @@ void br_fdb_delete_by_port(struct net_bridge *br,
 
 		if (!do_all)
 			if (test_bit(BR_FDB_STATIC, &f->flags) ||
+			    (test_bit(BR_FDB_ADDED_BY_EXT_LEARN, &f->flags) &&
+			     !test_bit(BR_FDB_OFFLOADED, &f->flags)) ||
 			    (vid && f->key.vlan_id != vid))
 				continue;
 
-- 
2.26.2

