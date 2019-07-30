Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A54E57DD1C
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:00:11 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 68C291726;
	Thu,  1 Aug 2019 13:59:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7192A2C04
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 11:31:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC1145E4
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 11:31:12 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id r1so65359682wrl.7
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 04:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=tUCE/CHU/TFLeJ8RCnUMeDdjaEvSnhdkU6BkkzT8pAM=;
	b=IG6OHMW5XhjqtC/uFPxBykkCxq2KJntogSkgRduT75mGPI6Sx6/C98OaBe5/Zu7ITW
	tIkBQT2A+GYbhhzCJSmtws5xDw9CNlekeQ7LrdbK2pLC+p/InKYD8EudpNffMQaMc4Hp
	uhAs2ocTRAmTiAc4yexJCBd7AlW8uDWwv1SDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=tUCE/CHU/TFLeJ8RCnUMeDdjaEvSnhdkU6BkkzT8pAM=;
	b=NwPnk/vizdV3E3cd7NX/NFMEWGpgSLmR8SIdBrgVnadij3ht7ttVZDnjcnChRJMVqu
	y+gpwHMnnFcTYPmiJONjPvMuOwCHSkqGnksOalHzT6h1P9EeDlRpAAIa9foIxyOHWwc1
	XFwBlE+3Kq6o/9l5Pz4GSmb5QaDgy/QcFLIkSidV0AlDzaVw2FdjzXNtsnBlFrIv2fjE
	rnCjr7kCjVSKNwpSMsLOS4MyntzAQ0TTlhET613IDmfLqBx3O4cGCbI+mXrMJRnOBiw8
	j50Oz2K+VmnLC3Igb8JrFN5EfzpuUX96qvWoPi2x4r30ow395HL2eDOe9VtABaBk9g85
	2lCA==
X-Gm-Message-State: APjAAAWFK48uK13hM1oJBxzTYJ67oPp/bRlQ8/gB0oOQUPtovoW7bpQK
	zPtx3Isgj6uLenN6fjwX/5ZtTw==
X-Google-Smtp-Source: APXvYqzQ14dBPQwc3xMn/SdPqbDgdTlnJGUs4W2uaCZAdav42Zl22zxjWhoDoSkVcy/oFdqfvLlQVA==
X-Received: by 2002:a5d:4e45:: with SMTP id r5mr18745220wrt.206.1564486271341; 
	Tue, 30 Jul 2019 04:31:11 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	y10sm53132242wmj.2.2019.07.30.04.31.10
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 30 Jul 2019 04:31:10 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue, 30 Jul 2019 14:21:00 +0300
Message-Id: <20190730112100.18156-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: [Bridge] [PATCH net] net: bridge: mcast: don't delete permanent
	entries when fast leave is enabled
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

When permanent entries were introduced by the commit below, they were
exempt from timing out and thus igmp leave wouldn't affect them unless
fast leave was enabled on the port which was added before permanent
entries existed. It shouldn't matter if fast leave is enabled or not
if the user added a permanent entry it shouldn't be deleted on igmp
leave.

Before:
$ echo 1 > /sys/class/net/eth4/brport/multicast_fast_leave
$ bridge mdb add dev br0 port eth4 grp 229.1.1.1 permanent
$ bridge mdb show
dev br0 port eth4 grp 229.1.1.1 permanent

< join and leave 229.1.1.1 on eth4 >

$ bridge mdb show
$

After:
$ echo 1 > /sys/class/net/eth4/brport/multicast_fast_leave
$ bridge mdb add dev br0 port eth4 grp 229.1.1.1 permanent
$ bridge mdb show
dev br0 port eth4 grp 229.1.1.1 permanent

< join and leave 229.1.1.1 on eth4 >

$ bridge mdb show
dev br0 port eth4 grp 229.1.1.1 permanent

Fixes: ccb1c31a7a87 ("bridge: add flags to distinguish permanent mdb entires")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
I'll re-work this code in net-next as there's a lot of duplication.

 net/bridge/br_multicast.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index 3d8deac2353d..f8cac3702712 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1388,6 +1388,9 @@ br_multicast_leave_group(struct net_bridge *br,
 			if (!br_port_group_equal(p, port, src))
 				continue;
 
+			if (p->flags & MDB_PG_FLAGS_PERMANENT)
+				break;
+
 			rcu_assign_pointer(*pp, p->next);
 			hlist_del_init(&p->mglist);
 			del_timer(&p->timer);
-- 
2.21.0

