Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FA343FB19
	for <lists.bridge@lfdr.de>; Fri, 29 Oct 2021 12:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31576400E9;
	Fri, 29 Oct 2021 10:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bftj24PKPToY; Fri, 29 Oct 2021 10:54:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A6D8E400C4;
	Fri, 29 Oct 2021 10:54:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6E00CC0021;
	Fri, 29 Oct 2021 10:54:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 09046C000E
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 10:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E62688199D
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 10:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pi0DlwnOHyM2 for <bridge@lists.linux-foundation.org>;
 Fri, 29 Oct 2021 10:53:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0160F8198D
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 10:53:58 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id h7so37815798ede.8
 for <bridge@lists.linux-foundation.org>; Fri, 29 Oct 2021 03:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b3qSGM0p6y4ZgfnoAyiZzzlY57n4MzHUR7ioYeiIdMs=;
 b=HR/oSlud9C/7XG9RmGUmGigozqBYikJPozqCKVTuoaq6kIWCJw2MFOpbB3ssr/CRNk
 WAGbgtsjODRJXLZPoQpy901q8DIa+vjwrw7CQTzFZOWybWWfWoCep1/BLCwFHnf+aXi2
 LWMGfcjinxI/mS7ORW78vIgo+Opma2ED2kqI+8fDe43NnELBAvzxuoK8gvcv6Y8efMSy
 FML03VWSWDG0YEoGLLfBbSsmCcDgGlXSbHKqScpet+/ucvFXA12KeZoEN773cPor44Jj
 /untbboy1Ora7/FEphwWqs8Gs00/xq1x2UtzQonFsyZtY8TDl6FdVtgwPeh+ZCAR08Pd
 M7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b3qSGM0p6y4ZgfnoAyiZzzlY57n4MzHUR7ioYeiIdMs=;
 b=lQs4MqfS3wSig0isltr1HXuSOGUC7T8/rcyHMmEuESpZkKvrlyyR1cI5/dpPkc383Z
 TlJeOHojR+ezmtCARliF2xvg8vZUrmtYv7HevWlU+NmeK7MX5QMB4ZTU1eRGuAmcHOcL
 G+dIKZoZ3rp7bK6jByRHW9fdwf37BmmpG6BkGdswP0Q2j+2UQ5mD6rpxTX/NnGTxyqTT
 zHcnjlyze5PQisO7RMH89QspCJ5m43bcJoTWdm7T2Bv/VD5IQWuvuyRy6jpHcTF2JXFG
 Z03achUtmoSWNoW/O7zv9PCIBLsUWkJpJw5yEQk6HUEnyvYEA2MGkBH9PCESDw7CjQBZ
 SDvA==
X-Gm-Message-State: AOAM533Jt4Akn5/CslG2LptcJRImV6rsMTJse29GRE8HysMYRXY+Os66
 Ukd6pQkZRR+SsvZ3qHpc/29vXw==
X-Google-Smtp-Source: ABdhPJxCgRbaze6v8TWXYqiqM8WGL+XAmUxXWSIJc9pWXHzQnpJw2lKHd34kQ2bAR0xOl9O0+2CdUg==
X-Received: by 2002:a17:906:3a0e:: with SMTP id
 z14mr13126655eje.55.1635504837085; 
 Fri, 29 Oct 2021 03:53:57 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id he17sm2842640ejc.58.2021.10.29.03.53.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Oct 2021 03:53:56 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Fri, 29 Oct 2021 13:53:43 +0300
Message-Id: <20211029105343.2705436-1-razor@blackwall.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 roopa@nvidia.com
Subject: [Bridge] [PATCH net] selftests: net: bridge: update IGMP/MLD
	membership interval value
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

When I fixed IGMPv3/MLDv2 to use the bridge's multicast_membership_interval
value which is chosen by user-space instead of calculating it based on
multicast_query_interval and multicast_query_response_interval I forgot
to update the selftests relying on that behaviour. Now we have to
manually set the expected GMI value to perform the tests correctly and get
proper results (similar to IGMPv2 behaviour).

Fixes: fac3cb82a54a ("net: bridge: mcast: use multicast_membership_interval for IGMPv3")
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 tools/testing/selftests/net/forwarding/bridge_igmp.sh | 3 +++
 tools/testing/selftests/net/forwarding/bridge_mld.sh  | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/tools/testing/selftests/net/forwarding/bridge_igmp.sh b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
index 675eff45b037..da031892ffd2 100755
--- a/tools/testing/selftests/net/forwarding/bridge_igmp.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_igmp.sh
@@ -483,9 +483,12 @@ v3exc_timeout_test()
 
 	# GMI should be 3 seconds
 	ip link set dev br0 type bridge mcast_query_interval 100 mcast_query_response_interval 100
+	ip link set dev br0 type bridge mcast_membership_interval 300
 
 	v3exclude_prepare $h1 $ALL_MAC $ALL_GROUP
 	ip link set dev br0 type bridge mcast_query_interval 500 mcast_query_response_interval 500
+	ip link set dev br0 type bridge mcast_membership_interval 1500
+
 	$MZ $h1 -c 1 -b $ALL_MAC -B $ALL_GROUP -t ip "proto=2,p=$MZPKT_ALLOW2" -q
 	sleep 3
 	bridge -j -d -s mdb show dev br0 \
diff --git a/tools/testing/selftests/net/forwarding/bridge_mld.sh b/tools/testing/selftests/net/forwarding/bridge_mld.sh
index ffdcfa87ca2b..96fdaa84606f 100755
--- a/tools/testing/selftests/net/forwarding/bridge_mld.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_mld.sh
@@ -480,9 +480,12 @@ mldv2exc_timeout_test()
 
 	# GMI should be 3 seconds
 	ip link set dev br0 type bridge mcast_query_interval 100 mcast_query_response_interval 100
+	ip link set dev br0 type bridge mcast_membership_interval 300
 
 	mldv2exclude_prepare $h1
 	ip link set dev br0 type bridge mcast_query_interval 500 mcast_query_response_interval 500
+	ip link set dev br0 type bridge mcast_membership_interval 1500
+
 	$MZ $h1 -c 1 $MZPKT_ALLOW2 -q
 	sleep 3
 	bridge -j -d -s mdb show dev br0 \
-- 
2.31.1

