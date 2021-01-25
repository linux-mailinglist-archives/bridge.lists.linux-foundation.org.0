Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CD43022BC
	for <lists.bridge@lfdr.de>; Mon, 25 Jan 2021 09:20:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6687D8676A;
	Mon, 25 Jan 2021 08:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pvr8SwSkWfCC; Mon, 25 Jan 2021 08:20:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC30986769;
	Mon, 25 Jan 2021 08:20:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C0404C013A;
	Mon, 25 Jan 2021 08:20:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 88FD6C013A
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jan 2021 08:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75BE987045
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jan 2021 08:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9orICiQ1GRm for <bridge@lists.linux-foundation.org>;
 Mon, 25 Jan 2021 08:20:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F2CE8702E
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jan 2021 08:20:48 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id d2so10572095edz.3
 for <bridge@lists.linux-foundation.org>; Mon, 25 Jan 2021 00:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FJyorqRdVcMr4H3CHmU331uPAEpW16yWV7e4SmBCjxw=;
 b=FEeWeXk+x+8IjDWcPJr1Q5JuO4PaLPPmgsa3YH/b3YPsEVHUpVbQRIiUlcdnCn98Cd
 1dMWXg8aE9ISYRMUzLfSh/a4/AQj3mAVwsSI2lED+yhujAQYei5N9eGu9J/jzBEwFMKc
 mYHg98230wURiRZojHyAaq4d6kNDpNbLRHyJmA+wSIzdORsIdcFSTwzo3eygZxs9bh7c
 Y0S9jucq/4jSnzl8LHznW+KWYZ6jnRCJ90gkdl9eDNSpFQMoPhyZ6ztuSmpBHHaR35wd
 tDPMsE3kqdmM25AP9m7gMn+7zqDGso8K19c6gbgxfQggvbd2VpGr6eHMAVq6GmQwoLXF
 Vl7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FJyorqRdVcMr4H3CHmU331uPAEpW16yWV7e4SmBCjxw=;
 b=bIZP9Vtq8xK2gED6KeyEkeOKGIgQ1iEY9FW/vX7AZosEF9m86b60JE6IzpRkD5pNYA
 32URNwyZVXb70yifsEQSN+cKAm/GlCSy/xtxqpBm13V/jn+Wm13XFiwl3Ufzp8yESAZz
 KutL8Nh1ZGKEAthG7Fjirwe+cEM4IM6eK4NlbmIZJYlBsAVoJGeL8RGwF7cJsRaooc5I
 Qvm8n6F/dM/xfUDqXDyhpUBZs4zN3dwQwIjqoF97mYrEIaL2MkIoTtUp0NeqxfmYhn1v
 LhXZDi6T0l5BsdcYvH09PhAcbJJ2IgGD6dUbBZ0oEuj85xUQ5kTcG3lWKu827xlTwVLx
 PweQ==
X-Gm-Message-State: AOAM5310jYZr8LPhttA9lFAdjYTjfmUgCfAJbznKV1v2HsqvN2PEnXT8
 joAQYhkSFKMRXBrhCJwdQEh1LQ==
X-Google-Smtp-Source: ABdhPJzJAacPAzWn1OwiClAz2ma95/PiCafeM04okbUjJlP1GUuLKHi5ATpXLFygT2Uk1LYQ9rYv4w==
X-Received: by 2002:a05:6402:22ba:: with SMTP id
 cx26mr157852edb.350.1611562847071; 
 Mon, 25 Jan 2021 00:20:47 -0800 (PST)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id d16sm2285802ejp.36.2021.01.25.00.20.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jan 2021 00:20:46 -0800 (PST)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 25 Jan 2021 10:20:40 +0200
Message-Id: <20210125082040.13022-1-razor@blackwall.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <202101250327.48TBMqng-lkp@intel.com>
References: <202101250327.48TBMqng-lkp@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: kernel test robot <lkp@intel.com>, bridge@lists.linux-foundation.org,
 Nikolay Aleksandrov <nikolay@nvidia.com>, roopa@nvidia.com, kuba@kernel.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next] net: bridge: multicast: fix
	br_multicast_eht_set_entry_lookup indentation
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>

Fix the messed up indentation in br_multicast_eht_set_entry_lookup().

Fixes: baa74d39ca39 ("net: bridge: multicast: add EHT source set handling functions")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 net/bridge/br_multicast_eht.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/net/bridge/br_multicast_eht.c b/net/bridge/br_multicast_eht.c
index a4fa1760bc8a..ff9b3ba37cab 100644
--- a/net/bridge/br_multicast_eht.c
+++ b/net/bridge/br_multicast_eht.c
@@ -85,15 +85,15 @@ br_multicast_eht_set_entry_lookup(struct net_bridge_group_eht_set *eht_set,
 		struct net_bridge_group_eht_set_entry *this;
 		int result;
 
-	this = rb_entry(node, struct net_bridge_group_eht_set_entry,
-			rb_node);
-	result = memcmp(h_addr, &this->h_addr, sizeof(*h_addr));
-	if (result < 0)
-		node = node->rb_left;
-	else if (result > 0)
-		node = node->rb_right;
-	else
-		return this;
+		this = rb_entry(node, struct net_bridge_group_eht_set_entry,
+				rb_node);
+		result = memcmp(h_addr, &this->h_addr, sizeof(*h_addr));
+		if (result < 0)
+			node = node->rb_left;
+		else if (result > 0)
+			node = node->rb_right;
+		else
+			return this;
 	}
 
 	return NULL;
-- 
2.29.2

