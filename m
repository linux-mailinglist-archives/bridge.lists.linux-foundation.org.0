Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 551D4695D55
	for <lists.bridge@lfdr.de>; Tue, 14 Feb 2023 09:41:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4984E416E8;
	Tue, 14 Feb 2023 08:41:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4984E416E8
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=weissschuh.net header.i=@weissschuh.net header.a=rsa-sha256 header.s=mail header.b=E8NFdE44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lM37waZ-rUIh; Tue, 14 Feb 2023 08:41:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 7F40A416E7;
	Tue, 14 Feb 2023 08:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F40A416E7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3B6ABC0081;
	Tue, 14 Feb 2023 08:41:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E26A9C002B
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 04:23:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A53AF40A91
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 04:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A53AF40A91
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=weissschuh.net header.i=@weissschuh.net
 header.a=rsa-sha256 header.s=mail header.b=E8NFdE44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6C9Zw722C8p5 for <bridge@lists.linux-foundation.org>;
 Tue, 14 Feb 2023 04:23:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A492400D0
Received: from todd.t-8ch.de (todd.t-8ch.de [IPv6:2a01:4f8:c010:41de::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A492400D0
 for <bridge@lists.linux-foundation.org>; Tue, 14 Feb 2023 04:23:21 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1676348597;
 bh=COVcQB5cR6h89Wr/2J1rv/M31I/gbeQf6njLyVKwSIM=;
 h=From:Subject:Date:To:Cc:From;
 b=E8NFdE44PufttVZMbbCzPFCjNkIW64yBxlo4sJ076a5J/345Syyya9BaKdHxf9HcS
 p1a42BsThSSLSWd+RKYCTKUjV7wS64PblTpkxX49I2xARHiMuFaFZIs3VD40UJh3Rw
 SZW6o2fvvcKnXlNIO8vWIanZ14fjvoKaZEGmp+WQ=
Date: Tue, 14 Feb 2023 04:23:10 +0000
Message-Id: <20230211-kobj_type-net-v2-0-013b59e59bf3@weissschuh.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAK8M62MC/3WNTQ6CMBBGr0JmbQ0tKuDKexhiWjrYKmlJpyCEc
 Hcre5ffz8tbgTBYJLhmKwScLFnvUhCHDFoj3ROZ1SmDyEWRC87Z26vXIy4DMoeR1XVX8uJ0kag
 FJEZJQqaCdK1JlBv7PpVDwM7Ou+QOP8rhHKFJi7EUfVh2+8T3/Y9o4ixnWCgt5VlXsqxuH7RE1
 JrRHNMBmm3bvhJeK/jOAAAA
To: Roopa Prabhu <roopa@nvidia.com>, 
 Nikolay Aleksandrov <razor@blackwall.org>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1676348594; l=897;
 i=linux@weissschuh.net; s=20221212; h=from:subject:message-id;
 bh=COVcQB5cR6h89Wr/2J1rv/M31I/gbeQf6njLyVKwSIM=;
 b=mzJZEHszcanAOUqAskTyY8zp/N2ygwkPwET7vB6F566gjMRd1fsDdE1lDINz6C/IzArbj7Pux
 QLn3gil8v5CBhjijG9ctohjQrB1DvCy2GToIrTo8seYprEPPypyg707
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Mailman-Approved-At: Tue, 14 Feb 2023 08:41:23 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org,
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Subject: [Bridge] [PATCH net-next v2 0/2] net: make kobj_type structures
	constant
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

Since commit ee6d3dd4ed48 ("driver core: make kobj_type constant.")
the driver core allows the usage of const struct kobj_type.

Take advantage of this to constify the structure definitions to prevent
modification at runtime.

Signed-off-by: Thomas Weißschuh <linux@weissschuh.net>
---
Changes in v2:
- drop sunrpc patch from series
- use "net-next" patch prefix
- Link to v1: https://lore.kernel.org/r/20230211-kobj_type-net-v1-0-e3bdaa5d8a78@weissschuh.net

---
Thomas Weißschuh (2):
      net: bridge: make kobj_type structure constant
      net-sysfs: make kobj_type structures constant

 net/bridge/br_if.c   | 2 +-
 net/core/net-sysfs.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
---
base-commit: f6feea56f66d34259c4222fa02e8171c4f2673d1
change-id: 20230211-kobj_type-net-99f71346aed2

Best regards,
-- 
Thomas Weißschuh <linux@weissschuh.net>

