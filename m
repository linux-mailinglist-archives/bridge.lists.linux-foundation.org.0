Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF20522CCF2
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:21:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6800688ED7;
	Fri, 24 Jul 2020 18:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LhslG8AKWWJN; Fri, 24 Jul 2020 18:21:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F946884B2;
	Fri, 24 Jul 2020 18:21:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E3862C004C;
	Fri, 24 Jul 2020 18:21:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2C43DC0733
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AD05855D2
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c7uaKExsCK6p for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jul 2020 06:24:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BCA2985582
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=/E3yYoXC157551h6xowHq2pNR018OFBhJ9Arvav070Y=; b=o6zhOep28KSjcnYm3J9aHcpkgm
 O2Fcz0+9OvZMn6mbYHPBFH/fhpi9DoauQT0ncpn5viSfaoFF6bLsJITCRXjgfdyqFLmf4LW5Djzbq
 mVD4a9wW/2LPyab9lB73mzm+FvayvQ+EgI8+vOBPzlrpsBjPVCB3G88FaBPOFgmA9Mu2nVuQYxlZH
 5LqOFVBqwVr859Q4epbLvsmne1egzV1tTu7+l4QNJED3wUW/yW3Y/QVQJEeAZPJymdlnG4fe6WTAC
 BSzIX9qF0b7Pb8owGsYurQp2qXY/WMlbn+gcpCALS7U1mCseHNtxJKPafipfiMwCKx140COitXOWS
 xalq63Mw==;
Received: from [2001:4bb8:105:4a81:3772:912d:640:e6c6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwJmk-00051o-Jr; Fri, 17 Jul 2020 06:23:55 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>
Date: Fri, 17 Jul 2020 08:23:12 +0200
Message-Id: <20200717062331.691152-4-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200717062331.691152-1-hch@lst.de>
References: <20200717062331.691152-1-hch@lst.de>
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
Subject: [Bridge] [PATCH 03/22] net: streamline __sys_getsockopt
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

Return early when sockfd_lookup_light fails to reduce a level of
indentation for most of the function body.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/socket.c | 31 ++++++++++++++-----------------
 1 file changed, 14 insertions(+), 17 deletions(-)

diff --git a/net/socket.c b/net/socket.c
index 49a6daf0293b83..b79376b17b45b7 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -2163,28 +2163,25 @@ static int __sys_getsockopt(int fd, int level, int optname,
 	int max_optlen;
 
 	sock = sockfd_lookup_light(fd, &err, &fput_needed);
-	if (sock != NULL) {
-		err = security_socket_getsockopt(sock, level, optname);
-		if (err)
-			goto out_put;
+	if (!sock)
+		return err;
 
-		max_optlen = BPF_CGROUP_GETSOCKOPT_MAX_OPTLEN(optlen);
+	err = security_socket_getsockopt(sock, level, optname);
+	if (err)
+		goto out_put;
 
-		if (level == SOL_SOCKET)
-			err =
-			    sock_getsockopt(sock, level, optname, optval,
+	max_optlen = BPF_CGROUP_GETSOCKOPT_MAX_OPTLEN(optlen);
+
+	if (level == SOL_SOCKET)
+		err = sock_getsockopt(sock, level, optname, optval, optlen);
+	else
+		err = sock->ops->getsockopt(sock, level, optname, optval,
 					    optlen);
-		else
-			err =
-			    sock->ops->getsockopt(sock, level, optname, optval,
-						  optlen);
 
-		err = BPF_CGROUP_RUN_PROG_GETSOCKOPT(sock->sk, level, optname,
-						     optval, optlen,
-						     max_optlen, err);
+	err = BPF_CGROUP_RUN_PROG_GETSOCKOPT(sock->sk, level, optname, optval,
+					     optlen, max_optlen, err);
 out_put:
-		fput_light(sock->file, fput_needed);
-	}
+	fput_light(sock->file, fput_needed);
 	return err;
 }
 
-- 
2.27.0

