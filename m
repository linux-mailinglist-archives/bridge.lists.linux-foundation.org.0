Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A314FBD60
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 15:39:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21C4240A90;
	Mon, 11 Apr 2022 13:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1NBHLz2cC3T; Mon, 11 Apr 2022 13:39:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id AA88140A93;
	Mon, 11 Apr 2022 13:39:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E24E1C0083;
	Mon, 11 Apr 2022 13:39:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F9DAC0033
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AA0483DF1
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cofww9brKMkp for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 13:39:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE8CE8270B
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:02 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id m8so2680009ljc.7
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 06:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=z5/W5d8ndtvXDnyj0JyTra9alKgaGGYDMc0cdYTNV+Y=;
 b=PrNADXRvCHQzEChEPZg2kZj2LmA3yA1kD5ofn6xym7Neu/ROj+Tf88BEBnHcTrX6zN
 QA+RXn7FIQd2kWEQ6ciFFhyLUIJaYhBKJ4HgU31OE6xHtbMkGZrgQioXycEHo5wN21Af
 fW7sXUhV8TThK665pAO8Yg8HmweuI9KaHu/7QTVsOFfZj0NwTfKK1o4UaCmFMLLgO59z
 VYxD1emxfusy5Hutf+hzI6e64uTHPyYv/MDGVwGZZkI98effVZyPQmceUjp8KlRn/UtF
 n6QTT0FCD65iAkEO1MRKAoN+w2NM7HBb4iy4sTXlUB1U26NLYF52XQkiYWYAY0hDSU9s
 l9Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=z5/W5d8ndtvXDnyj0JyTra9alKgaGGYDMc0cdYTNV+Y=;
 b=Qec4fSFxKNvks0B+wO6a0TrH/wo9DZ0u8+c/wPUt543Gv+LUPM0cNenFFzhzSd2Z8P
 5Vu0NpjOXHh6TGKBZbUcjr3fq0Vz1v8NSNTF4CQtV0jiLYBn+Y8TOFL7hAxgNKzpZm06
 vLdX2YIo+s0rjl48Qn2mqDZDtnkU8SWlfARxgciTk2lQZ9vyn983pU/hxKOzMGe8TmuC
 r9XTroBFRaMW0ipqIeJrei/MnfG2BZkAUk27JgphV/UPx+6ZnFF07pcLPckqz6EMcVVL
 0saNighP4e53DUN2+yDVc6w5lVigHhfX3Z+ZmWRjH2u8oKAnrY/NoEErqYY+qvywYuV1
 czAQ==
X-Gm-Message-State: AOAM530CMoe6vD0pdJy7hi4GHeQaMGn6ZUhY2131x5kF2WwKOdBHzu90
 ww4ypQ+Bk27Ng2NkOosB8Jk=
X-Google-Smtp-Source: ABdhPJzQsThOV+obcF51ZdbEECKXTvk7EJ2ggIeeWtcSxu+TM3BAO/EUQdy8+lJnQJzoNqN7/S2pCg==
X-Received: by 2002:a2e:b5aa:0:b0:24b:519f:d21f with SMTP id
 f10-20020a2eb5aa000000b0024b519fd21fmr9949878ljn.35.1649684340759; 
 Mon, 11 Apr 2022 06:39:00 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm3336847lfa.62.2022.04.11.06.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 06:39:00 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 11 Apr 2022 15:38:33 +0200
Message-Id: <20220411133837.318876-10-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411133837.318876-1-troglobit@gmail.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Joachim Wiberg <troglobit@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH RFC net-next 09/13] selftests: forwarding: rename
	test groups for next bridge mdb tests
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

Rename test groups to PASS and FAIL, respectively, for upcoming changes
to test suite.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 .../selftests/net/forwarding/bridge_mdb.sh     | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mdb.sh b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
index b1ba6876dd86..c0b84b7d4364 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mdb.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mdb.sh
@@ -7,9 +7,15 @@
 ALL_TESTS="mdb_add_del_test"
 NUM_NETIFS=2
 
-TEST_GROUP_IP4="225.1.2.3"
-TEST_GROUP_IP6="ff02::42"
-TEST_GROUP_MAC="01:00:01:c0:ff:ee"
+PASS_GRP_IP4="225.1.2.3"
+FAIL_GRP_IP4="225.1.2.4"
+
+PASS_GRP_MAC="01:00:01:c0:ff:ee"
+FAIL_GRP_MAC="01:00:01:c0:ff:ef"
+
+PASS_GRP_IP6="ff02::42"
+FAIL_GRP_IP6="ff02::43"
+
 
 source lib.sh
 
@@ -88,9 +94,9 @@ do_mdb_add_del()
 
 mdb_add_del_test()
 {
-	do_mdb_add_del $TEST_GROUP_MAC permanent
-	do_mdb_add_del $TEST_GROUP_IP4
-	do_mdb_add_del $TEST_GROUP_IP6
+	do_mdb_add_del $PASS_GRP_MAC permanent
+	do_mdb_add_del $PASS_GRP_IP4
+	do_mdb_add_del $PASS_GRP_IP6
 }
 
 trap cleanup EXIT
-- 
2.25.1

