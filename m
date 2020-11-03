Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804872A4CAF
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B6E887459;
	Tue,  3 Nov 2020 17:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSnXLU4+5pIM; Tue,  3 Nov 2020 17:24:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FDAC87447;
	Tue,  3 Nov 2020 17:24:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 86F89C0051;
	Tue,  3 Nov 2020 17:24:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B415EC088B
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 91087868B8
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6PIHVD4xkQ6z for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61C1386770
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:24 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 205so85274wma.4
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+U3wm2rgyCzyQi2OmYrK6I5AO/58BSwqmC8oZax1fm0=;
 b=fAti7ujWNagdgmLH3bzq1Pb8QRHf5+ZKLmQS7u+oZPop1PjqhEPgoZB6dzjeYJ58CD
 5hJJ38OE7RzFs0OgsNGFBI1pTvn9xjPNJ2hxWKXOb/KnDWwhSXXQaMZwwsldGOlClUxa
 4NFlhw6+cpKX2j77ngqls2GtRwHc3ThMhHhbn9TBe3no9KQNMvqykZhWigQgDn7hzmdQ
 AmS0aOAfK7H8YJNKzNSUgI8wMtypTRklNp9rrJK6mRw+mQzKfHBFZBCLe3fnTwv35QGF
 aboyvc1J85JU+GOe8CpRuJvioDcYTd6cR5t5XKJKanH7qXws9gVnRHwRqEOCgsLgm6vm
 t8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+U3wm2rgyCzyQi2OmYrK6I5AO/58BSwqmC8oZax1fm0=;
 b=a0RSUQRJ6QiGMWSAZzE2VkOtRLjFkcwH4oSwOn3303WEzL5FtJZSGz+2JuLlHPm1Dg
 ndaDZnzWxKCL0ZoQFIBnPu+FL293kWDw9sK9MWUnEONgxOV508Jv9gATbbnxp5mIF37V
 /Op7tIn3ZPoSA8/4y72DFczvBqVokW7Q92FUCWXHpjEdS12dlqnLqnKERxcKqh9V1fBq
 zRIj9DwmX3zLKqTHha+XiDMh0rTw/rOSiKz3K7pgPnNGTFOSRC9zTc+rIBFrjRM6Yq80
 2OK7rUEocbggUVHzClm3cGrsCouGzSOiFR/M5FXe/A9P4OQr5F3LrUVwz6Ry04C7fRFc
 lrgw==
X-Gm-Message-State: AOAM532ryS/rHyDoWlomHg9GcDQ/YSRbEGUabnjwolqsJNN0zBjB3t7Z
 vI8soBEIAhcNTxPN03EHxmtEsQ==
X-Google-Smtp-Source: ABdhPJwX8rf5TdRm6ymm1CR/0TJhIm5CBvENuNBibdmMfdU+3GZaFGU9gLum7eyJG2/dfjnls5TG8A==
X-Received: by 2002:a05:600c:22d7:: with SMTP id
 23mr190387wmg.67.1604424262647; 
 Tue, 03 Nov 2020 09:24:22 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:22 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:01 +0200
Message-Id: <20201103172412.1044840-6-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 05/16] selftests: net: bridge: add test
	for mldv2 inc -> allow report
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

The test checks for the following case:
   Router State  Report Received  New Router State     Actions
   INCLUDE (A)     ALLOW (B)      INCLUDE (A+B)        (B)=MALI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index 3d0d579e4e03..accc4ec2dcce 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="mldv2include_test"
+ALL_TESTS="mldv2include_test mldv2inc_allow_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -13,6 +13,12 @@ MZPKT_IS_INC="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:
 00:05:02:00:00:00:00:8f:00:8e:d9:00:00:00:01:01:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:\
 00:00:00:00:cc:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:01:20:01:0d:b8:00:01:00:00:00:\
 00:00:00:00:00:00:02:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:03"
+# MLDv2 allow report: grp ff02::cc allow 2001:db8:1::10,2001:db8:1::11,2001:db8:1::12
+MZPKT_ALLOW="33:33:00:00:00:01:fe:54:00:04:5e:ba:86:dd:60:0a:2d:ae:00:54:00:01:fe:80:00:00:\
+00:00:00:00:fc:54:00:ff:fe:04:5e:ba:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:00:01:3a:00:05:\
+02:00:00:00:00:8f:00:8a:ac:00:00:00:01:05:00:00:03:ff:02:00:00:00:00:00:00:00:00:00:00:00:00:\
+00:cc:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:10:20:01:0d:b8:00:01:00:00:00:00:00:00:00:\
+00:00:11:20:01:0d:b8:00:01:00:00:00:00:00:00:00:00:00:12"
 
 source lib.sh
 
@@ -136,6 +142,27 @@ mldv2include_test()
 	mldv2cleanup $swp1
 }
 
+mldv2inc_allow_test()
+{
+	RET=0
+	local X=("2001:db8:1::10" "2001:db8:1::11" "2001:db8:1::12")
+
+	mldv2include_prepare $h1
+
+	$MZ $h1 -c 1 $MZPKT_ALLOW -q
+	sleep 1
+	brmcast_check_sg_entries "allow" "${X[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+
+	brmcast_check_sg_fwding 1 "${X[@]}"
+	brmcast_check_sg_fwding 0 "2001:db8:1::100"
+
+	log_test "MLDv2 report $TEST_GROUP include -> allow"
+
+	mldv2cleanup $swp1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4

