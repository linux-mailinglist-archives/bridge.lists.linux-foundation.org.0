Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8CC28B15D
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9631D869D7;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YhnSv9y2s74Y; Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 406E2869F8;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1476FC0893;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CEB11C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA89E86963
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TgDOLGDuGkzB for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1958C8695F
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:45 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id c22so22022872ejx.0
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EZ+IbzJK89SwFCG1NFlS+aDcNGqO/ZCcv8sBQgOTnbQ=;
 b=r6+dEJT54fqzUWR5q15h1ohJU7GSqwKNPr0wwYUCR9XCTdLKdbLl/g2lZ0nXs1jQvz
 C3Tv1XZvTVgoZJF6UHs3Oc46DUIMvnDnj7uDDoOFCg2ArDh/KfqcGsd/dCYiNTUEguqh
 SpGuK9so6KztFAnhdlzmi/xYloxnwgRARGt9EymKxkpsWZ5X1E4y5I/3MnmldroXGDYl
 W3dzUuQu//7BXtLGhsrAm16WbAs+JczHD/hob7XjLNoGgReKiCCjGjMTzY/MskbPU2gG
 to+57D9kJ4xDijHR0OplnAMPNUcBg0Y2AmvGHyf8Tc2W2qArQbsfgunDPnK+5uJHVDDQ
 +EbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EZ+IbzJK89SwFCG1NFlS+aDcNGqO/ZCcv8sBQgOTnbQ=;
 b=ZeDBjSNmKY2SqxaGTrv4hmPV0NvTALA0NjXpQnN4TzHEXuEjBROcK/PZ/epCT3Le0a
 orzOoKLton1oi1nWCHnX8MWjGkYgcYyLlj714shk8drDPYs803RJPvCKv7AVOiJB+ODY
 AuFo85pGRxfSoxWdD9ERdBSVnfholwzBmMFxjeyI9nYSp2Mq2QMMGqRUr+hwFEG5YEV/
 iPPJltWqAGIPB8wEUcYTpTIc7nk8jCmwy83DH2Bf/oN93eQJvLaZx1zuoDU4XYBnBO+x
 yK5s1MGjYwXcRuZolaNPrLJd0eDlAnsHYhbd6hvW84uNLPTEzvIDfDwEipQTd9HGht2B
 LZBw==
X-Gm-Message-State: AOAM530iiZBSTOzV8m+3BuWjvq3WO6VQeorsMTJSKt9cVPVpalR35rSM
 wgs0ewOMEDXy2Id5JUu/DQLfkbhSfrP9Ng==
X-Google-Smtp-Source: ABdhPJweVMrmU1ObMd/170YNOHwEEvLd63J0fEwxMUfm/eiLR1MQL0SnCrS4MDyvbJLNLt14feEgLQ==
X-Received: by 2002:a17:906:304f:: with SMTP id
 d15mr11312921ejd.11.1602490903215; 
 Mon, 12 Oct 2020 01:21:43 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id c5sm10375718edx.58.2020.10.12.01.21.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:42 -0700 (PDT)
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
Message-ID: <6cad1a04-f021-d94b-45fd-7cc7cf07367d@gmail.com>
Date: Mon, 12 Oct 2020 10:03:02 +0200
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
Subject: [Bridge] [PATCH net-next v2 02/12] IB/hfi1: use new function
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
 drivers/infiniband/hw/hfi1/ipoib_main.c | 34 +------------------------
 1 file changed, 1 insertion(+), 33 deletions(-)

diff --git a/drivers/infiniband/hw/hfi1/ipoib_main.c b/drivers/infiniband/hw/hfi1/ipoib_main.c
index 014351ebb..9f71b9d70 100644
--- a/drivers/infiniband/hw/hfi1/ipoib_main.c
+++ b/drivers/infiniband/hw/hfi1/ipoib_main.c
@@ -97,41 +97,9 @@ static void hfi1_ipoib_dev_get_stats64(struct net_device *dev,
 				       struct rtnl_link_stats64 *storage)
 {
 	struct hfi1_ipoib_dev_priv *priv = hfi1_ipoib_priv(dev);
-	u64 rx_packets = 0ull;
-	u64 rx_bytes = 0ull;
-	u64 tx_packets = 0ull;
-	u64 tx_bytes = 0ull;
-	int i;
 
 	netdev_stats_to_stats64(storage, &dev->stats);
-
-	for_each_possible_cpu(i) {
-		const struct pcpu_sw_netstats *stats;
-		unsigned int start;
-		u64 trx_packets;
-		u64 trx_bytes;
-		u64 ttx_packets;
-		u64 ttx_bytes;
-
-		stats = per_cpu_ptr(priv->netstats, i);
-		do {
-			start = u64_stats_fetch_begin_irq(&stats->syncp);
-			trx_packets = stats->rx_packets;
-			trx_bytes = stats->rx_bytes;
-			ttx_packets = stats->tx_packets;
-			ttx_bytes = stats->tx_bytes;
-		} while (u64_stats_fetch_retry_irq(&stats->syncp, start));
-
-		rx_packets += trx_packets;
-		rx_bytes += trx_bytes;
-		tx_packets += ttx_packets;
-		tx_bytes += ttx_bytes;
-	}
-
-	storage->rx_packets += rx_packets;
-	storage->rx_bytes += rx_bytes;
-	storage->tx_packets += tx_packets;
-	storage->tx_bytes += tx_bytes;
+	dev_fetch_sw_netstats(storage, priv->netstats);
 }
 
 static const struct net_device_ops hfi1_ipoib_netdev_ops = {
-- 
2.28.0


