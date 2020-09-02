Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0A325AA34
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 13:29:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54A0F85F74;
	Wed,  2 Sep 2020 11:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0D9pVrMCM1lv; Wed,  2 Sep 2020 11:29:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93DA585DB1;
	Wed,  2 Sep 2020 11:29:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 73893C0894;
	Wed,  2 Sep 2020 11:29:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 95552C0051
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8471E85DB1
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HDfGNgCqtcDO for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 11:29:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEEE485D8F
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 11:29:09 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x14so4828767wrl.12
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 04:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9HJnLy8uo6++sx6Gwyqe9/p3d2QWIpPUEzDVAme086g=;
 b=EBvyNynsZNV9hWw7Qrg66swMTCGi+OhQRmfoy3/6+kce/J55tRsfjyQabyRDPHHWn+
 7FPX0we1fJiW1PKkAnnRXsMlI/aRP1UDDxDmZWdnAtj8Y91/mxsDGTgM6bK8qaNa4pKU
 mHnNUBt8uRkNKNq5Yxc73XIhLnRG9FOvigJMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9HJnLy8uo6++sx6Gwyqe9/p3d2QWIpPUEzDVAme086g=;
 b=WCBxPB2pR8v9Og8NEj6g/ufi3EsF7yxU1f8qXJAvnh44TIMsrPSHWRCi0fic9AcHvc
 5b81w33hxfmFKwUHgcbiBfCoPs4nqbW7V8cn4svzRWhXu4GWtwGTzuB7G9JZzL7CmK/g
 U8EbNkfF47FDY6JBjZh6FkDS29uQcggu1doI9xVwySATfpjqmjY79Bb9V+kDjhshdDVg
 cm+cK+pNqAuJP9FY4shYvAqgMWP64Je7KrMk4ZUJqfqWBLyM/MO3S3NOs44+Q3tinVZS
 ha7tiK4fyP/I/UpkVnHhR2pM0xjxPZaCqwNcPILiiChzEOMPIjEhZxhlWuVURYDN7H4T
 k+lA==
X-Gm-Message-State: AOAM531nJL5CoMtfHRHe5eTMtgBzxlHCJzSrMvjrQqDuTv7B9LMbDq/R
 62PxOexA5n04lmU53J61FRJDYQ==
X-Google-Smtp-Source: ABdhPJw1PdrRsOFXy7T3EvsUjjfq5MrcrggCEU+zA8CKZmBtNRLle16YOy3V02+k2Ked+NkOdrpnpw==
X-Received: by 2002:adf:90d1:: with SMTP id i75mr6432314wri.278.1599046147921; 
 Wed, 02 Sep 2020 04:29:07 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 5sm5985172wmz.22.2020.09.02.04.29.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 04:29:06 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed,  2 Sep 2020 14:25:14 +0300
Message-Id: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v2 00/15] net: bridge: mcast: initial
	IGMPv3 support (part 1)
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

Hi all,
This patch-set implements the control plane for initial IGMPv3 support
which takes care of include/exclude sets and state transitions based on
the different report types.
Patch 01 arranges the structure better by moving the frequently used
fields together, patches 02 and 03 add support for source lists and group
modes per port group which are dumped. Patch 04 adds support for
group-and-source specific queries required for IGMPv3. Patch 05 factors
out the port group deletion code which is used in a few places, then
patch 06 adds support for group and group-and-source query
retransmissions via a new rexmit timer. Patches 07 and 08 make use of
the already present mdb fill functions when sending notifications so we
can have the full mdb entries' state filled in (with sources, mode etc).
Patch 09 takes care of port group expiration, it switches the group mode
to include and deletes it if there are no sources with active timers.
Patches 10-13 are the core changes which add support for IGMPv3 reports
and handle the source list set operations as per RFC 3376, all IGMPv3
report types with their transitions should be supported after these
patches. I've used RFC 3376 and FRR as a reference implementation. The
source lists are capped at 32 entries, we can remove that limitation at
a later point which would require a better data structure to hold them.
IGMPv3 processing is hidden behind the bridge's multicast_igmp_version
option which must be set to 3 in order to enable it.
Patch 14 improves other querier processing a bit (more about this below).
And finally patch 15 transform the src gc so it can be used with all mcast
objects since now we have multiple timers that can be running and we
need to make sure they have all finished before freeing the objects.
This is part 1, it only adds control plane support and doesn't change
the fast path. A following patch-set will take care of that.

Here're the sets that will come next (in order):
 - Fast path patch-set which adds support for (S, G) mdb entries needed
   for IGMPv3 forwarding, entry add source (kernel, user-space etc)
   needed for IGMPv3 entry management, entry block mode needed for
   IGMPv3 exclude mode. This set will also add iproute2 support for
   manipulating and showing all the new state.
 - Selftests patch-set which will verify all IGMPv3 state transitions
   and forwarding
 - Explicit host tracking patch-set, needed for proper fast leave and
   with it fast leave will be enabled for IGMPv3

Not implemented yet:
 - Host IGMPv3 support (currently we handle only join/leave as before)
 - Proper other querier source timer and value updates
 - IGMPv3/v2 compat (I have a few rough patches for this one)

v2:
 patches 02-03: make src lists RCU friendly so they can be traversed
                when dumping, reduce limit to a more conservative 32
                src group entries for a start
 patches 11-13: remove helper and directly do bitops
 patch      15: force mcast gc on bridge port del to make sure port
                group timers have finished before freeing the port

Thanks,
 Nik


Nikolay Aleksandrov (15):
  net: bridge: mdb: arrange internal structs so fast-path fields are
    close
  net: bridge: mcast: add support for group source list
  net: bridge: mcast: add support for src list and filter mode dumping
  net: bridge: mcast: add support for group-and-source specific queries
  net: bridge: mcast: factor out port group del
  net: bridge: mcast: add support for group query retransmit
  net: bridge: mdb: push notifications in __br_mdb_add/del
  net: bridge: mdb: use mdb and port entries in notifications
  net: bridge: mcast: delete expired port groups without srcs
  net: bridge: mcast: support for IGMPv3 IGMPV3_ALLOW_NEW_SOURCES report
  net: bridge: mcast: support for IGMPV3_MODE_IS_INCLUDE/EXCLUDE report
  net: bridge: mcast: support for IGMPV3_CHANGE_TO_INCLUDE/EXCLUDE
    report
  net: bridge: mcast: support for IGMPV3_BLOCK_OLD_SOURCES report
  net: bridge: mcast: improve v3 query processing
  net: bridge: mcast: destroy all entries via gc

 include/uapi/linux/if_bridge.h |   21 +
 net/bridge/br_mdb.c            |  223 ++++---
 net/bridge/br_multicast.c      | 1040 +++++++++++++++++++++++++++++---
 net/bridge/br_private.h        |   67 +-
 4 files changed, 1170 insertions(+), 181 deletions(-)

-- 
2.25.4

