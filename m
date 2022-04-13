Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F97E4FF52B
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3EC382CF1;
	Wed, 13 Apr 2022 10:52:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Z7ycCoIACBr; Wed, 13 Apr 2022 10:52:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4C99B82D04;
	Wed, 13 Apr 2022 10:52:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63032C008C;
	Wed, 13 Apr 2022 10:52:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 84238C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81D1A60A87
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dZw-g8L6tF4l for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9B6060B42
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:23 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id bh17so3087301ejb.8
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=punCyQ5OlXSnY/goe5W8EQLjKTFZYGXPlnRQPpJuU2Q=;
 b=rU+fyBOGNDPr41fXvuDQ0DkGPCf1V24jkzQmDG4PWUkq88+kD3HhGIYVegC/JyoPqU
 XEa1rdx32WiRjGTEixr8QcvgVUojKKc4Wu/e5Kr4KvGoG+ryx12eTlBFSLL58BpcBli0
 bUontmhkN/fG+g5hWkUlF8BZG1rD+vMA26GZF3r2luCDetHYxAwgA/5VY7IFiJZGrbQA
 jyMMz1pSAKz2Im0DEqtUZvCh+C8QATupt8gsqfJVWx62ebvLDxo+zxQ4niXNuGUQrw7B
 yawFY7R9Xs3rB0jEXSX7pbbASlGW30LrJDMxT784poSUYHtJHU9pK3Y76RnG1AKuRKiZ
 xyLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=punCyQ5OlXSnY/goe5W8EQLjKTFZYGXPlnRQPpJuU2Q=;
 b=vC1wVc0bFreXRK//0R+xoqJFoI9mx9hKMNdrnH9uQNQH+rP/1H6g9PV8KKiG7NlbaV
 D/EQaHbr71cRQOoEtYhH0vYA6srwW51AYW0R++MAaV0qz+rbQYAHPtG0X9/7ubqnElE4
 3FRrpVVnPTeJ0rY7YLLbb6HDV6z+PgEsgvA/fsmLiItXEWPoLjOmzAdYjBM7AdLe57dV
 0WPq1eD2ilfJAJIxgaUaC0Cq1zxprqGg1oIe/wyMEtZLUFo/KINCbmTbNtq4Wlm/old9
 XXqawn6kbjwJBjzRh/kuTt1PU0mb46Cxn+Ossi0W/VZqiPKRbiDJxGxRO4W6NuO6/y0p
 nX4g==
X-Gm-Message-State: AOAM531zK6y5D5Q4heO2N9z8/SBzViTWoZaaybCS3wPw68E908ut5l3H
 kswpplAlGhgXJXYHowMV/pIFfQ==
X-Google-Smtp-Source: ABdhPJzJtPZE++TuJtHZ/Yg/lYt4Qo1/ToVPqrbAAkZVzw8xogV7ahAeZiktfTk3WFIRP8JnzVVurg==
X-Received: by 2002:a17:906:ae85:b0:6e8:76c2:1f1f with SMTP id
 md5-20020a170906ae8500b006e876c21f1fmr17664530ejb.333.1649847142018; 
 Wed, 13 Apr 2022 03:52:22 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:21 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:51 +0300
Message-Id: <20220413105202.2616106-2-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 01/12] net: rtnetlink: add msg kind
	names
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

Add rtnl kind names instead of using raw values. We'll need to
check for DEL kind later to validate bulk flag support.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v4: new patch

 include/net/rtnetlink.h | 7 +++++++
 net/core/rtnetlink.c    | 6 +++---
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index 9f48733bfd21..78712b51f3da 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -13,6 +13,13 @@ enum rtnl_link_flags {
 	RTNL_FLAG_DOIT_UNLOCKED = 1,
 };
 
+enum rtnl_kinds {
+	RTNL_KIND_NEW,
+	RTNL_KIND_DEL,
+	RTNL_KIND_GET,
+	RTNL_KIND_SET
+};
+
 void rtnl_register(int protocol, int msgtype,
 		   rtnl_doit_func, rtnl_dumpit_func, unsigned int flags);
 int rtnl_register_module(struct module *owner, int protocol, int msgtype,
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 4041b3e2e8ec..2c36c9dc9b62 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -5928,11 +5928,11 @@ static int rtnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
 {
 	struct net *net = sock_net(skb->sk);
 	struct rtnl_link *link;
+	enum rtnl_kinds kind;
 	struct module *owner;
 	int err = -EOPNOTSUPP;
 	rtnl_doit_func doit;
 	unsigned int flags;
-	int kind;
 	int family;
 	int type;
 
@@ -5949,11 +5949,11 @@ static int rtnetlink_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
 	family = ((struct rtgenmsg *)nlmsg_data(nlh))->rtgen_family;
 	kind = type&3;
 
-	if (kind != 2 && !netlink_net_capable(skb, CAP_NET_ADMIN))
+	if (kind != RTNL_KIND_GET && !netlink_net_capable(skb, CAP_NET_ADMIN))
 		return -EPERM;
 
 	rcu_read_lock();
-	if (kind == 2 && nlh->nlmsg_flags&NLM_F_DUMP) {
+	if (kind == RTNL_KIND_GET && (nlh->nlmsg_flags & NLM_F_DUMP)) {
 		struct sock *rtnl;
 		rtnl_dumpit_func dumpit;
 		u32 min_dump_alloc = 0;
-- 
2.35.1

