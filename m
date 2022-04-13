Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195C54FF52D
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 401B740B59;
	Wed, 13 Apr 2022 10:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7azPDxg7s2GF; Wed, 13 Apr 2022 10:52:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E1B7440490;
	Wed, 13 Apr 2022 10:52:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CBBC1C002C;
	Wed, 13 Apr 2022 10:52:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BC0C0C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A19360B19
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qW-w6GlsFccS for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA5F760BC8
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:25 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id r13so3113753ejd.5
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bxnUQR9V57rGqYOjdVUj6Nc/+H1dclO6Pe3lE8dzyks=;
 b=v0xXGtzEyPwMy5K5G8fUCwmcOyh3wq4YsIIBIWH6HBnko3nwWalZWY4oFTHxmdk4pi
 M92GRFrT5Bsy3V/YNM/ezVhobRWp1KXQfxbqubgOItaCQ0t0e6NXoj9+3KiLBCi3DPV0
 Z87K75gLIM0v1GHRrLD95VMaKoXTjIKQcW12HfCn1Ogn3dYbQCuAHhJnKwlDCPhIaHjb
 s6UtWIMHBwYe5NubtFzkWx5+HX8dYwPpgO04JtZD3s0gTHQ+BgmQK46asyGkoZXNwD2I
 T26Wnsou5l8DcA/UuvQY66AeHoxKysm5vtQJ3e42nNV9kQhcJ2LV8gs7pA2b/uU7Slbb
 iRyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bxnUQR9V57rGqYOjdVUj6Nc/+H1dclO6Pe3lE8dzyks=;
 b=r3jkRfIMMGurTrA7e10GbTFiJC2jmNWJDj4DbmVRr4GYxKqPrIitg9OazooDrf+Lg6
 hAF26oiM/jU5ddEhDdzcSzXBb1vOS0R5NIKCntB4gyrh2RnquUqgHk+lqJ2zoE9SyJB/
 Y1nvGBJwURkG7dNkl4vVc7RRwXCUeB8aZBuOtJDETmA/x9PsGHNSgarl8+QHQwpjFO1j
 wOwIPWd2srQs9aZ0lon+43K3MAY0vTCgEPxM3qiQaZjKgUHBfWsImaTEpMqSr+wRfXpf
 IqFncy/CBXNFWjFV7s8CCuByhInOpYhG01vt8NBm9/Thd9n4dFEyrtdXJbNR1QUAjteY
 x6vw==
X-Gm-Message-State: AOAM532D9Dcfab6lq0RlaTqQSZcBWDZ9SIPRgWzyx+4V8Uk/nHK07hYg
 ohdL6ouuAXCdy8htkzQVulfjig==
X-Google-Smtp-Source: ABdhPJw+bDiRfssoWh5TNImSH9UMauJVpqt3IO01+EY9TCO0zL5F0os3pE9VyJs8NDDQq9WrPvi5Mw==
X-Received: by 2002:a17:907:3e0b:b0:6e8:696c:d927 with SMTP id
 hp11-20020a1709073e0b00b006e8696cd927mr19139290ejc.747.1649847144149; 
 Wed, 13 Apr 2022 03:52:24 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:23 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:53 +0300
Message-Id: <20220413105202.2616106-4-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 03/12] net: rtnetlink: use BIT for flag
	values
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

Use BIT to define flag values.

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
v4: new patch

 include/net/rtnetlink.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/net/rtnetlink.h b/include/net/rtnetlink.h
index c51c5ff7f7e2..0bf622409aaa 100644
--- a/include/net/rtnetlink.h
+++ b/include/net/rtnetlink.h
@@ -10,7 +10,7 @@ typedef int (*rtnl_doit_func)(struct sk_buff *, struct nlmsghdr *,
 typedef int (*rtnl_dumpit_func)(struct sk_buff *, struct netlink_callback *);
 
 enum rtnl_link_flags {
-	RTNL_FLAG_DOIT_UNLOCKED = 1,
+	RTNL_FLAG_DOIT_UNLOCKED = BIT(0),
 };
 
 enum rtnl_kinds {
-- 
2.35.1

