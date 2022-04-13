Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646F84FF530
	for <lists.bridge@lfdr.de>; Wed, 13 Apr 2022 12:52:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18E9040B1F;
	Wed, 13 Apr 2022 10:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKsap6AWyh5S; Wed, 13 Apr 2022 10:52:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id AF58340B55;
	Wed, 13 Apr 2022 10:52:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 92639C008A;
	Wed, 13 Apr 2022 10:52:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 17907C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38A3D41741
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6NKr-oFJzVO for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 10:52:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09D8E41732
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 10:52:28 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id u15so3062147ejf.11
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 03:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TL0c+Hs+0lBMqasciNPJrqUQXbgHwj7xsTQadVbU8KQ=;
 b=nOemDcgk5r0VlAKSVFNceh7dNh1uBqsIVQwLdnbY5q/cBVo39X4dUlRJlTF5Qurn5q
 beCBvCeRL3+X8pe82zI1Al4cih9Y1uHj/sGrCfUAsXLdvUCv/TtxUSowA6gLXCdpNxuu
 NCKs7HvTtrIGNAUO8Py93bu1fRsJudXEOetSGPOYkX5+1F+4PBVHk6rFkI8VXVX/FI77
 zwCvbLKIIUZ3P/O20X26/vZCjzvBNpcsvBzyoGvEFubC28twGcjOYklmqbo1c3nWNnWn
 DL8JBQfxeYKIv2kt/VoYHSLG9fyTrDdvcVo5/S7G/HkLGw7lii/TzM9CvGmZik9mWU4E
 7I2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TL0c+Hs+0lBMqasciNPJrqUQXbgHwj7xsTQadVbU8KQ=;
 b=kjbkYU/pbDqtZbr+VbNqmBGPUAGmkqkGQs8EZph+xxxr9I/lafF01siV+CJrWLwYUF
 Rw0mm6LsFOmIshRZZaJbrkljJMCkSEGtWHb2a4GGAJH0P55BYnJpMxPpfE9cyiTV5JO5
 /CeHjn3HEb/p7OP/gTB37FJiSx2IibwoLsGMj6mesLZHZh6qorF9uUSjQihpDJ5knkkK
 5Af4DQQNfOLnCr01NNkWmg5g4HrYhjIus6Q1NA+0kV0JrdhGounSrcII3rmtboePqPv9
 GcP3r8DNNubuCz2SfkodsmBwHiN185JBz1k5ugyvHtYbEFMAJQHMlxb6cUV4hShBajzD
 KYnA==
X-Gm-Message-State: AOAM531zL/Hv7yei891NJMJ7X04wKTTTLZsiafHTsLvxqErHKk7IRgdI
 YDqKkYPvmE2aB1zYKgWQcU7anA==
X-Google-Smtp-Source: ABdhPJy6jvymQpMk1zpC1tA/B0YcrpU0Rqtjf4DLdZuYidwvgZC+l358W5S3hhilB/yQeW4IN50uGA==
X-Received: by 2002:a17:907:2d20:b0:6e8:a4d3:3e91 with SMTP id
 gs32-20020a1709072d2000b006e8a4d33e91mr9121457ejc.475.1649847147170; 
 Wed, 13 Apr 2022 03:52:27 -0700 (PDT)
Received: from debil.. (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 v8-20020a1709063bc800b006e898cfd926sm2960952ejf.134.2022.04.13.03.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 03:52:26 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Apr 2022 13:51:56 +0300
Message-Id: <20220413105202.2616106-7-razor@blackwall.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413105202.2616106-1-razor@blackwall.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <razor@blackwall.org>, dsahern@kernel.org,
 bridge@lists.linux-foundation.org, idosch@idosch.org, roopa@nvidia.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [Bridge] [PATCH net-next v4 06/12] net: add ndo_fdb_del_bulk
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

