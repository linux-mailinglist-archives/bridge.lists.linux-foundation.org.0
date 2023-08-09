Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C857757F4
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 12:50:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BF58414BD;
	Wed,  9 Aug 2023 10:50:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BF58414BD
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=rOcCjLBI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o6XOHKb_s0N2; Wed,  9 Aug 2023 10:50:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2CB9D414E2;
	Wed,  9 Aug 2023 10:50:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CB9D414E2
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D2446C0DD4;
	Wed,  9 Aug 2023 10:50:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C0816C0DD6
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C93860FCE
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C93860FCE
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=rOcCjLBI
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wP5BxB9C5ktc for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 10:50:36 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7D1F60FD7
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7D1F60FD7
Received: by mail-lj1-x22e.google.com with SMTP id
 38308e7fff4ca-2b9d07a8d84so106771851fa.3
 for <bridge@lists.linux-foundation.org>; Wed, 09 Aug 2023 03:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691578233; x=1692183033;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5coRDrjBWUoHZlIcsYrUKshhaoM+GPSlsGMwisO1OVE=;
 b=rOcCjLBIeZiN/uKCqBn+ZnIy9GGjjsq5pNXvUnFAqmrNtJ4AytMROihb81KAsXmJ32
 Y7Yp5fm6fmP2fGjhIdvMngbMnPvBFVwYNsoQDzVYr9FtuJ64uVVnxbwI3PtEVxiTSLPO
 UZASCKd04coZGK/tilWlVhuwtgTUeqXcU5Bf1fIwNtI0/y8hj9Yc45yBrsHKfUpCcHDp
 kFJcIQAdfWb5ym4bbpJbP/lR3gwY0aaag9FOaZ3QviV/VCgx4QfmDZ1aluNctgg7Te0p
 lG6isVbiPFi0/xEfOVe2L4NzccRRq/tSsjLfJrDm7hubbYzVeX52y/inZs+Y2Yo9JzK3
 a3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691578233; x=1692183033;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5coRDrjBWUoHZlIcsYrUKshhaoM+GPSlsGMwisO1OVE=;
 b=HsP1Hndqy9qptQ+h6F/akP5LAmWhOgQT6sLXEM9eIQKde5q1zTwI3c9vo3x5Q5Nv8K
 5IBKmXOG+z07/wd6xvSIT6rXvprLKnAlo2eS0vvjrWZpSGlgY8TRHRtxDDBAcsgwhL+e
 UwS1YFJ39cohGsyxzE0JLbBAtkzxv8WfUokvt9wNIUVQuGmi7G07gUx8nsDR77QTqZCn
 FuXs3mz/PyDH6ARD3THIlXT5bNEAbC2qc0m/2g7PO9ESjoKGly4VDyP2GbRD5rolVC9K
 0dPjsOtPq15bux38n7ewCip0T+IDmq45UaUs/Ez+ucpW4B9BTzv5FM6gEC1X6Y5Kixse
 0LLA==
X-Gm-Message-State: AOJu0YyMbZk90R9DnWSLWL+yM+0/ZYD0LECCzvd/vKqLWwI7Me/lej6l
 PBRxq5qn+9w3Ok50m7VB2EI=
X-Google-Smtp-Source: AGHT+IHWRnSEDbitoHF/CBryJG+yHfCg7WXA65f2AROxn5cF5vjRFsYuV+TtdLC0fGabCK8Cr1cm6w==
X-Received: by 2002:a2e:2e04:0:b0:2b9:ac48:d7fe with SMTP id
 u4-20020a2e2e04000000b002b9ac48d7femr1633844lju.38.1691578233520; 
 Wed, 09 Aug 2023 03:50:33 -0700 (PDT)
Received: from localhost ([165.225.194.193]) by smtp.gmail.com with ESMTPSA id
 17-20020a05600c231100b003fc01495383sm1647099wmo.6.2023.08.09.03.50.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 03:50:33 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Wed,  9 Aug 2023 12:50:04 +0200
Message-Id: <20230809105006.1198165-13-j.granados@samsung.com>
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
Subject: [Bridge] [PATCH v3 12/14] vrf: Update to register_net_sysctl_sz
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

Move from register_net_sysctl to register_net_sysctl_sz and pass the
ARRAY_SIZE of the ctl_table array that was used to create the table
variable. We need to move to the new function in preparation for when we
change SIZE_MAX to ARRAY_SIZE() in the register_net_sysctl macro.
Failing to do so would erroneously allow ARRAY_SIZE() to be called on a
pointer. The actual change from SIZE_MAX to ARRAY_SIZE will take place
in subsequent commits.

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 drivers/net/vrf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/vrf.c b/drivers/net/vrf.c
index 6043e63b42f9..6801f15ac609 100644
--- a/drivers/net/vrf.c
+++ b/drivers/net/vrf.c
@@ -1979,7 +1979,8 @@ static int vrf_netns_init_sysctl(struct net *net, struct netns_vrf *nn_vrf)
 	/* init the extra1 parameter with the reference to current netns */
 	table[0].extra1 = net;
 
-	nn_vrf->ctl_hdr = register_net_sysctl(net, "net/vrf", table);
+	nn_vrf->ctl_hdr = register_net_sysctl_sz(net, "net/vrf", table,
+						 ARRAY_SIZE(vrf_table));
 	if (!nn_vrf->ctl_hdr) {
 		kfree(table);
 		return -ENOMEM;
-- 
2.30.2

