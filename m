Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B6036A81F
	for <lists.bridge@lfdr.de>; Sun, 25 Apr 2021 17:58:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CD0C6063A;
	Sun, 25 Apr 2021 15:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ztAcP87DPJ8; Sun, 25 Apr 2021 15:58:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC0896063F;
	Sun, 25 Apr 2021 15:58:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6BB2AC000B;
	Sun, 25 Apr 2021 15:58:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8E4DAC000B
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7015A4032B
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6i-TzVifYJEt for <bridge@lists.linux-foundation.org>;
 Sun, 25 Apr 2021 15:58:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6D51C404EB
 for <bridge@lists.linux-foundation.org>; Sun, 25 Apr 2021 15:58:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 3B5813EBF7; Sun, 25 Apr 2021 17:58:03 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: netdev@vger.kernel.org
Date: Sun, 25 Apr 2021 17:57:31 +0200
Message-Id: <20210425155732.8561-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.2
Cc: b.a.t.m.a.n@lists.open-mesh.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Subject: [Bridge] [PATCH net-next 0/2] net: bridge: split IPv4/v6 mc router
	state and export for batman-adv
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

The following are two patches for the Linux bridge regarding multicast
routers. They are rebased on top of the following fix:
"net: bridge: mcast: fix broken length + header check for MRDv6 Adv." [0]
And should be applied afterwards.

The first one splits the so far combined multicast router state into two
ones, one for IPv4 and one for IPv6, for a more fine-grained detection of
multicast routers. This avoids sending IPv4 multicast packets to an
IPv6-only multicast router and avoids sending IPv6 multicast packets to
an IPv4-only multicast router. This is also in preparation for the
second patch:

The second patch exports this now per protocol family multicast router
state so that batman-adv can then later make full use of the
Multicast Router Discovery (MRD) support in the Linux bridge. The
batman-adv protocol format currently expects separate multicast router
states for IPv4 and IPv6, therefore it depends on the first patch.
batman-adv will then make use of this newly exported functions like
this[1].

Regards, Linus

[0]: https://patchwork.kernel.org/project/netdevbpf/patch/20210425152736.8421-1-linus.luessing@c0d3.blue/
[1]: https://git.open-mesh.org/batman-adv.git/shortlog/refs/heads/linus/multicast-routeable-mrd
     -> https://git.open-mesh.org/batman-adv.git/commit/d4bed3a92427445708baeb1f2d1841c5fb816fd4

