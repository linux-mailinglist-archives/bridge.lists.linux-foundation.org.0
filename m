Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA45EC3CA
	for <lists.bridge@lfdr.de>; Fri,  1 Nov 2019 14:36:31 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9B2E51709;
	Fri,  1 Nov 2019 13:34:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48E2317D1
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:39:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB14F87B
	for <bridge@lists.linux-foundation.org>;
	Fri,  1 Nov 2019 12:39:02 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id g3so3993938ljl.11
	for <bridge@lists.linux-foundation.org>;
	Fri, 01 Nov 2019 05:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=JRmAVX0LKzbwaoPbTw2s+8QG+vaakhy1/lXDson76Zo=;
	b=Xrh7EMh8ZzcIz9hX2sDR0DJOKVDQoj4Nu3vjKEi+eq+VzrrV/x2n3lmXMHPT7Chosq
	t8UTBs3G1A30iC2xGNLOjpvsCkHi5wxwWbAhHtxbcIERSyVSDdxYvuYj/xc6iA55+6Zg
	dCdJ75Vkt65BxiPjxakhEq/v/8FobnlaDtqjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=JRmAVX0LKzbwaoPbTw2s+8QG+vaakhy1/lXDson76Zo=;
	b=Xk0AlEIacEMRSsko8QboAzgA4PN6h6HZ8mm+TMfrDm3A1T8lVQvIob6lacQgkzPnCH
	rF3WzVUbxsnkmoANJJEyejFrBMeeIYnbKgz4yVrTJkc3TD9zzuPJM5kxMnjS5nX1zZbo
	P8W88KyOJv4PKc1UDUZrPQgEPNKhI5HI74FI7Mlm8wtvYLsN4dxyuB26kVH5a15XbaQl
	qIkB/Tr/Dul7evIRUwfzH7mk5l3iuIqwG+4DtAfDW7A8AaAb0vza3N7ZkzVP3OqyWA3X
	drSqcx6ADgmnOwWhJgJynOsOxSMwPRk2OiVZ5X+algaJA7i54l6u8KU1HelQpbcTcvxr
	h+5Q==
X-Gm-Message-State: APjAAAV5cYVMmWXagqVOla/A3GU0W0cpXJRgNAj1WmeaN6LOqB+psrkr
	hvyIrZLkaVmrOh/sMoyZPC0y7Q==
X-Google-Smtp-Source: APXvYqwWYr0F5q69cQb0x8WHQhuhEYUfvKb/FOLFgaNIxtBQmVWIgmZH8ZXdrS7SLCvIgOV8jZoIng==
X-Received: by 2002:a2e:b5c4:: with SMTP id g4mr8240839ljn.169.1572611941147; 
	Fri, 01 Nov 2019 05:39:01 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197]) by smtp.gmail.com with ESMTPSA id
	f25sm2349909ljp.100.2019.11.01.05.39.00
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 01 Nov 2019 05:39:00 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri,  1 Nov 2019 14:38:44 +0200
Message-Id: <20191101123844.17518-5-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next 3/3] net: bridge: fdb: restore unlikely()
	when taking over externally added entries
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

