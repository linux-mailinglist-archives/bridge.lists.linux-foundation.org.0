Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADD97697D9
	for <lists.bridge@lfdr.de>; Mon, 31 Jul 2023 15:38:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B9F6440BA2;
	Mon, 31 Jul 2023 13:38:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9F6440BA2
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=FX60aiiY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MlTb7185OwMF; Mon, 31 Jul 2023 13:38:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BB60940BEA;
	Mon, 31 Jul 2023 13:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB60940BEA
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED774C0DE2;
	Mon, 31 Jul 2023 13:38:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F965C0032
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D256481DF4
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D256481DF4
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=FX60aiiY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rI_wzdEkpH4D for <bridge@lists.linux-foundation.org>;
 Mon, 31 Jul 2023 07:17:59 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 919F981DEF
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 07:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 919F981DEF
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-3177f520802so2711369f8f.1
 for <bridge@lists.linux-foundation.org>; Mon, 31 Jul 2023 00:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690787878; x=1691392678;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=q2sRNbI2azaNM3epQYqeDbNNvVsnx+uOoBBxcjhRKfE=;
 b=FX60aiiY2KctEUh+j9yuK0cGnmKW2WpFZ3k1hVMZjIYTseBraxngepIWNvfcXGsPq1
 7xSVdY+8zc9yIZ57nKdT+hlUE0Ql178jQsRiH723XYn4HhHTr/pv49QmaTcNQ2XsUNAi
 PWzt+UqFr/sg0NpYqkGyiJNK7oFd9qBYvtgDfg+keM7SyoPlJi+mcwnnV0qqy8UUXXH+
 yEQM7BNRR98OhKiErQTxzAomz+aqzdV0nWU9PRrMuhWCCwSQ75cIObdPL85tLs8lZ4Tp
 84iwFiXBPFqH6x90lqRFXFaxycKbeNqBugndgd7V/GFzGnSbrjoxW1nQKlMiaVkRQI3W
 1DjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690787878; x=1691392678;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=q2sRNbI2azaNM3epQYqeDbNNvVsnx+uOoBBxcjhRKfE=;
 b=S/vt2B6lBPmpcTQ3ForcsK06YRsvixCKs4btQ6Fk88t8SQgpCIw+0EDrxyOtHtVlqi
 1mDyDEpTg61anyj/YAAUvMszZOUyw73SrEYsCX/Df6CS9e+stpQqGRrBguqtIgYGgWUr
 /yabNxlvJTAYYhwduaXLUCVqBxDryu2qQnNk7J4WhdNH+/YPc5zM49zpwxGDi7EU2j+c
 GCPE0C/qB8axJTjROWB1ZBEzIuYwdR/zr2sYNcdpup322O4uG7T7dWjZ2vCxslA9xo5f
 SG3wyJhDghwGSdvko6glX46A4ytv0yFDc2FDGBThJTdSdmd3cptNF+KHG/nzwF3Uy8OU
 yuCQ==
X-Gm-Message-State: ABy/qLaJS3eyrrjEdMdCeobgqNd9cTfE5OOfKGWd3BiZXN3VAwh0vkxF
 jpVnYEKnyK4Rcx8YphlpbSlb+cIKFtoPQw4r
X-Google-Smtp-Source: APBJJlGu0nMEMnREkxmuP9HbttYHTkOQMIO/9DuZ+oCLZJRAJKvQMp2PbLtUuafN9hLtmhCbZ6/OJw==
X-Received: by 2002:a5d:60c1:0:b0:313:e88d:e6d3 with SMTP id
 x1-20020a5d60c1000000b00313e88de6d3mr10154506wrt.14.1690787877583; 
 Mon, 31 Jul 2023 00:17:57 -0700 (PDT)
Received: from localhost ([165.225.194.214]) by smtp.gmail.com with ESMTPSA id
 k1-20020adff5c1000000b00313de682eb3sm12164837wrp.65.2023.07.31.00.17.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 00:17:57 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Mon, 31 Jul 2023 09:17:28 +0200
Message-Id: <20230731071728.3493794-15-j.granados@samsung.com>
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
 Jani Nikula <jani.nikula@linux.intel.com>, Wenjia Zhang <wenjia@linux.ibm.com>,
 Simon Horman <horms@verge.net.au>, linux-hams@vger.kernel.org,
 mptcp@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Iurii Zaikin <yzaikin@google.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, "David S. Miller" <davem@davemloft.net>,
 netfilter-devel@vger.kernel.org, Sven Schnelle <svens@linux.ibm.com>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 Karsten Graul <kgraul@linux.ibm.com>
Subject: [Bridge] [PATCH v2 14/14] sysctl: Use ctl_table_size as stopping
	criteria for list macro
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

This is a preparation commit to make it easy to remove the sentinel
elements (empty end markers) from the ctl_table arrays. It both allows
the systematic removal of the sentinels and adds the ctl_table_size
variable to the stopping criteria of the list_for_each_table_entry macro
that traverses all ctl_table arrays. Once all the sentinels are removed
by subsequent commits, ctl_table_size will become the only stopping
criteria in the macro. We don't actually remove any elements in this
commit, but it sets things up to for the removal process to take place.

By adding header->ctl_table_size as an additional stopping criteria for
the list_for_each_table_entry macro, it will execute until it finds an
"empty" ->procname or until the size runs out. Therefore if a ctl_table
array with a sentinel is passed its size will be too big (by one
element) but it will stop on the sentinel. On the other hand, if the
ctl_table array without a sentinel is passed its size will be just write
and there will be no need for a sentinel.

Signed-off-by: Joel Granados <j.granados@samsung.com>
Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
---
 fs/proc/proc_sysctl.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/proc/proc_sysctl.c b/fs/proc/proc_sysctl.c
index 817bc51c58d8..504e847c2a3a 100644
--- a/fs/proc/proc_sysctl.c
+++ b/fs/proc/proc_sysctl.c
@@ -19,8 +19,9 @@
 #include <linux/kmemleak.h>
 #include "internal.h"
 
-#define list_for_each_table_entry(entry, header) \
-	for ((entry) = (header->ctl_table); (entry)->procname; (entry)++)
+#define list_for_each_table_entry(entry, header)	\
+	entry = header->ctl_table;			\
+	for (size_t i = 0 ; i < header->ctl_table_size && entry->procname; ++i, entry++)
 
 static const struct dentry_operations proc_sys_dentry_operations;
 static const struct file_operations proc_sys_file_operations;
-- 
2.30.2

