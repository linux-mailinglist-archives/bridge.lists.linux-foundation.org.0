Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF05828B172
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6553B227AA;
	Mon, 12 Oct 2020 09:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DpkxKeDNeo13; Mon, 12 Oct 2020 09:24:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 599F0214F6;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 37C1CC0051;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 04149C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E73E4869CC
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l90dbKuaEgZK for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C238869C7
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:53 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id e22so22009457ejr.4
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K5p6PQe9PHlb+DeFu3qCLN+dyNKfD6AR/iCNZWeTJCc=;
 b=u6vzQZjpjUwAoxgsdIvqGoW2wscsD+27fYStwCH0/DAdwWm40pGzmqma6NZfzR2nY4
 FraHh5xiK/XNO/MGkH2q10HSSExTebIq4cBbJ5G0a+fA1d5/0R0JL0xHn2iWHdC4cXjh
 3zcrCQJXT974X8B2at1b6ft2C7z6Wni/rrcSNWwAS16OOfclGUAxh3qlA5QQYpmDMr5+
 SBfTMY55MMCVP6q9lIzHYl9Lf8zxTCzI/ADBY5mYJYrF0q9NQxICntDL6447ROzmLpbJ
 ccZIbeOlF2Vt9eZEOvuJCUrmFAhAZZYOBEGA6EH4/cDWprQdM7QP/i/4RE/eeApna4oe
 wlwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K5p6PQe9PHlb+DeFu3qCLN+dyNKfD6AR/iCNZWeTJCc=;
 b=BjhUJ9DtqxoJ1I1uI63u4WqvyHFsI0GFToDQjm+HPjxwSA1RgxWSPmTMdNX839Txo0
 IvULNuP7LGi21juNJF7g8mmZ93RqECkvIZlfbgjFQ/gPciNJCPvL48L1kzkE4vzWvO7B
 ev5i/DRejYTlwwzxleJu4FIJh6n9P35exJVvzY7lXDnyUoH/2jJnqXJqzigevie+Lxdl
 oxxT/ZxJf/HR2fi0/EiWMixwMTW4ov54rx7M+w/e1TwPTT52BeXX0GsV1A/s8XmD/ZAn
 qGo/9aIiAkC4P4naL24rKNXUn5j7S579/2wHBfqR+8hZDndbNMahcDcu5OZJNhy8U5Oo
 mEFw==
X-Gm-Message-State: AOAM530urikiVrmTp2wqBTT4IomipqXqBiS/uWnGhA53Lk3/RR8Ps/8R
 0i0UZjNGIrgAEd5AWlzhJxulyAtBzefNJg==
X-Google-Smtp-Source: ABdhPJzpn3UQ1NZ0j3vtYPuMV0pGk+0sppVmn15F/C759IM7WrJi58wx79UeJABZsLX6vgSyVZ/9pA==
X-Received: by 2002:a17:906:ae48:: with SMTP id
 lf8mr15228828ejb.345.1602490911396; 
 Mon, 12 Oct 2020 01:21:51 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id q27sm10354699ejd.74.2020.10.12.01.21.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:51 -0700 (PDT)
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
Message-ID: <d1c3ff29-5691-9d54-d164-16421905fa59@gmail.com>
Date: Mon, 12 Oct 2020 10:15:22 +0200
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
Subject: [Bridge] [PATCH net-next v2 07/12] net: bridge: use new function
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
 net/bridge/br_device.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/net/bridge/br_device.c b/net/bridge/br_device.c
index 9a2fb4aa1..6f742fee8 100644
--- a/net/bridge/br_device.c
+++ b/net/bridge/br_device.c
@@ -206,27 +206,8 @@ static void br_get_stats64(struct net_device *dev,
 			   struct rtnl_link_stats64 *stats)
 {
 	struct net_bridge *br = netdev_priv(dev);
-	struct pcpu_sw_netstats tmp, sum = { 0 };
-	unsigned int cpu;
-
-	for_each_possible_cpu(cpu) {
-		unsigned int start;
-		const struct pcpu_sw_netstats *bstats
-			= per_cpu_ptr(br->stats, cpu);
-		do {
-			start = u64_stats_fetch_begin_irq(&bstats->syncp);
-			memcpy(&tmp, bstats, sizeof(tmp));
-		} while (u64_stats_fetch_retry_irq(&bstats->syncp, start));
-		sum.tx_bytes   += tmp.tx_bytes;
-		sum.tx_packets += tmp.tx_packets;
-		sum.rx_bytes   += tmp.rx_bytes;
-		sum.rx_packets += tmp.rx_packets;
-	}
 
-	stats->tx_bytes   = sum.tx_bytes;
-	stats->tx_packets = sum.tx_packets;
-	stats->rx_bytes   = sum.rx_bytes;
-	stats->rx_packets = sum.rx_packets;
+	dev_fetch_sw_netstats(stats, br->stats);
 }
 
 static int br_change_mtu(struct net_device *dev, int new_mtu)
-- 
2.28.0


