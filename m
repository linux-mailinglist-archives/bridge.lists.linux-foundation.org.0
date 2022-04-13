Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 711474FF536
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1D54417AE;
	Wed, 13 Apr 2022 10:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ra6j4_8pWjb2; Wed, 13 Apr 2022 10:52:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8F7B04174C;
	Wed, 13 Apr 2022 10:52:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94EDAC0092;
	Wed, 13 Apr 2022 10:52:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3F3CAC002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C96882EA5
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l85Gtga2ZSWW for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7716782D0F
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:33 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id t25so1853665edt.9
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8mqGi6nmRQtdTy+PDFk54YLdSIt8nb+5grez+iJIyIQ=;
 b=QHcMActsk48o/Ali36FVmGtylPwMSvJWtiSShrN1MSayZJSwLjSyNfvMr1a/CihU8/
 2aXGBVDTXJEhEfHtDrgXEk+QpsK2Cx4T4Hormg5IXfa5i7gjdzWnri3JQwscS/gVMcnD
 GGGvjmMqLSPo9vTCpDa9ve0rNHD4LZGUAEHGtRNMmAea5QAlDDGTDAzsmRMUjIOB6DU5
 HfEpjDEkLhD2p344keqn11DJkh51F/QHmYJ+Rj2XzRvBqwshtROJqFzcgM1CCWSJwSkp
 /F8UPaDME5EQHHfpDQcjPBzB3OZPNe5tcA09tTNzqcAdjmyD+auXM0JHVM6KTLqSS/QB
 FT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8mqGi6nmRQtdTy+PDFk54YLdSIt8nb+5grez+iJIyIQ=;
 b=pN9C4FDuXWrSs0FU3ijmMbDCMf1vjWdI0miARidvWYjQUZmjED8LT9JYFd/DYyF4Da
 z/gwRz1cFG7TO3JqMjSzqzazOS8755i3unUUH5TBHXuLdRT5DB8ayrzVfygTeS1Qs2O9
 5bm8GuGoJn1Re7b7f3kMSw5+/J504fkLiC7F5xWlx6Zf4l06vrkRFjAsxD1CMg9BoPl4
 h5hHmIp4icqqwH1QUqOTb9XXX51NPV1f4lMIdHuMLZdAMj8Ps5CwgrnnC5h0VdMvGZc6
 4EEeCV3BzTflRZ94AObgyXZFDcFt4UxLoYgkib/DENUUUbHUEFku0X8O4FRNDJcD5f9O
 kU4g==
X-Gm-Message-State: AOAM533pcmGqJ7l+SNtlkz6MbDT10K+3ZJhX+2u1Q1DtNzloOJQ/9/o4
 +4biJ2HWrb5CgXOprCtnGFtQLQ==
X-Google-Smtp-Source: ABdhPJwxlSGuLnyxI31hE+7V+fuhmPjhJYodVVueVT7xa/NWY1ZvwnY+NcgZckh1odvmfBV7RIX8rQ==
X-Received: by 2002:a50:cd8c:0:b0:41c:bb5a:1c7b with SMTP id
 p12-20020a50cd8c000000b0041cbb5a1c7bmr42273201edi.351.1649847151603; 
 Wed, 13 Apr 2022 03:52:31 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:31 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:52:00 +0300
Message-Id: <20220413105202.2616106-11-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 10/12] net: rtnetlink: add ndm flags
	and state mask attributes
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

Add ndm flags/state masks which will be used for bulk delete filtering.
All of these are used by the bridge and vxlan drivers. Also minimal attr
policy validation is added, it is up to ndo_fdb_del_bulk implementers to
further validate them.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/neighbour.h | 2 ++
 net/core/rtnetlink.c           | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index db05fb55055e..39c565e460c7 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -32,6 +32,8 @@ enum {
 	NDA_NH_ID,
 	NDA_FDB_EXT_ATTRS,
 	NDA_FLAGS_EXT,
+	NDA_NDM_STATE_MASK,
+	NDA_NDM_FLAGS_MASK,
 	__NDA_MAX
 };
 
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 520d50fcaaea..ab7fb9a16da9 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4172,6 +4172,8 @@ EXPORT_SYMBOL(ndo_dflt_fdb_del);
 static const struct nla_policy fdb_del_bulk_policy[NDA_MAX + 1] = {
 	[NDA_VLAN]	= { .type = NLA_U16 },
 	[NDA_IFINDEX]	= NLA_POLICY_MIN(NLA_S32, 1),
+	[NDA_NDM_STATE_MASK]	= { .type = NLA_U16  },
+	[NDA_NDM_FLAGS_MASK]	= { .type = NLA_U8 },
 };
 
 static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
-- 
2.35.1

