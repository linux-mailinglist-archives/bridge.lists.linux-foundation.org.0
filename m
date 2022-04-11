Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEBB4FC368
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCB06600B6;
	Mon, 11 Apr 2022 17:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ap2bQ27e3Tq; Mon, 11 Apr 2022 17:30:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 702E660FDA;
	Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3FB3DC0083;
	Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28788C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17D0582ED2
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRvNquo9Aqie for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:30:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AF6682D57
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:00 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id p15so32334259ejc.7
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RIR/ZHl5ZiFHgx6+6/Rsb1UvqXAuRfjaxLhenAF2JJI=;
 b=lpBHWyld2PQijqIzQlkNniBq/I0nMhLWr2VIsEI0rkRZH1/1whYuvxToynpfR7JTr5
 3Xgl4SqVJO1JjsR1wAcpuCjm70v+RkS/Hg7T1jUdGNFz3itNqosbMCgH69NppQtGNUgC
 76yH6xcKdP1HtO2P/Ej+k3uq/Z4kGHVszJONO/OSs/aYeRXWE53tUUS0R/11uO5yNBpe
 Yc2oYqneWejwOmgK5lsYaGiFEb/8aX4Noc4sK5Mb6liMatA9CeKrQQGn4Jdf22pJkHC/
 W0DkiN/F4VlOr2bd4c0pcZ53pJ6Oc61NvB32f/yLut7P2SwK7pqK+Fn0C5u5HMolx/jJ
 iukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RIR/ZHl5ZiFHgx6+6/Rsb1UvqXAuRfjaxLhenAF2JJI=;
 b=4SlY0T1FC4Xw9sNzaoJbGXsqXgug7EuImj45tiiTRIf6XtLKIQQJI3U5r3NUv13W3L
 ZToQn3/0hhARqCNgHBJxxmR4fIg4/T12q5RVMWWNfILQOk3UfMgvP38OcaWKmxkFKc/o
 KTO2nlLtIxFT4G0v2jeNOy8JpVly8F99MtDFRv8ZHYgwAcyo9Eh0Gto9Op67xD+M3l+v
 YmO20qV8hs8scyiR/LLCK6DN7fxTafbdpqrSzqok0eQUJiwIiIgi20ofkL8Tkracciwm
 HRWcx/ju4BSr/WXhdV8gIOdDZQ4LbJYt3KH7bDpEPhGaDxbc1J9Ic8aSf9h2/0/jtUzG
 ElRg==
X-Gm-Message-State: AOAM533WibuhBHqVQpzcAniSzlII1VeDaSNg1NerdeC4bo+lH3l+ycTu
 u5ujfOvcEAH2gu/ZWddg1QDW2w==
X-Google-Smtp-Source: ABdhPJzjiQfYrrqu8a4iy9n5tirV+dTQgnN0Pytlq+0lx9yxVIqKtYbtUj7/GJRaUPWTHrfjX2q/zQ==
X-Received: by 2002:a17:906:7304:b0:6e0:6918:ef6f with SMTP id
 di4-20020a170906730400b006e06918ef6fmr30501107ejc.370.1649698198740; 
 Mon, 11 Apr 2022 10:29:58 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm10325084ejc.176.2022.04.11.10.29.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 10:29:58 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 11 Apr 2022 20:29:28 +0300
Message-Id: <20220411172934.1813604-3-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 2/8] net: add ndo_fdb_flush op
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

Add a new netdev op called ndo_fdb_flush, it will be later used for
driver-specific flush implementation dispatched from rtnetlink. The first
user will be the bridge.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/linux/netdevice.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 28ea4f8269d4..16d67e40053c 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1265,6 +1265,12 @@ struct netdev_net_notifier {
  *		       int *idx)
  *	Used to add FDB entries to dump requests. Implementers should add
  *	entries to skb and update idx with the number of entries.
+ * int (*ndo_fdb_flush)(struct ndmsg *ndm, struct nlattr *tb[],
+ *			struct net_device *dev,
+ *			u16 vid,
+ *			struct netlink_ext_ack *extack);
+ *	Used to flush FDB entries. Filter attributes can be specified to delete
+ *	only matching FDB entries if implementers support it.
  *
  * int (*ndo_bridge_setlink)(struct net_device *dev, struct nlmsghdr *nlh,
  *			     u16 flags, struct netlink_ext_ack *extack)
@@ -1515,6 +1521,11 @@ struct net_device_ops {
 						struct net_device *dev,
 						struct net_device *filter_dev,
 						int *idx);
+	int			(*ndo_fdb_flush)(struct ndmsg *ndm,
+						 struct nlattr *tb[],
+						 struct net_device *dev,
+						 u16 vid,
+						 struct netlink_ext_ack *extack);
 	int			(*ndo_fdb_get)(struct sk_buff *skb,
 					       struct nlattr *tb[],
 					       struct net_device *dev,
-- 
2.35.1

