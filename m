Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8CE4FE25F
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:23:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F10D4402C5;
	Tue, 12 Apr 2022 13:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T23zlsthkaQl; Tue, 12 Apr 2022 13:23:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id F2AAE402AC;
	Tue, 12 Apr 2022 13:23:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 14C1FC002F;
	Tue, 12 Apr 2022 13:23:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9F747C002F
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A9CF404E2
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RnwY9E2w0Pz6 for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:23:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7047404A8
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:13 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id bg10so37339359ejb.4
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ETWbF7zKsZG9skDxgFBuQOsMiuFT3MmfMSLOxhDh3mw=;
 b=Q7Dpt9DQjInhOCoN2TX1SM9fAaM/ZcyKh2wLi9yqBD8CWhScrhMlf8KjQdw9i35ktl
 ALa9AsW7WDZd44cDkQNSIsMMnFkqftQt+Z4p5hQlKbA7xPufx1OQCid2gCrTGp+in0LX
 CrhSwFsMKQnfPDBO33PnPHpDw6mcG1G5Bg/8kX9L0tYEPJ/tE3avhZkN2SjqblBIFBlG
 zz1GdiAF+HZG7BuryzyhQfgFp4eikC6THMi9IkFweQZ9qbJoMT55KJalDQ7kbEpapC6k
 /XAG7JYI7mGHXI6ode8zK9IzGRuWAr1tT5K2m8SSNSgcAqhSUkZ7hk3Jjc6QEnGi+56E
 GKhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ETWbF7zKsZG9skDxgFBuQOsMiuFT3MmfMSLOxhDh3mw=;
 b=rMQwgXU/Nhdp+3UGkmlruMag3cwrF1WK8iWzKfVidXLe84hyoJE9XqSKvgOesyCx15
 Lu1G2MKmsauxI9+0XBKwctohwL7p3DsXZwus/fRzUT36i8jEQiiPW+btciuOgE18qFS9
 o+zzoU5h0IY1/RcI2xdXiyFxZOuDJz89EbYUufG+ltFS/m8PTXo33bVizlrICWy2gzOf
 BK8DCd+qpXpKxFF2oMV5nIUpZISkHUAHufiSqFV5Fjk/5oHqVBvbd9I7cJMsfBvXKuE4
 8vvBnYSAE5V6QpzyQX3MBEEa8JbLKomb0YOQcAuLEWIpU/Rk3ENiWx6d6CU3wb9ZagTt
 aAzw==
X-Gm-Message-State: AOAM533aaOUlF5Ta6V/keQCmextoN8cpIR/EpWjpkL3zLG1KOOIMv2lj
 LucdiXJ+KKVS2D5DG0X3jCVJ5Q==
X-Google-Smtp-Source: ABdhPJw5byT8y5MZ5mbH7NPOSQMVFjKhfITSKVTsXhxpS47HhEtSaibWOHFbYL/p/jAv0JWEliD4Xw==
X-Received: by 2002:a17:907:3f8b:b0:6e8:318d:1def with SMTP id
 hr11-20020a1709073f8b00b006e8318d1defmr26133568ejc.153.1649769791697; 
 Tue, 12 Apr 2022 06:23:11 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z16-20020a17090665d000b006e8789e8cedsm3771301ejn.204.2022.04.12.06.23.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 06:23:11 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 12 Apr 2022 16:22:40 +0300
Message-Id: <20220412132245.2148794-4-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
References: <20220412132245.2148794-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v3 3/8] net: rtnetlink: add NLM_F_BULK
	support to rtnl_fdb_del
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

When NLM_F_BULK is specified in a fdb del message we need to handle it
differently. First since this is a new call we can strictly validate the
passed attributes, at first only ifindex and vlan are allowed as these
will be the initially supported filter attributes, any other attribute
is rejected. The mac address is no longer mandatory, but we use it
to error out in older kernels because it cannot be specified with bulk
request (the attribute is not allowed) and then we have to dispatch
the call to ndo_fdb_del_bulk if the device supports it. The del bulk
callback can do further validation of the attributes if necessary.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 net/core/rtnetlink.c | 64 +++++++++++++++++++++++++++++++-------------
 1 file changed, 46 insertions(+), 18 deletions(-)

diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 4041b3e2e8ec..824963aa57b1 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4167,22 +4167,34 @@ int ndo_dflt_fdb_del(struct ndmsg *ndm,
 }
 EXPORT_SYMBOL(ndo_dflt_fdb_del);
 
+static const struct nla_policy fdb_del_bulk_policy[NDA_MAX + 1] = {
+	[NDA_VLAN]	= { .type = NLA_U16 },
+	[NDA_IFINDEX]	= NLA_POLICY_MIN(NLA_S32, 1),
+};
+
 static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 			struct netlink_ext_ack *extack)
 {
+	bool del_bulk = !!(nlh->nlmsg_flags & NLM_F_BULK);
 	struct net *net = sock_net(skb->sk);
+	const struct net_device_ops *ops;
 	struct ndmsg *ndm;
 	struct nlattr *tb[NDA_MAX+1];
 	struct net_device *dev;
-	__u8 *addr;
+	__u8 *addr = NULL;
 	int err;
 	u16 vid;
 
 	if (!netlink_capable(skb, CAP_NET_ADMIN))
 		return -EPERM;
 
-	err = nlmsg_parse_deprecated(nlh, sizeof(*ndm), tb, NDA_MAX, NULL,
-				     extack);
+	if (!del_bulk) {
+		err = nlmsg_parse_deprecated(nlh, sizeof(*ndm), tb, NDA_MAX,
+					     NULL, extack);
+	} else {
+		err = nlmsg_parse(nlh, sizeof(*ndm), tb, NDA_MAX,
+				  fdb_del_bulk_policy, extack);
+	}
 	if (err < 0)
 		return err;
 
@@ -4198,9 +4210,12 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -ENODEV;
 	}
 
-	if (!tb[NDA_LLADDR] || nla_len(tb[NDA_LLADDR]) != ETH_ALEN) {
-		NL_SET_ERR_MSG(extack, "invalid address");
-		return -EINVAL;
+	if (!del_bulk) {
+		if (!tb[NDA_LLADDR] || nla_len(tb[NDA_LLADDR]) != ETH_ALEN) {
+			NL_SET_ERR_MSG(extack, "invalid address");
+			return -EINVAL;
+		}
+		addr = nla_data(tb[NDA_LLADDR]);
 	}
 
 	if (dev->type != ARPHRD_ETHER) {
@@ -4208,8 +4223,6 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -EINVAL;
 	}
 
-	addr = nla_data(tb[NDA_LLADDR]);
-
 	err = fdb_vid_parse(tb[NDA_VLAN], &vid, extack);
 	if (err)
 		return err;
@@ -4220,10 +4233,16 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if ((!ndm->ndm_flags || ndm->ndm_flags & NTF_MASTER) &&
 	    netif_is_bridge_port(dev)) {
 		struct net_device *br_dev = netdev_master_upper_dev_get(dev);
-		const struct net_device_ops *ops = br_dev->netdev_ops;
 
-		if (ops->ndo_fdb_del)
-			err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
+		ops = br_dev->netdev_ops;
+		if (!del_bulk) {
+			if (ops->ndo_fdb_del)
+				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
+		} else {
+			if (ops->ndo_fdb_del_bulk)
+				err = ops->ndo_fdb_del_bulk(ndm, tb, dev, vid,
+							    extack);
+		}
 
 		if (err)
 			goto out;
@@ -4233,15 +4252,24 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	/* Embedded bridge, macvlan, and any other device support */
 	if (ndm->ndm_flags & NTF_SELF) {
-		if (dev->netdev_ops->ndo_fdb_del)
-			err = dev->netdev_ops->ndo_fdb_del(ndm, tb, dev, addr,
-							   vid);
-		else
-			err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
+		ops = dev->netdev_ops;
+		if (!del_bulk) {
+			if (ops->ndo_fdb_del)
+				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid);
+			else
+				err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
+		} else {
+			/* in case err was cleared by NTF_MASTER call */
+			err = -EOPNOTSUPP;
+			if (ops->ndo_fdb_del_bulk)
+				err = ops->ndo_fdb_del_bulk(ndm, tb, dev, vid,
+							    extack);
+		}
 
 		if (!err) {
-			rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH,
-					ndm->ndm_state);
+			if (!del_bulk)
+				rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH,
+						ndm->ndm_state);
 			ndm->ndm_flags &= ~NTF_SELF;
 		}
 	}
-- 
2.35.1

