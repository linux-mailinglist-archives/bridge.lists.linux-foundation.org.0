Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6F422CD30
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3052988AF1;
	Fri, 24 Jul 2020 18:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1832EEKEjJD; Fri, 24 Jul 2020 18:22:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 996D887EB5;
	Fri, 24 Jul 2020 18:22:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6A2B1C004C;
	Fri, 24 Jul 2020 18:22:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC773C0733
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C91E68615E
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kmn6Q7nRRB8A for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jul 2020 06:24:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0C6F086153
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=5UhNspDdIml9tpfUfRWGkC9v9AOZv925n+e1F7He35A=; b=ngePkQgpsw8v14v2e2H1RuLUgP
 0xqQQ043zu+gtXRpXV0bf1ADe/edoqtXj7z3kKW9mKK+iCMOqbmpx3giNOQFrEznviF1qfzoZwbDo
 xr7UnllY+pDKH2CH55FbdxZENM4P5ohmSYAJ0fRT7rs+qqeSNBf08yCPD3u4f/qFc5Y9NGvnoQNep
 Q1DsD4GKGED6DkS1FkzSoMqYpNOH/w2g4VpT16FR3tH0BYHZ8AioctdDH4k7C39SaqLi85vEZptIG
 vVRFnCSAKWjMPjLVXYuX97UKI3rDl+CoNmVE1f7b4ZTU02I8+ZHtLq4ucRfi35nEz/aA046/AsP0+
 9sdcqAzw==;
Received: from [2001:4bb8:105:4a81:3772:912d:640:e6c6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwJnA-00054z-MC; Fri, 17 Jul 2020 06:24:21 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>
Date: Fri, 17 Jul 2020 08:23:25 +0200
Message-Id: <20200717062331.691152-17-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200717062331.691152-1-hch@lst.de>
References: <20200717062331.691152-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:36 +0000
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
Subject: [Bridge] [PATCH 16/22] net/ipv4: factor out mcast join/leave
	setsockopt helpers
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

Factor out one helper each for setting the native and compat
version of the MCAST_MSFILTER option.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/ipv4/ip_sockglue.c | 109 +++++++++++++++++++++--------------------
 1 file changed, 56 insertions(+), 53 deletions(-)

diff --git a/net/ipv4/ip_sockglue.c b/net/ipv4/ip_sockglue.c
index b587dee006f882..73bb88fbe54661 100644
--- a/net/ipv4/ip_sockglue.c
+++ b/net/ipv4/ip_sockglue.c
@@ -806,6 +806,60 @@ static int compat_ip_set_mcast_msfilter(struct sock *sk, void __user *optval,
 }
 #endif
 
+static int ip_mcast_join_leave(struct sock *sk, int optname,
+		void __user *optval, int optlen)
+{
+	struct ip_mreqn mreq = { };
+	struct sockaddr_in *psin;
+	struct group_req greq;
+
+	if (optlen < sizeof(struct group_req))
+		return -EINVAL;
+	if (copy_from_user(&greq, optval, sizeof(greq)))
+		return -EFAULT;
+
+	psin = (struct sockaddr_in *)&greq.gr_group;
+	if (psin->sin_family != AF_INET)
+		return -EINVAL;
+	mreq.imr_multiaddr = psin->sin_addr;
+	mreq.imr_ifindex = greq.gr_interface;
+	if (optname == MCAST_JOIN_GROUP)
+		return ip_mc_join_group(sk, &mreq);
+	return ip_mc_leave_group(sk, &mreq);
+}
+
+#ifdef CONFIG_COMPAT
+static int compat_ip_mcast_join_leave(struct sock *sk, int optname,
+		void __user *optval, int optlen)
+{
+	struct compat_group_req greq;
+	struct ip_mreqn mreq = { };
+	struct sockaddr_in *psin;
+	int err;
+
+	if (optlen < sizeof(struct compat_group_req))
+		return -EINVAL;
+	if (copy_from_user(&greq, optval, sizeof(greq)))
+		return -EFAULT;
+
+	psin = (struct sockaddr_in *)&greq.gr_group;
+	if (psin->sin_family != AF_INET)
+		return -EINVAL;
+	mreq.imr_multiaddr = psin->sin_addr;
+	mreq.imr_ifindex = greq.gr_interface;
+
+	rtnl_lock();
+	lock_sock(sk);
+	if (optname == MCAST_JOIN_GROUP)
+		err = ip_mc_join_group(sk, &mreq);
+	else
+		err = ip_mc_leave_group(sk, &mreq);
+	release_sock(sk);
+	rtnl_unlock();
+	return err;
+}
+#endif
+
 static int do_ip_setsockopt(struct sock *sk, int level,
 			    int optname, char __user *optval, unsigned int optlen)
 {
@@ -1211,29 +1265,8 @@ static int do_ip_setsockopt(struct sock *sk, int level,
 	}
 	case MCAST_JOIN_GROUP:
 	case MCAST_LEAVE_GROUP:
-	{
-		struct group_req greq;
-		struct sockaddr_in *psin;
-		struct ip_mreqn mreq;
-
-		if (optlen < sizeof(struct group_req))
-			goto e_inval;
-		err = -EFAULT;
-		if (copy_from_user(&greq, optval, sizeof(greq)))
-			break;
-		psin = (struct sockaddr_in *)&greq.gr_group;
-		if (psin->sin_family != AF_INET)
-			goto e_inval;
-		memset(&mreq, 0, sizeof(mreq));
-		mreq.imr_multiaddr = psin->sin_addr;
-		mreq.imr_ifindex = greq.gr_interface;
-
-		if (optname == MCAST_JOIN_GROUP)
-			err = ip_mc_join_group(sk, &mreq);
-		else
-			err = ip_mc_leave_group(sk, &mreq);
+		err = ip_mcast_join_leave(sk, optname, optval, optlen);
 		break;
-	}
 	case MCAST_JOIN_SOURCE_GROUP:
 	case MCAST_LEAVE_SOURCE_GROUP:
 	case MCAST_BLOCK_SOURCE:
@@ -1389,37 +1422,7 @@ int compat_ip_setsockopt(struct sock *sk, int level, int optname,
 	switch (optname) {
 	case MCAST_JOIN_GROUP:
 	case MCAST_LEAVE_GROUP:
-	{
-		struct compat_group_req __user *gr32 = (void __user *)optval;
-		struct group_req greq;
-		struct sockaddr_in *psin = (struct sockaddr_in *)&greq.gr_group;
-		struct ip_mreqn mreq;
-
-		if (optlen < sizeof(struct compat_group_req))
-			return -EINVAL;
-
-		if (get_user(greq.gr_interface, &gr32->gr_interface) ||
-		    copy_from_user(&greq.gr_group, &gr32->gr_group,
-				sizeof(greq.gr_group)))
-			return -EFAULT;
-
-		if (psin->sin_family != AF_INET)
-			return -EINVAL;
-
-		memset(&mreq, 0, sizeof(mreq));
-		mreq.imr_multiaddr = psin->sin_addr;
-		mreq.imr_ifindex = greq.gr_interface;
-
-		rtnl_lock();
-		lock_sock(sk);
-		if (optname == MCAST_JOIN_GROUP)
-			err = ip_mc_join_group(sk, &mreq);
-		else
-			err = ip_mc_leave_group(sk, &mreq);
-		release_sock(sk);
-		rtnl_unlock();
-		return err;
-	}
+		return compat_ip_mcast_join_leave(sk, optname, optval, optlen);
 	case MCAST_JOIN_SOURCE_GROUP:
 	case MCAST_LEAVE_SOURCE_GROUP:
 	case MCAST_BLOCK_SOURCE:
-- 
2.27.0

