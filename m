Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C70D41B7EB
	for <lists.bridge@lfdr.de>; Tue, 28 Sep 2021 22:02:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD40F82422;
	Tue, 28 Sep 2021 20:02:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lha5a9mcPcNl; Tue, 28 Sep 2021 20:02:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2573A8299E;
	Tue, 28 Sep 2021 20:02:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E2576C0022;
	Tue, 28 Sep 2021 20:02:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 95B61C000D
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 20:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 844F48299E
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 20:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z97xr3MjmoGo for <bridge@lists.linux-foundation.org>;
 Tue, 28 Sep 2021 20:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D3AD882422
 for <bridge@lists.linux-foundation.org>; Tue, 28 Sep 2021 20:02:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 74A6D610E6;
 Tue, 28 Sep 2021 20:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632859365;
 bh=JUbEawgwP2c3g8ePRDbJDUMS5ioHTfLNboJDo0lgTFU=;
 h=Date:From:To:Cc:Subject:From;
 b=Ux5mxk8+u9s/JuBAUe8lOapvH73pC8IDGMANlVx6y8oPhvgbvBvHWer4TncIe4O5P
 zRAc9E+j11GMc534Us0lyChK0krofQdH61wQYT+tlB96ajEswJlW5LiB//1WTO2L5f
 OMdrtwjp0duaQIPR+qZIqgAi6Qa8l2np6wXwolZtpIwLuqrEayWPXVgfeSukyRPcND
 nY0jFdRZ4a8XxMmYjRaDR7p3FjeSk8z6pkePYifJt/My7UG/ldZJhgQVzS3VbSERG8
 OBVMvKrRhltAQVgX/vRxXj76KXsBAURq7425SEWqtcbmF2tEpoF58LKK2rfiAYS5sI
 9KKrJqsNYsFsw==
Date: Tue, 28 Sep 2021 15:06:47 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>,
 Florian Westphal <fw@strlen.de>, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210928200647.GA266402@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 coreteam@netfilter.org, netfilter-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: [Bridge] [PATCH][net-next] netfilter: ebtables: use array_size()
 helper in copy_{from, to}_user()
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

Use array_size() helper instead of the open-coded version in
copy_{from,to}_user().  These sorts of multiplication factors
need to be wrapped in array_size().

Link: https://github.com/KSPP/linux/issues/160
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 net/bridge/netfilter/ebtables.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/net/bridge/netfilter/ebtables.c b/net/bridge/netfilter/ebtables.c
index 83d1798dfbb4..32fa05ec4a6d 100644
--- a/net/bridge/netfilter/ebtables.c
+++ b/net/bridge/netfilter/ebtables.c
@@ -1071,7 +1071,7 @@ static int do_replace_finish(struct net *net, struct ebt_replace *repl,
 	 */
 	if (repl->num_counters &&
 	   copy_to_user(repl->counters, counterstmp,
-	   repl->num_counters * sizeof(struct ebt_counter))) {
+	   array_size(repl->num_counters, sizeof(struct ebt_counter)))) {
 		/* Silent error, can't fail, new table is already in place */
 		net_warn_ratelimited("ebtables: counters copy to user failed while replacing table\n");
 	}
@@ -1399,7 +1399,8 @@ static int do_update_counters(struct net *net, const char *name,
 		goto unlock_mutex;
 	}
 
-	if (copy_from_user(tmp, counters, num_counters * sizeof(*counters))) {
+	if (copy_from_user(tmp, counters,
+			   array_size(num_counters, sizeof(*counters)))) {
 		ret = -EFAULT;
 		goto unlock_mutex;
 	}
@@ -1532,7 +1533,7 @@ static int copy_counters_to_user(struct ebt_table *t,
 	write_unlock_bh(&t->lock);
 
 	if (copy_to_user(user, counterstmp,
-	   nentries * sizeof(struct ebt_counter)))
+	    array_size(nentries, sizeof(struct ebt_counter))))
 		ret = -EFAULT;
 	vfree(counterstmp);
 	return ret;
-- 
2.27.0

