Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EB17DC95
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:33:43 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D9A1FEC5;
	Thu,  1 Aug 2019 13:33:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 87A7C3C3E
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 13:45:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A60246CE
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 13:45:33 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id i189so31910462pfg.10
	for <bridge@lists.linux-foundation.org>;
	Wed, 31 Jul 2019 06:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:mime-version
	:content-transfer-encoding;
	bh=VO6YXLOMHjQGfFcRyys07Abf0MQLk8xl6yG90pRHabI=;
	b=aQ936oooQnAEDHD0Pw5AKNOJN7j/DwsHJKB1L/1/kmkBvArc/BuUfQksHaZJABlKiu
	KIzvBYIAIN62tPSNB9tX+LkQte5kde21V+q7kbv8ETP0W25RVyUoP8wlCE2OeO9MvLcJ
	ZZvbS/WAsP7r4vp7rn+J12hfA5IcWnBXqXog2DeCvAFtprE3NJ0rBVnvg8l/ZdxFqWiB
	zINB54aitCFOEsI1gdNXq+9QxjiYyR8Hfw1mtpmPHratWrrTR0327Mp4Yk5/d9zAJrIg
	et6kjdxkc5LWonB2x4pX15Rnax4GD+copytrF5qLKIOFG5/RRBBZtTtmdiR4d+/wdbI4
	QGIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
	:content-transfer-encoding;
	bh=VO6YXLOMHjQGfFcRyys07Abf0MQLk8xl6yG90pRHabI=;
	b=aF7asJewwNe4/WCYYxESJ0b6TCqfO0kfxLQAuJHd7PGa1CwRc/WZVXdp4905U3oKk0
	D6zds8HPfKurXu4fwcnXluxDwUoOxAJSbXRJ31gRRvh3ln5JMnwMoLvygMsQ9tw87Nuc
	WVezW72TJ4SBv04OGATpxa+uKiD3M1FIANtfOTKMmnZcl2BRiQuvg5OQPi+aQ/XR9cXB
	VZkJXrJPAx7mXKMs8vv5vTV6KyR4kXRnJD6UmsjCB6+hFNJk3542eJFikSoqC99oNpBy
	qen2jmUmxrr40Feym862FkNcNHtBB5fPJ7jH3H/Or+oVqkhT6sblvEshGii0B1JkNXqu
	EusQ==
X-Gm-Message-State: APjAAAVn0NwHt70NQ7CaOimb3PYekCM9Mzu1JQJXtuKH48es12Dc1SHt
	whtpuI/w5Q1PYoVpcVKXvCO9qsjE
X-Google-Smtp-Source: APXvYqxok5mSdLW7roMx0KJx3BUc/XT0+zXIr5jYBhJgsEDSPru4ydPGppXhFnJbToXYBS6/dInfHQ==
X-Received: by 2002:a62:ce8e:: with SMTP id y136mr48311405pfg.29.1564580733159;
	Wed, 31 Jul 2019 06:45:33 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
	by smtp.gmail.com with ESMTPSA id
	h14sm88052449pfq.22.2019.07.31.06.45.32
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 31 Jul 2019 06:45:33 -0700 (PDT)
Date: Wed, 31 Jul 2019 06:45:31 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: roopa@cumulusnetworks.com, nikolay@cumulusnetworks.com
Message-ID: <20190731064531.246f27cb@hermes.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: bridge@lists.linux-foundation.org
Subject: [Bridge] Fw: [Bug 204389] New: bridge: AF_BRIDGE NEWNEIGH netlink
 message with ifidx is zero
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



Begin forwarded message:

Date: Wed, 31 Jul 2019 09:32:20 +0000
From: bugzilla-daemon@bugzilla.kernel.org
To: stephen@networkplumber.org
Subject: [Bug 204389] New: bridge: AF_BRIDGE NEWNEIGH netlink message with ifidx is zero


https://bugzilla.kernel.org/show_bug.cgi?id=204389

            Bug ID: 204389
           Summary: bridge: AF_BRIDGE NEWNEIGH netlink message with ifidx
                    is zero
           Product: Networking
           Version: 2.5
    Kernel Version: 4.19
          Hardware: All
                OS: Linux
              Tree: Mainline
            Status: NEW
          Severity: normal
          Priority: P1
         Component: Other
          Assignee: stephen@networkplumber.org
          Reporter: michael-dev@fami-braun.de
        Regression: No

My application is receiving the following netlink messages from kernel:

-------------------------- BEGIN NETLINK
MESSAGE ---------------------------
 [NETLINK HEADER] 16 octets
 .nlmsg_len = 76
 .type = 28 <route/neigh::new>
 .flags = 0 <>
 .seq = 0
 .port = 0
 [PAYLOAD] 12 octets
 07 00 00 00 00 00 00 00 00 80 00 00 ............
 [ATTR 02] 6 octets
 4e db c4 30 92 f4 N..0..
 [PADDING] 2 octets
 00 00 ..
 .flags = 0 <>
 .seq = 0
 .port = 0
 [PAYLOAD] 12 octets
 07 00 00 00 00 00 00 00 00 80 00 00 ............
 [ATTR 02] 6 octets
 4e db c4 30 92 f4 N..0..
 [PADDING] 2 octets
 00 00 ..
 [ATTR 09] 4 octets
 00 00 00 00 ....
 [ATTR 03] 16 octets
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
 [ATTR 05] 2 octets
 00 01 ..
 [PADDING] 2 octets
 00 00 ..
--------------------------- END NETLINK MESSAGE ---------------------------

Clearly, ifidex is zero here, so the application cannot correlate this NEWNEIGH
message to  any interface.

Adding a WARN_ON (ifidx=0) to fdb_fill_info gives the following backtrace:

[ 43.071801] [efb47c10] [c0510580] fdb_fill_info+0x180/0x22c (unreliable)
[ 43.071829] [efb47c50] [c0510684] fdb_notify.isra.22+0x58/0xd8
[ 43.071849] [efb47c70] [c0511b44] fdb_insert+0xa4/0x108
[ 43.071870] [efb47c90] [c051254c] br_fdb_insert+0x40/0x64
[ 43.071891] [efb47cb0] [c052b640] __vlan_add+0xe50/0xf24
[ 43.071911] [efb47d20] [c052a77c] br_vlan_add+0x528/0x59c
[ 43.071931] [efb47d70] [c052c38c] br_vlan_init+0x90/0xd4
[ 43.071951] [efb47da0] [c050f96c] br_dev_init+0xc8/0x170
[ 43.071983] [efb47de0] [c03cff8c] register_netdevice+0x148/0x6e8
[ 43.072003] [efb47e20] [c03d0554] register_netdev+0x28/0x50
[ 43.072026] [efb47e30] [c05154f4] br_add_bridge+0x44/0x78
[ 43.072047] [efb47e40] [c0517ce8] br_ioctl_deviceless_stub+0x2c4/0x2f0
[ 43.072069] [efb47e80] [c03a372c] sock_ioctl+0x17c/0x3d8
[ 43.072091] [efb47ed0] [c017655c] do_vfs_ioctl+0x7ac/0x894
[ 43.072111] [efb47f20] [c0176684] ksys_ioctl+0x40/0x74
[ 43.072140] [efb47f40] [c0011288] ret_from_syscall+0x0/0x3c

So clearly br_vlan_init triggers a NEWNEIGH message before bridge creation has
been completed and an ifindex assigned.

-- 
You are receiving this mail because:
You are the assignee for the bug.
