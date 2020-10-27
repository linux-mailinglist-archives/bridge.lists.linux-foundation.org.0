Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7C129C7FB
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5709B8738B;
	Tue, 27 Oct 2020 19:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8GnYRVXXPppv; Tue, 27 Oct 2020 19:00:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAE5487388;
	Tue, 27 Oct 2020 19:00:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9E8CAC0051;
	Tue, 27 Oct 2020 19:00:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A3A0EC0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 85E5D2E131
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eu15--5xl2hn for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id B4DA52E13E
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:26 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id t3so155256wmi.3
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HWwH1mzK26OWStIyr7YQx947cp92x7ujWn8BN7kPbwM=;
 b=OpuUHStqMculoVADiWHShDs8jkbf6mK4yTc4KiX2t5Tru35iyhx3OjPGf4omufYeJq
 48Vha9bTSNQ45A6ZbF97QFusOaeyQ5pzXRWZ0Xnbulxx8HIoCbsX9e6GC98u7nLDLkyy
 NtvzKZEc9WEvGEPNL3D3/TOah2z7SRiLsW91bmPgqDzy9zgi3oJS7GOqPZZH1da+rwo1
 SJtGDzjkc/ZB9nABYEHVPuzazu7Xz+qwytjWc3VetNZjerP0G/QiiUDKHWNEomjhWJzZ
 etO5OfBG4tyTCvLJy5cm6N/nNGlzoKyqshPzi52Nxo4nEr9ma8U0UGgAnm493MKwl3gC
 Bb7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HWwH1mzK26OWStIyr7YQx947cp92x7ujWn8BN7kPbwM=;
 b=DMdwOPUEIE9s8DqTQVXeTeVBOyes1cwHdnE1kejvD0zoBR4OfFmzK3eGJQu73e37+C
 FzTsUQ1lyGgIN+R/spF9oEr/c01iGA/xqmWKDpsGYqYcQge52RMh7agkLO/lk1a+NtSy
 3tW3bXMpjGK3jK7o1zkpXXNw0oFZMYv+/1zbZed3fSosB3IfbMnzU0LwHofgXf04nP1v
 uFPyeu02j6+RM85J0YQIlJp3vjof44eUs+Avy0fLrbNUr/zAwshKkREruPwr7IiyLYUD
 tdyKJLtaQa73QQvLGQYGlsJTQvg2ijd0nSKmFB0vusYIFwj0Lx65asZQcP/bGtg7kYnF
 5HuQ==
X-Gm-Message-State: AOAM533+TMMW6TleXdOB6RcVu2UM3uOmSeUZQSoJeZOatMhdCrbasLYS
 OAvJjMLPf9lWG2Bc83zqv17iCQ==
X-Google-Smtp-Source: ABdhPJxxo103u+lxleVTEnlhpF+mLQdkEkTDFatbmlZ4/KjzqV69h9H52pHB2LImZcZmsTNPIa/tmw==
X-Received: by 2002:a7b:cc09:: with SMTP id f9mr4166353wmh.93.1603825225122;
 Tue, 27 Oct 2020 12:00:25 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:24 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:34 +0200
Message-Id: <20201027185934.227040-17-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 16/16] selftests: net: bridge: add test
	for igmpv3 *, g auto-add
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
 .../selftests/net/forwarding/bridge_igmp.sh   | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index db0a03e30868..0e71abdd7a03 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -4,7 +4,7 @@
 ALL_TESTS="v2reportleave_test v3include_test v3inc_allow_test v3inc_is_include_test \
 	   v3inc_is_exclude_test v3inc_to_exclude_test v3exc_allow_test v3exc_is_include_test \
 	   v3exc_is_exclude_test v3exc_to_exclude_test v3inc_block_test v3exc_block_test \
-	   v3exc_timeout_test"
+	   v3exc_timeout_test v3star_ex_auto_add_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -621,6 +621,35 @@ v3exc_timeout_test()
 	v3cleanup $swp1 $TEST_GROUP
 }
 
+v3star_ex_auto_add_test()
+{
+	RET=0
+
+	v3exclude_prepare $h1 $ALL_MAC $ALL_GROUP
+
+	$MZ $h2 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_IS_INC" -q
+	sleep 1
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and .src == \"192.0.2.3\" and \
+				.port == \"$swp1\")" &>/dev/null
+	check_err $? "S,G entry for *,G port doesn't exist"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and .src == \"192.0.2.3\" and \
+				.port == \"$swp1\" and \
+				.flags[] == \"added_by_star_ex\")" &>/dev/null
+	check_err $? "Auto-added S,G entry doesn't have added_by_star_ex flag"
+
+	check_sg_fwding 1 192.0.2.3
+
+	log_test "IGMPv3 S,G port entry automatic add to a *,G port"
+
+	v3cleanup $swp1 $TEST_GROUP
+	v3cleanup $swp2 $TEST_GROUP
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4

