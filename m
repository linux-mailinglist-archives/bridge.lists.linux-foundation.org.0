Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4975F4FE25C
	for <lists.bridge@lfdr.de>; Tue, 12 Apr 2022 15:23:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7571183E8E;
	Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j9Pe4dyuJffW; Tue, 12 Apr 2022 13:23:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1BD4383E89;
	Tue, 12 Apr 2022 13:23:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D4BDAC002C;
	Tue, 12 Apr 2022 13:23:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EA7F3C0089
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA7E640286
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KIcc_CLOrfvm for <bridge@lists.linux-foundation.org>;
 Tue, 12 Apr 2022 13:23:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D00F04027D
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 13:23:12 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id s18so14859291ejr.0
 for <bridge@lists.linux-foundation.org>; Tue, 12 Apr 2022 06:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TL0c+Hs+0lBMqasciNPJrqUQXbgHwj7xsTQadVbU8KQ=;
 b=fY8ffGGtVbY8dJ+Pum0CRcGC6YXlMA0rkvpKenc11A5lffG+COmeo74YILwokEYNvW
 d1Jx0PgylqFD4fV5MaNcX1juwMsHgexHsy7vDHJMCPwI3vRaP6xsOj465eqv0jtWe8KH
 u4h0rjzKIx3u7t+TaIAywVpqeK+YJBsOtvXRUgfwDlp7b7a/9XOO0GSva/rMjzighPeu
 V5i0lVbjZjETVDO0wGUfaziUHKTXKfS9bIXTOctcHBTBwZXgFgPRu3IReq6b/xidMfx8
 KIPxBTcpUNm0OqFC6HVpVsAEwsDOljp3IGAI2GI3+goo5lB3RjUhowNGg2JP4J+jD0Z5
 MePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TL0c+Hs+0lBMqasciNPJrqUQXbgHwj7xsTQadVbU8KQ=;
 b=mYr2SK7Ld6NXYcbkL3757UmhOBY7uwrhBY22G7V+bo626mpB/q+hps1rkpmIz2twLK
 RCpG/4hhp/HtgvIdXue22C3KNvi+qXA5ecvfO2fTjRCs5ouGG0YuviE6f7pRkGur6XCS
 EtWT/2dkZg3XpWlKPv/cPF1GRQ6SikM8Why8LhKOFO9MYkdDZ71wSvwneL4mRcggmVja
 RZRaqk4o0KXIdGxKCgRR+HYVWMhrnswCoKAJpshV3dgZ1bshMFgySW8ybgGejn6wDyVX
 t/ti0OQ3zR0GwenTXTadS2rZTn3W9HuwrM8z1K1G3zpHdqwILuGsNhAJJEbGDYPqFVBL
 vSPg==
X-Gm-Message-State: AOAM531/i/ZTthKTrgpCMbf1l1clGeN8+51yLN9gbv+7lyIxwb78yvnH
 vKRQ6iQWTqpz/obxBxbe+pka0A==
X-Google-Smtp-Source: ABdhPJw4d1MUchQXlkpHba8s2U9YZk+Af7ZipghYtclXLY7NwNHQ2H1zZ2Up8/8wRrhrAhLwekPOMg==
X-Received: by 2002:a17:906:37cd:b0:6e0:bdb6:f309 with SMTP id
 o13-20020a17090637cd00b006e0bdb6f309mr34510105ejc.394.1649769790535; 
 Tue, 12 Apr 2022 06:23:10 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 z16-20020a17090665d000b006e8789e8cedsm3771301ejn.204.2022.04.12.06.23.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 06:23:10 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 12 Apr 2022 16:22:39 +0300
Message-Id: <20220412132245.2148794-3-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
References: <20220412132245.2148794-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v3 2/8] net: add ndo_fdb_del_bulk
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

Add a new netdev op called ndo_fdb_del_bulk, it will be later used for
driver-specific bulk delete implementation dispatched from rtnetlink. The
first user will be the bridge, we need it to signal to rtnetlink from
the driver that we support bulk delete operation (NLM_F_BULK).

Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
---
 include/linux/netdevice.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 28ea4f8269d4..a602f29365b0 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1260,6 +1260,10 @@ struct netdev_net_notifier {
  *		      struct net_device *dev,
  *		      const unsigned char *addr, u16 vid)
  *	Deletes the FDB entry from dev coresponding to addr.
+ * int (*ndo_fdb_del_bulk)(struct ndmsg *ndm, struct nlattr *tb[],
+ *			   struct net_device *dev,
+ *			   u16 vid,
+ *			   struct netlink_ext_ack *extack);
  * int (*ndo_fdb_dump)(struct sk_buff *skb, struct netlink_callback *cb,
  *		       struct net_device *dev, struct net_device *filter_dev,
  *		       int *idx)
@@ -1510,6 +1514,11 @@ struct net_device_ops {
 					       struct net_device *dev,
 					       const unsigned char *addr,
 					       u16 vid);
+	int			(*ndo_fdb_del_bulk)(struct ndmsg *ndm,
+						    struct nlattr *tb[],
+						    struct net_device *dev,
+						    u16 vid,
+						    struct netlink_ext_ack *extack);
 	int			(*ndo_fdb_dump)(struct sk_buff *skb,
 						struct netlink_callback *cb,
 						struct net_device *dev,
-- 
2.35.1

