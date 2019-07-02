Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CA55D7E4
	for <lists.bridge@lfdr.de>; Tue,  2 Jul 2019 23:50:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 61059F3E;
	Tue,  2 Jul 2019 21:48:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01CD819CA
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 12:05:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 89D0587A
	for <bridge@lists.linux-foundation.org>;
	Tue,  2 Jul 2019 12:05:05 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id v19so700404wmj.5
	for <bridge@lists.linux-foundation.org>;
	Tue, 02 Jul 2019 05:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=jZeZkNBqQvCAlH/hG07VtX1l/wTFKdXlR218Y21cdaA=;
	b=VfM/JxZtMLXdHJ304kMnAg+hNAShLmLB+f4aXwzJ40luxY0rk5+bKx12dupRbLqRIC
	TwCGJTdwyrt1kqFtmp/6+lGZmtXRf//2toowM4iGF9qtZ4XL8nzCGwKj5Xwb0gF7Rdf7
	ZDakyGjX7DTyaxGt/YkAd5+o1aNYkoZICShuk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=jZeZkNBqQvCAlH/hG07VtX1l/wTFKdXlR218Y21cdaA=;
	b=SYxkBjqsJNY6PNrziBzbTePJLquq7H0jy+qsI+D+ZHrHjGeCwB+Lz6wgDEZdBXRyJT
	HUok5kskKW0z8PmwSQzrS+K1Ti65mtUjQ+0kIduaCp3QRCj9YZP6Nrt5Br/ZPZLfiY2S
	1EPt7/pwTUMHtKWIP58fmg1sI2wVnJgabQ8OhXHaCRhrN1pwOlRy9olWMgzhZ4nmTwCp
	CKtHhf/CHb9dfynBqZa23O/qNqbf/SRKqktWUx0h6MXLNlNUFvXS6z5aH/ZAfPIo261X
	x4m6p6plfOArcNR0qDaBLLw6TM/zI4+Fy8IGkSLhnMFPKtvywd5OCYTqQ0Wc7ltM8SFo
	/3Ew==
X-Gm-Message-State: APjAAAUqmrCc4rZXpKT+e86Juz0ZO8hBl1iQswf+BTP7jP3a8Lgaxi3l
	QfTMxIn4JEnWtTW21fgLaVSMOw==
X-Google-Smtp-Source: APXvYqytdprwFvV9n4ofcfgurfK6tThS7bCfZ36HkC9giWMgFD/S8bTrG5sypK+LW+CqDK0VEgs2qg==
X-Received: by 2002:a1c:968c:: with SMTP id y134mr3083565wmd.122.1562069104211;
	Tue, 02 Jul 2019 05:05:04 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
	[84.238.136.197])
	by smtp.gmail.com with ESMTPSA id x5sm2542655wmf.33.2019.07.02.05.05.03
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 02 Jul 2019 05:05:03 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Tue,  2 Jul 2019 15:00:19 +0300
Message-Id: <20190702120021.13096-3-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702120021.13096-1-nikolay@cumulusnetworks.com>
References: <20190702120021.13096-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: martin@linuxlounge.net, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, yoshfuji@linux-ipv6.org,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, davem@davemloft.net
Subject: [Bridge] [PATCH net 2/4] net: bridge: mcast: fix stale ipv6 hdr
	pointer when handling v6 query
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

We get a pointer to the ipv6 hdr in br_ip6_multicast_query but we may
call pskb_may_pull afterwards and end up using a stale pointer.
So use the header directly, it's just 1 place where it's needed.

Fixes: 08b202b67264 ("bridge br_multicast: IPv6 MLD support.")
Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
---
 net/bridge/br_multicast.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index f37897e7b97b..3d8deac2353d 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -1279,7 +1279,6 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 				  u16 vid)
 {
 	unsigned int transport_len = ipv6_transport_len(skb);
-	const struct ipv6hdr *ip6h = ipv6_hdr(skb);
 	struct mld_msg *mld;
 	struct net_bridge_mdb_entry *mp;
 	struct mld2_query *mld2q;
@@ -1323,7 +1322,7 @@ static int br_ip6_multicast_query(struct net_bridge *br,
 
 	if (is_general_query) {
 		saddr.proto = htons(ETH_P_IPV6);
-		saddr.u.ip6 = ip6h->saddr;
+		saddr.u.ip6 = ipv6_hdr(skb)->saddr;
 
 		br_multicast_query_received(br, port, &br->ip6_other_query,
 					    &saddr, max_delay);
-- 
2.21.0

