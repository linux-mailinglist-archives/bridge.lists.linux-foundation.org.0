Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD929C7F8
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C4E542E131;
	Tue, 27 Oct 2020 19:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Bvl0XUwEdxX; Tue, 27 Oct 2020 19:00:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 4C26A2E147;
	Tue, 27 Oct 2020 19:00:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 306F2C0051;
	Tue, 27 Oct 2020 19:00:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5ABBBC0859
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 571F1869AB
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iWzySwjm7h8Z for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 580C8869BD
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:24 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id h22so2541517wmb.0
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rXvOjoiXH/uQM8+37yEq6MrhKgtwR9L0eCrT9iLe6Qo=;
 b=OxLVWQZtWHZlEulGIv4IbCCbNIE6gv5fH5OiotJy3xUlgg589tHOt+uawVwbXKZbIx
 snj1C4jhT6jyqLp5+sU2OAEFt8jByqWjEbYqkgSsrnXNy8L0YXQMlP91joSQY7cpnJun
 cSaY7t0DuugTuLZXI8J904bPjZkD5x+Gj+n7w2VwnCrq3PrECOKew+v9cwQkqgEC3yJ7
 VSl6DQp5WpmkjgrcQJFkVVTDwxlkTcdo+/4PjrvswJ670GbRCPzxVCNVSV5oCeXCu6na
 1Jbwuud5wkAGyroCRHHS/iFhfGkMDMd1YyeelAR29PMr5sbyOF0Rqfza8qGEcpXintVb
 0QNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rXvOjoiXH/uQM8+37yEq6MrhKgtwR9L0eCrT9iLe6Qo=;
 b=DCHXRRGrI8V27DX3zW2VrI8GPE+QwJwm+QgdZLB/Qin2GsYTfotjqQefTQO/e9Z7QE
 4xqY7hOWECdoo0oCVq/+3cVc1yhjboYX9eBv46D3Tix6kt4SUnfKf6rtSLZza/k8XPqI
 YUYpfj+/TyiRekzovuvb+L8X254RtWMhyXU2RtmxFMug+qQ2jO/nkdyFYKwDxMs0TAxS
 dcE4IOTjl3a4a6YY4uCyVbnmIedOC/qAyJX16fqUuwB9QgirDBVqt0w/2kwYo8K9RL06
 +Dxj/jkDnA7JoDvON5yu8t7sDOzjiGQVtOkaszn8rUvslhrY43M5Xzxg6CeW1/igRmns
 WGwA==
X-Gm-Message-State: AOAM53026uQHfyzDBxFGHjqKWCDwkr9upqNU0leFbxW0AosV26Zd6Mwb
 4JfAfyrq2I1NG0NRjAzbqDKbRg==
X-Google-Smtp-Source: ABdhPJwAcaW1ba5rriVUYmgUsDy++FgCYJBlbpV9zOSafij9Xtz9VWEdU0OfSNh/DKOasbFGUHRYmw==
X-Received: by 2002:a7b:c113:: with SMTP id w19mr4437014wmi.25.1603825222840; 
 Tue, 27 Oct 2020 12:00:22 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:22 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:32 +0200
Message-Id: <20201027185934.227040-15-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 14/16] selftests: net: bridge: add test
	for igmpv3 exc -> block report
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
   state          report        result                  action
 EXCLUDE (X,Y)  BLOCK (A)     EXCLUDE (X+(A-Y),Y)      (A-X-Y)=Group Timer
                                                       Send Q(G,A-Y)

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 3772c7a066c9..45c5619666d8 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -3,7 +3,7 @@
 
 ALL_TESTS="v2reportleave_test v3include_test v3inc_allow_test v3inc_is_include_test \
 	   v3inc_is_exclude_test v3inc_to_exclude_test v3exc_allow_test v3exc_is_include_test \
-	   v3exc_is_exclude_test v3exc_to_exclude_test v3inc_block_test"
+	   v3exc_is_exclude_test v3exc_to_exclude_test v3inc_block_test v3exc_block_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="239.10.10.10"
@@ -546,6 +546,34 @@ v3inc_block_test()
 	v3cleanup $swp1 $TEST_GROUP
 }
 
+v3exc_block_test()
+{
+	RET=0
+	local X=("192.0.2.1" "192.0.2.2" "192.0.2.30")
+	local Y=("192.0.2.20" "192.0.2.21")
+
+	v3exclude_prepare $h1 $ALL_MAC $ALL_GROUP
+
+	ip link set dev br0 type bridge mcast_last_member_interval 500
+	check_err $? "Could not change mcast_last_member_interval to 5s"
+
+	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_BLOCK" -q
+	sleep 1
+	check_sg_entries "block" "${X[@]}" "${Y[@]}"
+
+	check_sg_state 0 "${X[@]}"
+	check_sg_state 1 "${Y[@]}"
+
+	check_sg_fwding 1 "${X[@]}" 192.0.2.100
+	check_sg_fwding 0 "${Y[@]}"
+
+	log_test "IGMPv3 report $TEST_GROUP exclude -> block"
+
+	ip link set dev br0 type bridge mcast_last_member_interval 100
+
+	v3cleanup $swp1 $TEST_GROUP
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4

