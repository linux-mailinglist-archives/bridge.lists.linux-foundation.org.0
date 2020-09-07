Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C5525F6FC
	for <lists.bridge@lfdr.de>; Mon,  7 Sep 2020 12:00:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53A41870D7;
	Mon,  7 Sep 2020 10:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7G8sPySpEjwg; Mon,  7 Sep 2020 10:00:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 773A7870B0;
	Mon,  7 Sep 2020 10:00:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5BF69C0893;
	Mon,  7 Sep 2020 10:00:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 66561C0051
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 555AD8670A
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nxb8K5GwHQ0f for <bridge@lists.linux-foundation.org>;
 Mon,  7 Sep 2020 10:00:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28367866F4
 for <bridge@lists.linux-foundation.org>; Mon,  7 Sep 2020 10:00:11 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id l9so13600341wme.3
 for <bridge@lists.linux-foundation.org>; Mon, 07 Sep 2020 03:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kn1V/a7lSLDzQFi1bqZeW57NNH5/fE9VhyK0T42qHtE=;
 b=DSP+orqI+eqetas8oKauP3pWelp2xx6icw5nOidWAbF2ZOfLDRbo5IeMjvBq/l5tpO
 0QNwCX9vMErt9bRRt1nAkA0nXNGuGUk0S++VLT8TrvPt8DYErW/6+AliZDyJy6pglFx4
 IryIskSpEr6fqnhpD3ZhqpPG09HS9ZxqcC6Ts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Kn1V/a7lSLDzQFi1bqZeW57NNH5/fE9VhyK0T42qHtE=;
 b=g2iOcoxt7Ly8UTkORytjd7NdNXEbSZmby6MWmE0ULX8n+Lbem1536Ktk1CO3luyKl5
 wLdQwZesh7D0YrmkwDlxgnyDDxAjQVkEsdOYd3C1qJRexS0yc6cclA/OYvrJCA2xKQkt
 J75m4t3JKSn4anffGv2zy8/mLkT9GwUbV5bzuIapHtHxBHuQ6fBAGbOveuz3/4EZtbrM
 5tRVWD0sseUSUSfmyXlCcMvpgEKlI55mwWjDWcRX1t3jeWXFbvt0MQHMpMn31riMn6Au
 pCyxnk0ocQebnNPfw4ngshqIdJr52nDEm1krKgbDyG09bpgZ7Qe89aGyl/TN3o8zmX9L
 PfIQ==
X-Gm-Message-State: AOAM530BGk55k5EL+ztLFRuJ5THeE4ktBKMZZDSjizD/8vZVgZ8fe//r
 XjUo027p0E45CaqRV8Rdh+ssOA==
X-Google-Smtp-Source: ABdhPJwKLWtTqHO1VoM/DivFSK3PgRO+uMyWlZiHVjV5bgGEucRLdWunOwD4R9SW88DzMIVo7qea1g==
X-Received: by 2002:a1c:302:: with SMTP id 2mr19503427wmd.134.1599472809624;
 Mon, 07 Sep 2020 03:00:09 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 9sm6686289wmf.7.2020.09.07.03.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 03:00:08 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Sep 2020 12:56:04 +0300
Message-Id: <20200907095619.11216-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v4 00/15] net: bridge: mcast: initial
	IGMPv3/MLDv2 support (part 1)
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
This patch-set implements the control plane for initial IGMPv3/MLDv2
support which takes care of include/exclude sets and state transitions
based on the different report types.
Patch 01 arranges the structure better by moving the frequently used
fields together, patch 02 factors out the port group deletion code which is
used in a few places. Patches 03 and 04 add support for source lists and
group modes per port group which are dumped. Patch 05 adds support for
group-and-source specific queries required for IGMPv3/MLDv2. Then patch 06
adds support for group and group-and-source query retransmissions via a new
rexmit timer. Patches 07 and 08 make use of the already present mdb fill
functions when sending notifications so we can have the full mdb entries'
state filled in (with sources, mode etc). Patch 09 takes care of port group
expiration, it switches the group mode to include and deletes it if there
are no sources with active timers. Patches 10-13 are the core changes which
add support for IGMPv3/MLDv2 reports and handle the source list set
operations as per RFCs 3376 and 3810, all IGMPv3/MLDv2 report types with
their transitions should be supported after these patches. I've used RFCs
3376, 3810 and FRR as a reference implementation. The source lists are
capped at 32 entries, we can remove that limitation at a later point which
would require a better data structure to hold them. IGMPv3 processing is
hidden behind the bridge's multicast_igmp_version option which must be set
to 3 in order to enable it. MLDv2 processing is hidden behind the bridge's
multicast_mld_version which must be set to 2 in order to enable it.
Patch 14 improves other querier processing a bit (more about this below).
And finally patch 15 transforms the src gc so it can be used with all mcast
objects since now we have multiple timers that can be running and we
need to make sure they have all finished before freeing the objects.
This is part 1, it only adds control plane support and doesn't change
the fast path. A following patch-set will take care of that.

Here're the sets that will come next (in order):
 - Fast path patch-set which adds support for (S, G) mdb entries needed
   for IGMPv3/MLDv2 forwarding, entry add source (kernel, user-space etc)
   needed for IGMPv3/MLDv2 entry management, entry block mode needed for
   IGMPv3/MLDv2 exclude mode. This set will also add iproute2 support for
   manipulating and showing all the new state.
 - Selftests patches which will verify all state transitions and forwarding
 - Explicit host tracking patch-set, needed for proper fast leave and
   with it fast leave will be enabled for IGMPv3/MLDv2

Not implemented yet:
 - Host IGMPv3/MLDv2 filter support (currently we handle only join/leave
   as before)
 - Proper other querier source timer and value updates
 - IGMPv3/v2 MLDv2/v1 compat (I have a few rough patches for this one)

v4: move old patch 05 to 02 (group del patch), before src lists
    patch 02: set pg's fast leave flag when deleting due to fast leave
    patch 03: now can use the new port del function
              add igmpv2/mldv1 bool which are set when the entry is
              added in those modes (later will be passed as update_timer)
    patch 10: rename update_timer to igmpv2_mldv1 and use the passed
              value from br_multicast_add_group's callers
v3: add IPv6/MLDv2 support, most patches are changed
v2:
 patches 03-04: make src lists RCU friendly so they can be traversed
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
  net: bridge: mcast: factor out port group del
  net: bridge: mcast: add support for group source list
  net: bridge: mcast: add support for src list and filter mode dumping
  net: bridge: mcast: add support for group-and-source specific queries
  net: bridge: mcast: add support for group query retransmit
  net: bridge: mdb: push notifications in __br_mdb_add/del
  net: bridge: mdb: use mdb and port entries in notifications
  net: bridge: mcast: delete expired port groups without srcs
  net: bridge: mcast: support for IGMPv3/MLDv2 ALLOW_NEW_SOURCES report
  net: bridge: mcast: support for IGMPV3/MLDv2 MODE_IS_INCLUDE/EXCLUDE
    report
  net: bridge: mcast: support for IGMPV3/MLDv2 CHANGE_TO_INCLUDE/EXCLUDE
    report
  net: bridge: mcast: support for IGMPV3/MLDv2 BLOCK_OLD_SOURCES report
  net: bridge: mcast: improve IGMPv3/MLDv2 query processing
  net: bridge: mcast: destroy all entries via gc

 include/uapi/linux/if_bridge.h |   21 +
 net/bridge/br_mdb.c            |  256 +++++--
 net/bridge/br_multicast.c      | 1290 ++++++++++++++++++++++++++++----
 net/bridge/br_private.h        |   70 +-
 4 files changed, 1415 insertions(+), 222 deletions(-)

-- 
2.25.4

