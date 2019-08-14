Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D4F8D66B
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 16:41:40 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4E0DCEC5;
	Wed, 14 Aug 2019 14:40:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7BF00EA2
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 14:40:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDFC4711
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 14:40:38 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id v19so4696014wmj.5
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 07:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=WcjxfoHTef+rzVi2MznJlfR9cVOKNUDGmg2Wkh7C8H8=;
	b=FDirRc2XnSa0S/1kGuimrluLWRBl+cDepl6ix4Cgi96B+akIPlCSnj6QQyt+OsuL5L
	gA3so4X77//RvTemkbRiYDtL1csmuN7fwYCe0zWgieSAzzpzioEa2uC0H69d4sSNmNwf
	qzBURWc19LfsbwapUFOgm/vbodtsldqgQIeB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=WcjxfoHTef+rzVi2MznJlfR9cVOKNUDGmg2Wkh7C8H8=;
	b=ryAqizuS/K5QWFVEFediagG/sGSU01aGuT65FfKCTHCiG8v4zT30Y5gpzEBnFoSPz4
	xtJQklhuHjYtYdqZDSprnWauU5sgYBQjDWr6EoIoXILa5DqKDnVF4VBpy+9DgkXiHYX4
	m8rWs6ohQ8tTx9vTrJmoScyCF1RP/sPoUESybZ/uSeNczmKTJvaTXU9Ih0rJe6wy0lHN
	18MWxVY7NNoKrWd6PWICh88tIDORsfcaRzu6QwMWJNzf54BKLIxq05ZHVIbSXoD066OK
	3vzxE4hFh6zEKSn3G1jlXVKrlkz962uGRJiLedEqHEHb0rmqjwq6XXOQ7QnDglb9u2Y/
	QRXQ==
X-Gm-Message-State: APjAAAWOdbvsLxivPFhRboObaknBS7LdeRaR0p2PLrJwczb70eMP68O7
	tAMVo4UdMk7Y2IhVsgwrqjtvZw==
X-Google-Smtp-Source: APXvYqxUHKLeRt9TqdIqrdTbwAR2FFm+fcFvmQEL9EWa6UxzIMA9NDs0r98WrLmLa4h4zPiZjvoi+g==
X-Received: by 2002:a7b:c118:: with SMTP id w24mr9135454wmi.100.1565793637570; 
	Wed, 14 Aug 2019 07:40:37 -0700 (PDT)
Received: from wrk.www.tendawifi.com ([79.134.174.40])
	by smtp.gmail.com with ESMTPSA id o8sm3383874wma.1.2019.08.14.07.40.36
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 14 Aug 2019 07:40:37 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Aug 2019 17:40:23 +0300
Message-Id: <20190814144024.9710-4-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190814144024.9710-1-nikolay@cumulusnetworks.com>
References: <20190814144024.9710-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: [Bridge] [PATCH net-next 3/4] net: bridge: mdb: dump host-joined
	entries as well
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

Currently we dump only the port mdb entries but we can have host-joined
entries on the bridge itself and they should be treated as normal temp
mdbs, they're already notified:
$ bridge monitor all
[MDB]dev br0 port br0 grp ff02::8 temp

The group will not be shown in the bridge mdb output, but it takes 1 slot
and it's timing out. If it's only host-joined then the mdb show output
can even be empty.

After this patch we show the host-joined groups:
$ bridge mdb show
dev br0 port br0 grp ff02::8 temp

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c | 41 +++++++++++++++++++++++++++++++----------
 1 file changed, 31 insertions(+), 10 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index 77730983097e..985273425117 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -78,22 +78,35 @@ static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip)
 }
 
 static int __mdb_fill_info(struct sk_buff *skb,
+			   struct net_bridge_mdb_entry *mp,
 			   struct net_bridge_port_group *p)
 {
+	struct timer_list *mtimer;
 	struct nlattr *nest_ent;
 	struct br_mdb_entry e;
+	u8 flags = 0;
+	int ifindex;
 
 	memset(&e, 0, sizeof(e));
-	__mdb_entry_fill_flags(&e, p->flags);
-	e.ifindex = p->port->dev->ifindex;
-	e.vid = p->addr.vid;
-	if (p->addr.proto == htons(ETH_P_IP))
-		e.addr.u.ip4 = p->addr.u.ip4;
+	if (p) {
+		ifindex = p->port->dev->ifindex;
+		mtimer = &p->timer;
+		flags = p->flags;
+	} else {
+		ifindex = mp->br->dev->ifindex;
+		mtimer = &mp->timer;
+	}
+
+	__mdb_entry_fill_flags(&e, flags);
+	e.ifindex = ifindex;
+	e.vid = mp->addr.vid;
+	if (mp->addr.proto == htons(ETH_P_IP))
+		e.addr.u.ip4 = mp->addr.u.ip4;
 #if IS_ENABLED(CONFIG_IPV6)
-	if (p->addr.proto == htons(ETH_P_IPV6))
-		e.addr.u.ip6 = p->addr.u.ip6;
+	if (mp->addr.proto == htons(ETH_P_IPV6))
+		e.addr.u.ip6 = mp->addr.u.ip6;
 #endif
-	e.addr.proto = p->addr.proto;
+	e.addr.proto = mp->addr.proto;
 	nest_ent = nla_nest_start_noflag(skb,
 					 MDBA_MDB_ENTRY_INFO);
 	if (!nest_ent)
@@ -102,7 +115,7 @@ static int __mdb_fill_info(struct sk_buff *skb,
 	if (nla_put_nohdr(skb, sizeof(e), &e) ||
 	    nla_put_u32(skb,
 			MDBA_MDB_EATTR_TIMER,
-			br_timer_value(&p->timer))) {
+			br_timer_value(mtimer))) {
 		nla_nest_cancel(skb, nest_ent);
 		return -EMSGSIZE;
 	}
@@ -139,12 +152,20 @@ static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 			break;
 		}
 
+		if (mp->host_joined) {
+			err = __mdb_fill_info(skb, mp, NULL);
+			if (err) {
+				nla_nest_cancel(skb, nest2);
+				break;
+			}
+		}
+
 		for (pp = &mp->ports; (p = rcu_dereference(*pp)) != NULL;
 		      pp = &p->next) {
 			if (!p->port)
 				continue;
 
-			err = __mdb_fill_info(skb, p);
+			err = __mdb_fill_info(skb, mp, p);
 			if (err) {
 				nla_nest_cancel(skb, nest2);
 				goto out;
-- 
2.21.0

