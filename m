Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7612A4CC0
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFCE58648E;
	Tue,  3 Nov 2020 17:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HEmn2UUsDQGQ; Tue,  3 Nov 2020 17:24:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 645B986475;
	Tue,  3 Nov 2020 17:24:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 42144C088B;
	Tue,  3 Nov 2020 17:24:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 055B1C1AD4
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E625E87482
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QS9PCRN99gjb for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1C00887472
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:35 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id k18so79869wmj.5
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gJvu8f2jgbnJqs1NY6YsP4oxwkKYOvAd3eazDvKS0GI=;
 b=g+69WtLfjhgsl+7v0a3curceaiZQaK+hNEG0UuCK88gnmq2yKLMI9heFnt7ZKzGER2
 Krxonchdb+j3nEXNS0BRqY2EaTllTf7rOwW+4up+hQ8B+OGtVmmoRnvw7HVjgY2Nkjgv
 magldk+KL2ncKXmYUK7YkFEYKcdfWrYzRjvAtYiqoDSjgKO/I3fMhfWecpefFk9yt6IL
 ixzvd6YWlVHWH4oEVmQ0iWY6oxqc3i45CSp72DJ/Q+gUmAl6VCJECo6z1WdpOMWtMzTF
 lPIazRPIzkQtePTpdEnEE9kdGG7axZtUHDsCaShXU9Q+5EWXLwsKnf3jEeXc2uRxwj+X
 xDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gJvu8f2jgbnJqs1NY6YsP4oxwkKYOvAd3eazDvKS0GI=;
 b=raRJjbZapssWBjl8RNLH/yDizym8F+dV7xDdUAIAIn47uqdfojOkm+UftXpKQCnLDn
 utEeF2gDfMvYxRj5inOPQdU8nzLboiexEClxbhwR5oXSQHh3Bbndx0OOnVbgAjfMd74H
 Y8jwOCHhaPczGC5hr88OTl0ldsmBJ1LiIYe7OAoZY2vXKB3SE0NdygvtfOsNAZ/pxnln
 5GtHjSalIwVX2JgIWl1+FLhHdiDam3ymi6zKwjROFFZ0+OIoC5D7MJanf2ngkPgH5uXp
 LmFL4WRpy/mP4j/GvtzrTDjvFwtKbU5ReqWoOUoWSTCaoOwrbjHHylXufEzgpiNtFaqy
 RqpQ==
X-Gm-Message-State: AOAM531wdWXilr8Vkv7BnSpieX2lxayEut4z35byn3PwUuSjuETQzVac
 xaMWi0nDU7oIO9sWaWhocQULTQ==
X-Google-Smtp-Source: ABdhPJwZAIOV+nauKiS1IVebL2y9F3nncAa9ZEJ3reSeuzMIOvHbbW1qxa46xQmzLf+ycR3MG7CueQ==
X-Received: by 2002:a1c:8194:: with SMTP id c142mr218010wmd.94.1604424273589; 
 Tue, 03 Nov 2020 09:24:33 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:33 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:12 +0200
Message-Id: <20201103172412.1044840-17-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 16/16] selftests: net: bridge: add test
	for mldv2 *, g auto-add
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

When we have *,G ports in exclude mode and a new S,G,port is added
the kernel has to automatically create an S,G entry for each exclude
port to get proper forwarding.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index b34cf4c6ceba..ffdcfa87ca2b 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -4,7 +4,7 @@
 ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test \
 	   mldv2inc_to_exclude_test mldv2exc_allow_test mldv2exc_is_include_test \
 	   mldv2exc_is_exclude_test mldv2exc_to_exclude_test mldv2inc_block_test \
-	   mldv2exc_block_test mldv2exc_timeout_test"
+	   mldv2exc_block_test mldv2exc_timeout_test mldv2star_ex_auto_add_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -519,6 +519,35 @@ mldv2exc_timeout_test()
 	mldv2cleanup $swp1
 }
 
+mldv2star_ex_auto_add_test()
+{
+	RET=0
+
+	mldv2exclude_prepare $h1
+
+	$MZ $h2 -c 1 $MZPKT_IS_INC -q
+	sleep 1
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and .src == \"2001:db8:1::3\" and \
+				.port == \"$swp1\")" &>/dev/null
+	check_err $? "S,G entry for *,G port doesn't exist"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and .src == \"2001:db8:1::3\" and \
+				.port == \"$swp1\" and \
+				.flags[] == \"added_by_star_ex\")" &>/dev/null
+	check_err $? "Auto-added S,G entry doesn't have added_by_star_ex flag"
+
+	brmcast_check_sg_fwding 1 2001:db8:1::3
+
+	log_test "MLDv2 S,G port entry automatic add to a *,G port"
+
+	mldv2cleanup $swp1
+	mldv2cleanup $swp2
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4

