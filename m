Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9CC22CD69
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8683689200;
	Fri, 24 Jul 2020 18:22:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 72dYDCyCYbSH; Fri, 24 Jul 2020 18:22:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A539893B6;
	Fri, 24 Jul 2020 18:22:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8B322C004C;
	Fri, 24 Jul 2020 18:22:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A7F28C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 925E387612
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 06J5FIbhCcQ6 for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 06:09:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE4AC875DF
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 06:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=AjKHhDGZLqL4OuQUXI3ghPRn4d0K9eK+41+WmsKDw4s=; b=CNu8wX7/4AaScPiP+yKasX/Nuq
 00LHKTXAD3IquBRcEMSnRF8bNgMD1cvHh+U+oC9aYlopzyBcHDT20XOh1UxeZFqfjZgeBbGvE1wB6
 /V6nQUH0PdaU2g+5JOnd1u9l8C/s6uwbv4KhpIhdxBK8oLO0ZwY+sqyTh4ne0vagAIgh4N5VQBGx0
 JHE6q8bbDMTkx2eOaxshkvfo9rjtP0ncEN/z4VwN6Hb6/0xYri2cf1nNOzgptOsfvtMuA7wmNkOac
 QLJGCjm4BB8DbTIK1mpqQYiSCZNmMlsC+Vd1KrBSfphtSKPM32mRgHArgFrIC0MlfCF8txHO3F2DP
 u7/I0W5g==;
Received: from [2001:4bb8:18c:2acc:91df:aae8:fa3b:de9c] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyUPz-0003lF-6z; Thu, 23 Jul 2020 06:09:23 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 23 Jul 2020 08:08:52 +0200
Message-Id: <20200723060908.50081-11-hch@lst.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200723060908.50081-1-hch@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
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
Subject: [Bridge] [PATCH 10/26] netfilter: remove the unused user argument
	to do_update_counters
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/bridge/netfilter/ebtables.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/net/bridge/netfilter/ebtables.c b/net/bridge/netfilter/ebtables.c
index fe13108af1f542..12f8929667bf43 100644
--- a/net/bridge/netfilter/ebtables.c
+++ b/net/bridge/netfilter/ebtables.c
@@ -1242,9 +1242,8 @@ void ebt_unregister_table(struct net *net, struct ebt_table *table,
 
 /* userspace just supplied us with counters */
 static int do_update_counters(struct net *net, const char *name,
-				struct ebt_counter __user *counters,
-				unsigned int num_counters,
-				const void __user *user, unsigned int len)
+			      struct ebt_counter __user *counters,
+			      unsigned int num_counters, unsigned int len)
 {
 	int i, ret;
 	struct ebt_counter *tmp;
@@ -1299,7 +1298,7 @@ static int update_counters(struct net *net, const void __user *user,
 		return -EINVAL;
 
 	return do_update_counters(net, hlp.name, hlp.counters,
-				hlp.num_counters, user, len);
+				  hlp.num_counters, len);
 }
 
 static inline int ebt_obj_to_user(char __user *um, const char *_name,
@@ -2231,7 +2230,7 @@ static int compat_update_counters(struct net *net, void __user *user,
 		return update_counters(net, user, len);
 
 	return do_update_counters(net, hlp.name, compat_ptr(hlp.counters),
-					hlp.num_counters, user, len);
+				  hlp.num_counters, len);
 }
 
 static int compat_do_ebt_get_ctl(struct sock *sk, int cmd,
-- 
2.27.0

