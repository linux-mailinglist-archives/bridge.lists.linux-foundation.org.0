Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D02025E665
	for <lists.bridge@lfdr.de>; Sat,  5 Sep 2020 10:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3FC886880;
	Sat,  5 Sep 2020 08:24:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LcDtdf-UebiK; Sat,  5 Sep 2020 08:24:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 207CB868A8;
	Sat,  5 Sep 2020 08:24:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 12101C088B;
	Sat,  5 Sep 2020 08:24:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 06FB5C0052
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E371A2000F
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mVSBIQ0nwZpM for <bridge@lists.linux-foundation.org>;
 Sat,  5 Sep 2020 08:24:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id C01BC20002
 for <bridge@lists.linux-foundation.org>; Sat,  5 Sep 2020 08:24:41 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id l9so8825985wme.3
 for <bridge@lists.linux-foundation.org>; Sat, 05 Sep 2020 01:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lG2pvPc4SHgc6L+ln3Njda4OcYlOBObAxxS4WHFU3Us=;
 b=clpfeJtlKoezTjqlV9J1IoR5sz/x3n4+cCE4+E9z+pLIVo6zR88gVfdOKy4Ma0SA2y
 f9v4zjDBl5a37aWPzpZqUYbWYhqw6ZjgfLfvgJHu7wrojE6sv5JQjk1HK7F8hicbWBkP
 KY0VIcBOdy3frS+470Uc236hFzZquUdvPCTr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lG2pvPc4SHgc6L+ln3Njda4OcYlOBObAxxS4WHFU3Us=;
 b=EIdbiS+DTniq9A2WDD+/I/6rZLQSpJlCEF+0Yra/4fFW5YQefFICNX25VY5JdNsL6y
 oyka7PoSnmGaIclzCdlhwiKYnr/Er84Zzyf7Hsp66OG1lw9EVvryIwZq3oFqISzo0QnM
 eaTK8IvQWC+0IqPPd8YrGIO54Q1ERwh4i8vK3UlIkUhok6fRc+aMJ1OQnwsdsRQJEp8d
 VOu0JpS/QER0eld7l0KNte/JHOLTriDOBZOIUaGUW9yCdGpVIC+6R0iqgFmVzZcLDu0T
 AteuISeK47EGKNqX9hz1zDJpNOkFOU6r5Rl/t7XiMG11GHmyttV36tqwJwxZXq3Q+Ukh
 61Gw==
X-Gm-Message-State: AOAM533D2Y1K5Oew4nG/D+CAFV6EnKB7cR0xECO3lpvkhWQ+bKKXMB6d
 0D26HP6itgyP7WTjkUv9hVibKQ==
X-Google-Smtp-Source: ABdhPJw9dHmLvHWhz2xA/KF16en82qD1kIWqXJ2SZF+waobFp2ITl88BdkmYYalIkxE3/asXjY3gkQ==
X-Received: by 2002:a05:600c:1293:: with SMTP id
 t19mr11521708wmd.34.1599294279969; 
 Sat, 05 Sep 2020 01:24:39 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id m185sm17169296wmf.5.2020.09.05.01.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 01:24:39 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Sat,  5 Sep 2020 11:23:55 +0300
Message-Id: <20200905082410.2230253-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next v3 00/15] net: bridge: mcast: initial
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
fields together, patches 02 and 03 add support for source lists and group
modes per port group which are dumped. Patch 04 adds support for
group-and-source specific queries required for IGMPv3/MLDv2. Patch 05
factors out the port group deletion code which is used in a few places,
then patch 06 adds support for group and group-and-source query
retransmissions via a new rexmit timer. Patches 07 and 08 make use of
the already present mdb fill functions when sending notifications so we
can have the full mdb entries' state filled in (with sources, mode etc).
Patch 09 takes care of port group expiration, it switches the group mode
to include and deletes it if there are no sources with active timers.
Patches 10-13 are the core changes which add support for IGMPv3/MLDv2
reports and handle the source list set operations as per RFCs 3376 and
3810, all IGMPv3/MLDv2 report types with their transitions should be
supported after these patches. I've used RFCs 3376, 3810 and FRR as a
reference implementation. The source lists are capped at 32 entries, we can
remove that limitation at a later point which would require a better data
structure to hold them. IGMPv3 processing is hidden behind the bridge's
multicast_igmp_version option which must be set to 3 in order to enable it.
MLDv2 processing is hidden behind the bridge's multicast_mld_version
which must be set to 2 in order to enable it.
Patch 14 improves other querier processing a bit (more about this below).
And finally patch 15 transform the src gc so it can be used with all mcast
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

v3: add IPv6/MLDv2 support, most patches are changed
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
 net/bridge/br_multicast.c      | 1289 ++++++++++++++++++++++++++++----
 net/bridge/br_private.h        |   70 +-
 4 files changed, 1415 insertions(+), 221 deletions(-)

-- 
2.25.4

