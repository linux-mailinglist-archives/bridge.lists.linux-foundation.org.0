Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8798C28B174
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9E4FE2150A;
	Mon, 12 Oct 2020 09:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAqwoCAUheEo; Mon, 12 Oct 2020 09:24:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E531521507;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CD7F0C0051;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0FFE9C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED40886951
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Coplvdw-I6yw for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 526C0869C5
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:56 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id o18so16001125edq.4
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/FTD4WRUg6u2eGbYzuvRNRJ/sh1gmUaaKBFsN/NH+4I=;
 b=C3113bStM70NZuGM7RyowckACfab14LKWg7wWfVF/LN3gVgq92KWQoexxkqcaYsQXm
 S9+IQrNBQJWcncQPRDFnK9QzobnWFz6/JtU8SocMw+7dSpE6I4f0nVub/xf9cfsowJaT
 lE7n6ZQ9/gd82nLWmrQ3oIVm6iIFDGr3OMzdAgFx1XMuMONCdTGsKH53SxyEiTGbgnl5
 krmJtopY25J74lQSe8f4R3ihHlk5EuspuSF+G0TSkKhlCCRf8804X1ysZI4h47N94G5q
 vi6K7T1jrBWYfgWxCeNxF9ui1SbrovpET6KJdVeSH4Sb0Dyj3pF8LO/mrTrIKzKbH/cb
 S6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/FTD4WRUg6u2eGbYzuvRNRJ/sh1gmUaaKBFsN/NH+4I=;
 b=SHS7S15gFC8ULlxGs9c9fXlkkzsMxN0tdayVNE6kIGQ4kPvRSTnNjZAFWhTzKaAH24
 b4g+M20UOyjLt4fTUjZDcbzDoM4gmF1utfRIZWKwMTFL7hytfP/mUf2Zx3WJHZu8Rpf3
 t7dyItN6ok0EOGa7qjR2xIii3VqdafEOmLlxYXd1cl/KTq+h0kYm/iHOSqCG8AizDxz2
 tk9zmiwhuamWepdRyt2kuQLQQPlnUX50PbnUeIdfHs///vvDLg+HrcuQojd6ryZ36BA+
 e4/4uzO9WLpSQLitn70+q1/FxacSvQZqXUyzDWdTLoCL1zdxPNacA3gO7qsmDiQoV+cJ
 MqAg==
X-Gm-Message-State: AOAM533xMrwzPnWUpBQv1fTBUahr8RxGl+Iv9TXEMLZokDPoQ8v6gBkC
 uUWQWCGdaVDPd8h7y7N1+Vebr2YORh849Q==
X-Google-Smtp-Source: ABdhPJyr91gOF2uqDYP3d2BgCowxK/xZ/ClenuzL/KGhJVInWE0z0tAUMA3MaJ4QILJikb+ZTAQeVg==
X-Received: by 2002:a50:8745:: with SMTP id 5mr12629496edv.49.1602490914611;
 Mon, 12 Oct 2020 01:21:54 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id do22sm9778504ejc.16.2020.10.12.01.21.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:54 -0700 (PDT)
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
Message-ID: <050f9a83-b195-a3d6-edbd-91a59040be21@gmail.com>
Date: Mon, 12 Oct 2020 10:17:07 +0200
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
Subject: [Bridge] [PATCH net-next v2 09/12] iptunnel: use new function
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


