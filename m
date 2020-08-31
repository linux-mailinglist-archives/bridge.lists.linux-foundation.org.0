Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF90F257BB3
	for <lists.bridge@lfdr.de>; Mon, 31 Aug 2020 17:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F3BF86506;
	Mon, 31 Aug 2020 15:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KufJe2pMTi0Y; Mon, 31 Aug 2020 15:09:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9ACC48693D;
	Mon, 31 Aug 2020 15:09:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 771C4C0051;
	Mon, 31 Aug 2020 15:09:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5CC46C0051
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D22F85DD1
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cjCJ1NKa9y6B for <bridge@lists.linux-foundation.org>;
 Mon, 31 Aug 2020 15:09:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 20F6384D62
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 15:09:52 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w5so6306583wrp.8
 for <bridge@lists.linux-foundation.org>; Mon, 31 Aug 2020 08:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9NRlvcF3T25DILTKeuqX8E3EYjoQX7UtJSzPYWLJykQ=;
 b=UIPOyV/TX/qTZ5nPyNPqNeLqqpySpB79+88G/c5/mSiypSXVyEgV5pQF598fXK/QcJ
 DVGzd/FB9W5miozlIm/H9n2/0VsiPmGWEBdSsOExlCshpOyY1TThKNK9CksFW4wAL+Xi
 aqNKWIib8mhFuKp/e6q9MRAWnrPPVlscB+O9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9NRlvcF3T25DILTKeuqX8E3EYjoQX7UtJSzPYWLJykQ=;
 b=WI6SIu5rNsA88Jhk725yeWf5TyqRvU+jn7UfCruG2CDVkDPH2aXCUcs/pDADcU9169
 DHMzepz/A3WqhtiPuiedPf7HeTbdT69uLfzS48+n2qa7542onhLxxdDd2+jLPDaOufWI
 ka3qYmeev+WIQk4kp5MMVFWbxoPUNvCF9kIfjmge4Bhu2jF4PwhQ6MdhLX5NHzc1WdWo
 fZ0JMPw4mDssYFdfkxEnf1bqrljUEsqMBQ1W+4fx7mJt6KW+Ae7mGf6P9CWJtqPQdd+Z
 Wx7Y9kRdyIx3pP1CEixkH5KADwJnI59PemG3aJOVr7ENXhjia01ktAdkiUGsMMSEKrkw
 LS5g==
X-Gm-Message-State: AOAM530MIsyk64ugdF+bebk4VCYTOtFjh7hqxZSCQQX0tvZhJiurDTiG
 rTnPYuTpKgexWwCklIHT7K0y0A==
X-Google-Smtp-Source: ABdhPJxJGmZ6Pks4k0jiikUTCv9YL32nZcRKktFEwp4Z9bHPgq1VZqm0woD+taAUhx4CEjwz1RVQSg==
X-Received: by 2002:a5d:4d8f:: with SMTP id b15mr2060047wru.341.1598886590422; 
 Mon, 31 Aug 2020 08:09:50 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f6sm14181636wme.32.2020.08.31.08.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Aug 2020 08:09:49 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon, 31 Aug 2020 18:08:30 +0300
Message-Id: <20200831150845.1062447-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 00/15] net: bridge: mcast: initial IGMPv3
	support (part 1)
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
This patch-set implements the control plane for initial IGMPv3 support.
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
source lists are capped at 64 entries, we can remove that limitation at
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
 - Proper other querier source timer updates
 - IGMPv3/v2 compat (I have a few rough patches for this one)

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
 net/bridge/br_mdb.c            |  222 ++++---
 net/bridge/br_multicast.c      | 1058 +++++++++++++++++++++++++++++---
 net/bridge/br_private.h        |   66 +-
 4 files changed, 1186 insertions(+), 181 deletions(-)

-- 
2.25.4

