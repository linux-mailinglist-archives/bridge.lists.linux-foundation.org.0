Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DB74FF532
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92C6682F19;
	Wed, 13 Apr 2022 10:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoswg82xecAB; Wed, 13 Apr 2022 10:52:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id DECEC82EA5;
	Wed, 13 Apr 2022 10:52:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0BD1AC008C;
	Wed, 13 Apr 2022 10:52:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0F8C8C002F
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1CF414172F
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ADtna7mnriG3 for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39BED41748
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:30 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id g18so3074253ejc.10
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uxkLq5gH+i4vAlh1Vc6ej6SKnG7KxPEsV60wyj5/uCw=;
 b=T5NMz1Yd4mlZIRTnVHf624fuYfaEnl6cQl/aMH24k2VF6dnBpt81fvJlExFVLlMl8d
 +/OEY6zE5JYI+sHDKQn+4aOg0zjFL0NUB4iQEBo1QM0R4Ib0jlou80pL1tWlYY0WRuOq
 JQA1xV3/WL8WihukQ3KLw0Ms2f/SxH2DwMc9ypDDf7l554oN2Fbkpxhawxd7xc/VKQnT
 g0pMfs+Ma/7i9Q8THBb64oMMeUCLQgO//IV09CuP6gz746nFMy2EscIMlgt2O1X6RPl9
 5WR0ePw5bST8//9z5XIByVQh6lazDEm3UWfA2KnGq5zf7XuATjJVYk3VAjmlYSE1YwKn
 1UcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uxkLq5gH+i4vAlh1Vc6ej6SKnG7KxPEsV60wyj5/uCw=;
 b=2HNGbcsFOGRk8FOJSrbbBeFBJJ4drsBNyvG53LEvKuBFHXkR7XemJ0KhQaJuMLE8Kz
 1XDhMPgMkwOsAWdZocjCgdvvZuadIXmEqBInPv1cBQ0PEd1IDJ/ke5jJZoFYDm+zZu8t
 2N8vbjY6bmryLDms6jljvoCmmyGLADK3XA/ynk+Ay+CyZwGSkLYqfr6Wm8zBkP1StQBY
 687Z162Q18sUgEGlMw/wiLVNjmoREgGUY2NjXK0NE3T32esVNIFdaLJhI98ZD1pFraRZ
 BBdsIWBtP7aU2zsR1ugbeAB4EKlEuqKngyyUfK6C03VerMH54197tiCIR+MOEssCdAdm
 16cw==
X-Gm-Message-State: AOAM533lYZcAQkYoGNHt5qsXphT9+sWnTGnGpW218TmFGzakxv/JybJO
 78ebcN1vJYMohBxCYf6jPUeMbA==
X-Google-Smtp-Source: ABdhPJy8JmTAW7T+vWGVLKtlcgUWa4rOrsc0IFA+UjTyqn8gXEcN9Ra1nKAeew+rP3Av1P/Tn6m/vQ==
X-Received: by 2002:a17:906:3707:b0:6e8:6bfe:da0e with SMTP id
 d7-20020a170906370700b006e86bfeda0emr19542278ejc.78.1649847148295; 
 Wed, 13 Apr 2022 03:52:28 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:27 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:57 +0300
Message-Id: <20220413105202.2616106-8-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 07/12] net: rtnetlink: add NLM_F_BULK
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
v4: mark PF_BRIDGE/RTM_DELNEIGH with RTNL_FLAG_BULK_DEL_SUPPORTED

 net/core/rtnetlink.c | 67 +++++++++++++++++++++++++++++++-------------
 1 file changed, 48 insertions(+), 19 deletions(-)

diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 63c7df52a667..520d50fcaaea 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4169,22 +4169,34 @@ int ndo_dflt_fdb_del(struct ndmsg *ndm,
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
 
@@ -4200,9 +4212,12 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
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
@@ -4210,8 +4225,6 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -EINVAL;
 	}
 
-	addr = nla_data(tb[NDA_LLADDR]);
-
 	err = fdb_vid_parse(tb[NDA_VLAN], &vid, extack);
 	if (err)
 		return err;
@@ -4222,10 +4235,16 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
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
@@ -4235,15 +4254,24 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 
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
@@ -6145,7 +6173,8 @@ void __init rtnetlink_init(void)
 	rtnl_register(PF_UNSPEC, RTM_DELLINKPROP, rtnl_dellinkprop, NULL, 0);
 
 	rtnl_register(PF_BRIDGE, RTM_NEWNEIGH, rtnl_fdb_add, NULL, 0);
-	rtnl_register(PF_BRIDGE, RTM_DELNEIGH, rtnl_fdb_del, NULL, 0);
+	rtnl_register(PF_BRIDGE, RTM_DELNEIGH, rtnl_fdb_del, NULL,
+		      RTNL_FLAG_BULK_DEL_SUPPORTED);
 	rtnl_register(PF_BRIDGE, RTM_GETNEIGH, rtnl_fdb_get, rtnl_fdb_dump, 0);
 
 	rtnl_register(PF_BRIDGE, RTM_GETLINK, NULL, rtnl_bridge_getlink, 0);
-- 
2.35.1

