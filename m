Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B9B161D25
	for <lists.bridge@lfdr.de>; Mon, 17 Feb 2020 23:06:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A074320475;
	Mon, 17 Feb 2020 22:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wzij69Mt9wym; Mon, 17 Feb 2020 22:06:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id C239A2047F;
	Mon, 17 Feb 2020 22:06:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 844E7C013E;
	Mon, 17 Feb 2020 22:06:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E676EC013E
 for <bridge@lists.linux-foundation.org>; Mon, 17 Feb 2020 22:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D0638857D8
 for <bridge@lists.linux-foundation.org>; Mon, 17 Feb 2020 22:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ogPJhWCrWFOi for <bridge@lists.linux-foundation.org>;
 Mon, 17 Feb 2020 22:06:32 +0000 (UTC)
X-Greylist: delayed 00:24:48 by SQLgrey-1.7.6
Received: from gateway32.websitewelcome.com (gateway32.websitewelcome.com
 [192.185.145.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CC994857D5
 for <bridge@lists.linux-foundation.org>; Mon, 17 Feb 2020 22:06:32 +0000 (UTC)
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id 5A31D3426A
 for <bridge@lists.linux-foundation.org>; Mon, 17 Feb 2020 15:41:43 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 3o99jr2RjvBMd3o99jofB2; Mon, 17 Feb 2020 15:41:43 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8exBLdInKXUzJxq+ZuAOxKExTTscVDb1+bUsC6sGG8g=; b=HgN+9rsp3fFCj0fJUhjufn2/l7
 VUbRynRSy0CAxMQY1KjfA6V0LtIYanqWDAcf8yWC0eCA4k6KrY0nHZXuU/xZc13RL7fkTFbpblB9Z
 oaw0tEO4v2iCjRJSKPg7FVGlJmBpyn54igDPdhEvFipu6bdIypiYf2GXKs6TVHrC6ONCP579pTBsD
 k6d1SyEurDwqrzaiQ1aIEJb6Ekg+EqhR2woGKuNkFF0iOLmuHVv8PsANnufrSfgeIw47Z2AM++650
 z398+1TN/CWW5k09Ld5ZremaZw19BRvbwk+wOE0VJUTDklJDkNpaX6tXERWgdq/NvwlKLQ1s2lOvv
 y6pqb2rA==;
Received: from [200.68.140.26] (port=12036 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j3o97-001HA1-II; Mon, 17 Feb 2020 15:41:41 -0600
Date: Mon, 17 Feb 2020 15:44:23 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>,
 Roopa Prabhu <roopa@cumulusnetworks.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20200217214423.GA15008@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.linux-foundation.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.26
X-Source-L: No
X-Exim-ID: 1j3o97-001HA1-II
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.26]:12036
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 20
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 coreteam@netfilter.org, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH][next] netfilter: ebtables: Replace zero-length
 array with flexible-array member
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

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 net/bridge/netfilter/ebtables.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/bridge/netfilter/ebtables.c b/net/bridge/netfilter/ebtables.c
index e1256e03a9a8..78db58c7aec2 100644
--- a/net/bridge/netfilter/ebtables.c
+++ b/net/bridge/netfilter/ebtables.c
@@ -1561,7 +1561,7 @@ struct compat_ebt_entry_mwt {
 		compat_uptr_t ptr;
 	} u;
 	compat_uint_t match_size;
-	compat_uint_t data[0] __attribute__ ((aligned (__alignof__(struct compat_ebt_replace))));
+	compat_uint_t data[] __aligned(__alignof__(struct compat_ebt_replace));
 };
 
 /* account for possible padding between match_size and ->data */
-- 
2.25.0

