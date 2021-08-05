Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9DD3E1059
	for <lists.bridge@lfdr.de>; Thu,  5 Aug 2021 10:32:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD42A83268;
	Thu,  5 Aug 2021 08:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UUQnfxSaAzkI; Thu,  5 Aug 2021 08:32:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3869B82F0F;
	Thu,  5 Aug 2021 08:32:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E72E1C001F;
	Thu,  5 Aug 2021 08:32:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 152A6C0010
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E9925607DE
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:32:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KIWhaCp24eXg for <bridge@lists.linux-foundation.org>;
 Thu,  5 Aug 2021 08:32:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BBE1605C1
 for <bridge@lists.linux-foundation.org>; Thu,  5 Aug 2021 08:32:00 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id zb12so3417032ejb.5
 for <bridge@lists.linux-foundation.org>; Thu, 05 Aug 2021 01:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ASFi6LmvPfUEVAfYOyV6LdzH3i0EWd4CXmN64mzKTmI=;
 b=FDd/+X33tYFBuRoA72xCxLV9ETIza+Osqha0JMbpo3+srdWGFrOIoW/0Beh+QHi9Kk
 HAXhay+TdAxUITsr0To4mEhM5/9MwyP/denNRgi64IIq7k8dVBsvjHtJW4hlWSpT6r03
 uWHTMEBm9WLb4yjVENLJfYqDPItPtXhF0/xovtJCmxw2qxqDHh62sXN4dDp9fdpufo+h
 14thAclH380lVzJhsQYPcNjN26sb3wBH0GiU3kwlLZTR70jH5EWUdywgDVep1K/iFad6
 cjggBcIjBqeli4HnnzC8mctBi1OK/F+/rIwkR6ii1Rv887XYWn54IpGp2mq2V/UTVuSN
 zhQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ASFi6LmvPfUEVAfYOyV6LdzH3i0EWd4CXmN64mzKTmI=;
 b=OodXI8eRBOcxSahijUZa8viu6x1zcUsSNVaKDemFHs+jY9E8eDx39ylLdWSPNbPDoW
 Pr1xAD2iS1JapeYZJ8M4N8RBgu0DS+W21/KmK2/QfR6VNDIevS1HMCO6bmVDrhiAjWQl
 X+3PpV+YrtmEKiX+mQll767600MiYXK5tSwoOCQo4izZCbtsnr4jVX9bWhYA0joyz7gl
 RvlVGXCSpkRHSn5vYArP6tsQMhNccDV/H1of61b5wIjkl74ThjbXmF1pxB8VNBrmiGbp
 0/OAE9BbSfIcUrgEYuOORFcb7dhRlstebEVZbTG49JZ8ntZXxbO5ddiPA/3Uz2hZZxX5
 ZLgA==
X-Gm-Message-State: AOAM530pFZ/i+Q20nClxR3aaiM+B/DxQpuwYhYoecHII6l+xxIvFZ0+x
 3z89QZXS4crq6DAYFSXtWc8wKGTvFmP7MJ/T
X-Google-Smtp-Source: ABdhPJzIyGJFIa85z0iCIbObKWZpcRLES+Xw4IAn3zOfcYjpksW0s4ScXh4qFPs3SFrgmHhAfCEyOA==
X-Received: by 2002:a17:906:c834:: with SMTP id
 dd20mr3676730ejb.371.1628152318096; 
 Thu, 05 Aug 2021 01:31:58 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id bm1sm1471611ejb.38.2021.08.05.01.31.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 01:31:57 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Thu,  5 Aug 2021 11:29:03 +0300
Message-Id: <20210805082903.711396-4-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210805082903.711396-1-razor@blackwall.org>
References: <20210805082903.711396-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: syzbot+79f4a8692e267bdb7227@syzkaller.appspotmail.com,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 arnd@arndb.de, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 3/3] net: core: don't call SIOCBRADD/DELIF
	for non-bridge devices
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

Commit ad2f99aedf8f ("net: bridge: move bridge ioctls out of .ndo_do_ioctl")
changed SIOCBRADD/DELIF to use bridge's ioctl hook (br_ioctl_hook)
without checking if the target netdevice is actually a bridge which can
cause crashes and generally interpreting other devices' private pointers
as net_bridge pointers.

Crash example (lo - loopback):
$ brctl addif lo ens16
 BUG: kernel NULL pointer dereference, address: 000000000000059898
 #PF: supervisor read access in kernel modede
 #PF: error_code(0x0000) - not-present pagege
 PGD 0 P4D 0 ^Ac
 Oops: 0000 [#1] SMP NOPTI
 CPU: 2 PID: 1376 Comm: brctl Kdump: loaded Tainted: G        W         5.14.0-rc3+ #405
 Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.14.0-4.fc34 04/01/2014
 RIP: 0010:add_del_if+0x1f/0x7c [bridge]
 Code: 80 bf 1b a0 41 5c e9 c0 3c 03 e1 0f 1f 44 00 00 41 55 41 54 41 89 f4 be 0c 00 00 00 55 48 89 fd 53 48 8b 87 88 00 00 00 89 d3 <4c> 8b a8 98 05 00 00 49 8b bd d0 00 00 00 e8 17 d7 f3 e0 84 c0 74
 RSP: 0018:ffff888109d97cb0 EFLAGS: 00010202^Ac
 RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
 RDX: 0000000000000000 RSI: 000000000000000c RDI: ffff888101239bc0
 RBP: ffff888101239bc0 R08: 0000000000000001 R09: 0000000000000000
 R10: ffff888109d97cd8 R11: 00000000000000a3 R12: 0000000000000012
 R13: 0000000000000000 R14: ffff888101239bc0 R15: ffff888109d97e10
 FS:  00007fc1e365b540(0000) GS:ffff88822be80000(0000) knlGS:0000000000000000
 CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 CR2: 0000000000000598 CR3: 0000000106506000 CR4: 00000000000006e0
 Call Trace:
  br_ioctl_stub+0x7c/0x441 [bridge]
  br_ioctl_call+0x6d/0x8a
  dev_ifsioc+0x325/0x4e8
  dev_ioctl+0x46b/0x4e1
  sock_do_ioctl+0x7b/0xad
  sock_ioctl+0x2de/0x2f2
  vfs_ioctl+0x1e/0x2b
  __do_sys_ioctl+0x63/0x86
  do_syscall_64+0xcb/0xf2
  entry_SYSCALL_64_after_hwframe+0x44/0xae
 RIP: 0033:0x7fc1e3589427
 Code: 00 00 90 48 8b 05 69 aa 0c 00 64 c7 00 26 00 00 00 48 c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 39 aa 0c 00 f7 d8 64 89 01 48
 RSP: 002b:00007ffc8d501d38 EFLAGS: 00000202 ORIG_RAX: 000000000000001010
 RAX: ffffffffffffffda RBX: 0000000000000012 RCX: 00007fc1e3589427
 RDX: 00007ffc8d501d60 RSI: 00000000000089a3 RDI: 0000000000000003
 RBP: 00007ffc8d501d60 R08: 0000000000000000 R09: fefefeff77686d74
 R10: fffffffffffff8f9 R11: 0000000000000202 R12: 00007ffc8d502e06
 R13: 00007ffc8d502e06 R14: 0000000000000000 R15: 0000000000000000
 Modules linked in: bridge stp llc bonding ipv6 virtio_net [last unloaded: llc]^Ac
 CR2: 0000000000000598

Reported-by: syzbot+79f4a8692e267bdb7227@syzkaller.appspotmail.com
Fixes: ad2f99aedf8f ("net: bridge: move bridge ioctls out of .ndo_do_ioctl")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/core/dev_ioctl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/core/dev_ioctl.c b/net/core/dev_ioctl.c
index ff16326f5903..0e87237fd871 100644
--- a/net/core/dev_ioctl.c
+++ b/net/core/dev_ioctl.c
@@ -379,6 +379,8 @@ static int dev_ifsioc(struct net *net, struct ifreq *ifr, void __user *data,
 	case SIOCBRDELIF:
 		if (!netif_device_present(dev))
 			return -ENODEV;
+		if (!netif_is_bridge_master(dev))
+			return -EOPNOTSUPP;
 		dev_hold(dev);
 		rtnl_unlock();
 		err = br_ioctl_call(net, netdev_priv(dev), cmd, ifr, NULL);
-- 
2.31.1

