Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB607DCBA
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:43:11 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EE7C21416;
	Thu,  1 Aug 2019 13:40:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C0561393
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 09:30:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5079B2C6
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 09:30:40 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a15so53157449wmj.5
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 02:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=BwkbToRnvkPkaAeAvQMV1LEHyGv3X3yvIxFI1T/d490=;
	b=gkQJGCLEBtZ12CHhRHiZL6+DgUKHZMIlh1b0TuXIeqbIuKHSdQ8o3Q8a4xh/WQ9kIG
	2slVscevycmtN2jsWuLGi8hh1P6+ON6h4h3b0LhbCrJIz0UM0FVaClNqAh9GfA0A4qFv
	1N7qFKp/wj6t1QiZV8qbD22VqrmjDLSIzdY8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=BwkbToRnvkPkaAeAvQMV1LEHyGv3X3yvIxFI1T/d490=;
	b=UPYgF8aYbpTSWpPKGAsFpdnINeDdSI16guzPR+IkUZWJdv3YpamHa4Tsqc+OW/NqMD
	gq8CWH2/HLLSjILgOXp9/omq802m8e6xtuMRa+5Kat43XSDarxbVjw5NSi2Q0su5FIo/
	Hx1+nLODIsXjQ6bTM52zUOEtAVGjgkydoJPIRd4S0xQ9CDEAa/zN5715iCZ9YAp3w07H
	m1dhSuRW+28MSR7GA1myacovFM4wVjnJw1Gb+LRJoEV8QLqLarGmeU8zPR+kuLUUAbO/
	0GWKK6KxDipd12mOBYvNFXqIna7Ci/qPmal0d0ecLKQe5POHkobFzDUMwsqd9NvFF5+a
	sF1g==
X-Gm-Message-State: APjAAAWJnUGiAqGDABR+jTvCqYtZc+q24YZV+HSR7NX8j5mVpoDcC6w0
	Wjx0QcysznLkm1pJZzWtysc6WQ==
X-Google-Smtp-Source: APXvYqyhlnZ9knli0ifQGUXH0RUZ7bDZQTFKmuy4zzV4OJFV4Poe1b6zBdqpq7iSI3B2IaeP1r45zQ==
X-Received: by 2002:a7b:cae9:: with SMTP id t9mr98201451wml.126.1564392638792; 
	Mon, 29 Jul 2019 02:30:38 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	g19sm68922504wmg.10.2019.07.29.02.30.37
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 29 Jul 2019 02:30:37 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 29 Jul 2019 12:28:41 +0300
Message-Id: <20190729092841.4260-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190728182230.28818-1-nikolay@cumulusnetworks.com>
References: <20190728182230.28818-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net, syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com
Subject: [Bridge] [PATCH net v2] net: bridge: delete local fdb on device
	init failure
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

On initialization failure we have to delete the local fdb which was
inserted due to the default pvid creation. This problem has been present
since the inception of default_pvid. Note that currently there are 2 cases:
1) in br_dev_init() when br_multicast_init() fails
2) if register_netdevice() fails after calling ndo_init()

This patch takes care of both since br_vlan_flush() is called on both
occasions. Also the new fdb delete would be a no-op on normal bridge
device destruction since the local fdb would've been already flushed by
br_dev_delete(). This is not an issue for ports since nbp_vlan_init() is
called last when adding a port thus nothing can fail after it.

Reported-by: syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com
Fixes: 5be5a2df40f0 ("bridge: Add filtering support for default_pvid")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
v2: reworded the commit message and comment so they're not plural, we're
    talking about a single bridge local fdb added on the init vlan creation
    of the default pvid

Tested with the provided reproducer and can no longer trigger the leak.
Also tested the br_multicast_init() failure manually by making it always
return an error.

 net/bridge/br_vlan.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 021cc9f66804..3e6a702e4c21 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -715,6 +715,11 @@ void br_vlan_flush(struct net_bridge *br)
 
 	ASSERT_RTNL();
 
+	/* delete auto-added default pvid local fdb before flushing vlans
+	 * otherwise it will be leaked on bridge device init failure
+	 */
+	br_fdb_delete_by_port(br, NULL, 0, 1);
+
 	vg = br_vlan_group(br);
 	__vlan_flush(vg);
 	RCU_INIT_POINTER(br->vlgrp, NULL);
-- 
2.21.0

