Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D67E08D93B
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 19:06:45 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7D6A4D6A;
	Wed, 14 Aug 2019 17:05:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D3420D39
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 17:05:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3812476D
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 17:05:54 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id e8so3743009wme.1
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 10:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=WcjxfoHTef+rzVi2MznJlfR9cVOKNUDGmg2Wkh7C8H8=;
	b=aMZOTqjFEavo6WPifywwRIJrPPe1WZX4xx3+bjlMEdi+8KJ88po4OEWhR1jbmw1yI9
	QiR2W+zsmB9wnNlgSS4I4/hZGQIQQ4kFz/Ex7+J3ShBwekpi96BchKQmKjmF/K21+VaT
	Q52As3vdHUgGZxCwC2oybv9WQWRLg7m3SmE7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=WcjxfoHTef+rzVi2MznJlfR9cVOKNUDGmg2Wkh7C8H8=;
	b=k/Aul60v6FfYz1kNT1xIpgvRRDNi6cy0zE0yNPCaY3mSWpl10hWCfwSvWXuOf6fr3R
	utvalQ7Mhg6gNNHjvXgq8UzmvfyXSIAQSUAAg1puW+wTPp+TrJjyFBoStlbYaRBiBnOY
	7hULJAaj2C9IGFNc3cGzfVP9QUuAe0SjiE9bOr3sQulbvzow5fZPRGdCIikThGdIigcR
	20yjmv7R52lU3cmjtSpMg3ipCPAummEJ2vITT0h41mXl3JSXa060tyERLdrPNfoG7DMK
	Bi1EviQmD3C/KKt6Pd43P/WkZee3TCboL3thjb5O9EbL6T/GP/bsIFL+/RLVWtgRslUH
	CRcQ==
X-Gm-Message-State: APjAAAUbjyEWxuPgUmOnD5zOO94NhJL82LU53Prq8Nd9gjlblMoN3L58
	4HRrpTd2IBNU9ZdIcj5+GWBVpA==
X-Google-Smtp-Source: APXvYqxN7SN4VLG4UwRJzQ5v4TpkQEpmUeQhwswv17F3nN5g+77vMOGfeVSowVbBznvMpTgQ2jU5nw==
X-Received: by 2002:a1c:6087:: with SMTP id u129mr150000wmb.108.1565802352849; 
	Wed, 14 Aug 2019 10:05:52 -0700 (PDT)
Received: from wrk.www.tendawifi.com ([79.134.174.40])
	by smtp.gmail.com with ESMTPSA id c6sm332311wma.25.2019.08.14.10.05.51
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 14 Aug 2019 10:05:52 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Aug 2019 20:05:00 +0300
Message-Id: <20190814170501.1808-4-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190814170501.1808-1-nikolay@cumulusnetworks.com>
References: <81258876-5f03-002c-5aa8-2d6d00e6d99e@cumulusnetworks.com>
	<20190814170501.1808-1-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next v2 3/4] net: bridge: mdb: dump host-joined
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

