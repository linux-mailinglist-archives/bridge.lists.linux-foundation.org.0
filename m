Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4169E28B173
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C66C5860E6;
	Mon, 12 Oct 2020 09:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N-h4TMUnLFGM; Mon, 12 Oct 2020 09:24:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 501F3860FE;
	Mon, 12 Oct 2020 09:24:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2ABCFC07FF;
	Mon, 12 Oct 2020 09:24:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8CB5DC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6EA8A20555
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qou-fSqW-v+k for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 9BD48207A9
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:51 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id a3so21926156ejy.11
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QgEFAZvIGUs9d79dSBvM16GKW6VzPnxLl+Fxh+U3V5E=;
 b=smMjqkLUc83TdlNXcDcI3M3/ULwnTf55iu2dvwq3DZB3ijaghGEg1QucVM48Q59Xei
 PhCJRKNkGb6mEr/MRzSqyVNV4fflsAxkglH2EZ7WsMPP0qYCAMMKkJfrlb0Te3v932Kj
 u04qGb9yhQ1k2CE2QwduucTZPxyUTXc6f7vZLCvLmEUzn/FDxBGxmAIpH705hS2LrQ/+
 +SOYOqNpqZrunAzwqopXYlPOD0/GDk4BgwqEYxQYMykZ+qxKMd/llLUBmr2yahu1s5mQ
 T/ll3jwrsNZlgaP76L6IGirBg7GpdPamcuyboxa4oE4J03+nQ3j2KUDK6SR2oN8ZurC5
 kFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QgEFAZvIGUs9d79dSBvM16GKW6VzPnxLl+Fxh+U3V5E=;
 b=JApLlGa1hwo36oEiODxMNa30XCusllst533tHuUcCmcHZGUxLdGid+C3GxF1UjyXeD
 TPKzLiuGCKLLC3C0A0fSMNbvT23nmZmX/SehqPtsAcJJSwKXOGTA1EWIaFAkU4T9XJKY
 w79foiA7aiLYm+hGWrclAdsfX/fz3I14A/JUlguOfjia/sdEsuMsspZrPW7rEpfZU7TQ
 6Rso2fPkmjhtPMiz4CRVP3lvti7CLgEQiwzwbk+fHYTtseRBT2I+lnUcczunQaZdHRmV
 wEI9P4E9mLYCfBceDnGkeOfA/M4BIZlfXhy92vgx5DBq2dPu4VDJAa+xFmc00NZpPXF1
 NaWg==
X-Gm-Message-State: AOAM530ccitVxlZjbsq1l1OOjroDgwpoZr9sv7FLZRC7WGsp6+EtR5zn
 gBv0L8ySgejH+pR1itDgrS1R/aMpqeUy+w==
X-Google-Smtp-Source: ABdhPJyLRdlG9ykmhX1eEdrQT1Otm/9oE2nWPUWVssRBAX1UfhecwcY5LXaqbq8XeUhyDJxeQhtshg==
X-Received: by 2002:a17:906:82d7:: with SMTP id
 a23mr27024407ejy.66.1602490909845; 
 Mon, 12 Oct 2020 01:21:49 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id v6sm10439545ejj.112.2020.10.12.01.21.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:49 -0700 (PDT)
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
References: <d77b65de-1793-f808-66b5-aaa4e7c8a8f0@gmail.com>
Message-ID: <166259f2-084c-45d7-e610-2de2a0bdae06@gmail.com>
Date: Mon, 12 Oct 2020 10:14:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <d77b65de-1793-f808-66b5-aaa4e7c8a8f0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 12 Oct 2020 09:23:56 +0000
Cc: linux-rdma@vger.kernel.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v2 06/12] qtnfmac: use new function
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
Acked-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/quantenna/qtnfmac/core.c | 23 +------------------
 1 file changed, 1 insertion(+), 22 deletions(-)

diff --git a/drivers/net/wireless/quantenna/qtnfmac/core.c b/drivers/net/wireless/quantenna/qtnfmac/core.c
index 374074dc7..bf6dbeb61 100644
--- a/drivers/net/wireless/quantenna/qtnfmac/core.c
+++ b/drivers/net/wireless/quantenna/qtnfmac/core.c
@@ -139,34 +139,13 @@ static void qtnf_netdev_get_stats64(struct net_device *ndev,
 				    struct rtnl_link_stats64 *stats)
 {
 	struct qtnf_vif *vif = qtnf_netdev_get_priv(ndev);
-	unsigned int start;
-	int cpu;
 
 	netdev_stats_to_stats64(stats, &ndev->stats);
 
 	if (!vif->stats64)
 		return;
 
-	for_each_possible_cpu(cpu) {
-		struct pcpu_sw_netstats *stats64;
-		u64 rx_packets, rx_bytes;
-		u64 tx_packets, tx_bytes;
-
-		stats64 = per_cpu_ptr(vif->stats64, cpu);
-
-		do {
-			start = u64_stats_fetch_begin_irq(&stats64->syncp);
-			rx_packets = stats64->rx_packets;
-			rx_bytes = stats64->rx_bytes;
-			tx_packets = stats64->tx_packets;
-			tx_bytes = stats64->tx_bytes;
-		} while (u64_stats_fetch_retry_irq(&stats64->syncp, start));
-
-		stats->rx_packets += rx_packets;
-		stats->rx_bytes += rx_bytes;
-		stats->tx_packets += tx_packets;
-		stats->tx_bytes += tx_bytes;
-	}
+	dev_fetch_sw_netstats(stats, vif->stats64);
 }
 
 /* Netdev handler for transmission timeout.
-- 
2.28.0


