Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0598E2F9151
	for <lists.bridge@lfdr.de>; Sun, 17 Jan 2021 09:12:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1793722E8C;
	Sun, 17 Jan 2021 08:12:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GqV3JXYXVjL3; Sun, 17 Jan 2021 08:12:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id F2AAB22621;
	Sun, 17 Jan 2021 08:12:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D4105C013A;
	Sun, 17 Jan 2021 08:12:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2B430C013A
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jan 2021 08:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2716A87168
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jan 2021 08:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjTOUKRp7HD3 for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jan 2021 08:12:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 64F708632E
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jan 2021 08:12:25 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c12so8316840pfo.10
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jan 2021 00:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rSY/jrqLE+xOv61lVEk8pIJIbYebtwDyEErxSngDBhg=;
 b=ocYqFyxFVb5XjD7dZxd1w0rFvPHUXzYyn3XZUO1XQWXe9+z1ED0cUz0zNfOqNfIM04
 S+qSoHGs16IrD2KvoIsMdW7Iw4qZWEk753xhhHUsirZCnCcVNmkAORt+o+jqS7Wqa812
 eerlXnZRZnmrsIVwnEUt2W5JwwIHUOcKPlvtQuZQLgsulAk4mH03I2MlgqdNMbvphJMl
 zR7J502XkNLbPhPoI3PW2fXE8UJDvfMOIa8i8HN2LfisET7joAVR9jnCAjNM5YwE8ur6
 1x3ZHzZ0g9P5toOQRDE7yx7nsRbMKfqVg6aC2A/KtCnRc2+uyAOEYI31dpun4/7FliLy
 u5lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rSY/jrqLE+xOv61lVEk8pIJIbYebtwDyEErxSngDBhg=;
 b=lGs4sdzPZ6VxQ6mZXs8Gn42JotXXGGf+RZnHF94AMfShHlR2GpFp5pBC/FRw9JyhC3
 wDWTAKipoOUP5ZvejtX3VO5m3ERhmQ81I6D0cAQZNiG1ydf9NHGF7WnLbAsam0hXHvON
 jjcVKYGTXN7pYLlI7gP5sbiW1ODE4R59Qz2QOIFkCPzoegAnciASJKyiWFZBoS7Lwxza
 kBv7jEvejvKZ+t2D0R154C045w+RJVcgVJdZ7+Y9RKQbyOIJpkbW9EU158ijMOUU7ZJ4
 bXUFcd/KCEXxlFH/1jXecnCbQy14rqucI43Jg6is18KUhgvHs8V6t7rdunK26/YRKMry
 C+sg==
X-Gm-Message-State: AOAM5339ahS5Lg6sLE1tj+RJwppWIYoXv3DRmq5AqscH/A/FFT9B4TQr
 SsPdQX4MTWGVm9d5iWdWe4A=
X-Google-Smtp-Source: ABdhPJzQjsbnPwQLrrx/8rMxLvvZ/XoCOYp/lUIKuo7V6rTsxJ4Wrwu8pd6EqiSrlW6BY35QlZfOrA==
X-Received: by 2002:a63:504e:: with SMTP id q14mr20922360pgl.21.1610871145026; 
 Sun, 17 Jan 2021 00:12:25 -0800 (PST)
Received: from localhost ([178.236.46.205])
 by smtp.gmail.com with ESMTPSA id h24sm13168401pfq.13.2021.01.17.00.12.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jan 2021 00:12:24 -0800 (PST)
From: menglong8.dong@gmail.com
X-Google-Original-From: dong.menglong@zte.com.cn
To: kuba@kernel.org
Date: Sun, 17 Jan 2021 16:09:50 +0800
Message-Id: <20210117080950.122761-1-dong.menglong@zte.com.cn>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com, davem@davemloft.net
Subject: [Bridge] [PATCH v4 net-next] net: bridge: check vlan with
	eth_type_vlan() method
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

From: Menglong Dong <dong.menglong@zte.com.cn>

Replace some checks for ETH_P_8021Q and ETH_P_8021AD with
eth_type_vlan().

Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>
---
v4:
- remove unnecessary brackets.

v3:
- fix compile warning in br_vlan_set_proto() by casting 'val' to
  be16.

v2:
- use eth_type_vlan() in br_validate() and __br_vlan_set_proto()
  too.
---
 net/bridge/br_forward.c |  3 +--
 net/bridge/br_netlink.c | 12 +++---------
 net/bridge/br_vlan.c    |  2 +-
 3 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
index e28ffadd1371..6e9b049ae521 100644
--- a/net/bridge/br_forward.c
+++ b/net/bridge/br_forward.c
@@ -39,8 +39,7 @@ int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb
 	br_drop_fake_rtable(skb);
 
 	if (skb->ip_summed == CHECKSUM_PARTIAL &&
-	    (skb->protocol == htons(ETH_P_8021Q) ||
-	     skb->protocol == htons(ETH_P_8021AD))) {
+	    eth_type_vlan(skb->protocol)) {
 		int depth;
 
 		if (!__vlan_get_protocol(skb, skb->protocol, &depth))
diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 49700ce0e919..762f273802cd 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1096,15 +1096,9 @@ static int br_validate(struct nlattr *tb[], struct nlattr *data[],
 		return 0;
 
 #ifdef CONFIG_BRIDGE_VLAN_FILTERING
-	if (data[IFLA_BR_VLAN_PROTOCOL]) {
-		switch (nla_get_be16(data[IFLA_BR_VLAN_PROTOCOL])) {
-		case htons(ETH_P_8021Q):
-		case htons(ETH_P_8021AD):
-			break;
-		default:
-			return -EPROTONOSUPPORT;
-		}
-	}
+	if (data[IFLA_BR_VLAN_PROTOCOL] &&
+	    !eth_type_vlan(nla_get_be16(data[IFLA_BR_VLAN_PROTOCOL])))
+		return -EPROTONOSUPPORT;
 
 	if (data[IFLA_BR_VLAN_DEFAULT_PVID]) {
 		__u16 defpvid = nla_get_u16(data[IFLA_BR_VLAN_DEFAULT_PVID]);
diff --git a/net/bridge/br_vlan.c b/net/bridge/br_vlan.c
index 701cad646b20..bb2909738518 100644
--- a/net/bridge/br_vlan.c
+++ b/net/bridge/br_vlan.c
@@ -917,7 +917,7 @@ int __br_vlan_set_proto(struct net_bridge *br, __be16 proto)
 
 int br_vlan_set_proto(struct net_bridge *br, unsigned long val)
 {
-	if (val != ETH_P_8021Q && val != ETH_P_8021AD)
+	if (!eth_type_vlan(htons(val)))
 		return -EPROTONOSUPPORT;
 
 	return __br_vlan_set_proto(br, htons(val));
-- 
2.30.0

