Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE3928B161
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0998C86079;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AvOf7qwYB2xx; Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE78985FAE;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B9D74C07FF;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 60CC7C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4855E203FD
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zwZ3f0UyGZq for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 952A82014B
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:39 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id a3so20268568ejy.11
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WQbLDoFSeSltH3nftOw/NOzLE5EP1LZ6y+xL/a85h+w=;
 b=GRfTQACPyYtR9pqybfVbLmIpJpuRl0C7wsrFoWXj0QX2wcH42Nf5udem/k1aVfah6x
 5vyHB7w2Bv/AM6CamTx3zwA3DYcGCYNGJArU2vV3132pEcwY9490f1rV9XqSsKjP2P6P
 uxm6ihfKy1Z0s9suALkvOACSWG9AS0rfoXB5Ev8q5jjvCRxdzC5SialMoEui+aiDT2OO
 Nav4/AveRUsUVI91sXydnB/YWzuq6GtOeFMFMELGgiFo2RLcSvAabyKUnJK34V7pMJII
 op63g+Mx29KT9idfNKqGYQ0Z3lXoirpktiUjywSNtNwi0K3Dd9JCFhi2raiJVTREJtBZ
 jn4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WQbLDoFSeSltH3nftOw/NOzLE5EP1LZ6y+xL/a85h+w=;
 b=q8vsTrib5K4pS2WoEB1GBQ8LD0CK04AXcsgpPGGRI22DOS7n01VG5FK78XXmLF77b7
 i8RBYsJI66qD5tsUX1b4dXZgn038bqBvbRMH+YG4NwcVlfc+5gjH0h8ybOYe0oceH4EF
 FMoCoiVPjWOTURLOJjPyTsfLl1egt9y7MbxppfSUIYxpmZw29IL/Hjg4FinduVUEmpRS
 yLZsoKn8WGOpCY7jHBwCgPEW/v1MAfW9qvdR6WxT51ZhBwVVeBDv0+2KUA1h/gUzrv9v
 AMsw34QK/PCOZme5ruEDueJ8XCMD2H/zcUbss3pJb8PXptrwYkR/8gayfd+vIyrAXVqa
 wzNw==
X-Gm-Message-State: AOAM5306kcAVzvp8qTlRofa7arO+1ZG7cg5raR2O00+bZDmupOELlK2D
 NmAUDkbrpXMfMngiBiWhB50nTY9KAWY8Ag==
X-Google-Smtp-Source: ABdhPJwypu1FksPcYviHGb0G07n2BgDDWUAYOGS5F17YYuqk194tB3z/pT1ejI1KbvTYlJisRN0Xdw==
X-Received: by 2002:a17:906:9702:: with SMTP id
 k2mr2309183ejx.494.1602445477904; 
 Sun, 11 Oct 2020 12:44:37 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id o3sm9487479edv.63.2020.10.11.12.44.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:37 -0700 (PDT)
From: Heiner Kallweit <hkallweit1@gmail.com>
To: David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>, Oliver Neukum
 <oneukum@suse.com>, Igor Mitsyanko <imitsyanko@quantenna.com>,
 Sergey Matyukevich <geomatsi@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Roopa Prabhu <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Vladimir Oltean
 <olteanv@gmail.com>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 Johannes Berg <johannes@sipsolutions.net>, Pravin B Shelar
 <pshelar@ovn.org>, Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
Message-ID: <4c7b9a8d-caa2-52dd-8973-10f4e2892dd6@gmail.com>
Date: Sun, 11 Oct 2020 21:41:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 12 Oct 2020 09:23:56 +0000
Cc: linux-rdma@vger.kernel.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next 08/12] net: dsa: use new function
 dev_fetch_sw_netstats
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

Simplify the code by using new function dev_fetch_sw_netstats().

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 net/dsa/slave.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index e7c1d62fd..3bc5ca40c 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -1221,28 +1221,9 @@ static void dsa_slave_get_stats64(struct net_device *dev,
 				  struct rtnl_link_stats64 *stats)
 {
 	struct dsa_slave_priv *p = netdev_priv(dev);
-	struct pcpu_sw_netstats *s;
-	unsigned int start;
-	int i;
 
 	netdev_stats_to_stats64(stats, &dev->stats);
-	for_each_possible_cpu(i) {
-		u64 tx_packets, tx_bytes, rx_packets, rx_bytes;
-
-		s = per_cpu_ptr(p->stats64, i);
-		do {
-			start = u64_stats_fetch_begin_irq(&s->syncp);
-			tx_packets = s->tx_packets;
-			tx_bytes = s->tx_bytes;
-			rx_packets = s->rx_packets;
-			rx_bytes = s->rx_bytes;
-		} while (u64_stats_fetch_retry_irq(&s->syncp, start));
-
-		stats->tx_packets += tx_packets;
-		stats->tx_bytes += tx_bytes;
-		stats->rx_packets += rx_packets;
-		stats->rx_bytes += rx_bytes;
-	}
+	dev_fetch_sw_netstats(stats, p->stats64);
 }
 
 static int dsa_slave_get_rxnfc(struct net_device *dev,
-- 
2.28.0


