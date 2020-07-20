Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7079722CD44
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6739D88B6C;
	Fri, 24 Jul 2020 18:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U5Z8mauYYKWy; Fri, 24 Jul 2020 18:23:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A799888B6B;
	Fri, 24 Jul 2020 18:22:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7B5AEC004E;
	Fri, 24 Jul 2020 18:22:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 52413C016F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3920E2049F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lmc6UruIzk5g for <bridge@lists.linux-foundation.org>;
 Mon, 20 Jul 2020 12:48:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 93C4B2042B
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 12:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=sgYWyMfm87Lwp87OiHiXBGeztL7pp9vtxgWCGygwlyQ=; b=ohlAv+VYwEBD8MZ2GI6LDCZyTj
 +2dygLPuHwB4q01kC05RSq3Dr+sPFXczHgi0nOgfC+b4SmHYTZerQFRXvPa1y1h6Sb7yBJMpgPxPj
 bIHqMKdY+yDXM0FeLNQFGLH3ZmDZd56XNZ3dvQL19CJPxySpKLErEfzKmf8uwwXZkotGjvEn82DsQ
 Rlao5M7ezXGmItEie2BE4Bm1hJ+YyoD/PaGZSNZTz+x5KM+oXsP+ygCRk2ia3dvcXL43IdfFFl00j
 Is5pnhTz2uV8XvZlYuMUCO8iRi6faULVlv2d0g7DJVpQ/ayBLUp13B2uyjGIPQdVR/lCd8rsoQmNG
 KqzoRfXQ==;
Received: from [2001:4bb8:105:4a81:2a8f:15b1:2c3:7be7] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxVD3-0004XQ-2H; Mon, 20 Jul 2020 12:47:58 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Mon, 20 Jul 2020 14:47:19 +0200
Message-Id: <20200720124737.118617-7-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200720124737.118617-1-hch@lst.de>
References: <20200720124737.118617-1-hch@lst.de>
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
Subject: [Bridge] [PATCH 06/24] net: switch sock_set_timeout to sockptr_t
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

Pass a sockptr_t to prepare for set_fs-less handling of the kernel
pointer from bpf-cgroup.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/core/sock.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/net/core/sock.c b/net/core/sock.c
index bd20fc5cce0850..d45bb1c2c36abf 100644
--- a/net/core/sock.c
+++ b/net/core/sock.c
@@ -360,7 +360,8 @@ static int sock_get_timeout(long timeo, void *optval, bool old_timeval)
 	return sizeof(tv);
 }
 
-static int sock_set_timeout(long *timeo_p, char __user *optval, int optlen, bool old_timeval)
+static int sock_set_timeout(long *timeo_p, sockptr_t optval, int optlen,
+			    bool old_timeval)
 {
 	struct __kernel_sock_timeval tv;
 
@@ -370,7 +371,7 @@ static int sock_set_timeout(long *timeo_p, char __user *optval, int optlen, bool
 		if (optlen < sizeof(tv32))
 			return -EINVAL;
 
-		if (copy_from_user(&tv32, optval, sizeof(tv32)))
+		if (copy_from_sockptr(&tv32, optval, sizeof(tv32)))
 			return -EFAULT;
 		tv.tv_sec = tv32.tv_sec;
 		tv.tv_usec = tv32.tv_usec;
@@ -379,14 +380,14 @@ static int sock_set_timeout(long *timeo_p, char __user *optval, int optlen, bool
 
 		if (optlen < sizeof(old_tv))
 			return -EINVAL;
-		if (copy_from_user(&old_tv, optval, sizeof(old_tv)))
+		if (copy_from_sockptr(&old_tv, optval, sizeof(old_tv)))
 			return -EFAULT;
 		tv.tv_sec = old_tv.tv_sec;
 		tv.tv_usec = old_tv.tv_usec;
 	} else {
 		if (optlen < sizeof(tv))
 			return -EINVAL;
-		if (copy_from_user(&tv, optval, sizeof(tv)))
+		if (copy_from_sockptr(&tv, optval, sizeof(tv)))
 			return -EFAULT;
 	}
 	if (tv.tv_usec < 0 || tv.tv_usec >= USEC_PER_SEC)
@@ -1050,12 +1051,14 @@ int sock_setsockopt(struct socket *sock, int level, int optname,
 
 	case SO_RCVTIMEO_OLD:
 	case SO_RCVTIMEO_NEW:
-		ret = sock_set_timeout(&sk->sk_rcvtimeo, optval, optlen, optname == SO_RCVTIMEO_OLD);
+		ret = sock_set_timeout(&sk->sk_rcvtimeo, USER_SOCKPTR(optval),
+				       optlen, optname == SO_RCVTIMEO_OLD);
 		break;
 
 	case SO_SNDTIMEO_OLD:
 	case SO_SNDTIMEO_NEW:
-		ret = sock_set_timeout(&sk->sk_sndtimeo, optval, optlen, optname == SO_SNDTIMEO_OLD);
+		ret = sock_set_timeout(&sk->sk_sndtimeo, USER_SOCKPTR(optval),
+				       optlen, optname == SO_SNDTIMEO_OLD);
 		break;
 
 	case SO_ATTACH_FILTER: {
-- 
2.27.0

