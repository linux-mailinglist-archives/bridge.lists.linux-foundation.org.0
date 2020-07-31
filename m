Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CCF234929
	for <lists.bridge@lfdr.de>; Fri, 31 Jul 2020 18:26:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A3D786B11;
	Fri, 31 Jul 2020 16:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4UShhbe4Jrr1; Fri, 31 Jul 2020 16:26:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C708C86B2D;
	Fri, 31 Jul 2020 16:26:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AB707C004D;
	Fri, 31 Jul 2020 16:26:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3818CC004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 16:26:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17E3886B11
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 16:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CAufQjH9wNJ6 for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 16:26:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A23986841
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 16:26:24 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id kq25so19035678ejb.3
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 09:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3R+cTgvNGR4d5qwNZBWz6QFgT0E4GOZrozc/V1EzkDQ=;
 b=Zqj6VVsn44sb7ltN6Ckj4AyGr6v9s+IKNZe8OOuAkxevz0E7n2G98Rk7gQdIxQVpEV
 LxUmn5YkWv9zCDIw9Vyr1E13ntsiUBYATBcta18srKPyTOlsPpypz76NJ520IcZtniQc
 pyEZK5bkKME1tsBErUJEhM8SxELMH6K81jEH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3R+cTgvNGR4d5qwNZBWz6QFgT0E4GOZrozc/V1EzkDQ=;
 b=eXjWeLfetEd9y/2sPP7Ske6aXTC8sUvDAb6TkUIPZH2c2FdgAjlzIJH83+7kDNm7kw
 a9V5ajHi2wykla0NLA+TJhp8HMf1VWocNifsVExE4PDzfEeLagGkkP9sjWRUF4DuPrPT
 EQwkDr74DYBRoHxVeTfG7FX5CUeRBcffWdwyQX1x4NwTfvscrzXb7f7lGwC5Kx1CznKx
 qss/k1KFMUcdCrZT0RMEcAAV0gg3OaQZMCBcpEvrXLQnCOND8rA8XlY1K6Kx4SsODene
 Jn1wL0duqPT4+8P63gbyLACWNFRaN1qLJXGXTQ9jzjMK8TegUkwL8aiVJv7CCv2OIsnn
 78gQ==
X-Gm-Message-State: AOAM533E4Xzv1fPF5V14U4rD7rOSBFTIkaREZST99owqGziIZ0zu6TBR
 oYP+EvMdh04flx8qHMAzjzjS/w==
X-Google-Smtp-Source: ABdhPJypEr97RyaRZvgOwlOX/rKccKoucneB1QYhznA79kwu4RCzjBD/q0fF19oXpPus5Zc41ZQY9A==
X-Received: by 2002:a17:906:b046:: with SMTP id
 bj6mr5025237ejb.349.1596212782615; 
 Fri, 31 Jul 2020 09:26:22 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f21sm9649523edv.66.2020.07.31.09.26.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jul 2020 09:26:21 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri, 31 Jul 2020 19:26:16 +0300
Message-Id: <20200731162616.345380-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net] net: bridge: clear bridge's private skb space
	on xmit
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

We need to clear all of the bridge private skb variables as they can be
stale due to the packet being recirculated through the stack and then
transmitted through the bridge device. Similar memset is already done on
bridge's input. We've seen cases where proxyarp_replied was 1 on routed
multicast packets transmitted through the bridge to ports with neigh
suppress which were getting dropped. Same thing can in theory happen with
the port isolation bit as well.

Fixes: 821f1b21cabb ("bridge: add new BR_NEIGH_SUPPRESS port flag to suppress arp and nd flood")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_device.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 8c7b78f8bc23..9a2fb4aa1a10 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -36,6 +36,8 @@ netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
 	const unsigned char *dest;
 	u16 vid = 0;
 
+	memset(skb->cb, 0, sizeof(struct br_input_skb_cb));
+
 	rcu_read_lock();
 	nf_ops = rcu_dereference(nf_br_ops);
 	if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
-- 
2.25.4

