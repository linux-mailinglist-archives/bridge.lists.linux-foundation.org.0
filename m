Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E1354C321
	for <lists.bridge@lfdr.de>; Wed, 15 Jun 2022 10:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F67B40347;
	Wed, 15 Jun 2022 08:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57qsj7FSpQhx; Wed, 15 Jun 2022 08:10:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E01094017A;
	Wed, 15 Jun 2022 08:10:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A029BC0081;
	Wed, 15 Jun 2022 08:10:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B6AEDC002D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jun 2022 06:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 157F460EF6
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jun 2022 06:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Psc23enyzYCD for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jun 2022 06:32:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5294160E06
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jun 2022 06:32:28 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id y32so12330383lfa.6
 for <bridge@lists.linux-foundation.org>; Mon, 13 Jun 2022 23:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:organization:mime-version
 :content-disposition;
 bh=bpDA/8HCyR0vlKavnt82QPftLcL/p7VlaeF5k8zFxxw=;
 b=oiiHx6OuWWPJTptM7WTl7D12y0ojPdv+Ylb/8ZRdPrKZV0w2Q3NXUKzJMQ+02qN18a
 C4w3qi7sdYGr7ynXOBQNhZVxAAmJTc5GaODcpQSZDzwHurEVihCtN9HgbHFjrrLFJAqY
 6lfN5TxfnV0OWgBJGuiOrTdYhaPQpilPGjJCNUj44vju1yz6P+GhnbULYscFNKVPIZj7
 F385jYEjg9pjHvDs/cMRI8Z9uxAlIHE5x2goiXSiG2u1Yl1XtpLxzvDEaw9xDx5ZbMw4
 ulYnyYyVrvfGE61+rPNvH+f6dPI12AGFVHJeBSzKdobqrVG9s4vPXcSfwsNVH+znf/O5
 CJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:organization
 :mime-version:content-disposition;
 bh=bpDA/8HCyR0vlKavnt82QPftLcL/p7VlaeF5k8zFxxw=;
 b=gw/9hEYdtitnw6dpuX7koLk0LPbDuZ7KlKpC4uc9K7hHCEgYfAbvwesoXt/5rfHjvN
 42pmjqJfOgQxkyRR7+XJvYBGkwun5T8ZEXrgKVHfxlA0djarN0dseH1iDpHLNsrBzfIB
 yaPXrYoG8oMwVlK485dRw9FasTa/SUlIlCPV2NSBqED2icMeQYVPDdSGYnCrVpoIh2VU
 WmibBE4PK+x9XUFH66mRR6eHyU5OI+Ep3HP9MovsBjS6A5X8yWLaMI6iABNgSbNt3+8H
 YZb1ivhJYThcExiMSldrrg0met7DHFv4AwMBgv/sGg2aYWU4aHQJK7TiKhHTQp4B9Dq1
 lYPw==
X-Gm-Message-State: AJIora9vxFXjvegKNqa7U9VmuZu60lZj+Ih2i5BsTH0HXDvPrEK5wDsj
 J3hSzD/PmT99Xqn/MS+N2pQ=
X-Google-Smtp-Source: AGRyM1v5E/q0W7sVa+QkEjHLP79C5wpIt8ImMXG0llaNwtQOZ5tA/XD6xmMCK4DzqUILcg2+u94TpQ==
X-Received: by 2002:a19:dc57:0:b0:479:5300:4e0e with SMTP id
 f23-20020a19dc57000000b0047953004e0emr2166165lfj.236.1655188345644; 
 Mon, 13 Jun 2022 23:32:25 -0700 (PDT)
Received: from wse-c0155 (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id
 z10-20020a0565120c0a00b00477cc59e376sm1267757lfu.161.2022.06.13.23.32.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jun 2022 23:32:25 -0700 (PDT)
Date: Tue, 14 Jun 2022 08:32:23 +0200
From: Casper Andersson <casper.casan@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <20220614063223.zvtrdrh7pbkv3b4v@wse-c0155>
Organization: Westermo Network Technologies AB
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 15 Jun 2022 08:10:19 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Joachim Wiberg <troglobit@gmail.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH net-next] net: bridge: allow add/remove permanent
 mdb entries on disabled ports
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

Adding mdb entries on disabled ports allows you to do setup before
accepting any traffic, avoiding any time where the port is not in the
multicast group.

Signed-off-by: Casper Andersson <casper.casan@gmail.com>
---
 net/bridge/br_mdb.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index fdcc641fc89a..589ff497d50c 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -1025,8 +1025,8 @@ static int br_mdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 			NL_SET_ERR_MSG_MOD(extack, "Port belongs to a different bridge device");
 			return -EINVAL;
 		}
-		if (p->state == BR_STATE_DISABLED) {
-			NL_SET_ERR_MSG_MOD(extack, "Port is in disabled state");
+		if (p->state == BR_STATE_DISABLED && entry->state != MDB_PERMANENT) {
+			NL_SET_ERR_MSG_MOD(extack, "Port is in disabled state and entry is not permanent");
 			return -EINVAL;
 		}
 		vg = nbp_vlan_group(p);
@@ -1086,9 +1086,6 @@ static int __br_mdb_del(struct net_bridge *br, struct br_mdb_entry *entry,
 		if (!p->key.port || p->key.port->dev->ifindex != entry->ifindex)
 			continue;
 
-		if (p->key.port->state == BR_STATE_DISABLED)
-			goto unlock;
-
 		br_multicast_del_pg(mp, p, pp);
 		err = 0;
 		break;
@@ -1124,8 +1121,14 @@ static int br_mdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 			return -ENODEV;
 
 		p = br_port_get_rtnl(pdev);
-		if (!p || p->br != br || p->state == BR_STATE_DISABLED)
+		if (!p) {
+			NL_SET_ERR_MSG_MOD(extack, "Net device is not a bridge port");
+			return -EINVAL;
+		}
+		if (p->br != br) {
+			NL_SET_ERR_MSG_MOD(extack, "Port belongs to a different bridge device");
 			return -EINVAL;
+		}
 		vg = nbp_vlan_group(p);
 	} else {
 		vg = br_vlan_group(br);
-- 
2.30.2

