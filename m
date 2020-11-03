Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E71B92A4CC2
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9CCD886E50;
	Tue,  3 Nov 2020 17:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AWsU1YRAAPop; Tue,  3 Nov 2020 17:24:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E4EB86DE4;
	Tue,  3 Nov 2020 17:24:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06D1AC088B;
	Tue,  3 Nov 2020 17:24:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7113EC1AD4
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55E2B87482
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b6SrzlAvfUDK for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2844887470
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p22so99900wmg.3
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gOOQHtOX6w4d/nnhTN7xuIIArAAXX7jfcR/5MZf9CcQ=;
 b=MVxyWoYMT/dNrrNoy0pKOM7oUG4gcNl0f7D/EXoZgrUK7eMdDa3wkQNasvjtRxHlju
 O0zIVwVyE4N+SRFeN9Lie40vPtXDqLSrNkhgiMEJz7kpPXDznc3xKDsUsJpuXlBsKpow
 0ROekGogck6G+AaLClyE6EvuBQmj+A3TRKn5BnL2j+SHENh+/qK2L9Bw3pB4jXj4bhjR
 qjmHX55W+6CDuvdDrO6/xWYQ8bJWor57vWQudWp45oDDX+mwGGxQGD4Yht0vN6XdfFEx
 +32xRLunOOkxHblgEfFzDsPhn35PIp65Na+TJTvtB4khw2BhPH3OFaD1NM8tJelXgFV1
 rFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gOOQHtOX6w4d/nnhTN7xuIIArAAXX7jfcR/5MZf9CcQ=;
 b=n78paBbrInIku+QWZw04PQZpkZttoa8vqeAROFW4vrwyiHADiuvtZN0v/v9ViXO+qa
 iZpJ8MrGyTSNZag0fdhdVWFYpmQh/coKvFFZWfEb1/ARmJ/3bAM3bAZ+Z0IQ1sx5kHO4
 mRLar0xZVN0HcH9sbPlfedh24rqFfL9hc4H/G/wftS8sQaoeMQstBT+RQiHkum/sXU3o
 oEUY4sNNtyuTdpe9dayzL1eU+w22VOTiuP7YGCWDik6WKX2oCFrSFqsWaIRiHJgyuYQD
 LJ6z+TYl3wzZur96FUVP0e2LFGAyedn9gl9Dhd2Bwl1L7aaO6CDpuiO8p8WrbWJY/0nh
 TYUA==
X-Gm-Message-State: AOAM532aStSiUf/doYFBepG4BYFtD3cbYyxKUoaAsx3bNGZ4g2gG9hLE
 NWjSBFrET8hp+ziGlziQqugG6w==
X-Google-Smtp-Source: ABdhPJwpIo7PahMGlPfdl8VLdYvwUQ68+oeROQ9Hgi5d4uO/c99jWh3GMWf9AmtP7f2aKwU3sdfpzQ==
X-Received: by 2002:a1c:2d8f:: with SMTP id t137mr237414wmt.26.1604424272680; 
 Tue, 03 Nov 2020 09:24:32 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:32 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:11 +0200
Message-Id: <20201103172412.1044840-16-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 15/16] selftests: net: bridge: add test
	for mldv2 exclude timeout
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

Test that when a group in exclude mode expires it changes mode to
include and the blocked entries are deleted.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 48 ++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index c498e51b8d2b..b34cf4c6ceba 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -4,7 +4,7 @@
 ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test \
 	   mldv2inc_to_exclude_test mldv2exc_allow_test mldv2exc_is_include_test \
 	   mldv2exc_is_exclude_test mldv2exc_to_exclude_test mldv2inc_block_test \
-	   mldv2exc_block_test"
+	   mldv2exc_block_test mldv2exc_timeout_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -473,6 +473,52 @@ mldv2exc_block_test()
 	mldv2cleanup $swp1
 }
 
+mldv2exc_timeout_test()
+{
+	RET=0
+	local X=("2001:db8:1::20" "2001:db8:1::30")
+
+	# GMI should be 3 seconds
+	ip link set dev br0 type bridge mcast_query_interval 100 mcast_query_response_interval 100
+
+	mldv2exclude_prepare $h1
+	ip link set dev br0 type bridge mcast_query_interval 500 mcast_query_response_interval 500
+	$MZ $h1 -c 1 $MZPKT_ALLOW2 -q
+	sleep 3
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and .filter_mode == \"include\")" &>/dev/null
+	check_err $? "Wrong *,G entry filter mode"
+
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"2001:db8:1::1\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 2001:db8:1::1 entry still exists"
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and \
+				.source_list != null and
+				.source_list[].address == \"2001:db8:1::2\")" &>/dev/null
+	check_fail $? "Wrong *,G entry source list, 2001:db8:1::2 entry still exists"
+
+	brmcast_check_sg_entries "allow" "${X[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+
+	brmcast_check_sg_fwding 1 "${X[@]}"
+	brmcast_check_sg_fwding 0 2001:db8:1::100
+
+	log_test "MLDv2 group $TEST_GROUP exclude timeout"
+
+	ip link set dev br0 type bridge mcast_query_interval 12500 \
+					mcast_query_response_interval 1000
+
+	mldv2cleanup $swp1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4

