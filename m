Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EEC3D54DC
	for <lists.bridge@lfdr.de>; Mon, 26 Jul 2021 10:05:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C21E4017C;
	Mon, 26 Jul 2021 08:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WbfHYoYDBLX0; Mon, 26 Jul 2021 08:04:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 473C5401DA;
	Mon, 26 Jul 2021 08:04:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 057D3C0022;
	Mon, 26 Jul 2021 08:04:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4CDA3C0010
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 12:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B4C74029E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 12:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux.dev
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CDRZ_W9E_YIE for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 12:31:50 +0000 (UTC)
X-Greylist: delayed 00:09:28 by SQLgrey-1.8.0
Received: from out1.migadu.com (out1.migadu.com [IPv6:2001:41d0:2:863f::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7335F4029A
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 12:31:50 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1626697338;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=vu7b9z6fy5eQBUVOgQ3fNILEElmkneJNf7Gu+XNQsCQ=;
 b=LQ5iMGMce0BId8ZMN7GgvooaWIunoMl/2GnrFI1IIUAAoHPMpbmv9VNM5KaK1BYEVGRAjZ
 avv9n3OxxFGZcet/s319LB5suQIH7knhvA/ZwBCSvYBhGeeWpHRg+EuBLRghNiZ4TNsOaX
 /QFW3BVPxKWugNiVVwBwGbhNM0fqSK0=
From: Yajun Deng <yajun.deng@linux.dev>
To: davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com, nikolay@nvidia.com,
 yoshfuji@linux-ipv6.org, dsahern@kernel.org, courmisch@gmail.com,
 jhs@mojatatu.com, xiyou.wangcong@gmail.com, jiri@resnulli.us,
 johannes@sipsolutions.net
Date: Mon, 19 Jul 2021 20:21:54 +0800
Message-Id: <20210719122158.5037-1-yajun.deng@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yajun.deng@linux.dev
X-Mailman-Approved-At: Mon, 26 Jul 2021 08:04:54 +0000
Cc: linux-decnet-user@lists.sourceforge.net, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yajun Deng <yajun.deng@linux.dev>
Subject: [Bridge] [PATCH 0/4] Remove rtnetlink_send() in rtnetlink
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

rtnetlink_send() is similar to rtnl_notify(), there is no need for two 
functions to do the same thing. we can remove rtnetlink_send() and 
modify rtnl_notify() to adapt more case.

Patch1: remove rtnetlink_send() modify rtnl_notify() to adapt 
more case in rtnetlink.
Path2,Patch3: Adjustment parameters in rtnl_notify().
Path4: rtnetlink_send() already removed, use rtnl_notify() instead 
of rtnetlink_send().

Yajun Deng (4):
  rtnetlink: remove rtnetlink_send() in rtnetlink
  net: Adjustment parameters in rtnl_notify()
  vxlan: Adjustment parameters in rtnl_notify()
  net/sched: use rtnl_notify() instead of rtnetlink_send()

 drivers/net/vxlan.c       |  2 +-
 include/linux/rtnetlink.h |  7 +++----
 include/net/netlink.h     |  5 ++---
 net/bridge/br_fdb.c       |  2 +-
 net/bridge/br_mdb.c       |  4 ++--
 net/bridge/br_netlink.c   |  2 +-
 net/bridge/br_vlan.c      |  2 +-
 net/core/fib_rules.c      |  2 +-
 net/core/neighbour.c      |  2 +-
 net/core/net_namespace.c  |  2 +-
 net/core/rtnetlink.c      | 27 ++++++++-------------------
 net/dcb/dcbnl.c           |  2 +-
 net/decnet/dn_dev.c       |  2 +-
 net/decnet/dn_table.c     |  2 +-
 net/ipv4/devinet.c        |  4 ++--
 net/ipv4/fib_semantics.c  |  2 +-
 net/ipv4/fib_trie.c       |  2 +-
 net/ipv4/ipmr.c           |  4 ++--
 net/ipv4/nexthop.c        |  4 ++--
 net/ipv6/addrconf.c       |  8 ++++----
 net/ipv6/ip6mr.c          |  4 ++--
 net/ipv6/ndisc.c          |  2 +-
 net/ipv6/route.c          |  9 +++++----
 net/mpls/af_mpls.c        |  4 ++--
 net/phonet/pn_netlink.c   |  4 ++--
 net/sched/act_api.c       | 13 ++++++-------
 net/sched/cls_api.c       | 14 +++++++-------
 net/sched/sch_api.c       | 13 ++++++-------
 net/wireless/wext-core.c  |  2 +-
 29 files changed, 69 insertions(+), 83 deletions(-)

-- 
2.32.0

