Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 651F722CD06
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2EFE88BE1;
	Fri, 24 Jul 2020 18:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zh29+6-B20-Y; Fri, 24 Jul 2020 18:22:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EACC88A33;
	Fri, 24 Jul 2020 18:21:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0C911C004E;
	Fri, 24 Jul 2020 18:21:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9E5B1C0733
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 88E49203E4
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bEw9w3Pk6WPF for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jul 2020 06:24:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 2021220406
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=51LUd0SvoR+n6SohN5Sodlx7y79ij0S/XRUh9Hk9k/E=; b=nvZ6F7vo++iceOmLkAGswI4yK1
 dN/jJBIgk1kmqjzbzRQLYzB00lmetgml707o/ROIFgH8ThKG9kfWAbnxcSbHVegAZ+fkXfzOP2ciD
 HJ7ZmAMX/Wj3aubE/GXDFzkCnGQQgD7rgHE14n/7A82ro+ME6LubXjKOC1Q0x68iaWMz19OK4jaUb
 gLt2uTJFiLtDbUibTI+HQZ+r+9Y1iraHIOSW2gdgleYLY1D5OQl3+HF3xddqnxQcenZZ9sCZz7h5T
 DgKbvNL6/5PgAng3xBJXnBv43b5eNyWINxeRPdgjL16ddqssTf+g3zKmNRQ5v6Hnr0TaedUOHle9b
 1jGLhcEQ==;
Received: from [2001:4bb8:105:4a81:3772:912d:640:e6c6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwJmO-00050u-Ag; Fri, 17 Jul 2020 06:23:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>
Date: Fri, 17 Jul 2020 08:23:09 +0200
Message-Id: <20200717062331.691152-1-hch@lst.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:35 +0000
Cc: linux-arch@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, Alexei Starovoitov <ast@kernel.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, linux-bluetooth@vger.kernel.org,
 linux-sctp@vger.kernel.org, netfilter-devel@vger.kernel.org,
 mptcp@lists.01.org, Chas Williams <3chas3@gmail.com>, netdev@vger.kernel.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, bpf@vger.kernel.org,
 linux-can@vger.kernel.org, linux-wpan@vger.kernel.org,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [Bridge] sockopt cleanups
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

Hi Dave,

this series cleans up various lose ends in the sockopt code, most
importantly removing the compat_{get,set}sockopt infrastructure in favor
of just using in_compat_syscall() in the few places that care.

Diffstat:
 arch/arm64/include/asm/unistd32.h                  |    4 
 arch/mips/kernel/syscalls/syscall_n32.tbl          |    4 
 arch/mips/kernel/syscalls/syscall_o32.tbl          |    4 
 arch/parisc/kernel/syscalls/syscall.tbl            |    4 
 arch/powerpc/kernel/syscalls/syscall.tbl           |    4 
 arch/s390/kernel/syscalls/syscall.tbl              |    4 
 arch/sparc/kernel/sys32.S                          |   12 
 arch/sparc/kernel/syscalls/syscall.tbl             |    4 
 arch/x86/entry/syscall_x32.c                       |    7 
 arch/x86/entry/syscalls/syscall_32.tbl             |    4 
 arch/x86/entry/syscalls/syscall_64.tbl             |    4 
 crypto/af_alg.c                                    |    1 
 crypto/algif_aead.c                                |    4 
 crypto/algif_hash.c                                |    4 
 crypto/algif_rng.c                                 |    2 
 crypto/algif_skcipher.c                            |    4 
 drivers/atm/eni.c                                  |   17 
 drivers/atm/firestream.c                           |    2 
 drivers/atm/fore200e.c                             |   27 -
 drivers/atm/horizon.c                              |   40 -
 drivers/atm/iphase.c                               |   16 
 drivers/atm/lanai.c                                |    2 
 drivers/atm/solos-pci.c                            |    2 
 drivers/atm/zatm.c                                 |   16 
 drivers/isdn/mISDN/socket.c                        |    2 
 drivers/net/ppp/pppoe.c                            |    2 
 drivers/net/ppp/pptp.c                             |    2 
 include/linux/atmdev.h                             |    9 
 include/linux/compat.h                             |    4 
 include/linux/filter.h                             |    4 
 include/linux/net.h                                |    6 
 include/linux/netfilter.h                          |   14 
 include/linux/netfilter/x_tables.h                 |    2 
 include/linux/syscalls.h                           |    4 
 include/net/compat.h                               |    1 
 include/net/inet_connection_sock.h                 |   13 
 include/net/ip.h                                   |    4 
 include/net/ipv6.h                                 |    4 
 include/net/sctp/structs.h                         |   10 
 include/net/sock.h                                 |   14 
 include/net/tcp.h                                  |    4 
 include/uapi/asm-generic/unistd.h                  |    4 
 net/appletalk/ddp.c                                |    2 
 net/atm/common.c                                   |   14 
 net/bluetooth/bnep/sock.c                          |    2 
 net/bluetooth/cmtp/sock.c                          |    2 
 net/bluetooth/hidp/sock.c                          |    2 
 net/bridge/netfilter/ebtables.c                    |  214 +++-----
 net/caif/caif_socket.c                             |    2 
 net/can/bcm.c                                      |    2 
 net/compat.c                                       |  122 ----
 net/core/filter.c                                  |   23 
 net/core/sock.c                                    |   72 --
 net/dccp/dccp.h                                    |    6 
 net/dccp/ipv4.c                                    |   12 
 net/dccp/ipv6.c                                    |   14 
 net/dccp/proto.c                                   |   26 -
 net/ieee802154/socket.c                            |    8 
 net/ipv4/af_inet.c                                 |    6 
 net/ipv4/inet_connection_sock.c                    |   28 -
 net/ipv4/ip_sockglue.c                             |  541 +++++++++------------
 net/ipv4/netfilter/arp_tables.c                    |   84 ---
 net/ipv4/netfilter/ip_tables.c                     |   85 ---
 net/ipv4/raw.c                                     |   22 
 net/ipv4/tcp.c                                     |   24 
 net/ipv4/tcp_ipv4.c                                |    8 
 net/ipv4/udp.c                                     |   24 
 net/ipv4/udp_impl.h                                |    6 
 net/ipv4/udplite.c                                 |    4 
 net/ipv6/af_inet6.c                                |    4 
 net/ipv6/ipv6_sockglue.c                           |  537 +++++++++-----------
 net/ipv6/netfilter/ip6_tables.c                    |   86 ---
 net/ipv6/raw.c                                     |   52 --
 net/ipv6/tcp_ipv6.c                                |   12 
 net/ipv6/udp.c                                     |   25 
 net/ipv6/udp_impl.h                                |    6 
 net/ipv6/udplite.c                                 |    4 
 net/key/af_key.c                                   |    2 
 net/l2tp/l2tp_ip.c                                 |    8 
 net/l2tp/l2tp_ip6.c                                |    6 
 net/mptcp/protocol.c                               |    6 
 net/netfilter/nf_sockopt.c                         |   60 --
 net/netfilter/x_tables.c                           |    9 
 net/nfc/llcp_sock.c                                |    2 
 net/nfc/rawsock.c                                  |    4 
 net/packet/af_packet.c                             |   35 -
 net/phonet/socket.c                                |   10 
 net/qrtr/qrtr.c                                    |    2 
 net/sctp/ipv6.c                                    |    6 
 net/sctp/protocol.c                                |    8 
 net/smc/af_smc.c                                   |    9 
 net/socket.c                                       |  103 ++-
 net/unix/af_unix.c                                 |    6 
 net/vmw_vsock/af_vsock.c                           |    2 
 tools/include/uapi/asm-generic/unistd.h            |    4 
 tools/perf/arch/powerpc/entry/syscalls/syscall.tbl |    4 
 tools/perf/arch/s390/entry/syscalls/syscall.tbl    |    4 
 tools/perf/arch/x86/entry/syscalls/syscall_64.tbl  |    4 
 98 files changed, 786 insertions(+), 1884 deletions(-)
