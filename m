Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4570278CDC3
	for <lists.bridge@lfdr.de>; Tue, 29 Aug 2023 22:46:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F3C9607E1;
	Tue, 29 Aug 2023 20:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F3C9607E1
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Dve5+6o8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0xqpzJabjy-z; Tue, 29 Aug 2023 20:46:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 03FA160AAE;
	Tue, 29 Aug 2023 20:46:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03FA160AAE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B57FC0DD3;
	Tue, 29 Aug 2023 20:46:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9F2CC0032
 for <bridge@lists.linux-foundation.org>; Tue, 29 Aug 2023 20:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A360441882
 for <bridge@lists.linux-foundation.org>; Tue, 29 Aug 2023 20:45:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A360441882
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Dve5+6o8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UI40WTc81U5i for <bridge@lists.linux-foundation.org>;
 Tue, 29 Aug 2023 20:45:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DFE5417CD
 for <bridge@lists.linux-foundation.org>; Tue, 29 Aug 2023 20:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DFE5417CD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=qqpCUFR3P/c8X+gNxuXmGaV/FqFgRToVQytMVMpzzZU=; b=Dve5+6o8hMnkJ5nWqXTD/1k5Ig
 c+eL+0Tiv6N9rCEFJgeCjKJ4omPyPHn9fnqB3Jf8MqMaOyZqL+1UBHqlsS5YXH7+VQoXGOrthij6U
 wXE8kb0bhwdeKsa8zyMuKPbVXAZmTXwfMMt3f1XiBd7bIzJsMtP+il1X36DMva9FrwpSsxX2Bbm+7
 EuvcibeFMzWbVd3TNrqT4ZRzkQJ0Q9NQiatktpBmVWsXjDxGZFkVQEKbevr1IsN647m6SvvMo+viz
 Yvy04a63uv+YPdHNtPwsUdAKlVbW2MWxd4cief6pa6kf+sxylyo5091Al/BfKdZkegt5uFBdYqewR
 nJDOB6Og==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1qb5a3-00CF5F-1u; Tue, 29 Aug 2023 20:44:55 +0000
Date: Tue, 29 Aug 2023 13:44:55 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZO5Yx5JFogGi/cBo@bombadil.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: Joel Granados <j.granados@samsung.com>,
 Alexander Aring <alex.aring@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 linux-sctp@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Jan Karcher <jaka@linux.ibm.com>, Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Iurii Zaikin <yzaikin@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Wen Gu <guwen@linux.alibaba.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Joerg Reuter <jreuter@yaina.de>, Sven Schnelle <svens@linux.ibm.com>,
 Joel Granados <joel.granados@gmail.com>, keescook@chromium.org,
 Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 mptcp@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Karsten Graul <kgraul@linux.ibm.com>,
 mcgrof@kernel.org, netfilter-devel@vger.kernel.org,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [GIT PULL] sysctl changes for v6.6-rc1
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

The following changes since commit 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5:

  Linux 6.5-rc1 (2023-07-09 13:53:13 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux.git/ tags/sysctl-6.6-rc1

for you to fetch changes up to 53f3811dfd5e39507ee3aaea1be09aabce8f9c98:

  sysctl: Use ctl_table_size as stopping criteria for list macro (2023-08-15 15:26:18 -0700)

----------------------------------------------------------------
sysctl-6.6-rc1

Long ago we set out to remove the kitchen sink on kernel/sysctl.c arrays and
placings sysctls to their own sybsystem or file to help avoid merge conflicts.
Matthew Wilcox pointed out though that if we're going to do that we might as
well also *save* space while at it and try to remove the extra last sysctl
entry added at the end of each array, a sentintel, instead of bloating the
kernel by adding a new sentinel with each array moved.

Doing that was not so trivial, and has required slowing down the moves of
kernel/sysctl.c arrays and measuring the impact on size by each new move.

The complex part of the effort to help reduce the size of each sysctl is being
done by the patient work of el se�or Don Joel Granados. A lot of this is truly
painful code refactoring and testing and then trying to measure the savings of
each move and removing the sentinels. Although Joel already has code which does
most of this work, experience with sysctl moves in the past shows is we need to
be careful due to the slew of odd build failures that are possible due to the
amount of random Kconfig options sysctls use.

To that end Joel's work is split by first addressing the major housekeeping
needed to remove the sentinels, which is part of this merge request. The rest
of the work to actually remove the sentinels will be done later in future
kernel releases.

At first I was only going to send his first 7 patches of his patch series,
posted 1 month ago, but in retrospect due to the testing the changes have
received in linux-next and the minor changes they make this goes with the
entire set of patches Joel had planned: just sysctl house keeping. There are
networking changes but these are part of the house keeping too.

The preliminary math is showing this will all help reduce the overall build
time size of the kernel and run time memory consumed by the kernel by about
~64 bytes per array where we are able to remove each sentinel in the future.
That also means there is no more bloating the kernel with the extra ~64 bytes
per array moved as no new sentinels are created.

Most of this has been in linux-next for about a month, the last 7 patches took
a minor refresh 2 week ago based on feedback.

----------------------------------------------------------------
Joel Granados (14):
      sysctl: Prefer ctl_table_header in proc_sysctl
      sysctl: Use ctl_table_header in list_for_each_table_entry
      sysctl: Add ctl_table_size to ctl_table_header
      sysctl: Add size argument to init_header
      sysctl: Add a size arg to __register_sysctl_table
      sysctl: Add size to register_sysctl
      sysctl: Add size arg to __register_sysctl_init
      sysctl: Add size to register_net_sysctl function
      ax.25: Update to register_net_sysctl_sz
      netfilter: Update to register_net_sysctl_sz
      networking: Update to register_net_sysctl_sz
      vrf: Update to register_net_sysctl_sz
      sysctl: SIZE_MAX->ARRAY_SIZE in register_net_sysctl
      sysctl: Use ctl_table_size as stopping criteria for list macro

 arch/arm64/kernel/armv8_deprecated.c    |  2 +-
 arch/s390/appldata/appldata_base.c      |  2 +-
 drivers/net/vrf.c                       |  3 +-
 fs/proc/proc_sysctl.c                   | 90 +++++++++++++++++----------------
 include/linux/sysctl.h                  | 31 +++++++++---
 include/net/ipv6.h                      |  2 +
 include/net/net_namespace.h             | 10 ++--
 ipc/ipc_sysctl.c                        |  4 +-
 ipc/mq_sysctl.c                         |  4 +-
 kernel/ucount.c                         |  5 +-
 net/ax25/sysctl_net_ax25.c              |  3 +-
 net/bridge/br_netfilter_hooks.c         |  3 +-
 net/core/neighbour.c                    |  8 ++-
 net/core/sysctl_net_core.c              |  3 +-
 net/ieee802154/6lowpan/reassembly.c     |  8 ++-
 net/ipv4/devinet.c                      |  3 +-
 net/ipv4/ip_fragment.c                  |  3 +-
 net/ipv4/route.c                        |  8 ++-
 net/ipv4/sysctl_net_ipv4.c              |  3 +-
 net/ipv4/xfrm4_policy.c                 |  3 +-
 net/ipv6/addrconf.c                     |  3 +-
 net/ipv6/icmp.c                         |  5 ++
 net/ipv6/netfilter/nf_conntrack_reasm.c |  3 +-
 net/ipv6/reassembly.c                   |  3 +-
 net/ipv6/route.c                        |  9 ++++
 net/ipv6/sysctl_net_ipv6.c              | 16 ++++--
 net/ipv6/xfrm6_policy.c                 |  3 +-
 net/mpls/af_mpls.c                      |  6 ++-
 net/mptcp/ctrl.c                        |  3 +-
 net/netfilter/ipvs/ip_vs_ctl.c          |  8 ++-
 net/netfilter/ipvs/ip_vs_lblc.c         | 10 ++--
 net/netfilter/ipvs/ip_vs_lblcr.c        | 10 ++--
 net/netfilter/nf_conntrack_standalone.c |  4 +-
 net/netfilter/nf_log.c                  |  7 +--
 net/rds/tcp.c                           |  3 +-
 net/sctp/sysctl.c                       |  4 +-
 net/smc/smc_sysctl.c                    |  3 +-
 net/sysctl_net.c                        | 26 +++++++---
 net/unix/sysctl_net_unix.c              |  3 +-
 net/xfrm/xfrm_sysctl.c                  |  8 ++-
 40 files changed, 222 insertions(+), 113 deletions(-)
