Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB22B29C7EE
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D52EE87370;
	Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UY2cCuyv5Leu; Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4C3AE8736C;
	Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 32B24C0051;
	Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2063C0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A73D82E10B
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ITi4Mh10bPXe for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 435562E0F1
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:12 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id g12so3095074wrp.10
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W8178pAv6uDZvuBR8Wd4aVbByEM9iWD9JrBfg6O4nCE=;
 b=ZLJj6Z3orbJ+wULGft+hxYNzeLu0dElfr6eP44nItmYtg2ZpXuVRpD4ikfpOk5Hrr+
 vJOPhyXUuR7P0hvBiyIBcWQz0c36R8pjYFZ5unQM6APXma7LMwiJoI1nS+Ixnh8hlm2j
 p9DSk4Tqno9xp4/X2G5I9ocH6Oi2+sgYlgMLfUB6UO5ldL5Qm5Q0YS63U3ASShTdi2hA
 cudHgyLzAs/Z0YbECGOV5XO767qC4L1TMrjSUIKxDO7ooJCdGwy1J8tC9NkZMjU86TSG
 okweKJ+iu2hdtmuq3rN71PX8W27PdtXDswETnO5Gm+0XKnp33MrowprW1bUgDJ/2KV0x
 67pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W8178pAv6uDZvuBR8Wd4aVbByEM9iWD9JrBfg6O4nCE=;
 b=U4blC/uJFWhHK/xWZILfWbNQcwXfFX36n8/nBaC/e9GZuAUzV0REbo0WZZD/C8MUGF
 qP6Tno5dDzOkseA0qS9oUG5vJvCOagSbZu+ct898SZf9+KB5FXlEyjrIEAWql2VkeHkI
 Thq4ZYgkf9pIJSWX+/LISjGNau5C6QngDSBlfeVdhUSTkAKmRFHkSdyUoNcbYT6WqylZ
 wO0Za39ifzLXKPjKL4xNQGIAlyhHebeu/hFHsuT3Q40DMh5Kd9lvrXpdaSrnA2hO+jEk
 EpefoF1hoSqnGt997nMkR1mpZ7X1zRwqLYXs6mqJHq/VPC+w6vMgtjabfQhPYs/uKEf0
 me4Q==
X-Gm-Message-State: AOAM533ytQaKU+HTYWzav413vZgps5lJCk8LgZrLK7Sb0mOHyYXLC1lx
 z5+kxu4uBOnIsJpqQT/J18K7qg==
X-Google-Smtp-Source: ABdhPJwlp72VfrmJW+ImKhnPmyj3OZMtZSFRGMIIX+1N2LfBXruPyt+pw5NIMJyevtxNZGPofAAcJg==
X-Received: by 2002:adf:bc4a:: with SMTP id a10mr4513195wrh.253.1603825210774; 
 Tue, 27 Oct 2020 12:00:10 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:10 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:22 +0200
Message-Id: <20201027185934.227040-5-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 04/16] selftests: net: bridge: igmp: add
	IGMPv3 entries' state helpers
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

Add helpers which will be used in subsequent tests, they are:
 - check_sg_entries: check for proper source list and S,G entry
   existence
 - check_sg_fwding: check for proper traffic forwarding/blocking
 - check_sg_state: check for proper blocked/forwarding entry state

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 .../selftests/net/forwarding/bridge_igmp.sh   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 5562aef14c0a..19c1f46d1151 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -143,6 +143,73 @@ v2reportleave_test()
 	log_test "IGMPv2 leave $TEST_GROUP"
 }
 
+check_sg_entries()
+{
+	local report=$1; shift
+	local slist=("$@")
+	local sarg=""
+
+	for src in "${slist[@]}"; do
+		sarg="${sarg} and .source_list[].address == \"$src\""
+	done
+	bridge -j -d -s mdb show dev br0 \
+		| jq -e ".[].mdb[] | \
+			 select(.grp == \"$TEST_GROUP\" and .source_list != null $sarg)" &>/dev/null
+	check_err $? "Wrong *,G entry source list after $report report"
+
+	for sgent in "${slist[@]}"; do
+		bridge -j -d -s mdb show dev br0 \
+			| jq -e ".[].mdb[] | \
+				 select(.grp == \"$TEST_GROUP\" and .src == \"$sgent\")" &>/dev/null
+		check_err $? "Missing S,G entry ($sgent, $TEST_GROUP)"
+	done
+}
+
+check_sg_fwding()
+{
+	local should_fwd=$1; shift
+	local sources=("$@")
+
+	for src in "${sources[@]}"; do
+		local retval=0
+
+		mcast_packet_test $TEST_GROUP_MAC $src $TEST_GROUP $h2 $h1
+		retval=$?
+		if [ $should_fwd -eq 1 ]; then
+			check_fail $retval "Didn't forward traffic from S,G ($src, $TEST_GROUP)"
+		else
+			check_err $retval "Forwarded traffic for blocked S,G ($src, $TEST_GROUP)"
+		fi
+	done
+}
+
+check_sg_state()
+{
+	local is_blocked=$1; shift
+	local sources=("$@")
+	local should_fail=1
+
+	if [ $is_blocked -eq 1 ]; then
+		should_fail=0
+	fi
+
+	for src in "${sources[@]}"; do
+		bridge -j -d -s mdb show dev br0 \
+			| jq -e ".[].mdb[] | \
+				 select(.grp == \"$TEST_GROUP\" and .source_list != null) |
+				 .source_list[] |
+				 select(.address == \"$src\") |
+				 select(.timer == \"0.00\")" &>/dev/null
+		check_err_fail $should_fail $? "Entry $src has zero timer"
+
+		bridge -j -d -s mdb show dev br0 \
+			| jq -e ".[].mdb[] | \
+				 select(.grp == \"$TEST_GROUP\" and .src == \"$src\" and \
+				 .flags[] == \"blocked\")" &>/dev/null
+		check_err_fail $should_fail $? "Entry $src has blocked flag"
+	done
+}
+
 trap cleanup EXIT
 
 setup_prepare
-- 
2.25.4

