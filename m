Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3E84FBD5C
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 15:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7840E40A95;
	Mon, 11 Apr 2022 13:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lewd30rP9Yzc; Mon, 11 Apr 2022 13:39:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1A82340A8B;
	Mon, 11 Apr 2022 13:39:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C4998C0084;
	Mon, 11 Apr 2022 13:39:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5A0D4C008B
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:39:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C644B82416
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrXvKwBOxt_5 for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 13:38:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 04B5A81D11
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:58 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id x17so17577975lfa.10
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 06:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=8qjm9wLjph4c7kZ9jfundVdGQ8PpnhtD4gzzvkqBGsw=;
 b=o88XnttxQH1grWq83aF2OyYu/OVtodv2bsFld55tVD1cJ7zPXGbYuugXvLyv7S+paa
 w0T63kWHbWtByKFbWpp1T7hfyoGLYImSlR+vYNnTiDx2UYFt/91qCMm3I/6XbtZgNuZo
 KQf3aXihjAxbi5uLLb0AEs63L+PANYYdNk0sAdnZCVm9cWq50FBqGHxSb0hAYyViqc/r
 a0YxqHm8hwzcwD6Vw/R33J0quvtAa0l4q2EeuW5scdocpR8W7MQtgM/U/zebSyh4nUXB
 AI0f2RRWbVh9JOQLwldxiBlXthrz5wUHe/pRZ3NY2yji2tiI5xNpSH5wKQ2qTWNTYvpp
 gU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=8qjm9wLjph4c7kZ9jfundVdGQ8PpnhtD4gzzvkqBGsw=;
 b=sDL4OqYJP29qRmduu+ZktPWw1iOo/QILIi3oR8AzHU0BiPprY3Qd+6Tdy3uSWbRYWE
 VLyf8FCA+uP88UPbsEeWx5QJj9Fa/ESQARutKg8gICK8DJ56BGVPXzNvRpukxuBYATn2
 vof/gcVRss2FoZ8J8wWQcbQWVfDK1QuyrC4yzTSkZq6vMNsuesfo9iCz62icwOWrJ6qp
 M6jzI3zCwTbGfCFI2Dxhu36+LnmatPROayPxCqfja/H+EFucBwY2mxU81itRa7XGa121
 2t7qKKlZOMT7rjpdFLT7XG4alkpdl9mTy3DGgxuq3/feBINwjZvCqtZ5VuELhCdY8wNJ
 G8GA==
X-Gm-Message-State: AOAM531sBZZd/x1LC/+4aorgKVQpVeVe4LIFSsqq0mF0oVL7Afq+jCEH
 WwrYNhwYMM+hzTqfxoCgJu0=
X-Google-Smtp-Source: ABdhPJwEOg1f2YmvXtYOnsziJ1SVjzWn4o3G3iIGap8DrSs5yqqUzx3XzMrdEHCraarWTUKt67rZ1w==
X-Received: by 2002:a05:6512:24a:b0:46b:ad98:88db with SMTP id
 b10-20020a056512024a00b0046bad9888dbmr1816704lfo.304.1649684336982; 
 Mon, 11 Apr 2022 06:38:56 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm3336847lfa.62.2022.04.11.06.38.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 06:38:56 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 11 Apr 2022 15:38:29 +0200
Message-Id: <20220411133837.318876-6-troglobit@gmail.com>
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
Subject: [Bridge] [PATCH RFC net-next 05/13] selftests: forwarding: add
	TCPDUMP_EXTRA_FLAGS to lib.sh
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

For some use-cases we may want to change the tcpdump flags used in
tcpdump_start().  For instance, observing interfaces without the PROMISC
flag, e.g. to see what's really being forwarded to the bridge interface.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 tools/testing/selftests/net/forwarding/lib.sh | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)
 mode change 100644 => 100755 tools/testing/selftests/net/forwarding/lib.sh

diff --git a/tools/testing/selftests/net/forwarding/lib.sh b/tools/testing/selftests/net/forwarding/lib.sh
old mode 100644
new mode 100755
index 664b9ecaf228..00cdcab7accf
--- a/tools/testing/selftests/net/forwarding/lib.sh
+++ b/tools/testing/selftests/net/forwarding/lib.sh
@@ -1369,7 +1369,13 @@ tcpdump_start()
 		capuser="-Z $SUDO_USER"
 	fi
 
-	$ns_cmd tcpdump -e -n -Q in -i $if_name \
+	if [ -z $TCPDUMP_EXTRA_FLAGS ]; then
+		extra_flags=""
+	else
+		extra_flags="$TCPDUMP_EXTRA_FLAGS"
+	fi
+
+	$ns_cmd tcpdump $extra_flags -e -n -Q in -i $if_name \
 		-s 65535 -B 32768 $capuser -w $capfile > "$capout" 2>&1 &
 	cappid=$!
 
-- 
2.25.1

