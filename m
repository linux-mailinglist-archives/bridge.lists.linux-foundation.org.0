Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695147757DA
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 12:50:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B08A0414C9;
	Wed,  9 Aug 2023 10:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B08A0414C9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=DIpNAVvq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ujCa4rcOOYiG; Wed,  9 Aug 2023 10:50:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 45969414C4;
	Wed,  9 Aug 2023 10:50:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45969414C4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED2B8C0DD4;
	Wed,  9 Aug 2023 10:50:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3F2CC0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF67682F19
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF67682F19
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=DIpNAVvq
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id srKm2P2dj8gs for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 10:50:16 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61CFC82EB6
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61CFC82EB6
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-3178dd81ac4so5452191f8f.3
 for <bridge@lists.linux-foundation.org>; Wed, 09 Aug 2023 03:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691578214; x=1692183014;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=akvTsUNH5BR7B9r/hWx35oPtJ0e++GeR0ZkfT+4F3fU=;
 b=DIpNAVvqJjecgmHxhh/MMRMB6JQ0cQ5/pMDaa7WYGiGSlLNo2GueNm8uCnf8c4bLIg
 Jh2/V9eDbEdRC729m+hu4ww5z5FaeN/b5Orkwci/i2SVrBx/prvWFJ+nUTp5TAka6ZWQ
 VdOImPhuX9gff7/faPKV7lUbtH5Wa6nzUdbat0ktYNe2z5jkuFWTIQveT6P6ug2Ozlg4
 m+3pGIbuZXaQv49t+IPpm6LcHq1/TfBEv4sUH9Kf2GTcYAwaLuI52sbUOA/8f8TWiE7g
 8uWZnDUw085zl7p2xGYwkNfV+fRHfDxGBsZSKhPQwpO/guRzFqg8/M9IkUWjaPTZxUpR
 WEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691578214; x=1692183014;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=akvTsUNH5BR7B9r/hWx35oPtJ0e++GeR0ZkfT+4F3fU=;
 b=XNkS+WJSGNzc+rpAFIhbyh4zYKdfQjHyxic9HYBe+OYyv5Vqm03nOjTm986l/114xJ
 v9u+JhA4RSdJkoiY6KVqz8c+6VmDLR0a2shiuCD/gId6iTVWZpl1mp0vskC8uPEtGq4k
 eMbR5gys38vfml726mUA3/7GrJrFWybwD7qSEG4R+C0rSRQEUdCJSU1U1oFasWg1I9Jx
 IwoNpz5SuirJoM7fE6czeZplDM+0A8WLYNSvU4r2W1rE5DZj6Pk2aFbVTT1fCR2ENErL
 to/pngSUSfXNnccQeZCwyaDbPQGK1M0pQbhkdxpFlu9BHlMHwkyxHdQDhmRcmOELugoQ
 it8w==
X-Gm-Message-State: AOJu0Yyzni5bdtw38S/nBOkoHmuLoeglap1BA/LYjT2OSYENB4bWGzNX
 TNM6ZXpF6059Tyjp1P7q89c=
X-Google-Smtp-Source: AGHT+IFXthxR30RQgpx73Zfj1dpZ+KWe6tVohuHxQB14UCF1BcuOVclJYzFEHCpt2sceIQmz/La4Nw==
X-Received: by 2002:adf:ec85:0:b0:314:15b7:1fb5 with SMTP id
 z5-20020adfec85000000b0031415b71fb5mr1561622wrn.34.1691578214394; 
 Wed, 09 Aug 2023 03:50:14 -0700 (PDT)
Received: from localhost ([165.225.194.193]) by smtp.gmail.com with ESMTPSA id
 b12-20020a05600010cc00b0031432f1528csm16319804wrx.45.2023.08.09.03.50.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 03:50:13 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Wed,  9 Aug 2023 12:49:55 +0200
Message-Id: <20230809105006.1198165-4-j.granados@samsung.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230809105006.1198165-1-j.granados@samsung.com>
References: <20230809105006.1198165-1-j.granados@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Joel Granados <j.granados@samsung.com>,
 Alexander Aring <alex.aring@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 linux-sctp@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Mat Martineau <martineau@kernel.org>, Will Deacon <will@kernel.org>,
 Jan Karcher <jaka@linux.ibm.com>, Stefan Schmidt <stefan@datenfreihafen.org>,
 Steffen Klassert <steffen.klassert@secunet.com>, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Xin Long <lucien.xin@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-rdma@vger.kernel.org,
 Tony Lu <tonylu@linux.alibaba.com>, bridge@lists.linux-foundation.org,
 willy@infradead.org, Jozsef Kadlecsik <kadlec@netfilter.org>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Iurii Zaikin <yzaikin@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Wen Gu <guwen@linux.alibaba.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Joerg Reuter <jreuter@yaina.de>, Sven Schnelle <svens@linux.ibm.com>,
 keescook@chromium.org, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, josh@joshtriplett.org,
 Wenjia Zhang <wenjia@linux.ibm.com>, Simon Horman <horms@verge.net.au>,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 mptcp@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Karsten Graul <kgraul@linux.ibm.com>,
 netfilter-devel@vger.kernel.org, Pablo Neira Ayuso <pablo@netfilter.org>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v3 03/14] sysctl: Add ctl_table_size to
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

