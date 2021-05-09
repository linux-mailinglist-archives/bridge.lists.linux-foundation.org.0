Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF99377823
	for <lists.bridge@lfdr.de>; Sun,  9 May 2021 21:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36E4F607A4;
	Sun,  9 May 2021 19:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bSBOhdHN2_0l; Sun,  9 May 2021 19:45:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D87C60786;
	Sun,  9 May 2021 19:45:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7A83CC0024;
	Sun,  9 May 2021 19:45:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9F5FAC0001
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42010402C5
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N63HpZah79yW for <bridge@lists.linux-foundation.org>;
 Sun,  9 May 2021 19:45:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39D8640100
 for <bridge@lists.linux-foundation.org>; Sun,  9 May 2021 19:45:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 8239E3ED8B; Sun,  9 May 2021 21:45:20 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Sun,  9 May 2021 21:44:58 +0200
Message-Id: <20210509194509.10849-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next v2 00/11] net: bridge: split IPv4/v6 mc
	router state and export for batman-adv
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

Hi,

The following patches are splitting the so far combined multicast router
state in the Linux bridge into two ones, one for IPv4 and one for IPv6,
for a more fine-grained detection of multicast routers. This avoids
sending IPv4 multicast packets to an IPv6-only multicast router and 
avoids sending IPv6 multicast packets to an IPv4-only multicast router.
This also allows batman-adv to make use of the now split information in
the final patch.

The first eight patches prepare the bridge code to avoid duplicate
code or IPv6-#ifdef clutter for the multicast router state split. And 
contain no functional changes yet.

The ninth patch then implements the IPv4+IPv6 multicast router state
split.

Patch number ten adds IPv4+IPv6 specific timers to the mdb netlink
router port dump, so that the timers validity can be checked individually
from userspace.

The final, eleventh patch exports this now per protocol family multicast
router state so that batman-adv can then later make full use of the 
Multicast Router Discovery (MRD) support in the Linux bridge. The 
batman-adv protocol format currently expects separate multicast router
states for IPv4 and IPv6, therefore it depends on the first patch.
batman-adv will then make use of this newly exported functions like
this[0].

Regards, Linus

[0]: https://git.open-mesh.org/batman-adv.git/shortlog/refs/heads/linus/multicast-routeable-mrd
     -> https://git.open-mesh.org/batman-adv.git/commit/d4bed3a92427445708baeb1f2d1841c5fb816fd4

Changelog v2: 

* split into multiple patches as suggested by Nikolay
* added helper functions to br_multicast_flood(), avoiding
  IPv6 #ifdef clutter
* fixed reverse xmas tree ordering in br_rports_fill_info() and 
  added helper functions to avoid IPv6 #ifdef clutter
* Added a common br_multicast_add_router() and a helper function
  to retrieve the correct slot to avoid duplicate code for an
  ip4 and ip6 variant
* replaced the "1" and "2" constants in br_multicast_is_router()
  with the appropriate enums
* added br_{ip4,ip6}_multicast_rport_del() wrappers to reduce
  IPv6 #ifdef clutter
* added return values to br_*multicast_rport_del() to only notify
  if the port was actually removed and did not race with a readdition
  somewhere else
* added empty, void br_ip6_multicast_mark_router() if compiled
  without IPv6, to reduce IPv6 #ifdef clutter


