Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D394FC36B
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:30:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6457D60FF9;
	Mon, 11 Apr 2022 17:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aRANyYetG0Bf; Mon, 11 Apr 2022 17:30:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id F397960FF5;
	Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D4F11C0086;
	Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B1427C008F
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FE414154E
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JVVB6J8OhmFn for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:30:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C77541548
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:02 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id s18so9881962ejr.0
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dNyNzOzmDc1f/pBDx4/a2ruUbQq4AUD3l7VG1GzL5dE=;
 b=DjoyoEa5SBJt3hqwkb9DF+bYBRu/wLQsubSS2953Gkp4QRuJGRUbRTJIqT/76L2o7q
 LIj4IsVyTbEKPYKxQFo8gbjxVn1aZM0XAAjabs6CRiIzZRRpAtPjjGZaF8BnWZXgg1lg
 rsqmH5r6esv/3MlJcXaXb7el2YwVANoDkyI+WX7IIMsSql+S4JzT+epU3z37FDU3srFA
 2m7RMEQP3CNrBDdkZsfFpaQdVZlTyG/6mUAAVrAJYQLN0/tpRokYODZmAPtrQLQ1DaBv
 KcESQyYDfFe2FFqSdCCCmLuRDNb+Ubn/dN13hAV3ar10OHYm9EK7bGvFHbfglNgQOKxx
 LUCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dNyNzOzmDc1f/pBDx4/a2ruUbQq4AUD3l7VG1GzL5dE=;
 b=uYkZfk0yzdqGPc2zxZaG4gh4xyWQgc4p0zKGE4OScMJOOuykN5DnzuatD0QgvZXtQk
 7EmAujdmlOdfR3PBwO6Kj0e9kQZljZL4j0nvHI01vaGgSFMnA/irVuSDrq1aX61yKrEd
 ycMNyxM2EgFYVmzcu6TRrSSsVT49ZVizDrPw5z24N/Bvwe+c/Jj07/x9zDtIs5c8Tnrw
 7wU/xgD8m08Gri3qfgMVmEyxZ5xRqW5f99mdD+7uaSGOKgASYX19wzgOWUzAzfCp+dou
 WYqSBs/yxGrYOqzaq+Tbd25Wc7PelskRbTDLae6H6qjkiCh64COUm6XCg1GAZb1hOeIZ
 Z7BQ==
X-Gm-Message-State: AOAM5337fgQYRvvdGKVm7plc+M4OYLcfCCjr9e3UDc5LhMZ+Jfqzgei+
 xx+Kfol0Cr6uqdedHq1BLX7BGiO0rUKasxAs
X-Google-Smtp-Source: ABdhPJzNbJycALTMkxA7fQ3oUTeI057Xp772m0xbK5FuefZeOSgbvUJ61y2QofojBMhi0UkKgHepjg==
X-Received: by 2002:a17:906:7314:b0:6df:839f:af7 with SMTP id
 di20-20020a170906731400b006df839f0af7mr30909242ejc.65.1649698200609; 
 Mon, 11 Apr 2022 10:30:00 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm10325084ejc.176.2022.04.11.10.29.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 10:30:00 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 11 Apr 2022 20:29:30 +0300
Message-Id: <20220411172934.1813604-5-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 4/8] net: rtnetlink: register a generic
	rtnl_fdb_flush call
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

Register a generic PF_BRIDGE rtnl_fdb_flush call which does basic
validation and dispatches the call to the appropriate device based on
ndm flags (NTF_MASTER and NTF_SELF). The flags are interepreted in a
similar way to the already existing fdb add and del.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/neighbour.h |  6 ++++
 net/core/rtnetlink.c           | 52 ++++++++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index db05fb55055e..60e728319a50 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -212,4 +212,10 @@ enum {
 };
 #define NFEA_MAX (__NFEA_MAX - 1)
 
+enum {
+	NDFA_UNSPEC,
+	__NDFA_MAX
+};
+#define NDFA_MAX (__NDFA_MAX - 1)
+
 #endif
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 4041b3e2e8ec..7325b60d1aa2 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4659,6 +4659,56 @@ static int rtnl_fdb_get(struct sk_buff *in_skb, struct nlmsghdr *nlh,
 	return err;
 }
 
+static const struct nla_policy fdb_flush_policy[NDFA_MAX + 1] = {
+	[NDFA_UNSPEC] = { .type = NLA_REJECT },
+};
+
+static int rtnl_fdb_flush(struct sk_buff *skb, struct nlmsghdr *nlh,
+			  struct netlink_ext_ack *extack)
+{
+	struct net *net = sock_net(skb->sk);
+	struct nlattr *tb[NDFA_MAX + 1];
+	struct net_device *dev;
+	struct ndmsg *ndm;
+	int err;
+
+	err = nlmsg_parse(nlh, sizeof(*ndm), tb, NDFA_MAX, fdb_flush_policy,
+			  extack);
+	if (err < 0)
+		return err;
+
+	ndm = nlmsg_data(nlh);
+	if (ndm->ndm_ifindex == 0) {
+		NL_SET_ERR_MSG(extack, "Invalid ifindex");
+		return -EINVAL;
+	}
+
+	dev = __dev_get_by_index(net, ndm->ndm_ifindex);
+	if (!dev) {
+		NL_SET_ERR_MSG(extack, "Unknown ifindex");
+		return -ENODEV;
+	}
+
+	err = -EOPNOTSUPP;
+	if ((!ndm->ndm_flags || ndm->ndm_flags & NTF_MASTER) &&
+	    netif_is_bridge_port(dev)) {
+		struct net_device *br_dev = netdev_master_upper_dev_get(dev);
+
+		err = br_dev->netdev_ops->ndo_fdb_flush(ndm, tb, dev, 0, extack);
+		if (err)
+			goto out;
+		else
+			ndm->ndm_flags &= ~NTF_MASTER;
+	}
+	if ((ndm->ndm_flags & NTF_SELF) && dev->netdev_ops->ndo_fdb_flush) {
+		err = dev->netdev_ops->ndo_fdb_flush(ndm, tb, dev, 0, extack);
+		if (!err)
+			ndm->ndm_flags &= ~NTF_SELF;
+	}
+out:
+	return err;
+}
+
 static int brport_nla_put_flag(struct sk_buff *skb, u32 flags, u32 mask,
 			       unsigned int attrnum, unsigned int flag)
 {
@@ -6144,6 +6194,8 @@ void __init rtnetlink_init(void)
 	rtnl_register(PF_BRIDGE, RTM_DELLINK, rtnl_bridge_dellink, NULL, 0);
 	rtnl_register(PF_BRIDGE, RTM_SETLINK, rtnl_bridge_setlink, NULL, 0);
 
+	rtnl_register(PF_BRIDGE, RTM_FLUSHNEIGH, rtnl_fdb_flush, NULL, 0);
+
 	rtnl_register(PF_UNSPEC, RTM_GETSTATS, rtnl_stats_get, rtnl_stats_dump,
 		      0);
 	rtnl_register(PF_UNSPEC, RTM_SETSTATS, rtnl_stats_set, NULL, 0);
-- 
2.35.1

