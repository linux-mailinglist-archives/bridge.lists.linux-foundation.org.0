Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 703CD2A4CBC
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C13F787467;
	Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0doWJXZY0my7; Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19B1787466;
	Tue,  3 Nov 2020 17:24:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F31F9C0051;
	Tue,  3 Nov 2020 17:24:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B055DC0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A030586CEC
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C3mOwtUOCaIp for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3CC5A86CF9
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:31 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id h62so90960wme.3
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5omufXisHiGeceucrVlpU04whsxgLcRcTFbs2Kn5Krg=;
 b=PwZpr/Cg4gZJf7QDpiN8c3rht0+scf85e7FTrVdSxG1DxBtvGNn771zi2rtjHbQLjc
 jAAPWayS9osj34H+tRvUj5W/LJjOtzVGz7+NO5g3lS9cOedTFZxZR/nSmakaxIa+8g07
 k8GujvckHla5iZNh5hnB0vgf4AtOCKfyrJ6ZrmSMMzF3dCBkpylhOICfwcJjugXaRW/L
 98GC5r6Q1yKiXB5dcjUSRDSNQ8V5SLcM7Saf2rSIxuP50PamOQlfWLw3TuysLZwCHczC
 n7LO7ErGEpfyY2hx+sa1hctfg4YL+vWtQrL2lOAxs2STUWGc6Kak0mxLqScLO+ekR4HP
 Cibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5omufXisHiGeceucrVlpU04whsxgLcRcTFbs2Kn5Krg=;
 b=czOZ709iBQ+k952YO+jBwHFsVlE8Fmu39TFi9J5vFa8IJP5N3fksq2OjM8f0JoqXgj
 ip4kHTSGC6v8lGRKuH0fckh94MwXFDb1RZGVgWe6efe9H0S/FN8RdqJvHciOkHc/5ooq
 5H402eK7G8NW/AEwY+qvrovu8k8ukkc2HSsITidxnCGSNfxa5GmcdfS61odDTKsmWr9x
 tRs/YL0xGJRiJR6leaTDQe/PLFxRfQTRFhldX+C4vb8KhhDlvWzk6GMTgJordzLYv6CH
 XHhcBYPzOWguMs3Hd6BuFbwU/bku3dC+aUglWB4T9RFzkQAg4s4nfv9gJVws7fR4cIcb
 NY0A==
X-Gm-Message-State: AOAM530EkWW68wxcFay3FV8AKlg4WWl7lJdl+3of3/J/USBNpNfKSvLj
 UTeRcll7Xt1lXDu/4OQej1KAsStElxU44nDa
X-Google-Smtp-Source: ABdhPJw7YQqxc9h1LI4jJ/h8YilAjdO7Rc52iqX6kaQXnBVSruC7At7I/tgH9CKGpoR/qOZ8NvJQOw==
X-Received: by 2002:a1c:2c2:: with SMTP id 185mr178744wmc.103.1604424269694;
 Tue, 03 Nov 2020 09:24:29 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:29 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:24:08 +0200
Message-Id: <20201103172412.1044840-13-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201103172412.1044840-1-razor@blackwall.org>
References: <20201103172412.1044840-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 12/16] selftests: net: bridge: add test
	for mldv2 exc -> to_exclude report
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
   EXCLUDE (X,Y)   TO_EX (A)      EXCLUDE (A-Y,Y*A)    (A-X-Y) =
                                                            Filter Timer
                                                       Delete (X-A)
                                                       Delete (Y-A)
                                                       Send Q(MA,A-Y)
                                                       Filter Timer=MALI

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_mld.sh    | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index 0f48c8da041b..024fa22fa3c2 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -3,7 +3,7 @@
 
 ALL_TESTS="mldv2include_test mldv2inc_allow_test mldv2inc_is_include_test mldv2inc_is_exclude_test \
 	   mldv2inc_to_exclude_test mldv2exc_allow_test mldv2exc_is_include_test \
-	   mldv2exc_is_exclude_test"
+	   mldv2exc_is_exclude_test mldv2exc_to_exclude_test"
 NUM_NETIFS=4
 CHECK_TC="yes"
 TEST_GROUP="ff02::cc"
@@ -381,6 +381,34 @@ mldv2exc_is_exclude_test()
 	mldv2cleanup $swp1
 }
 
+mldv2exc_to_exclude_test()
+{
+	RET=0
+	local X=("2001:db8:1::1" "2001:db8:1::30")
+	local Y=("2001:db8:1::20")
+
+	mldv2exclude_prepare $h1
+
+	ip link set dev br0 type bridge mcast_last_member_interval 500
+	check_err $? "Could not change mcast_last_member_interval to 5s"
+
+	$MZ $h1 -c 1 $MZPKT_TO_EXC -q
+	sleep 1
+	brmcast_check_sg_entries "to_exclude" "${X[@]}" "${Y[@]}"
+
+	brmcast_check_sg_state 0 "${X[@]}"
+	brmcast_check_sg_state 1 "${Y[@]}"
+
+	brmcast_check_sg_fwding 1 "${X[@]}" 2001:db8:1::100
+	brmcast_check_sg_fwding 0 "${Y[@]}"
+
+	log_test "MLDv2 report $TEST_GROUP exclude -> to_exclude"
+
+	ip link set dev br0 type bridge mcast_last_member_interval 100
+
+	mldv2cleanup $swp1
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4

