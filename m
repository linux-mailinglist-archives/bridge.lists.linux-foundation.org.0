Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F77B338A16
	for <lists.bridge@lfdr.de>; Fri, 12 Mar 2021 11:29:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04A6F4ED54;
	Fri, 12 Mar 2021 10:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G-Cyl-jQX1nl; Fri, 12 Mar 2021 10:29:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65A714ED52;
	Fri, 12 Mar 2021 10:29:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2A042C0012;
	Fri, 12 Mar 2021 10:29:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 49E23C0001
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 02:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B6B260701
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 02:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mx0IfgN6JA_r for <bridge@lists.linux-foundation.org>;
 Tue,  9 Mar 2021 02:29:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A325600B8
 for <bridge@lists.linux-foundation.org>; Tue,  9 Mar 2021 02:29:03 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 j6-20020a17090adc86b02900cbfe6f2c96so4306685pjv.1
 for <bridge@lists.linux-foundation.org>; Mon, 08 Mar 2021 18:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TFmmV9TVaaNUuaMbsO9KBOUJCI3DKPpFnOVgzqi7U6w=;
 b=apZSNVUIOKcBJTA2nDNXj8M/+Sm/J1CDcmtn4dh+G1TtfBQLVB1fCOy/VOwWVfJJrx
 tj1oL1/oE1PiHygPm2ldmo2IsMxeMsAG8V/NzrxRlUoyv3vPYKPr1tb9GcYsHYaaOMW5
 kvYBaAioNG8NEV+jhuDPtTLY7V134eJXP3WxpoD4bLvWgTf4XK0c4ozJakbj4ep0eOKX
 /saUXnACQ+gITn188nVyPqs0DkKYA5jQ9BN+Mn7hiOt3ilzyxNrFYGGP7w78PtFEDxRz
 n/bIng9BhhBr1aVYWUP2oWXotxybmvmNjN5JPPRI+4ouq3/h9wujb/+3xfKEeGEO4CPK
 nUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TFmmV9TVaaNUuaMbsO9KBOUJCI3DKPpFnOVgzqi7U6w=;
 b=jiYaAoLbp4p5PFMeqaASm7rrpQtno0CQganhPFYzoY2JU3vYauRU3R9lLGV+4iv+Vb
 LG+GfnZBneTLEAYZxtUNTjd1mQflLQR+UtE/mrQeEjMwN2fFdcC5SP/B47DPnK+4DqfT
 4bLlGuC1tEKZXcMwVW2pCD1Om0j/dOQe9W6JzClkIMIg0FKcmjadWyjHrlTrdsd/pW+v
 T3t12SkAVdPAgmvjCTZUijbvNBoaiR/dznm9WbkIcm+/Go96YJ6vZESFhXRJVcNcMi9B
 YO2UiDDVwFygBrre8x96gAyKkb7Qzf9S2TjyQboV3bmZh8qu6HPkZPFcfvpPtU9Aaum0
 oRCA==
X-Gm-Message-State: AOAM533xpXBCDdeYS4N4rTLnWayVoEckaydCeNTywNcZUezgpiQfy4M4
 zDMF4DzURKeLFqNmlWmzUaw=
X-Google-Smtp-Source: ABdhPJxHdg8O1Qf3n6xTDOTyz8jan40qc0uZIfiNe7WhMW9NneFjE2BcgAn+r1LEfAAjcWzN5WYdrw==
X-Received: by 2002:a17:90b:514:: with SMTP id
 r20mr2113884pjz.145.1615256942855; 
 Mon, 08 Mar 2021 18:29:02 -0800 (PST)
Received: from localhost.localdomain ([45.135.186.97])
 by smtp.gmail.com with ESMTPSA id k9sm662852pji.8.2021.03.08.18.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 18:29:02 -0800 (PST)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: pablo@netfilter.org, kadlec@netfilter.org, fw@strlen.de, roopa@nvidia.com,
 nikolay@nvidia.com, davem@davemloft.net, kuba@kernel.org
Date: Mon,  8 Mar 2021 18:28:54 -0800
Message-Id: <20210309022854.17904-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Fri, 12 Mar 2021 10:29:24 +0000
Cc: coreteam@netfilter.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Jia-Ju Bai <baijiaju1990@gmail.com>, netfilter-devel@vger.kernel.org
Subject: [Bridge] [PATCH] net: bridge: fix error return code of
	do_update_counters()
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

When find_table_lock() returns NULL to t, no error return code of
do_update_counters() is assigned.
To fix this bug, ret is assigned with -ENOENT in this case.

Fixes: 49facff9f925 ("netfilter: ebtables: split update_counters into two functions")
Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 net/bridge/netfilter/ebtables.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/bridge/netfilter/ebtables.c b/net/bridge/netfilter/ebtables.c
index ebe33b60efd6..66c9e4077985 100644
--- a/net/bridge/netfilter/ebtables.c
+++ b/net/bridge/netfilter/ebtables.c
@@ -1256,8 +1256,10 @@ static int do_update_counters(struct net *net, const char *name,
 		return -ENOMEM;
 
 	t = find_table_lock(net, name, &ret, &ebt_mutex);
-	if (!t)
+	if (!t) {
+		ret = -ENOENT;
 		goto free_tmp;
+	}
 
 	if (num_counters != t->private->nentries) {
 		ret = -EINVAL;
-- 
2.17.1

