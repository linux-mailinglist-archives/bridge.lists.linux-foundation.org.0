Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE757CAA2C
	for <lists.bridge@lfdr.de>; Mon, 16 Oct 2023 15:45:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39E8261162;
	Mon, 16 Oct 2023 13:45:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39E8261162
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256 header.s=mail header.b=McwRIq5q
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RPGeS_fT60GO; Mon, 16 Oct 2023 13:45:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2D76D611C0;
	Mon, 16 Oct 2023 13:45:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D76D611C0
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D873EC0DD8;
	Mon, 16 Oct 2023 13:45:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 118ABC0071
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E33F40EC1
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:45:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E33F40EC1
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=McwRIq5q
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id epkyR0yC3pSY for <bridge@lists.linux-foundation.org>;
 Mon, 16 Oct 2023 13:45:35 +0000 (UTC)
Received: from mail.avm.de (mail.avm.de [212.42.244.94])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92FA940998
 for <bridge@lists.linux-foundation.org>; Mon, 16 Oct 2023 13:45:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92FA940998
Received: from mail-auth.avm.de (unknown [IPv6:2001:bf0:244:244::71])
 by mail.avm.de (Postfix) with ESMTPS;
 Mon, 16 Oct 2023 15:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=avm.de; s=mail;
 t=1697463932; bh=08Dvz0QFTs4OyvvRDlnOtPaPl5qSnuRfuQVMRHMhHkA=;
 h=From:Subject:Date:To:Cc:From;
 b=McwRIq5qpwhMJaK+85p9Jw3VryqwG94fI4ulJEbNT24ZBCWsJZTB/X1Gpb2mXw4+W
 kSL2pMBmMg3DT9sALq22oRwOt9n0bqNlWGvDAJLAxXhalq5+j8QRfcoHJGO4Ul8XMw
 R1WpqO/juZZ5PbtmbsxeTC/KSnKNCyiEaszqCM8c=
Received: from localhost (unknown [172.17.88.63])
 by mail-auth.avm.de (Postfix) with ESMTPSA id C205680463;
 Mon, 16 Oct 2023 15:45:31 +0200 (CEST)
Date: Mon, 16 Oct 2023 15:27:19 +0200
Message-Id: <20231016-fdb_limit-v5-0-32cddff87758@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADc6LWUC/02N0QrCIBiFXyW8znA6m3bVe0SEzt/2Q3OhIouxd
 09GxC4P53zfWUiCiJDI5bCQCAUTTqEGeTyQfjDhCRRdzYQzLphmLfXOPl44YqbegLTWN+deKVL
 37wge5811IwEyDTBncq/NgClP8bOdFLH1P5/c+YqgjHZSd72TjBnFr6aMJweborQ7rNF7rK2Y0
 J5xLRTrrPpj67p+AVCVD3DgAAAA
To: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>, 
 David Ahern <dsahern@gmail.com>, Eric Dumazet <edumazet@google.com>, 
 Florian Fainelli <f.fainelli@gmail.com>, Ido Schimmel <idosch@nvidia.com>, 
 Jakub Kicinski <kuba@kernel.org>, Nikolay Aleksandrov <razor@blackwall.org>, 
 Oleksij Rempel <linux@rempel-privat.de>, Paolo Abeni <pabeni@redhat.com>, 
 Roopa Prabhu <roopa@nvidia.com>, Shuah Khan <shuah@kernel.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1697462840; l=4409;
 i=jnixdorf-oss@avm.de; s=20230906; h=from:subject:message-id;
 bh=jRXgK5ZH/w4lHTfrhCUHYB60Fh5G5zEcM7p6ySP/Z6I=;
 b=bp/r4y77usO54PIMIxMpSariTGgSj4kzB04SDFJzspTpMVOoW9G8orJeC5HwS6BQmlDI7mx3S
 JQkrHpcnQlXBKQM8wzCEkYBHvO5Ce35CI60QILs3F971HYRr0RQNTez
X-Developer-Key: i=jnixdorf-oss@avm.de; a=ed25519;
 pk=KMraV4q7ANHRrwjf9EVhvU346JsqGGNSbPKeNILOQfo=
X-purgate-ID: 149429::1697463931-7263A42D-C323E2BA/0/0
X-purgate-type: clean
X-purgate-size: 4444
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for
 further information)
X-purgate: clean
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Johannes Nixdorf <jnixdorf-oss@avm.de>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [Bridge] [PATCH net-next v5 0/5] bridge: Add a limit on learned FDB
	entries
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
From: Johannes Nixdorf via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Introduce a limit on the amount of learned FDB entries on a bridge,
configured by netlink with a build time default on bridge creation in
the kernel config.

For backwards compatibility the kernel config default is disabling the
limit (0).

Without any limit a malicious actor may OOM a kernel by spamming packets
with changing MAC addresses on their bridge port, so allow the bridge
creator to limit the number of entries.

Currently the manual entries are identified by the bridge flags
BR_FDB_LOCAL or BR_FDB_ADDED_BY_USER, atomically bundled under the new
flag BR_FDB_DYNAMIC_LEARNED. This means the limit also applies to
entries created with BR_FDB_ADDED_BY_EXT_LEARN but none of BR_FDB_LOCAL
or BR_FDB_ADDED_BY_USER, e.g. ones added by SWITCHDEV_FDB_ADD_TO_BRIDGE.

Link to the corresponding iproute2 changes:
https://lore.kernel.org/r/20230919-fdb_limit-v4-1-b4d2dc4df30f@avm.de

Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
---
Changes in v5:
 - Set IFLA_BR_FDB_N_LEARNED to NLA_REJECT (from review)
 - Moved the strict_start_type-commit after the netlink change, used
   the new attribute. (from review)
 - Dropped the new build time config option. (from review)
 - Link to v4: https://lore.kernel.org/r/20230919-fdb_limit-v4-0-39f0293807b8@avm.de

Changes in v4:
 - Added the new test to the Makefile. (from review)
 - Removed _entries from the names. (from iproute2 review, in some places
   only for consistency)
 - Wrapped the lines at 80 chars, except when longer lines are consistent
   with neighbouring code. (from review)
 - Fixed a race in fdb_delete. (from review)
 - Link to v3: https://lore.kernel.org/r/20230905-fdb_limit-v3-0-7597cd500a82@avm.de

Changes in v3:
 - Fixed the flags for fdb_create in fdb_add_entry to use
   BIT(...). Previously we passed garbage. (from review)
 - Set strict_start_type for br_policy. (from review)
 - Split out the combined accounting and limit patch, and the netlink
   patch from the combined patch in v2. (from review)
 - Count atomically, remove the newly introduced lock. (from review)
 - Added the new attributes to br_policy. (from review)
 - Added a selftest for the new feature. (from review)
 - Link to v2: https://lore.kernel.org/netdev/20230619071444.14625-1-jnixdorf-oss@avm.de/

Changes in v2:
 - Added BR_FDB_ADDED_BY_USER earlier in fdb_add_entry to ensure the
   limit is not applied.
 - Do not initialize fdb_*_entries to 0. (from review)
 - Do not skip decrementing on 0. (from review)
 - Moved the counters to a conditional hole in struct net_bridge to
   avoid growing the struct. (from review, it still grows the struct as
   there are 2 32-bit values)
 - Add IFLA_BR_FDB_CUR_LEARNED_ENTRIES (from review)
 - Fix br_get_size() with the added attributes.
 - Only limit learned entries, rename to
   *_(CUR|MAX)_LEARNED_ENTRIES. (from review)
 - Added a default limit in Kconfig. (deemed acceptable in review
   comments, helps with embedded use-cases where a special purpose kernel
   is built anyways)
 - Added an iproute2 patch for easier testing.
 - Link to v1: https://lore.kernel.org/netdev/20230515085046.4457-1-jnixdorf-oss@avm.de/

Obsolete v1 review comments:
 - Return better errors to users: Due to limiting the limit to
   automatically created entries, netlink fdb add requests and changing
   bridge ports are never rejected, so they do not yet need a more
   friendly error returned.

---
Johannes Nixdorf (5):
      net: bridge: Set BR_FDB_ADDED_BY_USER early in fdb_add_entry
      net: bridge: Track and limit dynamically learned FDB entries
      net: bridge: Add netlink knobs for number / max learned FDB entries
      net: bridge: Set strict_start_type for br_policy
      selftests: forwarding: bridge_fdb_learning_limit: Add a new selftest

 include/uapi/linux/if_link.h                       |   2 +
 net/bridge/br_fdb.c                                |  42 ++-
 net/bridge/br_netlink.c                            |  17 +-
 net/bridge/br_private.h                            |   4 +
 tools/testing/selftests/net/forwarding/Makefile    |   3 +-
 .../net/forwarding/bridge_fdb_learning_limit.sh    | 283 +++++++++++++++++++++
 6 files changed, 344 insertions(+), 7 deletions(-)
---
base-commit: 58720809f52779dc0f08e53e54b014209d13eebb
change-id: 20230904-fdb_limit-fae5bbf16c88

Best regards,
-- 
Johannes Nixdorf <jnixdorf-oss@avm.de>

