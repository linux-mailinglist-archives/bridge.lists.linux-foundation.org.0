Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526654FBD56
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 15:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5DF240A89;
	Mon, 11 Apr 2022 13:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1PUOGp3fgxl7; Mon, 11 Apr 2022 13:39:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6C48D40A83;
	Mon, 11 Apr 2022 13:39:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 418A2C0084;
	Mon, 11 Apr 2022 13:39:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 426ADC0083
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21A124014D
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HSPWoOkcNjrx for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 13:38:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26D0E408FF
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 13:38:57 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id bu29so26799925lfb.0
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 06:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=15O42YcTjpmDhDPvSQqOizS3ABZbH38ENN7jhBTnn4Q=;
 b=IaBb4jkSWIxICG3VJbssykTGz95G7zDiifz0RBjL7GZ0tpIylTl8B5PNRmMO5lYyW9
 u4I8tQzRMFBFmViPiEgTzX9uNrJ0bvNsnj9b6BxHtlJnbk6D/3daKgMX+7/zPJ9688lV
 UXkLUnEF2gFdok5cQjofcP4nnSwFnnoI+P+WEUmEjDG2/byd8dBjrlFJjcKhvr32ZbY5
 KB3pT6TLB8YBzk/xlcdHO/I0xOZtmpYImmemgxjl48DHu5Sk7WeWYbpTz/1IQiKiimzG
 mSROXfhet++r3kzANHZrmtF51DKjmziKgj1dg8TOPZeE8u7wm/G65hAMbS7VVbMX3uGv
 E3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=15O42YcTjpmDhDPvSQqOizS3ABZbH38ENN7jhBTnn4Q=;
 b=H3BYzRXSGaTvj9FjUT2sPTZ7v4zgVK5PkwYlB8tWOcL+hzjYLP/KSMGtbTeqLLPWYZ
 A7OS7cnnaAyW9eQMD+icKq0bsS0WJePqmu9BW9SOQ1cX5NN0LRKgnxRnUZ+DlD8g+fcW
 uyss6RiQAl9oraS2w8aWWLXRzy4AqI/26gKhII23TvVfI/tDJDjzIPT2pCY5YwX8r1K1
 5SgR4f5nBmRdYIsLeLTknDPJch1NWGENkgGjSFMWE90d7QOTmA2I+fECq9FDw8IWkSZP
 kDjC0qTyizuEkWk9eMAp20oBYduypBoNWnc/mhk9KuLrot/WWeLngiBxHE/4FrZxDCay
 wjng==
X-Gm-Message-State: AOAM533K01EeF489WEQ4LV1UKnKR99G1oBi2AcwvtBKPRD+A/k90/p/g
 KUnfv4PVtsTSpatpMSEnlkg=
X-Google-Smtp-Source: ABdhPJwVX0p4K8mGxFlbxBh0ugRbtpmk0aqkD7A7QNIJgZPtnwRRD6Kal5WfasVud0lNUC7kiIzQ2g==
X-Received: by 2002:a05:6512:3402:b0:448:c29:ce8a with SMTP id
 i2-20020a056512340200b004480c29ce8amr22242644lfr.633.1649684335092; 
 Mon, 11 Apr 2022 06:38:55 -0700 (PDT)
Received: from wbg.labs.westermo.se (h-158-174-22-128.NA.cust.bahnhof.se.
 [158.174.22.128]) by smtp.gmail.com with ESMTPSA id
 p12-20020a056512138c00b0044833f1cd85sm3336847lfa.62.2022.04.11.06.38.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 06:38:54 -0700 (PDT)
From: Joachim Wiberg <troglobit@gmail.com>
To: Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
Date: Mon, 11 Apr 2022 15:38:27 +0200
Message-Id: <20220411133837.318876-4-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411133837.318876-1-troglobit@gmail.com>
References: <20220411133837.318876-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Joachim Wiberg <troglobit@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: [Bridge] [PATCH RFC net-next 03/13] net: bridge: minor refactor of
	br_setlink() for readability
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

The br_setlink() function extracts the struct net_bridge pointer a bit
sloppy.  It's easy to interpret the code wrong.  This patch attempts to
clear things up a bit.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 net/bridge/br_netlink.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/net/bridge/br_netlink.c b/net/bridge/br_netlink.c
index 7fca8ff13ec7..8f4297287b32 100644
--- a/net/bridge/br_netlink.c
+++ b/net/bridge/br_netlink.c
@@ -1040,6 +1040,8 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
 		return 0;
 
 	p = br_port_get_rtnl(dev);
+	if (p)
+		br = p->br;
 	/* We want to accept dev as bridge itself if the AF_SPEC
 	 * is set to see if someone is setting vlan info on the bridge
 	 */
@@ -1055,17 +1057,17 @@ int br_setlink(struct net_device *dev, struct nlmsghdr *nlh, u16 flags,
 			if (err)
 				return err;
 
-			spin_lock_bh(&p->br->lock);
+			spin_lock_bh(&br->lock);
 			err = br_setport(p, tb, extack);
-			spin_unlock_bh(&p->br->lock);
+			spin_unlock_bh(&br->lock);
 		} else {
 			/* Binary compatibility with old RSTP */
 			if (nla_len(protinfo) < sizeof(u8))
 				return -EINVAL;
 
-			spin_lock_bh(&p->br->lock);
+			spin_lock_bh(&br->lock);
 			err = br_set_port_state(p, nla_get_u8(protinfo));
-			spin_unlock_bh(&p->br->lock);
+			spin_unlock_bh(&br->lock);
 		}
 		if (err)
 			goto out;
-- 
2.25.1

