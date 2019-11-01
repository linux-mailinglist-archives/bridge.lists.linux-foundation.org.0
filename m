Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 19777EC3B9
	for <lists.bridge@lfdr.de>; Fri,  1 Nov 2019 14:34:40 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6644A19CC;
	Fri,  1 Nov 2019 13:33:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A92D182A
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:46:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A7CD63D
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:46:49 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id t5so10162763ljk.0
	for <bridge@lists.linux-foundation.org>;
	Fri, 01 Nov 2019 05:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=I8hGSuiDX0siuyCstsxGZV1KLBVAGFihygZ3ZtImzPE=;
	b=bzd/2xI1RryF7VA9zFz0u7IFLWG16bHddSXDANDFM8IQWZfVXJiUJnaLhUqfBJLHpH
	VOZ1u3pRxiWiG0CF5AJYxY0K2+SDt79omLm4XOk2I9mjaBzAKdrnJ+FPsCG3Gg2tZkt6
	xhNPcLx18j1clo/WBJV0PA42sDifp8loxqUjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=I8hGSuiDX0siuyCstsxGZV1KLBVAGFihygZ3ZtImzPE=;
	b=fyt3lApxg120mZ1Z1PVx1FFk/sTVvqEEDlLFamC3Bq8euXp1/VJPl4IU7Jzq1vXZRT
	sFccfCt9XDEtcsEYrKLlI5PMyIBzrHriL1VEuqYBx79jYs/yCnycN4+p9hk0f/RN97me
	Vy35o3vY6zrc2XgS7Voxh3PS4ZRok4+xmKDrlIoXjqtqFmdGKMt7f6sUiRnnD4NdBAtb
	o9Dx81fkM+jYVQvMY5019UQE0y4DLh/McFZIpxMOQqeCNlCRbNNdClpsHRmGnpQx2C4V
	rQnZNQF9FyjSa8ZvRImqzIBW7z6oSnAbYT+MU3Hz3yo+JmAvJSqGVudKiDo4xsf8Gxap
	2zyQ==
X-Gm-Message-State: APjAAAVMAjMY99n/QiFcPNA5tAxW8Y1JEEhNtQaIxBokNzfACNgYz+/W
	KOlVjW8KaLeSYPjcS5ZP1nrokg==
X-Google-Smtp-Source: APXvYqyWwrU/5nI8+MOv5v0FKAj42popJDgXL8ZRMQMf+LlpCpvMCGVPSKedVIlxwjm5imszJnj14g==
X-Received: by 2002:a2e:6817:: with SMTP id c23mr8034012lja.91.1572612407990; 
	Fri, 01 Nov 2019 05:46:47 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id t4sm2297909lji.40.2019.11.01.05.46.46
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 01 Nov 2019 05:46:47 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri,  1 Nov 2019 14:46:38 +0200
Message-Id: <20191101124639.32140-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191101124639.32140-1-nikolay@cumulusnetworks.com>
References: <20191101124639.32140-1-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next v2 2/3] net: bridge: fdb: avoid two atomic
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

