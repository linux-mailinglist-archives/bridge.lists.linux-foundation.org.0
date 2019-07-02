Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C435D7E6
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:50:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C91A0FAE;
	Tue,  2 Jul 2019 21:48:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2C18D19CA
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 12:05:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AB690834
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 12:05:07 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p11so6299476wro.5
	for <bridge@lists.linux-foundation.org>;
	Tue, 02 Jul 2019 05:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=idQcbvzPIu1BSdVQIplt97QLkM9ok6uSRBt+kD2R0VY=;
	b=Jcf5gvAuECDHnSqlWrJl59LMVaLbAq8Zcjj51ekAPjCZnrcPLabHmGPaEC/zzSNAPh
	REueJzvJg/hipwla5YFSjsi+BhDtSH0TpqY2lAxiiGvHbJ+3/HB8eyarYmn5Q3PdrQTy
	kwUI9wi0zeGfbhZDFT/O6IAGaK/a5cYvHspWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=idQcbvzPIu1BSdVQIplt97QLkM9ok6uSRBt+kD2R0VY=;
	b=iGrsfTSatHWu0zWdVbUrRZO0FpY8Q/oNHAhuzwNFQSD4O84jAoGdVklrI/U2NDiMTJ
	P3kY4je14nh4FLM1eIxWXKeNjQLIjDAywMiJoelvRY6OCMo6FHghLsGt96bDW2obS8Cp
	TPjw3faBUKhDEzNlqhIxpq6HqSqq7PNmWstP8Fvbwpg6ULkyB4nuDrMk1X+9fIriGHV4
	2Uk/h9zseIczZZrmV9S2C69h6k4d/iCNeD9sIcdZWayE7clyvyE1PZyvypknWrM3m6Xv
	hRf+qVe6TWm8Bk8IZUuBeaLxVxp/Tyen7GCwnURnn5/w4jLI/AzDZjFBaBJ6meSSe1xq
	gU0g==
X-Gm-Message-State: APjAAAXS4BNuL761KCE6RXmAWrpe/5ar6lqoQiwjy6rloqh14S+Wejen
	In8JgdC2qGXlmkbwqoBtR73qhQ==
X-Google-Smtp-Source: APXvYqwfE1BZM0ah4AdPm6PvSxcO/B0fXqWs+cIVyF+4T5t9StbPfChMJtqePWxmMI2XbhzR6h38bA==
X-Received: by 2002:adf:ab0f:: with SMTP id q15mr7637137wrc.325.1562069106370; 
	Tue, 02 Jul 2019 05:05:06 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id x5sm2542655wmf.33.2019.07.02.05.05.05
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 02 Jul 2019 05:05:05 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue,  2 Jul 2019 15:00:21 +0300
Message-Id: <20190702120021.13096-5-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702120021.13096-1-nikolay@cumulusnetworks.com>
References: <20190702120021.13096-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: martin@linuxlounge.net, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, yoshfuji@linux-ipv6.org,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, davem@davemloft.net
Subject: [Bridge] [PATCH net 4/4] net: bridge: stp: don't cache eth dest
	pointer before skb pull
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Don't cache eth dest pointer before calling pskb_may_pull.

Fixes: cf0f02d04a83 ("[BRIDGE]: use llc for receiving STP packets")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_stp_bpdu.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/bridge/br_stp_bpdu.c b/net/bridge/br_stp_bpdu.c
index 68a6922b4141..7796dd9d42d7 100644
--- a/net/bridge/br_stp_bpdu.c
+++ b/net/bridge/br_stp_bpdu.c
@@ -143,7 +143,6 @@ void br_send_tcn_bpdu(struct net_bridge_port *p)
 void br_stp_rcv(const struct stp_proto *proto, struct sk_buff *skb,
 		struct net_device *dev)
 {
-	const unsigned char *dest = eth_hdr(skb)->h_dest;
 	struct net_bridge_port *p;
 	struct net_bridge *br;
 	const unsigned char *buf;
@@ -172,7 +171,7 @@ void br_stp_rcv(const struct stp_proto *proto, struct sk_buff *skb,
 	if (p->state == BR_STATE_DISABLED)
 		goto out;
 
-	if (!ether_addr_equal(dest, br->group_addr))
+	if (!ether_addr_equal(eth_hdr(skb)->h_dest, br->group_addr))
 		goto out;
 
 	if (p->flags & BR_BPDU_GUARD) {
-- 
2.21.0

