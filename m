Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D1866EC3BC
	for <lists.bridge@lfdr.de>; Fri,  1 Nov 2019 14:34:56 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 697D819D3;
	Fri,  1 Nov 2019 13:33:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5BC16182A
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:46:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C049C63D
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:46:50 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 195so7131520lfj.6
	for <bridge@lists.linux-foundation.org>;
	Fri, 01 Nov 2019 05:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=JRmAVX0LKzbwaoPbTw2s+8QG+vaakhy1/lXDson76Zo=;
	b=WVnfw1qw2kzwmwk+Bp9IpqrORLjhdpN8OhiSzo8Xv72VKXWy2tLbyIGD3mCh1W0Px2
	qYwa3YUXQc3Ju0aOvn01M+LsQvckfc1hSkoa7sLG3s7EqFxUMPiluPy8qavqc3SlcKLk
	fbsPVon9M7sQ8Uk8iw0gKZERg44ug1XALBwJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=JRmAVX0LKzbwaoPbTw2s+8QG+vaakhy1/lXDson76Zo=;
	b=qUIxX1PmDgmbgzprTlS0pBmT2PAr+iULZO64QdGDr4tzTK887nwApaUJwqoZepqFZr
	Qx9nFA/kQ146YaHWDu5aLduEUt78Pzc2eKbPjphdLRs3ZHFBpYeG5O/pRhJ8g32uPJ0W
	DeXCY82Ohd+ATN2vFMcKSR8gwPwTm0WJhBYbmPj4D5eGZU7i3ME+kDpmuvUHADTSL8Cr
	WHFoJVC+EuvE7QXLYyYKnf6WXyaYhm7gN5kYCSRlzaWF0Euv2JwspQ7aTOG6baI/eGi6
	XQzw3XpmU2cwkaCPc1RnDv/mRfFhWR4XeOwEAtIIcuNrLphUjmviq8W7lxeJrR8zC6jH
	7qlA==
X-Gm-Message-State: APjAAAUybbZroHbHUD4oz7wrMLUZUFA2lD3CFmE1XplMJE9zYssJs7of
	FX6obJBpX7jrwTc2ewsyMAgw9g==
X-Google-Smtp-Source: APXvYqwCAEQcQrFVqGdlSE1891H5EOu7bWUh3BXQnRMvTS02wzyPLYP0zf9hHcuC75XLsgRsUwYgeA==
X-Received: by 2002:ac2:5f0a:: with SMTP id 10mr7129371lfq.57.1572612409262;
	Fri, 01 Nov 2019 05:46:49 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id t4sm2297909lji.40.2019.11.01.05.46.48
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 01 Nov 2019 05:46:48 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri,  1 Nov 2019 14:46:39 +0200
Message-Id: <20191101124639.32140-4-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next v2 3/3] net: bridge: fdb: restore
	unlikely() when taking over externally added entries
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

Taking over hw-learned entries is not a likely scenario so restore the
unlikely() use for the case of SW taking over externally learned
entries.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_fdb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 7500c84fc675..284b3662d234 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -587,8 +587,10 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 				fdb->dst = source;
 				fdb_modified = true;
 				/* Take over HW learned entry */
-				test_and_clear_bit(BR_FDB_ADDED_BY_EXT_LEARN,
-						   &fdb->flags);
+				if (unlikely(test_bit(BR_FDB_ADDED_BY_EXT_LEARN,
+						      &fdb->flags)))
+					clear_bit(BR_FDB_ADDED_BY_EXT_LEARN,
+						  &fdb->flags);
 			}
 			if (now != fdb->updated)
 				fdb->updated = now;
-- 
2.21.0

