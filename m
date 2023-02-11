Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E470695D53
	for <lists.bridge@lfdr.de>; Tue, 14 Feb 2023 09:41:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B666741686;
	Tue, 14 Feb 2023 08:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B666741686
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=weissschuh.net header.i=@weissschuh.net header.a=rsa-sha256 header.s=mail header.b=TsVKORG2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M4TXevY5xCih; Tue, 14 Feb 2023 08:41:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id DBDDC416D3;
	Tue, 14 Feb 2023 08:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBDDC416D3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E1342C0084;
	Tue, 14 Feb 2023 08:41:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E0253C002B
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9DD241B50
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9DD241B50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8HYyIsCJ9CbC for <bridge@lists.linux-foundation.org>;
 Sat, 11 Feb 2023 03:39:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE35941A67
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE35941A67
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:39:32 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1676086359;
 bh=XNGLB3UhxdSqVyS81dpprAvvvxiF/US4JFBcP36WqyI=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=TsVKORG2ywrtpfm4DmD/RciB0Q70iniNRqU3YZMfhUrPo8BlVGnjvQD1j18vz6f7C
 rg4yrkc2aBUmwmp7A+n52xbKwFTa+KYi05N8ajOAY7plh8T/UkEMHwKv0N+hMjoEPc
 AeRp6bR0fFjXBBtDCga1AjeMqkBWSRiG7AtnZP54=
Date: Sat, 11 Feb 2023 03:32:30 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20230211-kobj_type-net-v1-2-e3bdaa5d8a78@weissschuh.net>
References: <20230211-kobj_type-net-v1-0-e3bdaa5d8a78@weissschuh.net>
In-Reply-To: <20230211-kobj_type-net-v1-0-e3bdaa5d8a78@weissschuh.net>
To: Roopa Prabhu <roopa@nvidia.com>, 
 Nikolay Aleksandrov <razor@blackwall.org>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Trond Myklebust <trond.myklebust@hammerspace.com>, 
 Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, 
 Jeff Layton <jlayton@kernel.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1676086354; l=1293;
 i=linux@weissschuh.net; s=20221212; h=from:subject:message-id;
 bh=XNGLB3UhxdSqVyS81dpprAvvvxiF/US4JFBcP36WqyI=;
 b=O08tGpao+GixD5fwjmhZwJyZf4Ds2If3+D7Hs7g4BjKYhk9/FQE3HQxNJOzX6oHM6tg8tw42N
 gmlshEAXEk0DH6Ktt7IXEHJMNgtZwGFS6e0EpBp1Pa9JQLrpmu5a3Pf
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Mailman-Approved-At: Tue, 14 Feb 2023 08:41:23 +0000
Cc: netdev@vger.kernel.org, linux-nfs@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Subject: [Bridge] [PATCH 2/3] net-sysfs: make kobj_type structures constant
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
 net/core/net-sysfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/core/net-sysfs.c b/net/core/net-sysfs.c
index ca55dd747d6c..a3771bba841a 100644
--- a/net/core/net-sysfs.c
+++ b/net/core/net-sysfs.c
@@ -1040,7 +1040,7 @@ static void rx_queue_get_ownership(const struct kobject *kobj,
 	net_ns_get_ownership(net, uid, gid);
 }
 
-static struct kobj_type rx_queue_ktype __ro_after_init = {
+static const struct kobj_type rx_queue_ktype = {
 	.sysfs_ops = &rx_queue_sysfs_ops,
 	.release = rx_queue_release,
 	.default_groups = rx_queue_default_groups,
@@ -1643,7 +1643,7 @@ static void netdev_queue_get_ownership(const struct kobject *kobj,
 	net_ns_get_ownership(net, uid, gid);
 }
 
-static struct kobj_type netdev_queue_ktype __ro_after_init = {
+static const struct kobj_type netdev_queue_ktype = {
 	.sysfs_ops = &netdev_queue_sysfs_ops,
 	.release = netdev_queue_release,
 	.default_groups = netdev_queue_default_groups,

-- 
2.39.1

