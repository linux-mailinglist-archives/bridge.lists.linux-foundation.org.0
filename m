Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A4C22CD46
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B21D88B26;
	Fri, 24 Jul 2020 18:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pXPKhlDdnzGI; Fri, 24 Jul 2020 18:23:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54EC188B69;
	Fri, 24 Jul 2020 18:22:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3A3C7C004C;
	Fri, 24 Jul 2020 18:22:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80C99C016F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7095D87598
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nl8RB83w3C3P for <bridge@lists.linux-foundation.org>;
 Mon, 20 Jul 2020 12:48:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8ECEC8172A
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=sKdt4hAbq/6qTa3tcNwXdqjggNwHsw7uOZ08Rf6czhk=; b=f5LLAO7/F+nm+9Gl7hfXp/Kox6
 sXYuhXb2vkgDyYkwVEurXeRexxngk9Z2EHCb20Vm6cwQC0KkAdtVybwIWUYKPlRMRbsnYlZua+VzZ
 Flsm7I6zi4O+te18djow1qkD4y6zW7eB+vdqOWXQqe40sAYXmcza0z+HCA79DX9OmZGLOhLwGhUFN
 CkZ0dvcn3v1XJU220Xc46sbrIANYMzqY/4cDFUBrys3agNAh/rnUNwi19G0yCy4iST/MAWBuDJTgy
 eAg7vhunPFR2F7DJnQOtye3bthglFnmml2ORTej2iPJzY9HBiUQo5UMJaII7PCL4D2XJQPwFgvOnM
 oJ/gmolA==;
Received: from [2001:4bb8:105:4a81:2a8f:15b1:2c3:7be7] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxVCl-0004WH-1J; Mon, 20 Jul 2020 12:47:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Mon, 20 Jul 2020 14:47:13 +0200
Message-Id: <20200720124737.118617-1-hch@lst.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:36 +0000
Cc: linux-s390@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-decnet-user@lists.sourceforge.net, tipc-discussion@lists.sourceforge.net,
 linux-x25@vger.kernel.org, dccp@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, lvs-devel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-sctp@vger.kernel.org,
 coreteam@netfilter.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-hams@vger.kernel.org, bpf@vger.kernel.org,
 linux-wpan@vger.kernel.org, linux-afs@lists.infradead.org, mptcp@lists.01.org
Subject: [Bridge] get rid of the address_space override in setsockopt
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

setsockopt is the last place in architecture-independ code that still
uses set_fs to force the uaccess routines to operate on kernel pointers.

This series adds a new sockptr_t type that can contained either a kernel
or user pointer, and which has accessors that do the right thing, and
then uses it for setsockopt, starting by refactoring some low-level
helpers and moving them over to it before finally doing the main
setsockopt method.

Note that I could not get the eBPF selftests to work, so this has been
tested with a testing patch that always copies the data first and passes
a kernel pointer.  This is something that works for most common sockopts
(and is something that the ePBF support relies on), but unfortunately
in various corner cases we either don't use the passed in length, or in
one case actually copy data back from setsockopt, so we unfortunately
can't just always do the copy in the highlevel code, which would have
been much nicer.


Diffstt:
 crypto/af_alg.c                           |    7 
 drivers/crypto/chelsio/chtls/chtls_main.c |   18 -
 drivers/isdn/mISDN/socket.c               |    4 
 include/linux/bpfilter.h                  |    6 
 include/linux/filter.h                    |    3 
 include/linux/mroute.h                    |    5 
 include/linux/mroute6.h                   |    8 
 include/linux/net.h                       |    4 
 include/linux/netfilter.h                 |    6 
 include/linux/netfilter/x_tables.h        |    4 
 include/linux/sockptr.h                   |  121 +++++++++++
 include/net/inet_connection_sock.h        |    3 
 include/net/ip.h                          |    7 
 include/net/ipv6.h                        |    6 
 include/net/sctp/structs.h                |    2 
 include/net/sock.h                        |    7 
 include/net/tcp.h                         |    6 
 include/net/udp.h                         |    2 
 include/net/xfrm.h                        |    8 
 net/atm/common.c                          |    6 
 net/atm/common.h                          |    2 
 net/atm/pvc.c                             |    2 
 net/atm/svc.c                             |    6 
 net/ax25/af_ax25.c                        |    6 
 net/bluetooth/hci_sock.c                  |    8 
 net/bluetooth/l2cap_sock.c                |   22 +-
 net/bluetooth/rfcomm/sock.c               |   12 -
 net/bluetooth/sco.c                       |    6 
 net/bpfilter/bpfilter_kern.c              |   11 -
 net/bridge/netfilter/ebtables.c           |   46 +---
 net/caif/caif_socket.c                    |    8 
 net/can/j1939/socket.c                    |   12 -
 net/can/raw.c                             |   16 -
 net/core/filter.c                         |    6 
 net/core/sock.c                           |   36 +--
 net/dccp/dccp.h                           |    2 
 net/dccp/proto.c                          |   20 -
 net/decnet/af_decnet.c                    |   13 -
 net/ieee802154/socket.c                   |    6 
 net/ipv4/bpfilter/sockopt.c               |    8 
 net/ipv4/ip_options.c                     |   43 +---
 net/ipv4/ip_sockglue.c                    |   66 +++---
 net/ipv4/ipmr.c                           |   14 -
 net/ipv4/netfilter/arp_tables.c           |   33 +--
 net/ipv4/netfilter/ip_tables.c            |   29 +-
 net/ipv4/raw.c                            |    8 
 net/ipv4/tcp.c                            |   30 +-
 net/ipv4/tcp_ipv4.c                       |    4 
 net/ipv4/udp.c                            |   11 -
 net/ipv4/udp_impl.h                       |    4 
 net/ipv6/ip6_flowlabel.c                  |  317 ++++++++++++++++--------------
 net/ipv6/ip6mr.c                          |   17 -
 net/ipv6/ipv6_sockglue.c                  |  203 +++++++++----------
 net/ipv6/netfilter/ip6_tables.c           |   28 +-
 net/ipv6/raw.c                            |   10 
 net/ipv6/tcp_ipv6.c                       |    4 
 net/ipv6/udp.c                            |    7 
 net/ipv6/udp_impl.h                       |    4 
 net/iucv/af_iucv.c                        |    4 
 net/kcm/kcmsock.c                         |    6 
 net/l2tp/l2tp_ppp.c                       |    4 
 net/llc/af_llc.c                          |    4 
 net/mptcp/protocol.c                      |   12 -
 net/netfilter/ipvs/ip_vs_ctl.c            |    4 
 net/netfilter/nf_sockopt.c                |    2 
 net/netfilter/x_tables.c                  |   20 -
 net/netlink/af_netlink.c                  |    4 
 net/netrom/af_netrom.c                    |    4 
 net/nfc/llcp_sock.c                       |    6 
 net/packet/af_packet.c                    |   39 +--
 net/phonet/pep.c                          |    4 
 net/rds/af_rds.c                          |   30 +-
 net/rds/rdma.c                            |   14 -
 net/rds/rds.h                             |    6 
 net/rose/af_rose.c                        |    4 
 net/rxrpc/af_rxrpc.c                      |    8 
 net/rxrpc/ar-internal.h                   |    4 
 net/rxrpc/key.c                           |    9 
 net/sctp/socket.c                         |    4 
 net/smc/af_smc.c                          |    4 
 net/socket.c                              |   20 -
 net/tipc/socket.c                         |    8 
 net/tls/tls_main.c                        |   17 -
 net/vmw_vsock/af_vsock.c                  |    4 
 net/x25/af_x25.c                          |    4 
 net/xdp/xsk.c                             |    8 
 net/xfrm/xfrm_state.c                     |    6 
 87 files changed, 855 insertions(+), 721 deletions(-)
