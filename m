Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEF347E570
	for <lists.bridge@lfdr.de>; Thu, 23 Dec 2021 16:27:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56D8740010;
	Thu, 23 Dec 2021 15:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v5ucbwLzUUzL; Thu, 23 Dec 2021 15:27:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 71D3640A02;
	Thu, 23 Dec 2021 15:27:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1DFF8C006E;
	Thu, 23 Dec 2021 15:27:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 39376C0012
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12181408B1
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fj7uyULRQHdP for <bridge@lists.linux-foundation.org>;
 Thu, 23 Dec 2021 15:27:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D46340221
 for <bridge@lists.linux-foundation.org>; Thu, 23 Dec 2021 15:27:05 +0000 (UTC)
Received: (Authenticated sender: repk@triplefau.lt)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id CDBCA1C0004;
 Thu, 23 Dec 2021 15:27:00 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: netdev@vger.kernel.org
Date: Thu, 23 Dec 2021 16:31:37 +0100
Message-Id: <20211223153139.7661-1-repk@triplefau.lt>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Arnd Bergmann <arnd@arndb.de>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Remi Pommarel <repk@triplefau.lt>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net 0/2] Fix SIOCGIFBR/SIOCSIFBR ioctl
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

SIOC{G,S}IFBR ioctls have been broken since [0], as discussed here [1]
the intent was to get them working in compat mode.

This serie is gathering patch from [2] with the one from [3].

The first patch fixes the ioctl usage so it can be backported to stable
kernel while the second one adds proper support for those ioctl in
compat mode.

This has been tested with busybox's brctl as below.

Before this serie

- 64-bit brctl:
  $ brctl show
  bridge name     bridge id               STP enabled     interfaces
  brctl: can't get bridge name for index 0: No such device or address

- 32-bit brctl on CONFIG_COMPAT=y kernel:
  $ brctl show
  brctl: SIOCGIFBR: Invalid argument

With first patch of this serie

- 64-bit brctl
  $ brctl show
  bridge name     bridge id               STP enabled     interfaces
  br0             8000.000000000000       no

- 32-bit brctl on CONFIG_COMPAT=y kernel
  $ brctl show
    brctl: SIOCGIFBR: Invalid argument

With both patches

- 64-bit brctl
  $ brctl show
  bridge name     bridge id               STP enabled     interfaces
  br0             8000.000000000000       no

- 32-bit brctl on CONFIG_COMPAT=y kernel
  $ brctl show
  bridge name     bridge id               STP enabled     interfaces
  br0             8000.000000000000       no

[0] commit 561d8352818f ("bridge: use ndo_siocdevprivate")
[1] https://lkml.org/lkml/2021/12/22/805
[2] https://lkml.org/lkml/2021/12/22/743
[3] https://lkml.org/lkml/2021/12/23/212

Thanks,

Remi Pommarel (2):
  net: bridge: fix ioctl old_deviceless bridge argument
  net: bridge: Get SIOCGIFBR/SIOCSIFBR ioctl working in compat mode

 net/bridge/br_ioctl.c | 75 ++++++++++++++++++++++++++++---------------
 net/socket.c          | 20 ++----------
 2 files changed, 52 insertions(+), 43 deletions(-)

-- 
2.33.0

