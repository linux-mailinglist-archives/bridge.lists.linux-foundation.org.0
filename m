Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1710928B165
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6D7B7220C1;
	Mon, 12 Oct 2020 09:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5bWyOgP5tl3N; Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 490872079D;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 352B7C1AD4;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5B094C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 49CA386053
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ChB-Yb8tRglG for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 98AAF86044
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:36 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id dn5so14711340edb.10
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HcgZso4dlrbNJuP0fFxlU7lkmi2zmfh379PdA4iECrc=;
 b=QY4mcdUm4pOsXKuF8fPkL2a9wiqaVDmyjAXCWkd343lchJ1AGlmk23Ku3QohtqXRSY
 gYveZNpvVXpGKsy9mIhgSIssPBHZz8bN3VkKwEVEkFMyH2q2UXxISQgZVCL7TgWLhS4Y
 5SSoaAuPWUpibQT10V8O6530abeLX72cFOf1hYrs7jG+3bwYkJFvUXdSZ7DlPaJ6iQUk
 2JvYjgIhOzxl82dwwTIqTqSkfluHOoAwz/+d2jDYQ2YnplEmZVUhkXixCn68btqAx4lE
 P3SfPjXNfEFLWyohoaU0E7FNHggtTNHhqlLMd4anSnZzIIb9pNutyLyAKpTbahH+rn1Z
 8aHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HcgZso4dlrbNJuP0fFxlU7lkmi2zmfh379PdA4iECrc=;
 b=YeNeC42334Tm287PSVYLN8ZGC83o7dymDFUQ4ncEr0Dd0fahB8gGYman6D+qTYd6Iz
 95LUUWHTZxPtqChZKMxF/1m7CI/AQAwylwIU8qzcEt5+p4/2EioQMrV0iBUukkvxGRuO
 XHuQ+jFvA+hjpGWOsJlrn8zX0nm+U+MAXwk26U/esxRtAgbFhMDHfP8twAccCqYEQSDB
 Jrb93hgQCwn3iT+1RvRLJtJ9vRG/OUpZTe62/JO3z9vjd/1mRl9TFNk0GRrXqoEGe2Gj
 c4u0kZqIGJ/FvYGcbNQp0eTL5tl0BFHEAVUsF7CFJ3Z9fep2FtKN+mKmy00BFR3bjQcj
 BOnQ==
X-Gm-Message-State: AOAM533jg6fi1mmivRyHvvoGcA2tT5Nnb6q6ZfxBjwLqqoYusLfzihiY
 G0Cq6AYC3JY9F2xY2r2ra15f9mNRBQjR1w==
X-Google-Smtp-Source: ABdhPJzG5QywNit+P8d8Uluj4OvMnvqXvNL7PFD8bzCEkoG7VRaC2GxtiI9QRmC/zoabKFb+FRsSVA==
X-Received: by 2002:a05:6402:3c1:: with SMTP id
 t1mr10191553edw.231.1602445474908; 
 Sun, 11 Oct 2020 12:44:34 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id q1sm9747574ejy.37.2020.10.11.12.44.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:34 -0700 (PDT)
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
Message-ID: <a4fa20e9-23bc-4f2f-cbe9-16d801ce3b20@gmail.com>
Date: Sun, 11 Oct 2020 21:40:10 +0200
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
Subject: [Bridge] [PATCH net-next 06/12] qtnfmac: use new function
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
 drivers/net/wireless/quantenna/qtnfmac/core.c | 27 +------------------
 1 file changed, 1 insertion(+), 26 deletions(-)

diff --git a/drivers/net/wireless/quantenna/qtnfmac/core.c b/drivers/net/wireless/quantenna/qtnfmac/core.c
index 374074dc7..7f66cf608 100644
--- a/drivers/net/wireless/quantenna/qtnfmac/core.c
+++ b/drivers/net/wireless/quantenna/qtnfmac/core.c
@@ -139,34 +139,9 @@ static void qtnf_netdev_get_stats64(struct net_device *ndev,
 				    struct rtnl_link_stats64 *stats)
 {
 	struct qtnf_vif *vif = qtnf_netdev_get_priv(ndev);
-	unsigned int start;
-	int cpu;
 
 	netdev_stats_to_stats64(stats, &ndev->stats);
-
-	if (!vif->stats64)
-		return;
-
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


