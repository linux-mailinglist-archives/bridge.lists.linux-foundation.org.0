Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F27EC3C8
	for <lists.bridge@lfdr.de>; Fri,  1 Nov 2019 14:36:13 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 754AF1BD7;
	Fri,  1 Nov 2019 13:34:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1735717D1
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:39:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8896687B
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:39:01 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y127so7137066lfc.0
	for <bridge@lists.linux-foundation.org>;
	Fri, 01 Nov 2019 05:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=I8hGSuiDX0siuyCstsxGZV1KLBVAGFihygZ3ZtImzPE=;
	b=bTPrn29DM4oxQdTG9g2LPl94YKLIXY4Q+Mt5OJFj9hTIE8Rcc+KdHCoxhdonjxjFOO
	a+WM8zrbbykyb6weBLkEtrbqqJSCx5JShRTlmDb4mvwAyhxNIdO8S/qmN24e8wqQdg81
	rFRwvcZe8JN25EIs4EQNf2+rhglkfRwfaf8AI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=I8hGSuiDX0siuyCstsxGZV1KLBVAGFihygZ3ZtImzPE=;
	b=ciulkCsvYvCzccD84/jLdVdHYnB8qnJuiI+Xj8cG50lQRkib9YFVnkSMjZ5CydtDSQ
	mQfR4s/KwtXv6l7K+KJ5dt/XbJ84jK3zwfxma4HpiUVDSMh9bMyvt4/M2/ENKliOH2tk
	9MeiHt8c0fL6xGZBkWAc2Eu6ls2p2CWEaXVOFlM7OCBsE48yywCNW/H0V0Mo48ZtlDKz
	2zBvVmDtCiM/m0Te0LjY4ClRRilMA+KCk4aH5ZbTbYrHyMUAYcOe3jjH54p3KmwgTVFe
	OIhlTObA2pX9c/hHsxvjsjfg8AwzqQmwOhKQBpyy9qu8DRQ8AoJOO5kqrgBMYzzBhLMT
	5ssw==
X-Gm-Message-State: APjAAAVVykghQHItL7Cqb3UAFzz7nds80NDTwXFtshlCkm1WiYOaEfNO
	CbwQ1Q8tFoisVSY5b4rKtRJbSQ==
X-Google-Smtp-Source: APXvYqz4NVwCSqthm+5MZ6bDS8JGPunuZDns1RHdt0OkzF4HfE43IhFNO5yP1zqBk0Ze+kGdiJjA6w==
X-Received: by 2002:a19:640e:: with SMTP id y14mr7333668lfb.137.1572611939969; 
	Fri, 01 Nov 2019 05:38:59 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	f25sm2349909ljp.100.2019.11.01.05.38.58
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 01 Nov 2019 05:38:59 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri,  1 Nov 2019 14:38:43 +0200
Message-Id: <20191101123844.17518-4-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191101123844.17518-1-nikolay@cumulusnetworks.com>
References: <20191101123844.17518-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: [Bridge] [PATCH net-next 2/3] net: bridge: fdb: avoid two atomic
	bitops in br_fdb_external_learn_add()
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

If we setup the fdb flags prior to calling fdb_create() we can avoid
two atomic bitops when learning a new entry.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index b37e0f4c1b2b..7500c84fc675 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1113,14 +1113,15 @@ int br_fdb_external_learn_add(struct net_bridge *br, struct net_bridge_port *p,
 
 	fdb = br_fdb_find(br, addr, vid);
 	if (!fdb) {
-		fdb = fdb_create(br, p, addr, vid, 0);
+		unsigned long flags = BIT(BR_FDB_ADDED_BY_EXT_LEARN);
+
+		if (swdev_notify)
+			flags |= BIT(BR_FDB_ADDED_BY_USER);
+		fdb = fdb_create(br, p, addr, vid, flags);
 		if (!fdb) {
 			err = -ENOMEM;
 			goto err_unlock;
 		}
-		if (swdev_notify)
-			set_bit(BR_FDB_ADDED_BY_USER, &fdb->flags);
-		set_bit(BR_FDB_ADDED_BY_EXT_LEARN, &fdb->flags);
 		fdb_notify(br, fdb, RTM_NEWNEIGH, swdev_notify);
 	} else {
 		fdb->updated = jiffies;
-- 
2.21.0

