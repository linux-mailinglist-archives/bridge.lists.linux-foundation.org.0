Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AD52FD3C0
	for <lists.bridge@lfdr.de>; Wed, 20 Jan 2021 16:19:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E896C20499;
	Wed, 20 Jan 2021 15:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fdux0Uquyry9; Wed, 20 Jan 2021 15:19:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 56521203FF;
	Wed, 20 Jan 2021 15:19:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 455E7C013A;
	Wed, 20 Jan 2021 15:19:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2B28C013A
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B12D387151
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 08zFhsf+1ttu for <bridge@lists.linux-foundation.org>;
 Wed, 20 Jan 2021 15:19:35 +0000 (UTC)
X-Greylist: delayed 00:20:05 by SQLgrey-1.7.6
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9E99E87148
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 15:19:34 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id v24so27966010lfr.7
 for <bridge@lists.linux-foundation.org>; Wed, 20 Jan 2021 07:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wPcMQBvMi4L81CqXqUNlL27DFtJJ6AUlR/ZpxbIsss0=;
 b=d9dH+MgL/izcQtHIuCFBChiqwBlYNEApffYHF+cLXlOytooAGXYMxtjmA20xwvdEkB
 lusAqKqxHmUi59bUm2kcQUXp6oTBfC45O61JXeWJ7KAKNF2ErwcpkwBO73DchKAkBRot
 zXIxH15FOSngpnEBaEWzasfNfb+8zt1oEMte8caWGtKtjVjCRXpWgJFjlc09Kas3zYt9
 WfN/Rb8574+kfRuebMYntF2awBevyY+httkbxKrlLaqUiwSdQ3KOBon8tcqGM77A0A8/
 SSldHu6xC/rZBwtmqj1OQu0Te7m+1i4cOqzzu5CXWSSCZb4xysXtVqgREfR8Qi4a7Q0y
 vgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wPcMQBvMi4L81CqXqUNlL27DFtJJ6AUlR/ZpxbIsss0=;
 b=TbtOsJY40QJvSQ1S0DKr0YO06biDM/ljdFShWi2/ViNdzCq9NZ8CFe4xpA82eCVghp
 +vCIJLE9NwzqQNJ8ZadI0eXSI8t/xLh5+YbCCyTJORao9DwwQo2QTPWSBbAE6d28rzzF
 Vf6PS4E9dv4tiruJkdmnhWHjv1eSHCx2MuvYXN8DLwaZweV8TUEOdrt9HUo7tkAnaUSu
 YooxbvKfmmk8XF27UZ7Yet7uDjp8dBQQmir1JPx92SA4P8fDMrIOXrbOWQidJDKGWFou
 WwpmK5eJEF9f5syJPu86lx7Mrd0XOIWmla6z+XPK5RfQ6fc4M0s/IAa1C9bs07yy4y2p
 qA1w==
X-Gm-Message-State: AOAM5308l2tFa8xalfejV92hYohcI9LD2m8/2oHsL4X59NKrCMVURSQd
 cX1jAzCazzU3BQMO1IDtz6OeZYs/QijlgezIuDA=
X-Google-Smtp-Source: ABdhPJwfnuWxdwtTZSD4VbwPBqdodewMrp9L977O+krdOkQCNs75p1aDh7VM2tT7lT5gsRdVz6IGEw==
X-Received: by 2002:a17:906:4d19:: with SMTP id
 r25mr6166680eju.148.1611154382405; 
 Wed, 20 Jan 2021 06:53:02 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id x17sm1239349edq.77.2021.01.20.06.53.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:53:01 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Wed, 20 Jan 2021 16:51:49 +0200
Message-Id: <20210120145203.1109140-1-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, kuba@kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 00/14] net: bridge: multicast: add initial
	EHT support
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
This set adds explicit host tracking support for IGMPv3/MLDv2. The
already present per-port fast leave flag is used to enable it since that
is the primary goal of EHT, to track a group and its S,Gs usage per-host
and when left without any interested hosts delete them before the standard
timers. The EHT code is pretty self-contained and not enabled by default.
There is no new uAPI added, all of the functionality is currently hidden
behind the fast leave flag. In the future that will change (more below).
The host tracking uses two new sets per port group: one having an entry for
each host which contains that host's view of the group (source list and
filter mode), and one set which contains an entry for each source having
an internal set which contains an entry for each host that has reported
an interest for that source. RB trees are used for all sets so they're
compact when not used and fast when we need to do lookups.
To illustrate it:
 [ bridge port group ]
  ` [ host set (rb) ]
   ` [ host entry with a list of sources and filter mode ]
  ` [ source set (rb) ]
   ` [ source entry ]
    ` [ source host set (rb) ]
     ` [ source host entry with a timer ]

The number of tracked sources per host is limited to the maximum total
number of S,G entries per port group - PG_SRC_ENT_LIMIT (currently 32).
The number of hosts is unlimited, I think the argument that a local
attacker can exhaust the memory/cause high CPU usage can be applied to
fdb entries as well which are unlimited. In the future if needed we can
add an option to limit these, but I don't think it's necessary for a
start. All of the new sets are protected by the bridge's multicast lock.
I'm pretty sure we'll be changing the cases and improving the
convergence time in the future, but this seems like a good start.

I'll post self-tests as a separate patch-set.

Patch breakdown:
 patch 1 -  4: minor cleanups and preparations for EHT
 patch      5: adds the new structures which will be used in the
               following patches
 patch      6: adds support to create, destroy and lookup host entries
 patch      7: adds support to create, delete and lokup source set entries
 patch      8: adds a host "delete" function which is just a host's
               source list flush since that would automatically delete
               the host
 patch 9 - 10: add support for handling all IGMPv3/MLDv2 report types
               more information can be found in the individual patches
 patch     11: optmizes a specific TO_INCLUDE use-case with host timeouts
 patch     12: handles per-host filter mode changing (include <-> exclude)
 patch     13: pulls out block group deletion since now it can be
               deleted in both filter modes
 patch     14: marks deletions done due to fast leave

Future plans:
 - export host information
 - add an option to reduce queries
 - add an option to limit the number of host entries
 - tune more fast leave cases for quicker convergence

By the way I think this is the first open-source EHT implementation, I
couldn't find any while researching it. :)

Thanks,
 Nik


Nikolay Aleksandrov (14):
  net: bridge: multicast: rename src_size to addr_size
  net: bridge: multicast: pass host src address to IGMPv3/MLDv2
    functions
  net: bridge: multicast: __grp_src_block_incl can modify pg
  net: bridge: multicast: calculate idx position without changing ptr
  net: bridge: multicast: add EHT structures and definitions
  net: bridge: multicast: add EHT host handling functions
  net: bridge: multicast: add EHT source set handling functions
  net: bridge: multicast: add EHT host delete function
  net: bridge: multicast: add EHT allow/block handling
  net: bridge: multicast: add EHT include and exclude handling
  net: bridge: multicast: optimize TO_INCLUDE EHT timeouts
  net: bridge: multicast: add EHT host filter_mode handling
  net: bridge: multicast: handle block pg delete for all cases
  net: bridge: multicast: mark IGMPv3/MLDv2 fast-leave deletes

 net/bridge/Makefile               |   2 +-
 net/bridge/br_multicast.c         | 254 +++++----
 net/bridge/br_multicast_eht.c     | 856 ++++++++++++++++++++++++++++++
 net/bridge/br_private.h           |   6 +
 net/bridge/br_private_mcast_eht.h |  65 +++
 5 files changed, 1093 insertions(+), 90 deletions(-)
 create mode 100644 net/bridge/br_multicast_eht.c
 create mode 100644 net/bridge/br_private_mcast_eht.h

-- 
2.29.2

