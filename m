Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBC77757F9
	for <lists.bridge@lfdr.de>; Wed,  9 Aug 2023 12:50:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5FEF830E3;
	Wed,  9 Aug 2023 10:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5FEF830E3
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20221208 header.b=TX8khL8g
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H3FHpFW-SN0x; Wed,  9 Aug 2023 10:50:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5315183134;
	Wed,  9 Aug 2023 10:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5315183134
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F3FCC0DD4;
	Wed,  9 Aug 2023 10:50:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 100F6C0032
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E79AF418A7
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E79AF418A7
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=TX8khL8g
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q8Y0VRoPoFbc for <bridge@lists.linux-foundation.org>;
 Wed,  9 Aug 2023 10:50:37 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E63541893
 for <bridge@lists.linux-foundation.org>; Wed,  9 Aug 2023 10:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E63541893
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-3fe5eb84d8bso23116085e9.2
 for <bridge@lists.linux-foundation.org>; Wed, 09 Aug 2023 03:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691578235; x=1692183035;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5noSV5uL5R3dSrbr/R0oWH8ijMnn3jtlsPFspVagWKY=;
 b=TX8khL8g58MfSkvF/7dqspBoYmTEND8gsbbGwKCpvoBlJdYirB/frY3cUw6GS6+SHA
 DfP23JLSKjLvVDd6Y6bO3Tb3CU7DtRCNxdcPfv0/dLLVbTNS8nywKaCrcpghL3jSw/4i
 snyo098b2K+hvjhRkYb8awdmCwqLfG3x+L62mAtDznqfAw1ZGBiX+40XWVPAtoPCbf+g
 5Uxrm9xdM62+Q4csDS5gX23DV8HPo+vs/icc4hZk57D3nosZ46zn9sbBNsd/FcUukcm+
 j/MC/x/Wu8KlPCoks4UJfVZKxmwvH2daD4+6FjrR9xdEHKFru3ta1n2dBRsqqaqJ8IwC
 5Z0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691578235; x=1692183035;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5noSV5uL5R3dSrbr/R0oWH8ijMnn3jtlsPFspVagWKY=;
 b=k6Qvzy320t+fbtpjo0YK9odpReo47NwstFfNW10qj4AeMZIOEa2dvo5lhroMD1J0Rm
 tFJR+Kl4aFrFa9+4KDBAAU95G5Tu57xveFmQtzxsUPMlyGSstmhuTGyqJB2JwaCnDrSM
 iRjL3TS7MopYmou87dGqZIGwCUa0xFedFBZgKGLVs1Kzcv4SE0st9tqevPKyDHZ/OJAE
 HPArt5vYw/uXB7dTceoJ4AachKBGez2s2ozhmWxmPGUwYPQ6aaQiHnFNonwwEH30JuNp
 kAgzBZt4Y4hqTXBRnLLTmwjY2Kog/4MAGT/35fDBn+ynlmGVkEGgBwmb1RWMkv5mlbMB
 90Sg==
X-Gm-Message-State: AOJu0YyckGEf2bYPmO7d1oTWMlj2cPA7H8k7pNMSXaK20wjHHvOXbphF
 bxQo0YBUmUBUqWSzEXTh+Yw=
X-Google-Smtp-Source: AGHT+IFnB1H9PIa7dzS/xi3Hbl0B02rRhmrKqcb5zwyl3CKa64UVDw11nNeiSqRrTSjgrlpYarofig==
X-Received: by 2002:adf:d4c3:0:b0:314:2e95:1ec9 with SMTP id
 w3-20020adfd4c3000000b003142e951ec9mr1694402wrk.10.1691578235072; 
 Wed, 09 Aug 2023 03:50:35 -0700 (PDT)
Received: from localhost ([165.225.194.193]) by smtp.gmail.com with ESMTPSA id
 y15-20020adff14f000000b0031766e99429sm16450128wro.115.2023.08.09.03.50.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 03:50:34 -0700 (PDT)
From: Joel Granados <joel.granados@gmail.com>
X-Google-Original-From: Joel Granados <j.granados@samsung.com>
To: mcgrof@kernel.org
Date: Wed,  9 Aug 2023 12:50:05 +0200
Message-Id: <20230809105006.1198165-14-j.granados@samsung.com>
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
 Jani Nikula <jani.nikula@linux.intel.com>, Wenjia Zhang <wenjia@linux.ibm.com>,
 Simon Horman <horms@verge.net.au>, Jakub Kicinski <kuba@kernel.org>,
 linux-hams@vger.kernel.org, mptcp@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Paolo Abeni <pabeni@redhat.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Florian Westphal <fw@strlen.de>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Karsten Graul <kgraul@linux.ibm.com>, netfilter-devel@vger.kernel.org,
 Pablo Neira Ayuso <pablo@netfilter.org>,
 "D. Wythe" <alibuda@linux.alibaba.com>, linux-fsdevel@vger.kernel.org,
 Matthieu Baerts <matthieu.baerts@tessares.net>, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH v3 13/14] sysctl: SIZE_MAX->ARRAY_SIZE in
	register_net_sysctl
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

Replace SIZE_MAX with ARRAY_SIZE in the register_net_sysctl macro. Now
that all the callers to register_net_sysctl are actual arrays, we can
call ARRAY_SIZE() without any compilation warnings. By calculating the
actual array size, this commit is making sure that register_net_sysctl
and all its callers forward the table_size into sysctl backend for when
the sentinel elements in the ctl_table arrays (last empty markers) are
removed. Without it the removal would fail lacking a stopping criteria
for traversing the ctl_table arrays.

Stopping condition continues to be based on both table size and the
procname null test. This is needed in order to allow for the systematic
removal al the sentinel element in subsequent commits: Before removing
sentinel the stopping criteria will be the last null element. When the
sentinel is removed then the (correct) size will take over.

Signed-off-by: Joel Granados <j.granados@samsung.com>
Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
---
 include/net/net_namespace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/net/net_namespace.h b/include/net/net_namespace.h
index e4e5fe75a281..75dba309e043 100644
--- a/include/net/net_namespace.h
+++ b/include/net/net_namespace.h
@@ -470,7 +470,7 @@ void unregister_pernet_device(struct pernet_operations *);
 struct ctl_table;
 
 #define register_net_sysctl(net, path, table)	\
-	register_net_sysctl_sz(net, path, table, SIZE_MAX)
+	register_net_sysctl_sz(net, path, table, ARRAY_SIZE(table))
 #ifdef CONFIG_SYSCTL
 int net_sysctl_init(void);
 struct ctl_table_header *register_net_sysctl_sz(struct net *net, const char *path,
-- 
2.30.2

