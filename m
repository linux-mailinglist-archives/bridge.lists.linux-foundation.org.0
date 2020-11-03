Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0123A2A4CAC
	for <lists.bridge@lfdr.de>; Tue,  3 Nov 2020 18:24:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C1399207A8;
	Tue,  3 Nov 2020 17:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BqhIWdG7bxeU; Tue,  3 Nov 2020 17:24:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 4F0B92094C;
	Tue,  3 Nov 2020 17:24:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 29450C0051;
	Tue,  3 Nov 2020 17:24:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BF6D4C0051
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE26386208
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J3xo5JDRGVqp for <bridge@lists.linux-foundation.org>;
 Tue,  3 Nov 2020 17:24:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B29C0861EE
 for <bridge@lists.linux-foundation.org>; Tue,  3 Nov 2020 17:24:18 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id w14so19339370wrs.9
 for <bridge@lists.linux-foundation.org>; Tue, 03 Nov 2020 09:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5waWch5DfbeJ99kzw2cUqjwTl2DYjMssW5khvUSgq2w=;
 b=XX0MtFAeQlhIUtmtgoHO5iCXTIHz2Os0iBcD3sUghfWoSWX5C+SmEZvbZIjsOQgWZU
 GHs84xYTQsCSqUydkOVg5lKP3dpLjrau2DIra76ANaYt9eljZYNqXxtuz0Mha340jQyL
 5cO2LIk06IH8kH8VnOMZghYz2B9VCKcnZ1eVGXpjnWnqt2TOEtll7CbXglZ1SQhVbsnD
 V/+YaPY8oGugmGc4415yK2Bh+6OzWcV0iJuLIzgRx2nRReD075tdY3nTgRIMqjpsacZg
 ZzqmSiHVGQHqQQmC2a5xf2H8e/9WQSwX0vJf3nEWRit7wbo4twwef+084Kv20VNXT/7O
 Kmjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5waWch5DfbeJ99kzw2cUqjwTl2DYjMssW5khvUSgq2w=;
 b=qs+sXp2De4xApo/oWXaY8p8kXoHXonjz5KIGy12NNOSpNxRXcol4TC7bscNA3BtUkV
 6rucdiRiINw6pduNeUTyIZ7t0jJsTpTCsbRGmC0A1qluxEUoYgQdvwmbNSZY4JifnPPo
 5cFARfGxarQruM2bHLHvxYs/0P6EMKF4dCZxIziYt6T/1zr4qJDSezyP+wtFw0N/420y
 6a03IkjUVzZxGiCksimuqtgnAY3d0JU/P4tH8mx/EH8tQaJbPgVYqrCytJ+U1ARF2k18
 Pfmke1kCNMl47LaOuijuSOXKdL9V/jVkmBm4Y4OqvGzkA2dhPe/9Kqoh4HFkLUm3CDqp
 /r+w==
X-Gm-Message-State: AOAM5327sCxVbOkkjDkyVXAkK+JS5KKAIFlbMNhrADObbejnemnD7WEZ
 AkOAJSqP0Q87cGslB0xNEahpHw==
X-Google-Smtp-Source: ABdhPJznn+N2QQIRpQ60Y58HrPFPLxs/vVEM4EdvO5ejGVW/FkQt+mUXKl61nWqavdx8oaZQuIHq4g==
X-Received: by 2002:adf:e650:: with SMTP id b16mr28248837wrn.350.1604424257147; 
 Tue, 03 Nov 2020 09:24:17 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id a128sm2650795wmf.5.2020.11.03.09.24.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 09:24:16 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Tue,  3 Nov 2020 19:23:56 +0200
Message-Id: <20201103172412.1044840-1-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kuba@kernel.org, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 00/16] selftests: net: bridge: add tests
	for MLDv2
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
This is the second selftests patch-set for the new multicast functionality
which adds tests for the bridge's MLDv2 support. The tests use full
precooked packets which are sent via mausezahn and the resulting state
after each test is checked for proper X,Y sets, (*,G) source list, source
list entry timers, (S,G) existence and flags, packet forwarding and
blocking, exclude group expiration and (*,G) auto-add. The first 3 patches
factor out common functions which are used by IGMPv3 tests in lib.sh and
add support for IPv6 test UDP packet, then patch 4 adds the first test with
the initial MLDv2 setup.
The following new tests are added:
 - base case: MLDv2 report ff02::cc is_include
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

The variable names and set notation are the same as per RFC 3810,
for more information check RFC 3810 sections 2.3 and 7.

Thanks,
 Nik

Nikolay Aleksandrov (16):
  selftests: net: bridge: factor out mcast_packet_test
  selftests: net: lib: add support for IPv6 mcast packet test
  selftests: net: bridge: factor out and rename sg state functions
  selftests: net: bridge: add initial MLDv2 include test
  selftests: net: bridge: add test for mldv2 inc -> allow report
  selftests: net: bridge: add test for mldv2 inc -> is_include report
  selftests: net: bridge: add test for mldv2 inc -> is_exclude report
  selftests: net: bridge: add test for mldv2 inc -> to_exclude report
  selftests: net: bridge: add test for mldv2 exc -> allow report
  selftests: net: bridge: add test for mldv2 exc -> is_include report
  selftests: net: bridge: add test for mldv2 exc -> is_exclude report
  selftests: net: bridge: add test for mldv2 exc -> to_exclude report
  selftests: net: bridge: add test for mldv2 inc -> block report
  selftests: net: bridge: add test for mldv2 exc -> block report
  selftests: net: bridge: add test for mldv2 exclude timeout
  selftests: net: bridge: add test for mldv2 *,g auto-add

 .../selftests/net/forwarding/bridge_igmp.sh   | 211 ++-----
 .../selftests/net/forwarding/bridge_mld.sh    | 558 ++++++++++++++++++
 tools/testing/selftests/net/forwarding/lib.sh | 107 ++++
 3 files changed, 721 insertions(+), 155 deletions(-)
 create mode 100755 tools/testing/selftests/net/forwarding/bridge_mld.sh

-- 
2.25.4

