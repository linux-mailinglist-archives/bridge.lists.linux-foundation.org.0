Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FCB780E4
	for <lists.bridge@lfdr.de>; Sun, 28 Jul 2019 20:22:50 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 878C7C3F;
	Sun, 28 Jul 2019 18:22:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C0FDEBB3
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 18:22:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 468595E4
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 18:22:39 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id h19so41470366wme.0
	for <bridge@lists.linux-foundation.org>;
	Sun, 28 Jul 2019 11:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=r321PWAMEFjT5r81kKiX/eqJ1FlWbJsSU+glz5FPlrk=;
	b=H4WINix3uy3a6QX74h26aV3AF9n+/bxK8se1JV5ZbSrbV8s3wdqLJqwG4z4YCaR6R5
	7c4X+P/+OmLUJ/iinT/IFpl2gaDR90xWToajOcwHPgljU4lLjIvQodfvCBZaswuXR6AG
	bfQKFVAS8jkPb/OTa3c29y6rSADRhDW6l1JSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=r321PWAMEFjT5r81kKiX/eqJ1FlWbJsSU+glz5FPlrk=;
	b=JIFlMJt2AMtY5JkFBI6TsywOEin48Fvz3pOw5aBRzPwel7cniH3q1VruO0yyP9H82d
	I676ytPVN5k9eL+ZODmhF7XkEd/mPRVYlug4C+vtw9ALksl/u2nOQLuHHL2/LdZIiHXx
	K/0KE1ZePGjEqrjWas3UW6FSxIxb4B7bkyo5ekNIjxImZ+37SvkTQfveHd1QvQx9XKWC
	v/WDUleXtfoQgq49AeOzV2vCo39OZwLChVx+8BkvPbz8yEGQQ9A4sGnBFxoarreirp1y
	JkR9kM56mgvQVNzfqq3BpDzaFJufXKvLpVmrNOLIJVaOQgwuJAFyfK0fkDLNuWgoedct
	5/Mw==
X-Gm-Message-State: APjAAAWcHLHfQfgRMaLtUsPCZuEKYVaDClMST6PMW7ekZw6zlw5QUYmg
	tpFaEK4S4Vdc/hu5syLvS1hd+Q==
X-Google-Smtp-Source: APXvYqyMWaPBojtlQZ3jFCCTAayF2xx+l1yFdqq0YcPgGgx7Zr4HKtO9gucA7w7DrldfG7fj33lVaA==
X-Received: by 2002:a05:600c:21d4:: with SMTP id
	x20mr87708714wmj.61.1564338157785; 
	Sun, 28 Jul 2019 11:22:37 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id 5sm48753956wmg.42.2019.07.28.11.22.35
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 28 Jul 2019 11:22:36 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sun, 28 Jul 2019 21:22:30 +0300
Message-Id: <20190728182230.28818-1-nikolay@cumulusnetworks.com>
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
	davem@davemloft.net, syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com
Subject: [Bridge] [PATCH net] net: bridge: delete local fdbs on device init
	failure
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

On initialization failure we have to delete all local fdbs which were
inserted due to the default pvid. This problem has been present since the
inception of default_pvid. Note that currently there are 2 cases:
1) in br_dev_init() when br_multicast_init() fails
2) if register_netdevice() fails after calling ndo_init()

This patch takes care of both since br_vlan_flush() is called on both
occasions. Also the new fdb delete would be a no-op on normal bridge device
destruction since the local fdbs would've been already flushed by
br_dev_delete(). This is not an issue for ports since nbp_vlan_init() is
called last when adding a port thus nothing can fail after it.

Reported-by: syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com
Fixes: 5be5a2df40f0 ("bridge: Add filtering support for default_pvid")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
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
 
+	/* delete auto-added default pvid local fdbs before flushing vlans
+	 * otherwise these will be leaked on bridge device init failure
+	 */
+	br_fdb_delete_by_port(br, NULL, 0, 1);
+
 	vg = br_vlan_group(br);
 	__vlan_flush(vg);
 	RCU_INIT_POINTER(br->vlgrp, NULL);
-- 
2.21.0

