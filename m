Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E1629C7EC
	for <lists.bridge@lfdr.de>; Tue, 27 Oct 2020 20:00:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12BF087367;
	Tue, 27 Oct 2020 19:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Teu1VahWTb0; Tue, 27 Oct 2020 19:00:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 884778736C;
	Tue, 27 Oct 2020 19:00:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6FC29C0051;
	Tue, 27 Oct 2020 19:00:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E2CF1C0051
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D23AB8536C
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TGWpYYIb1OJj for <bridge@lists.linux-foundation.org>;
 Tue, 27 Oct 2020 19:00:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 85EFA862C9
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 19:00:06 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id n18so3128858wrs.5
 for <bridge@lists.linux-foundation.org>; Tue, 27 Oct 2020 12:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kDUiHW1MfcT0hQvQpNHHUdUqPUEuNLL0EOKagikppV4=;
 b=zozL3O4fhwV+eInXCTSiOV/1/3ZJZr/1Mg1iWR7NTjUN5J+d5vk3gAwc+U3YrN/JmL
 Nhvk7NI8SSSHjVUTaI0DLZvyWMmcrjiXBevmcrvUMl8LQ3Gesx/uqHwRDI+QgBxFEBTN
 poDsOAM1SO96mRkJ5ebtAX0uXFP1Eeo7HcPOQOWKb74Y1cmIAVFsE+CKTSYu1pV4hZ4j
 s3hL6JxUBxjYvkXCeajLJe1axdZJH2aFRlCKx3IfVwbvgBopxKu6jvbM5Ymv90s0ZO2+
 0AYkOfhQoCvkSJhVWGZ8ftbIQf8JTRNKWkufCgsxGzg031FjnlgFUQBY/Us1col8I+qp
 F/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kDUiHW1MfcT0hQvQpNHHUdUqPUEuNLL0EOKagikppV4=;
 b=YLTSQmEL2naywJYPOGeLlPlVt6TCQDA4r4pYii9rm+A8OWlLt4Aabn/+D9rfFMBY9V
 6l9g9XA6IPZ2gjVBS7M7Z7Oio/dCK6Au0ohoeKbCFvgRy9Ecl6Gb1Eo0S/xGItE/MsrI
 acyRZJ+4uv7nFoNw4lKyzZ6/9s9t/CG0m+5iS+NNSgpQT9MC2CekcpzP2qL/x0pMyvFG
 bLXZygCpifG826an2ElBKZyK/88Kl6/KltKwTutZecK+n0/5gTY89dOXf5L9VrqPAswF
 0sFGV/cxaGmdMsioAphORMnbHcluS3QbZ+NUtm1LmUIpcPFixcCsGpCvXYxlP80/Lexz
 yTHw==
X-Gm-Message-State: AOAM533GJrRDUvVGbGLKZO43gww5hEBFY320Pl2Ew1s9vZQ9e2UNXLlC
 t1AkQWlxx8v3wcx3uFyYU45Qdw==
X-Google-Smtp-Source: ABdhPJyJ6A+tYawPoWsuF/hnWiKAJbeMENBKvV8iueGQAYqw4SxPi6PBuksOWw/1HX+Akf06ZSEtLQ==
X-Received: by 2002:adf:9027:: with SMTP id h36mr4416494wrh.163.1603825204749; 
 Tue, 27 Oct 2020 12:00:04 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x6sm3219803wmb.17.2020.10.27.12.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 12:00:03 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue, 27 Oct 2020 20:59:18 +0200
Message-Id: <20201027185934.227040-1-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 00/16] selftests: net: bridge: add tests
	for IGMPv3
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

Hi,
This set adds tests for the bridge's new IGMPv3 support. The tests use
precooked packets which are sent via mausezahn and the resulting state
after each test is checked for proper X,Y sets, (*,G) source list, source
list entry timers, (S,G) existence and flags, packet forwarding and
blocking, exclude group expiration and (*,G) auto-add. The first 3 patches
prepare the existing IGMPv2 tests, then patch 4 adds new helpers which are
used throughout the rest of the v3 tests.
The following new tests are added:
 - base case: IGMPv3 report 239.10.10.10 is_include (A)
 - include -> allow report
 - include -> is_include report
 - include -> is_exclude report
 - include -> to_exclude report
 - exclude -> allow report
 - exclude -> is_include report
 - exclude -> is_exclude report
 - exclude -> to_exclude report
 - include -> block report
 - exclude -> block report
 - exclude timeout (move to include + entry deletion)
 - S,G port entry automatic add to a *,G,exclude port

The variable names and set notation are the same as per RFC 3376,
for more information check RFC 3376 sections 4.2.15 and 6.4.1.
MLDv2 tests will be added by a separate patch-set.

Thanks,
 Nik

Nikolay Aleksandrov (16):
  selftests: net: bridge: rename current igmp tests to igmpv2
  selftests: net: bridge: igmp: add support for packet source address
  selftests: net: bridge: igmp: check for specific udp ip protocol
  selftests: net: bridge: igmp: add IGMPv3 entries' state helpers
  selftests: net: bridge: add tests for igmpv3 is_include and inc ->
    allow reports
  selftests: net: bridge: add test for igmpv3 inc -> is_include report
  selftests: net: bridge: add test for igmpv3 inc -> is_exclude report
  selftests: net: bridge: add test for igmpv3 inc -> to_exclude report
  selftests: net: bridge: add test for igmpv3 exc -> allow report
  selftests: net: bridge: add test for igmpv3 exc -> is_include report
  selftests: net: bridge: add test for igmpv3 exc -> is_exclude report
  selftests: net: bridge: add test for igmpv3 exc -> to_exclude report
  selftests: net: bridge: add test for igmpv3 inc -> block report
  selftests: net: bridge: add test for igmpv3 exc -> block report
  selftests: net: bridge: add test for igmpv3 exclude timeout
  selftests: net: bridge: add test for igmpv3 *,g auto-add

 .../selftests/net/forwarding/bridge_igmp.sh   | 532 +++++++++++++++++-
 1 file changed, 520 insertions(+), 12 deletions(-)

-- 
2.25.4

