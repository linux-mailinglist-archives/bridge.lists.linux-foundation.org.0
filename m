Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 566735BBA37
	for <lists.bridge@lfdr.de>; Sat, 17 Sep 2022 22:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D83D410A5;
	Sat, 17 Sep 2022 20:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D83D410A5
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=KxoD7xyk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKj9zNHq10Bf; Sat, 17 Sep 2022 20:18:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B7A574098E;
	Sat, 17 Sep 2022 20:18:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7A574098E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6082CC0078;
	Sat, 17 Sep 2022 20:18:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A5BD4C002D
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81C7260C29
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81C7260C29
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KxoD7xyk
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rChClWPZo-1U for <bridge@lists.linux-foundation.org>;
 Sat, 17 Sep 2022 20:18:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D17A460AF6
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D17A460AF6
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 20:18:11 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id k12so18111294qkj.8
 for <bridge@lists.linux-foundation.org>; Sat, 17 Sep 2022 13:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=rA1J3wNnURwjVaQRzDPJJFo52izXeQrMGO3evzyuiQ0=;
 b=KxoD7xykKYyawuxkaTKHAsD+UHEKwbfX7XWCNBZe6i7Mgrw0YCsTjl+qKqObCTg6p0
 Act4uRMpeCSYfygeT7s2GPeEMjBiZx2NKzesoXaO38hnh+dFLYZeuerbOgD0h7aQpNpA
 BE4nMBe9E5K6ppuDhZupAYJkurPuEAOIjfUZ3+DIvrYkNz1HBb92lc8uK22slSLy1SkN
 K4enAfXoM/6wWBxcp/GQlLS2x0PwMU9qyFLWxt9HMB5rFG9TCu0npvbhSMJ6bSsDJQbL
 VAFQv4WIJnvs+PQX1jJ0r3ctc7FpQRnlvPxkuOLp2BkxE+s7ZRcARsOyU0XsW5DugsVW
 drZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=rA1J3wNnURwjVaQRzDPJJFo52izXeQrMGO3evzyuiQ0=;
 b=yGhWXXSnd3iT1176djDGAhl3dMYEeXQvltnXY2Y0PMFtcDh/XuJTmkvWP9ZApK66Ti
 nRwIttXVSHGsLBoypUOgSdU70R9uxf3eel4knCO/WXZm8GrFLnTBI6bel70gl7PyWFpU
 k7P9gD6eClY+JXcUWrxOXKaoldy1+fNS+V8kJJ2DoAW28kYdLGyrJy4YFY3uqPhQOyJG
 rMJmEhbFJGcGbswB34p5te0dddhxU6Cf/nRS0m5TE+dCZiZt15+fdmmzYHziNHF+cjit
 2NJCHS/0eY070Xi1zW0yLimfFoH7ZGnL8+eZ3E0iDhP/oEQMbAYsAN90lZTnvxJRLgwr
 /wWA==
X-Gm-Message-State: ACrzQf12AFPjYpNS1qEQApWOwqUjIG1ZaAq57BZ2cye6Sq31HDnh885V
 2yEnvicUdrwqYvnGXcKCua0=
X-Google-Smtp-Source: AMsMyM5ob17a28YWQup5oSo+fcrgZBzZZvGQMtPbfQahiNyXRukM2fBEkogohQnFZJLUANcC9Ea8Nw==
X-Received: by 2002:a05:620a:1aa4:b0:6ce:6105:dc3f with SMTP id
 bl36-20020a05620a1aa400b006ce6105dc3fmr8340523qkb.632.1663445890697; 
 Sat, 17 Sep 2022 13:18:10 -0700 (PDT)
Received: from euclid ([71.58.109.160]) by smtp.gmail.com with ESMTPSA id
 y30-20020a37f61e000000b006a6ebde4799sm8579191qkj.90.2022.09.17.13.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Sep 2022 13:18:10 -0700 (PDT)
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
To: netdev@vger.kernel.org
Date: Sat, 17 Sep 2022 16:17:57 -0400
Message-Id: <d6eaa0453446118ead2912bea6ef7b25c136b01c.1663445339.git.sevinj.aghayeva@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
References: <cover.1663445339.git.sevinj.aghayeva@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: aroulin@nvidia.com, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>,
 Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH RFC net-next 1/5] net: core: export
	call_netdevice_notifiers_info
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

The function call_netdevice_notifiers_info will be used by the vlan
module for sending link-type-specific information to other modules.

Signed-off-by: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
---
 include/linux/netdevice.h | 2 ++
 net/core/dev.c            | 5 ++---
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index f0068c1ff1df..56b96b1e4c4c 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -2906,6 +2906,8 @@ netdev_notifier_info_to_extack(const struct netdev_notifier_info *info)
 }
 
 int call_netdevice_notifiers(unsigned long val, struct net_device *dev);
+int call_netdevice_notifiers_info(unsigned long val,
+				  struct netdev_notifier_info *info);
 
 
 extern rwlock_t				dev_base_lock;		/* Device list lock */
diff --git a/net/core/dev.c b/net/core/dev.c
index d66c73c1c734..e233145d1452 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -160,8 +160,6 @@ struct list_head ptype_base[PTYPE_HASH_SIZE] __read_mostly;
 struct list_head ptype_all __read_mostly;	/* Taps */
 
 static int netif_rx_internal(struct sk_buff *skb);
-static int call_netdevice_notifiers_info(unsigned long val,
-					 struct netdev_notifier_info *info);
 static int call_netdevice_notifiers_extack(unsigned long val,
 					   struct net_device *dev,
 					   struct netlink_ext_ack *extack);
@@ -1927,7 +1925,7 @@ static void move_netdevice_notifiers_dev_net(struct net_device *dev,
  *	are as for raw_notifier_call_chain().
  */
 
-static int call_netdevice_notifiers_info(unsigned long val,
+int call_netdevice_notifiers_info(unsigned long val,
 					 struct netdev_notifier_info *info)
 {
 	struct net *net = dev_net(info->dev);
@@ -1944,6 +1942,7 @@ static int call_netdevice_notifiers_info(unsigned long val,
 		return ret;
 	return raw_notifier_call_chain(&netdev_chain, val, info);
 }
+EXPORT_SYMBOL_GPL(call_netdevice_notifiers_info);
 
 /**
  *	call_netdevice_notifiers_info_robust - call per-netns notifier blocks
-- 
2.34.1

