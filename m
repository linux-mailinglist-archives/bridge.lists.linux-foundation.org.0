Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 739842721BD
	for <lists.bridge@lfdr.de>; Mon, 21 Sep 2020 13:02:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 227A18686D;
	Mon, 21 Sep 2020 11:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cl2C7hkai75l; Mon, 21 Sep 2020 11:02:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 802A786856;
	Mon, 21 Sep 2020 11:02:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 725A6C0893;
	Mon, 21 Sep 2020 11:02:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CA14CC0051
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:02:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B915B85EC2
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:02:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Wxm7UstrY71 for <bridge@lists.linux-foundation.org>;
 Mon, 21 Sep 2020 11:02:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 982E685EB4
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 11:02:42 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z9so12153275wmk.1
 for <bridge@lists.linux-foundation.org>; Mon, 21 Sep 2020 04:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v0VyLBidFMgxaEIbE0qIA152wkMYPe0lHT8kdjtZmtI=;
 b=OSP2THmw1TyZKAGS7yzefO2pKInkY7BvVFxJAj31KwbSw5vuyIHod9PG0W22OsIBBw
 EYaik+sFpNryraAU1anxdSztI+DnuMf7S6ED0uwC84M+Yl1Z+UxA++acN1YBzn/fF9fF
 EQyWODKHqRr9INwFmC3i8ZVtXEMTOTNcjFq3Y1zVOP9yr/ImLjcaxeSy2zXnwu+Ziq09
 QV5C1mRga7XoicYsM5GxQP1dqGwYZrR22RyayOfO7tiLbghz/959wnFw2CY16ypUoZUu
 Me1ZZ9m3Q8No4ivqFaDchAGNV2YAtdZlyN7LZNonGt65yVcAgAhcaLvTRoJC80RHduYu
 4xVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v0VyLBidFMgxaEIbE0qIA152wkMYPe0lHT8kdjtZmtI=;
 b=hDZcIBULHywbkS+V2kd1pGMvOkcmp0+XUxI4Wse1SQiAfb37uNbrKXwKWIblsAXkit
 VOYMfseCmbIBn2UOIT2QPixxqjjayO0vnm+SKowI946/sP/xkezDH8sHihmPlHjbseHm
 MvmCn1r02U7C5JdFZPt4iF2CxRHWXj3U/UGY3OCTBz+bFCAZQJO8p8Q2E00DATWvVG1R
 UfjMQWIGcWrJY2XdTH7jtf6cnR4X0ysno9+hKGn68BddFi4a2o2Bj97kl26f9IiOxfUn
 CzKbLWepDSjVVX2TC+kZ4YrOI6K9wC6ug0kMScwbfcRuGXbEE0oDTQKqVRN8SGCmb7cg
 EklQ==
X-Gm-Message-State: AOAM530oRG+4M3LBdgRj/Y5jepNBhQ8R7b+BRlgSH1WWf9dx8uYcQnSa
 2hfFXHr6hShh2O0Ate+y1qatbAMsugBunBh6PGs=
X-Google-Smtp-Source: ABdhPJxjNqsH7wNsPPCKctRN8DIm5R6bxvVT4oEAPLuO8Ppr80ft8S2WvfrCAa8gT4yJn7ifnPe+oQ==
X-Received: by 2002:a1c:b7d7:: with SMTP id h206mr8646509wmf.159.1600685773616; 
 Mon, 21 Sep 2020 03:56:13 -0700 (PDT)
Received: from debil.vdiclient.nvidia.com (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id s11sm19637727wrt.43.2020.09.21.03.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 03:56:13 -0700 (PDT)
From: Nikolay Aleksandrov <razor@blackwall.org>
To: netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 13:55:14 +0300
Message-Id: <20200921105526.1056983-5-razor@blackwall.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200921105526.1056983-1-razor@blackwall.org>
References: <20200921105526.1056983-1-razor@blackwall.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@nvidia.com>, bridge@lists.linux-foundation.org,
 davem@davemloft.net, roopa@nvidia.com
Subject: [Bridge] [PATCH net-next 04/16] net: bridge: add src field to br_ip
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

Add a new src field to struct br_ip which will be used to lookup S, G
entries. When SSM option is added we will enable full br_ip lookups.

Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
---
 include/linux/if_bridge.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
index 6479a38e52fa..4fb9c4954f3a 100644
--- a/include/linux/if_bridge.h
+++ b/include/linux/if_bridge.h
@@ -18,6 +18,12 @@ struct br_ip {
 		__be32	ip4;
 #if IS_ENABLED(CONFIG_IPV6)
 		struct in6_addr ip6;
+#endif
+	} src;
+	union {
+		__be32	ip4;
+#if IS_ENABLED(CONFIG_IPV6)
+		struct in6_addr ip6;
 #endif
 	} u;
 	__be16		proto;
-- 
2.25.4

