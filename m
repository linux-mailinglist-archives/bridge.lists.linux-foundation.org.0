Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 743E54FC36C
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:30:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5D1F83386;
	Mon, 11 Apr 2022 17:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ExDfhPwJBFsM; Mon, 11 Apr 2022 17:30:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 3DC6A83337;
	Mon, 11 Apr 2022 17:30:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 11FAAC0087;
	Mon, 11 Apr 2022 17:30:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1BDEDC002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0290D41545
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXc1EabtshDi for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 892AC4154D
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:30:03 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id p15so32334471ejc.7
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gXs4PLlNleG26f62x9RTRqzIlUWK/kMjrVCPwUa1nnA=;
 b=h/abJgZ7Xi7Z8GrRRVLZ9oJrGOddEMunkLHKWxtlp+fwN2PldD4vnxb64qRFtcMtnG
 7ud6gDPS5htQEfOasOEaqV0IoLDMIXOci2yXz8OFVmtmDnfKNvwzGMnJulOiXwzC836r
 KIa2tpBzt5Vczm85ycT/Vqm3OEmiP4b+rNwaETRlpMR4qjgNEz8Sha3JQStB77hSerJW
 sA2GNp+VhAACxEbyKUdL/tByb2bkkeV+8AwxBPtrWvCnpMJn6JZ892xznxuHHPsrNm+J
 ocw0SDU6unmkqZ+1XBsrzaDoKF4nTfV4XZ1gi5yN5aTo07U4LsirxK/7ELhNecAscgbf
 SM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gXs4PLlNleG26f62x9RTRqzIlUWK/kMjrVCPwUa1nnA=;
 b=k6eLqXjvnPeZhT7BtX5TKgftxfLgzh8JVWN7uRPNpu9pLUZvnY4HntVll1TmbO/1Uo
 tWdM7eYitSoCQp9hKEsaEK8j0kAlCrlc4nS4ZA3ICtEgPW4w1CelhWKNBjyiXLHkvXKk
 Q6qp/aZMF4e/I20Um4LARNX0TtrdLsEREtJdOZQ2F1ByAao6jVMxPf04YB84Rol2Tmqa
 wl1f5zf6oAkbZLApfzR4x8Jo91os1Bwt0rQQDER6khbhPf2ss16tqB+1y+c1Br5TmAD5
 BLTZT58vGv9n/kx6WBAUKiGtiOqn8g1KHKrNXgcGykl56e0j0dNOBo5sP35QFkpOJdTf
 ssrw==
X-Gm-Message-State: AOAM532M06KkoYtY0pQkSPboqx7azDS6rKJEVC+9Uu6u9fDaQcQGnSD/
 CeXW/1FpwrzRKTE98wAzHbjErA==
X-Google-Smtp-Source: ABdhPJxZYIAj/HLnAQxh3UKtNigoheZ0fMk5P//AeQTYV1XdQ+ppgUYTl9GsPboO3KbWvuzyXzrRSQ==
X-Received: by 2002:a17:906:d555:b0:6db:148e:5cc with SMTP id
 cr21-20020a170906d55500b006db148e05ccmr29965894ejc.63.1649698201585; 
 Mon, 11 Apr 2022 10:30:01 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm10325084ejc.176.2022.04.11.10.30.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 10:30:01 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 11 Apr 2022 20:29:31 +0300
Message-Id: <20220411172934.1813604-6-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v2 5/8] net: rtnetlink: add common flush
	attributes
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

Add common fdb flush attributes - ifindex, vlan id, ndm flags/state masks.
All of these are used by the bridge and vxlan drivers. Also minimal attr
policy validation is added, it is up to ndo_fdb_flush implementers to
further validate them.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/uapi/linux/neighbour.h |  4 ++++
 net/core/rtnetlink.c           | 16 +++++++++++++---
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/include/uapi/linux/neighbour.h b/include/uapi/linux/neighbour.h
index 60e728319a50..5ab4e9b5edc8 100644
--- a/include/uapi/linux/neighbour.h
+++ b/include/uapi/linux/neighbour.h
@@ -214,6 +214,10 @@ enum {
 
 enum {
 	NDFA_UNSPEC,
+	NDFA_IFINDEX,
+	NDFA_VLAN,
+	NDFA_NDM_STATE_MASK,
+	NDFA_NDM_FLAGS_MASK,
 	__NDFA_MAX
 };
 #define NDFA_MAX (__NDFA_MAX - 1)
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 7325b60d1aa2..379b6a066fbd 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4660,7 +4660,11 @@ static int rtnl_fdb_get(struct sk_buff *in_skb, struct nlmsghdr *nlh,
 }
 
 static const struct nla_policy fdb_flush_policy[NDFA_MAX + 1] = {
-	[NDFA_UNSPEC] = { .type = NLA_REJECT },
+	[NDFA_UNSPEC]	= { .type = NLA_REJECT },
+	[NDFA_IFINDEX]	= NLA_POLICY_MIN(NLA_S32, 1),
+	[NDFA_VLAN]	= { .type = NLA_U16 },
+	[NDFA_NDM_STATE_MASK]	= { .type = NLA_U16 },
+	[NDFA_NDM_FLAGS_MASK]	= { .type = NLA_U8 },
 };
 
 static int rtnl_fdb_flush(struct sk_buff *skb, struct nlmsghdr *nlh,
@@ -4670,6 +4674,7 @@ static int rtnl_fdb_flush(struct sk_buff *skb, struct nlmsghdr *nlh,
 	struct nlattr *tb[NDFA_MAX + 1];
 	struct net_device *dev;
 	struct ndmsg *ndm;
+	u16 vid;
 	int err;
 
 	err = nlmsg_parse(nlh, sizeof(*ndm), tb, NDFA_MAX, fdb_flush_policy,
@@ -4689,19 +4694,24 @@ static int rtnl_fdb_flush(struct sk_buff *skb, struct nlmsghdr *nlh,
 		return -ENODEV;
 	}
 
+	err = fdb_vid_parse(tb[NDFA_VLAN], &vid, extack);
+	if (err)
+		return err;
+
 	err = -EOPNOTSUPP;
 	if ((!ndm->ndm_flags || ndm->ndm_flags & NTF_MASTER) &&
 	    netif_is_bridge_port(dev)) {
 		struct net_device *br_dev = netdev_master_upper_dev_get(dev);
 
-		err = br_dev->netdev_ops->ndo_fdb_flush(ndm, tb, dev, 0, extack);
+		err = br_dev->netdev_ops->ndo_fdb_flush(ndm, tb, dev, vid,
+							extack);
 		if (err)
 			goto out;
 		else
 			ndm->ndm_flags &= ~NTF_MASTER;
 	}
 	if ((ndm->ndm_flags & NTF_SELF) && dev->netdev_ops->ndo_fdb_flush) {
-		err = dev->netdev_ops->ndo_fdb_flush(ndm, tb, dev, 0, extack);
+		err = dev->netdev_ops->ndo_fdb_flush(ndm, tb, dev, vid, extack);
 		if (!err)
 			ndm->ndm_flags &= ~NTF_SELF;
 	}
-- 
2.35.1

