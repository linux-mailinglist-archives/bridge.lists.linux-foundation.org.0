Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FC3695D51
	for <lists.bridge@lfdr.de>; Tue, 14 Feb 2023 09:41:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3A2D6110B;
	Tue, 14 Feb 2023 08:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3A2D6110B
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=weissschuh.net header.i=@weissschuh.net header.a=rsa-sha256 header.s=mail header.b=UjNXQ4sA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tKdJf2oGLLLb; Tue, 14 Feb 2023 08:41:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5FD1E61117;
	Tue, 14 Feb 2023 08:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FD1E61117
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2987DC0032;
	Tue, 14 Feb 2023 08:41:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F0C6FC0032
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B74158208B
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B74158208B
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=weissschuh.net header.i=@weissschuh.net
 header.a=rsa-sha256 header.s=mail header.b=UjNXQ4sA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gR729UKGjk3 for <bridge@lists.linux-foundation.org>;
 Sat, 11 Feb 2023 03:39:32 +0000 (UTC)
X-Greylist: delayed 00:06:49 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57C2482081
Received: from todd.t-8ch.de (todd.t-8ch.de [159.69.126.157])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57C2482081
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:39:32 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1676086359;
 bh=Dnmm9EisyiwPWuqnhssGEUllu7crqwubee2hNSJAG8M=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=UjNXQ4sAm7gTMcAakOeheIUjKxttHPo9C+4JiCsux7rS5UwNSceKBz3Shzghl6KKu
 OQhOEHOSPTivXqHhxF63huaf28WpWD1y3OvnSm304qTiT/OrfydCE8paw+1zS9BtBi
 tlcoz9c31vKJr0p+viUNWg9mSuXcmilCnhgVNVDo=
Date: Sat, 11 Feb 2023 03:32:31 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20230211-kobj_type-net-v1-3-e3bdaa5d8a78@weissschuh.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1676086354; l=1793;
 i=linux@weissschuh.net; s=20221212; h=from:subject:message-id;
 bh=Dnmm9EisyiwPWuqnhssGEUllu7crqwubee2hNSJAG8M=;
 b=onqdqhxHmXHKN3enPa0T1Gz+7MRmxgAzhxlzCohHIJ/hJg/Czxo1RYAbabMEPlV0N+RLZ5GqH
 xsbzqvl8cG2Bd5xlzMTSFa68hl+5U9j2Z1xgWzALMttXy92f2Ixd6zp
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=KcycQgFPX2wGR5azS7RhpBqedglOZVgRPfdFSPB1LNw=
X-Mailman-Approved-At: Tue, 14 Feb 2023 08:41:23 +0000
Cc: netdev@vger.kernel.org, linux-nfs@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>
Subject: [Bridge] [PATCH 3/3] SUNRPC: make kobj_type structures constant
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
 net/sunrpc/sysfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/net/sunrpc/sysfs.c b/net/sunrpc/sysfs.c
index 1e05a2d723f4..0d0db4e1064e 100644
--- a/net/sunrpc/sysfs.c
+++ b/net/sunrpc/sysfs.c
@@ -36,7 +36,7 @@ rpc_sysfs_object_child_ns_type(const struct kobject *kobj)
 	return &net_ns_type_operations;
 }
 
-static struct kobj_type rpc_sysfs_object_type = {
+static const struct kobj_type rpc_sysfs_object_type = {
 	.release = rpc_sysfs_object_release,
 	.sysfs_ops = &kobj_sysfs_ops,
 	.child_ns_type = rpc_sysfs_object_child_ns_type,
@@ -427,20 +427,20 @@ static struct attribute *rpc_sysfs_xprt_switch_attrs[] = {
 };
 ATTRIBUTE_GROUPS(rpc_sysfs_xprt_switch);
 
-static struct kobj_type rpc_sysfs_client_type = {
+static const struct kobj_type rpc_sysfs_client_type = {
 	.release = rpc_sysfs_client_release,
 	.sysfs_ops = &kobj_sysfs_ops,
 	.namespace = rpc_sysfs_client_namespace,
 };
 
-static struct kobj_type rpc_sysfs_xprt_switch_type = {
+static const struct kobj_type rpc_sysfs_xprt_switch_type = {
 	.release = rpc_sysfs_xprt_switch_release,
 	.default_groups = rpc_sysfs_xprt_switch_groups,
 	.sysfs_ops = &kobj_sysfs_ops,
 	.namespace = rpc_sysfs_xprt_switch_namespace,
 };
 
-static struct kobj_type rpc_sysfs_xprt_type = {
+static const struct kobj_type rpc_sysfs_xprt_type = {
 	.release = rpc_sysfs_xprt_release,
 	.default_groups = rpc_sysfs_xprt_groups,
 	.sysfs_ops = &kobj_sysfs_ops,

-- 
2.39.1

