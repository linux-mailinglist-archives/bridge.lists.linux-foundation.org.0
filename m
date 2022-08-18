Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B5259AC5F
	for <lists.bridge@lfdr.de>; Sat, 20 Aug 2022 10:04:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C735D408F3;
	Sat, 20 Aug 2022 08:04:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C735D408F3
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=sang-engineering.com header.i=@sang-engineering.com header.a=rsa-sha256 header.s=k1 header.b=RN7z5/75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uv3jtkGrzzOW; Sat, 20 Aug 2022 08:04:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id F10F4408E1;
	Sat, 20 Aug 2022 08:03:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F10F4408E1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C3746C0078;
	Sat, 20 Aug 2022 08:03:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0AADEC002D
 for <bridge@lists.linux-foundation.org>; Thu, 18 Aug 2022 21:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB9D760A46
 for <bridge@lists.linux-foundation.org>; Thu, 18 Aug 2022 21:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB9D760A46
Authentication-Results: smtp3.osuosl.org; dkim=pass (1024-bit key,
 unprotected) header.d=sang-engineering.com header.i=@sang-engineering.com
 header.a=rsa-sha256 header.s=k1 header.b=RN7z5/75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nSP0CXaOUkEP for <bridge@lists.linux-foundation.org>;
 Thu, 18 Aug 2022 21:20:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FA08607EC
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8FA08607EC
 for <bridge@lists.linux-foundation.org>; Thu, 18 Aug 2022 21:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=k1; bh=Pu930IAe/AYCg8Oap5bmCJ32MkT
 AAiu9pRH3YePSC4E=; b=RN7z5/75Ie/+RG/Uj4zpOfHWaZltdHhdnjx53b60RHh
 R0rjwBFAShGPJcUbURxwYUamgmYbnymY2BzsJ0FAvP20KDq336J5etnpCMAd54hG
 ZEzZVsHe82UB45xh80eBlVYEWLySnXM0JK12rQHdnDxubdZnSHD9cdWEJlBQvKi0
 =
Received: (qmail 3962995 invoked from network); 18 Aug 2022 23:02:13 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 18 Aug 2022 23:02:13 +0200
X-UD-Smtp-Session: l3s3148p1@JXWsS4rmHKYucref
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-kernel@vger.kernel.org
Date: Thu, 18 Aug 2022 23:02:12 +0200
Message-Id: <20220818210212.8347-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sat, 20 Aug 2022 08:03:57 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Florian Westphal <fw@strlen.de>,
 Jozsef Kadlecsik <kadlec@netfilter.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Eric Dumazet <edumazet@google.com>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: [Bridge] [PATCH] bridge: move from strlcpy with unused retval to
	strscpy
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

Follow the advice of the below link and prefer 'strscpy' in this
subsystem. Conversion is 1:1 because the return value is not used.
Generated by a coccinelle script.

Link: https://lore.kernel.org/r/CAHk-=wgfRnXz0W3D37d01q3JFkr_i_uTL=V6A6G1oUZcprmknw@mail.gmail.com/
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 net/bridge/br_device.c          | 8 ++++----
 net/bridge/br_sysfs_if.c        | 4 ++--
 net/bridge/netfilter/ebtables.c | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 58a4f70e01e3..b82906fc999a 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -251,10 +251,10 @@ static int br_set_mac_address(struct net_device *dev, void *p)
 
 static void br_getinfo(struct net_device *dev, struct ethtool_drvinfo *info)
 {
-	strlcpy(info->driver, "bridge", sizeof(info->driver));
-	strlcpy(info->version, BR_VERSION, sizeof(info->version));
-	strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
-	strlcpy(info->bus_info, "N/A", sizeof(info->bus_info));
+	strscpy(info->driver, "bridge", sizeof(info->driver));
+	strscpy(info->version, BR_VERSION, sizeof(info->version));
+	strscpy(info->fw_version, "N/A", sizeof(info->fw_version));
+	strscpy(info->bus_info, "N/A", sizeof(info->bus_info));
 }
 
 static int br_get_link_ksettings(struct net_device *dev,
diff --git a/net/bridge/br_sysfs_if.c b/net/bridge/br_sysfs_if.c
index 07fa76080512..74fdd8105dca 100644
--- a/net/bridge/br_sysfs_if.c
+++ b/net/bridge/br_sysfs_if.c
@@ -384,7 +384,7 @@ int br_sysfs_addif(struct net_bridge_port *p)
 			return err;
 	}
 
-	strlcpy(p->sysfs_name, p->dev->name, IFNAMSIZ);
+	strscpy(p->sysfs_name, p->dev->name, IFNAMSIZ);
 	return sysfs_create_link(br->ifobj, &p->kobj, p->sysfs_name);
 }
 
@@ -406,7 +406,7 @@ int br_sysfs_renameif(struct net_bridge_port *p)
 		netdev_notice(br->dev, "unable to rename link %s to %s",
 			      p->sysfs_name, p->dev->name);
 	else
-		strlcpy(p->sysfs_name, p->dev->name, IFNAMSIZ);
+		strscpy(p->sysfs_name, p->dev->name, IFNAMSIZ);
 
 	return err;
 }
diff --git a/net/bridge/netfilter/ebtables.c b/net/bridge/netfilter/ebtables.c
index f2dbefb61ce8..3c3ecd4cddb5 100644
--- a/net/bridge/netfilter/ebtables.c
+++ b/net/bridge/netfilter/ebtables.c
@@ -1446,7 +1446,7 @@ static inline int ebt_obj_to_user(char __user *um, const char *_name,
 	/* ebtables expects 31 bytes long names but xt_match names are 29 bytes
 	 * long. Copy 29 bytes and fill remaining bytes with zeroes.
 	 */
-	strlcpy(name, _name, sizeof(name));
+	strscpy(name, _name, sizeof(name));
 	if (copy_to_user(um, name, EBT_EXTENSION_MAXNAMELEN) ||
 	    put_user(revision, (u8 __user *)(um + EBT_EXTENSION_MAXNAMELEN)) ||
 	    put_user(datasize, (int __user *)(um + EBT_EXTENSION_MAXNAMELEN + 1)) ||
-- 
2.35.1

