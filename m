Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C30CD7970B6
	for <lists.bridge@lfdr.de>; Thu,  7 Sep 2023 10:23:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B1E782245;
	Thu,  7 Sep 2023 08:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B1E782245
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nm2WCktPPGdg; Thu,  7 Sep 2023 08:23:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 934AB8224A;
	Thu,  7 Sep 2023 08:23:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 934AB8224A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4595EC008C;
	Thu,  7 Sep 2023 08:23:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B048BC0032
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 09:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 766D04158A
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 09:54:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 766D04158A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eePcybxmodFL for <bridge@lists.linux-foundation.org>;
 Wed, 16 Aug 2023 09:54:36 +0000 (UTC)
X-Greylist: delayed 1187 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 16 Aug 2023 09:54:35 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC2FB40469
Received: from dggsgout11.his.huawei.com (dggsgout11.his.huawei.com
 [45.249.212.51])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC2FB40469
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 09:54:35 +0000 (UTC)
Received: from mail02.huawei.com (unknown [172.30.67.169])
 by dggsgout11.his.huawei.com (SkyGuard) with ESMTP id 4RQjhC1Zcfz4f3mVp
 for <bridge@lists.linux-foundation.org>; Wed, 16 Aug 2023 17:36:43 +0800 (CST)
Received: from vm-fedora-38.huawei.com (unknown [10.67.174.164])
 by APP3 (Coremail) with SMTP id _Ch0CgCHXcWmmNxkidopAw--.9644S2;
 Wed, 16 Aug 2023 17:36:41 +0800 (CST)
From: "GONG, Ruiqi" <gongruiqi@huaweicloud.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>,
 Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 16 Aug 2023 17:34:43 +0800
Message-ID: <20230816093443.1460204-1-gongruiqi@huaweicloud.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _Ch0CgCHXcWmmNxkidopAw--.9644S2
X-Coremail-Antispam: 1UD129KBjvJXoWxWFW7tr47ZFyDur15WFy7GFg_yoW5Gr48pF
 yjka4qyrWUtay2grW7tay7ZF4avws5Gr17JrWxG34FyF90yay7WrWxKry5KFyq9rZ5uFsx
 ArWftry8KFZ7taUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUkYb4IE77IF4wAFF20E14v26ryj6rWUM7CY07I20VC2zVCF04k2
 6cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4
 vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7Cj
 xVAFwI0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I
 0E14v26rxl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40E
 x7xfMcIj6xIIjxv20xvE14v26r1Y6r17McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x
 0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lFIxGxcIEc7CjxVA2Y2ka0xkIwI1l42xK82IY
 c2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s
 026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF
 0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0x
 vE42xK8VAvwI8IcIk0rVW3JVWrJr1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280
 aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU1rMa5UUUUU==
X-CM-SenderInfo: pjrqw2pxltxq5kxd4v5lfo033gof0z/
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 07 Sep 2023 08:23:15 +0000
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, gongruiqi1@huawei.com
Subject: [Bridge] [PATCH net-next v2] netfilter: ebtables: replace
	zero-length array members
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

From: "GONG, Ruiqi" <gongruiqi1@huawei.com>

As suggested by Kees[1], replace the old-style 0-element array members
of multiple structs in ebtables.h with modern C99 flexible array.

[1]: https://lore.kernel.org/all/5E8E0F9C-EE3F-4B0D-B827-DC47397E2A4A@kernel.org/

Link: https://github.com/KSPP/linux/issues/21
Signed-off-by: GONG, Ruiqi <gongruiqi1@huawei.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---

v2: designate to net-next; cc more netdev maintainers

 include/uapi/linux/netfilter_bridge/ebtables.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/uapi/linux/netfilter_bridge/ebtables.h b/include/uapi/linux/netfilter_bridge/ebtables.h
index b0caad82b693..673b00df162c 100644
--- a/include/uapi/linux/netfilter_bridge/ebtables.h
+++ b/include/uapi/linux/netfilter_bridge/ebtables.h
@@ -87,7 +87,7 @@ struct ebt_entries {
 	/* nr. of entries */
 	unsigned int nentries;
 	/* entry list */
-	char data[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
+	char data[] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
 };
 
 /* used for the bitmask of struct ebt_entry */
@@ -129,7 +129,7 @@ struct ebt_entry_match {
 	} u;
 	/* size of data */
 	unsigned int match_size;
-	unsigned char data[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
+	unsigned char data[] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
 };
 
 struct ebt_entry_watcher {
@@ -142,7 +142,7 @@ struct ebt_entry_watcher {
 	} u;
 	/* size of data */
 	unsigned int watcher_size;
-	unsigned char data[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
+	unsigned char data[] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
 };
 
 struct ebt_entry_target {
@@ -155,7 +155,7 @@ struct ebt_entry_target {
 	} u;
 	/* size of data */
 	unsigned int target_size;
-	unsigned char data[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
+	unsigned char data[] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
 };
 
 #define EBT_STANDARD_TARGET "standard"
@@ -190,7 +190,7 @@ struct ebt_entry {
 		/* sizeof ebt_entry + matches + watchers + target */
 		unsigned int next_offset;
 	);
-	unsigned char elems[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
+	unsigned char elems[] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
 };
 
 static __inline__ struct ebt_entry_target *
-- 
2.41.0

