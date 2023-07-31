Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD807697CD
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 15:38:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76B9C610DD;
	Mon, 31 Jul 2023 13:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76B9C610DD
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=ZKQeQX5T
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AHdDGVk8zD7B; Mon, 31 Jul 2023 13:38:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 406C8610E0;
	Mon, 31 Jul 2023 13:38:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 406C8610E0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63EFDC0DE2;
	Mon, 31 Jul 2023 13:38:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5735BC0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2335940970
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2335940970
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=ZKQeQX5T
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wGDK-MVlGkXj for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 07:17:37 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88F9140959
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88F9140959
Received: by mail-lj1-x230.google.com with SMTP id
 38308e7fff4ca-2b974031aeaso61184371fa.0
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 00:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690787855; x=1691392655;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=akvTsUNH5BR7B9r/hWx35oPtJ0e++GeR0ZkfT+4F3fU=;
 b=ZKQeQX5TR6QzJyvC+jY3QinjsFbGR63r2icZC6hzaVo+s0UZo1N65kjwkZmKHZrkKE
 sSYOktpPLbGgM7aqBZ0b1rqN2BxrDUJEH2hSAwmCepD/Rnl20eMrMex+h6LkhwAlRRxP
 4VAezr+wMiqBBh/ks6rfYJ6F6OceClwfqnKIoljP8I2C/BrMALnLZe0aI9bB7s+wQLhQ
 ENxpNvWIYFyncIGwwtoPq84D6YspqNt05jaf84ECX5PKzi8xKkI+be3IbzdkaH1oKEeO
 oldlnFQnhBVNJ8w02YtPED3gSrPaCnL/RBpOScGa/8v4QhijcBrs6CpRh28yzNB0FWOB
 JOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690787855; x=1691392655;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=akvTsUNH5BR7B9r/hWx35oPtJ0e++GeR0ZkfT+4F3fU=;
 b=IeyP7DJ2v3d/8tTdbPuQLRbF68s367VojvAYebVpshlyDhUFFILkac7KkbLNlVdvKI
 GqRs0vDbS71+222pag48Nh6I21wCbMeiiM2tyNsO8eA8/oFsgv5P6bxxZtnDbjSkwLnH
 T4HudtTYXpJzieFdLBmxkhoivf49oay6OCd2jAVlxhBOwS0LcWLfUN/028b6E8Jf/ekS
 3XmZGRJvYuzrsLZ+tDvvN01VLsDjVZOwpbnLt63+DPejPAl2Sl8qE5YgCNNL01kfzScX
 hr8VKsLeeo0m1+fYk4u517oSdPg8hsoQnCgbjB+rOpoenrqHYn/Q56NisyDjG7cuOfQl
 fQIg==
X-Gm-Message-State: ABy/qLZatZiJHz/lMBKAY/H+nZNM+K4IykUBNkwA7dI0Eg06c02jq81d
 Uh776e1A497arp6xr9CS4o4=
X-Google-Smtp-Source: APBJJlFF4kKT7juN18QvvJPucpMXcrmLWnn3HtokESNRx9okAVLCBri/cLwdzx5mg4xeb7fvNIXGsQ==
X-Received: by 2002:a2e:7218:0:b0:2b9:b4eb:c39c with SMTP id
 n24-20020a2e7218000000b002b9b4ebc39cmr5234236ljc.8.1690787855231; 
 Mon, 31 Jul 2023 00:17:35 -0700 (PDT)
Received: from localhost ([165.225.194.214]) by smtp.gmail.com with ESMTPSA id
 n5-20020a7bc5c5000000b003fbe4cecc3bsm13472652wmk.16.2023.07.31.00.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 00:17:34 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Mon, 31 Jul 2023 09:17:17 +0200
Message-Id: <20230731071728.3493794-4-j.granados@samsung.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230731071728.3493794-1-j.granados@samsung.com>
References: <20230731071728.3493794-1-j.granados@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 31 Jul 2023 13:38:30 +0000
Cc: Joel Granados <j.granados@samsung.com>, Wen Gu <guwen@linux.alibaba.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Alexander Aring <alex.aring@gmail.com>, linux-sctp@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Jan Karcher <jaka@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joerg Reuter <jreuter@yaina.de>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Kees Cook <keescook@chromium.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Iurii Zaikin <yzaikin@google.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org,
 Sven Schnelle <svens@linux.ibm.com>, "D. Wythe" <alibuda@linux.alibaba.com>,
 linux-fsdevel@vger.kernel.org, Matthieu Baerts <matthieu.baerts@tessares.net>,
 linux-wpan@vger.kernel.org, Karsten Graul <kgraul@linux.ibm.com>
Subject: [Bridge] [PATCH v2 03/14] sysctl: Add ctl_table_size to
	ctl_table_header
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

The new ctl_table_size element will hold the size of the ctl_table
arrays contained in the ctl_table_header. This value should eventually
be passed by the callers to the sysctl register infrastructure. And
while this commit introduces the variable, it does not set nor use it
because that requires case by case considerations for each caller.

It provides two important things: (1) A place to put the
result of the ctl_table array calculation when it gets introduced for
each caller. And (2) the size that will be used as the additional
stopping criteria in the list_for_each_table_entry macro (to be added
when all the callers are migrated)

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 include/linux/sysctl.h | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/include/linux/sysctl.h b/include/linux/sysctl.h
index 59d451f455bf..33252ad58ebe 100644
--- a/include/linux/sysctl.h
+++ b/include/linux/sysctl.h
@@ -159,12 +159,22 @@ struct ctl_node {
 	struct ctl_table_header *header;
 };
 
-/* struct ctl_table_header is used to maintain dynamic lists of
-   struct ctl_table trees. */
+/**
+ * struct ctl_table_header - maintains dynamic lists of struct ctl_table trees
+ * @ctl_table: pointer to the first element in ctl_table array
+ * @ctl_table_size: number of elements pointed by @ctl_table
+ * @used: The entry will never be touched when equal to 0.
+ * @count: Upped every time something is added to @inodes and downed every time
+ *         something is removed from inodes
+ * @nreg: When nreg drops to 0 the ctl_table_header will be unregistered.
+ * @rcu: Delays the freeing of the inode. Introduced with "unfuck proc_sysctl ->d_compare()"
+ *
+ */
 struct ctl_table_header {
 	union {
 		struct {
 			struct ctl_table *ctl_table;
+			int ctl_table_size;
 			int used;
 			int count;
 			int nreg;
-- 
2.30.2

