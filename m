Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2F98D931
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 19:06:30 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D0EABD4A;
	Wed, 14 Aug 2019 17:05:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9DBBFCE5
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 17:05:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D826176D
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 17:05:52 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y8so5849990wrn.10
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 10:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=EW+6AvSLzUYJxeji2mVd2Q1VYO3NHO/LYR1JxyZ6kvU=;
	b=dmKb3kfxlKpnOlbOaUMS+UvF7ZhUO6ktsQf2dIiVWKWc9BLm8htymdit42bT1D05kx
	2E4tq6d9Z2IFDj0WYIPISEIWdIjua2fSJe6eENI2f1bhT2lZ8mkesYta7dZlESl/TH03
	oxSuUuhB4eb7LLrLfhRuq7oVQSO6H3Z5Uj3VU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=EW+6AvSLzUYJxeji2mVd2Q1VYO3NHO/LYR1JxyZ6kvU=;
	b=PzsBDXWUmw2TofUxy92MyqAZql5TUJVhg7QLqVikB2UGQOK9gNsWhyuwhoGWGsPMq0
	wsdrZrMzOySy/27RKbV5ODVCjPLgWxXrhm+rjZwEvPoJ/E6CSPDbRft+SEwLIp0gFsoH
	ciNIUm2EQ0ddQjsG1xY0X6D0syKycrsYGxkAMHttX1EImjHAXq5CZ6DLLcNDsxulnMPA
	MskEr69X2vscd97EvS6JvErr/ICJqhcQVn5uqH/5gM2ZfFAREgBJokOqk8lLdegUSLfC
	sc5+AAIHauruGoHxZd1UH7bh9cY6clGhi0czd9nHTWt+G9QEEWF3eez7P6sK+/soXrJO
	ADUg==
X-Gm-Message-State: APjAAAUVMiq/LDcYW3ukRE1VwPyeJMfwwrCi4VVozST8lshmc87IniKV
	RmP0wNJK42cVK91Z5Sb1myEUng==
X-Google-Smtp-Source: APXvYqxnkiYP2C5jQf45QWuJlhB5z0fdTi6RfRm7cYpMWylggm7SGmag8r6tE24PsLjHm2s/3wvkgg==
X-Received: by 2002:adf:f18c:: with SMTP id h12mr743001wro.47.1565802351521;
	Wed, 14 Aug 2019 10:05:51 -0700 (PDT)
Received: from wrk.www.tendawifi.com ([79.134.174.40])
	by smtp.gmail.com with ESMTPSA id c6sm332311wma.25.2019.08.14.10.05.50
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 14 Aug 2019 10:05:51 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Wed, 14 Aug 2019 20:04:59 +0300
Message-Id: <20190814170501.1808-3-nikolay@cumulusnetworks.com>
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
Subject: [Bridge] [PATCH net-next v2 2/4] net: bridge: mdb: factor out mdb
	filling
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

We have to factor out the mdb fill portion in order to re-use it later for
the bridge mdb entries. No functional changes intended.

Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_mdb.c | 68 ++++++++++++++++++++++++---------------------
 1 file changed, 37 insertions(+), 31 deletions(-)

diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
index ee6208c6d946..77730983097e 100644
--- a/net/bridge/br_mdb.c
+++ b/net/bridge/br_mdb.c
@@ -77,6 +77,40 @@ static void __mdb_entry_to_br_ip(struct br_mdb_entry *entry, struct br_ip *ip)
 #endif
 }
 
+static int __mdb_fill_info(struct sk_buff *skb,
+			   struct net_bridge_port_group *p)
+{
+	struct nlattr *nest_ent;
+	struct br_mdb_entry e;
+
+	memset(&e, 0, sizeof(e));
+	__mdb_entry_fill_flags(&e, p->flags);
+	e.ifindex = p->port->dev->ifindex;
+	e.vid = p->addr.vid;
+	if (p->addr.proto == htons(ETH_P_IP))
+		e.addr.u.ip4 = p->addr.u.ip4;
+#if IS_ENABLED(CONFIG_IPV6)
+	if (p->addr.proto == htons(ETH_P_IPV6))
+		e.addr.u.ip6 = p->addr.u.ip6;
+#endif
+	e.addr.proto = p->addr.proto;
+	nest_ent = nla_nest_start_noflag(skb,
+					 MDBA_MDB_ENTRY_INFO);
+	if (!nest_ent)
+		return -EMSGSIZE;
+
+	if (nla_put_nohdr(skb, sizeof(e), &e) ||
+	    nla_put_u32(skb,
+			MDBA_MDB_EATTR_TIMER,
+			br_timer_value(&p->timer))) {
+		nla_nest_cancel(skb, nest_ent);
+		return -EMSGSIZE;
+	}
+	nla_nest_end(skb, nest_ent);
+
+	return 0;
+}
+
 static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 			    struct net_device *dev)
 {
@@ -95,7 +129,6 @@ static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 	hlist_for_each_entry_rcu(mp, &br->mdb_list, mdb_node) {
 		struct net_bridge_port_group *p;
 		struct net_bridge_port_group __rcu **pp;
-		struct net_bridge_port *port;
 
 		if (idx < s_idx)
 			goto skip;
@@ -108,41 +141,14 @@ static int br_mdb_fill_info(struct sk_buff *skb, struct netlink_callback *cb,
 
 		for (pp = &mp->ports; (p = rcu_dereference(*pp)) != NULL;
 		      pp = &p->next) {
-			struct nlattr *nest_ent;
-			struct br_mdb_entry e;
-
-			port = p->port;
-			if (!port)
+			if (!p->port)
 				continue;
 
-			memset(&e, 0, sizeof(e));
-			e.ifindex = port->dev->ifindex;
-			e.vid = p->addr.vid;
-			__mdb_entry_fill_flags(&e, p->flags);
-			if (p->addr.proto == htons(ETH_P_IP))
-				e.addr.u.ip4 = p->addr.u.ip4;
-#if IS_ENABLED(CONFIG_IPV6)
-			if (p->addr.proto == htons(ETH_P_IPV6))
-				e.addr.u.ip6 = p->addr.u.ip6;
-#endif
-			e.addr.proto = p->addr.proto;
-			nest_ent = nla_nest_start_noflag(skb,
-							 MDBA_MDB_ENTRY_INFO);
-			if (!nest_ent) {
-				nla_nest_cancel(skb, nest2);
-				err = -EMSGSIZE;
-				goto out;
-			}
-			if (nla_put_nohdr(skb, sizeof(e), &e) ||
-			    nla_put_u32(skb,
-					MDBA_MDB_EATTR_TIMER,
-					br_timer_value(&p->timer))) {
-				nla_nest_cancel(skb, nest_ent);
+			err = __mdb_fill_info(skb, p);
+			if (err) {
 				nla_nest_cancel(skb, nest2);
-				err = -EMSGSIZE;
 				goto out;
 			}
-			nla_nest_end(skb, nest_ent);
 		}
 		nla_nest_end(skb, nest2);
 skip:
-- 
2.21.0

