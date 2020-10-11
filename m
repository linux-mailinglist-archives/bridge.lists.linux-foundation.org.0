Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EC228B163
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 690A9860C8;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tWC8Qj7rICEz; Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CF2D85FB6;
	Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01425C0051;
	Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0BFAFC0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE6DA87101
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W5egZLMfaPlq for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59F1F870E9
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:41 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id dt13so20318163ejb.12
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/FTD4WRUg6u2eGbYzuvRNRJ/sh1gmUaaKBFsN/NH+4I=;
 b=PyzuGbgQ/T5WAYNOiE7/Fc7mim7ijDf/I6hDizxzEYTF8/HfbbmzP42R+dk/Tf7t3L
 r3rTgfmciTFkPugJUIfFan4lA3UxjLBGZrSeWGa98iK7WgUsSZZMK6jaqsVusLDc7OKt
 ducIl5gXoe3bagOoU/aBG55E0qjsy2CDzRWixI5g8O4pMkDRMn10OM/pJEYXJUbxUdg8
 wEvIdZn0WeXfx8o6AOtjUbp/WHumX4LdXSa/3HL4Zw5+KaHHYXBaDEvDAy4vYOU/JTen
 aN8KJ1n70tBEf2n56k0U7kdOle+7frjcbMwxo8f8NSK4m1RYQZEu24MxYsLGh4P3It+e
 TvFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/FTD4WRUg6u2eGbYzuvRNRJ/sh1gmUaaKBFsN/NH+4I=;
 b=lpX5rXckzwix2XxLncrDX4LBFO122SF9BffOxMMWwEeFONsJ6h1IejbtQ3GsXy9K0G
 uYk9xsRTukddR2HZCzuB5ItW9PtDilRbb2OwzpIayKHruK6oY51zaIsGtXQcpV6rTG/N
 YlOkh49CmnclVG7RsclXe64wv+Z4vX1ao/yB8I4oyE9R+AZt4e6wwBT6p6YCHPJ+b8S3
 5N6/hcE7xbMqpDJFE7XUlNOz1qTSxmcYdwpD0NzBhcsbg5Wb+bwbFhaa8pKhnJvLoUJd
 +JRuNPkRL8D0RMWXZRSRuqEtYrsuYW/t7qVdiiLgnt5q51J6bRQ4KIi/vcemgMaJgO59
 XrTQ==
X-Gm-Message-State: AOAM531B3M7f5ks9eoUuemi8rdmzUHlSa251KJUjf8O/7ZOUlRiT/x7K
 VU3PfZ1EqKjmafyb7CNlhlmlu/rLqMBcfQ==
X-Google-Smtp-Source: ABdhPJy0/HhFKnErdQJ5STzec8NAN01r56idFqQy377HiXCcfEQXhV1+jYC24f9CwpMFGSMhidBnXQ==
X-Received: by 2002:a17:906:f8ca:: with SMTP id
 lh10mr3843209ejb.528.1602445479587; 
 Sun, 11 Oct 2020 12:44:39 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id qq10sm9621759ejb.31.2020.10.11.12.44.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:39 -0700 (PDT)
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
Message-ID: <3b1116c4-4cc4-2aac-fd66-7ffd2d3705bc@gmail.com>
Date: Sun, 11 Oct 2020 21:42:04 +0200
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
Subject: [Bridge] [PATCH net-next 09/12] iptunnel: use new function
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
 net/ipv4/ip_tunnel_core.c | 23 +----------------------
 1 file changed, 1 insertion(+), 22 deletions(-)

diff --git a/net/ipv4/ip_tunnel_core.c b/net/ipv4/ip_tunnel_core.c
index b2ea1a8c5..25f1caf5a 100644
--- a/net/ipv4/ip_tunnel_core.c
+++ b/net/ipv4/ip_tunnel_core.c
@@ -433,29 +433,8 @@ EXPORT_SYMBOL(skb_tunnel_check_pmtu);
 void ip_tunnel_get_stats64(struct net_device *dev,
 			   struct rtnl_link_stats64 *tot)
 {
-	int i;
-
 	netdev_stats_to_stats64(tot, &dev->stats);
-
-	for_each_possible_cpu(i) {
-		const struct pcpu_sw_netstats *tstats =
-						   per_cpu_ptr(dev->tstats, i);
-		u64 rx_packets, rx_bytes, tx_packets, tx_bytes;
-		unsigned int start;
-
-		do {
-			start = u64_stats_fetch_begin_irq(&tstats->syncp);
-			rx_packets = tstats->rx_packets;
-			tx_packets = tstats->tx_packets;
-			rx_bytes = tstats->rx_bytes;
-			tx_bytes = tstats->tx_bytes;
-		} while (u64_stats_fetch_retry_irq(&tstats->syncp, start));
-
-		tot->rx_packets += rx_packets;
-		tot->tx_packets += tx_packets;
-		tot->rx_bytes   += rx_bytes;
-		tot->tx_bytes   += tx_bytes;
-	}
+	dev_fetch_sw_netstats(tot, dev->tstats);
 }
 EXPORT_SYMBOL_GPL(ip_tunnel_get_stats64);
 
-- 
2.28.0


