Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 815D7AB572
	for <lists.bridge@lfdr.de>; Fri,  6 Sep 2019 12:10:26 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 558F81E94;
	Fri,  6 Sep 2019 10:10:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD6211E81
	for <bridge@lists.linux-foundation.org>;
	Fri,  6 Sep 2019 09:53:18 +0000 (UTC)
X-Greylist: delayed 00:06:01 by SQLgrey-1.7.6
Received: from proxy.6wind.com (host.76.145.23.62.rev.coltfrance.com
	[62.23.145.76])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2E5AF7DB
	for <bridge@lists.linux-foundation.org>;
	Fri,  6 Sep 2019 09:53:18 +0000 (UTC)
Received: from bretzel.dev.6wind.com (unknown [10.16.0.19])
	by proxy.6wind.com (Postfix) with ESMTP id CA79431418D;
	Fri,  6 Sep 2019 11:47:15 +0200 (CEST)
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
To: davem@davemloft.net
Date: Fri,  6 Sep 2019 11:47:02 +0200
Message-Id: <20190906094703.21300-1-nicolas.dichtel@6wind.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=2.2 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS,
	RDNS_DYNAMIC,TO_NO_BRKTS_DYNIP autolearn=no version=3.3.1
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	Nicolas Dichtel <nicolas.dichtel@6wind.com>
Subject: [Bridge] [PATCH net v2] bridge/mdb: remove wrong use of NLM_F_MULTI
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

NLM_F_MULTI must be used only when a NLMSG_DONE message is sent at the end.
In fact, NLMSG_DONE is sent only at the end of a dump.

Libraries like libnl will wait forever for NLMSG_DONE.

Fixes: 949f1e39a617 ("bridge: mdb: notify on router port add and del")
CC: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Signed-off-by: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---

v2:
  add netdev and bridge ml :D
  remove Satish Ashok <sashok@cumulusnetworks.com> (its mail bounces)

 net/bridge/br_mdb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index bf6acd34234d..63f9c08625f0 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -437,7 +437,7 @@ static int nlmsg_populate_rtr_fill(struct sk_buff *skb,
 	struct nlmsghdr *nlh;
 	struct nlattr *nest;
 
-	nlh = nlmsg_put(skb, pid, seq, type, sizeof(*bpm), NLM_F_MULTI);
+	nlh = nlmsg_put(skb, pid, seq, type, sizeof(*bpm), 0);
 	if (!nlh)
 		return -EMSGSIZE;
 
-- 
2.21.0

