Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A50529C7ED
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8254C85FD6;
	Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mLxkV-ftbVCd; Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 125908536C;
	Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EC1BEC0051;
	Tue, 27 Oct 2020 19:00:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A5ACFC0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 91C658536C
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCJZ2UjDJIqe for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E77FA852F6
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:10 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id t9so3087945wrq.11
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a8a/oVFoV9MTiz2akf3h4usj7NJQcCNmdh3b+TKbrQA=;
 b=P4jRtSivE3zFaJhLu81Q2XNew3IIJiT+Px3Whj9g1g8Gc7u3qcaobFj+YtwCNzgSSs
 bo8/7GN+l7b3fv3p3sWA2JZy8UXUxtly4N3B3zPvjQR1pdN/IVrQ1FeDuifm+bibZmge
 j/SvIb2kbVUtNsodCKc879jyO1WDZPwI/+7Jo4MkjSpcwzVFBujXq+tZl655OLydnq88
 OR/k0qUg3B/RDIvTRZyEA4zUbLE3exjfJh1yGXSXi753GzDTqdyAMNZzQGHpR5VIWkvh
 6F2C1sBxCrTzh022tfqYSSsKeSxdVQBHKJT8HwqC2s/KSMIhucdtCW3A8YwyoCntzkPy
 9YjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a8a/oVFoV9MTiz2akf3h4usj7NJQcCNmdh3b+TKbrQA=;
 b=NLpmmhTEJp1wkgRdLlmmCd/REzaDjBkzakqw0CBwa/1l/wZQzAvtWlI06vnx1nuG1S
 5RvoLFltFdZrlNFBb10Uq+lf8R0/8/movHRuwNYNUnBNywo8XJlp1FZZV/11BgRhn0Si
 fgCNURebdPWHwTidc4T+uXRuBXTlFsF4IxWuPQl/pa/bqpIvt4NmLOh+TEGYYSDO4rFq
 n9inNSjcvvaESiG88FEffKnvSelm0WmHji0Ybn7u0MLbgmzzoh9WDkgzLOK25uLKC0Uf
 XZCqZAKhiKfUfDwv/1/oLbsYSplxozxemI8uhe4QwJ2qvCzOmLyGVZU6002J79xPMx1B
 tLVg==
X-Gm-Message-State: AOAM530n7ES0LsM/cJuFfc/l0SNOPVmZIhEHtu81xFdmi0H25Va0ScPH
 yKxQwcR6cgoIgWz9IypIW/frZg==
X-Google-Smtp-Source: ABdhPJy6oZTZKiqP/ci+0HGrgHauw0AUcqHOwQrQTf7wYMyuZtDGcv00BLROWYVJvzm94AUKlbObSg==
X-Received: by 2002:adf:f1cd:: with SMTP id z13mr4456623wro.197.1603825209356; 
 Tue, 27 Oct 2020 12:00:09 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:08 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:21 +0200
Message-Id: <20201027185934.227040-4-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201027185934.227040-1-razor@blackwall.org>
References: <20201027185934.227040-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 03/16] selftests: net: bridge: igmp: check
	for specific udp ip protocol
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

We have to specifically check for udp protocol in addition to the mac
address because in IGMPv3 tests group-specific queries will use the same
mac address.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 tools/testing/selftests/net/forwarding/bridge_igmp.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 1c19459dbc58..5562aef14c0a 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -93,7 +93,7 @@ mcast_packet_test()
 	# was received by it or not.
 	tc qdisc add dev $host2_if ingress
 	tc filter add dev $host2_if ingress protocol ip pref 1 handle 101 \
-		flower dst_mac $mac action drop
+		flower ip_proto udp dst_mac $mac action drop
 
 	$MZ $host1_if -c 1 -p 64 -b $mac -A $src_ip -B $ip -t udp "dp=4096,sp=2048" -q
 	sleep 1
-- 
2.25.4

