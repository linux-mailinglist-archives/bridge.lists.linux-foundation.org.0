Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C97E128B159
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6FDE5869A4;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hm6WCLAC-TJe; Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id D352D8677D;
	Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B3358C0051;
	Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12A87C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0EBF687101
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNmBqXJ6hZFe for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AFB25870E9
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:33 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id x7so10185104eje.8
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GOIK3Hq+WKcGwLhTgVcjjfr06Gc4T0D1ld9TN3UCVLk=;
 b=ak9qyYGUS/U3E7+fqKubKrZLUjAKvhb5C7ccuV+XENvdJ6qznvZ2FmEuZsE04zT+Bb
 pgBBsU8+QXgI9zw+6dsTfR75KDCqVtJ2MvmuKgSpfqiX0nbQ+bRrtJiPhhwkKtzSybdY
 wcNaUW5gH5oQ84Jhoynwt0AwviYe/rMjqcytLiAPOJxWrH6wYYUIsM1Rfu/taPd1XF7h
 TbJbIjw8Z68xZLGS2UMDeCLXLamJ1VM2Earj8w6IyiwrZLdut+ATAyuT5b1o7Bujm4SK
 y5nPoaZLubDDb3DBoa+bkCTReCWgmr38aSNg7Y3PXXcBjvcNlqgn4aTnDgYoSJ19F2S4
 hwtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GOIK3Hq+WKcGwLhTgVcjjfr06Gc4T0D1ld9TN3UCVLk=;
 b=CZZadePj2dbaBldhFQKc3ItZ28riRd7zi3j5ERWtbOuQqFiNJwaJKAi0SDI0VC4mYB
 cXOPVTPIP1XKQfjDigkZYW35xw/GCfaGu7kDlOZ02Rnn9Sjz5yRVDODQyfY5UGEDYLLH
 2iy08Z5rCLv1fYyzlLD0RWe3s92rAtmm7Hev5msKDY/YBw5MSC8778vyZLAVD698K2ni
 pNu+MQJh3/I4OczG+KivGyefSFzPeLTaDy4CElFBRnTaXQHV6KCtsRyryczvAoHtjLME
 cIv4eHnJLkcsuPTB1CXiwI2YFnn0fqTYrYcyKFdb6qaV3vO0TvKW2g2h+2nu2Fd0vIIS
 t2gA==
X-Gm-Message-State: AOAM531ohjKrstSP9IXYUSC/CDui22H673nUM1N9v0x05mHu0R0H9tBI
 z7B8ZWGtqUYlxsOhF3oGCYJXca2368qOag==
X-Google-Smtp-Source: ABdhPJyAzc9Sk1A8caGl+hCGaIAJ01fKrSLPSH3KAJAeZ/TISr185eyHMYYLC4sIDCTQCQp5NYVRNA==
X-Received: by 2002:a17:906:cd14:: with SMTP id
 oz20mr7328506ejb.7.1602445471848; 
 Sun, 11 Oct 2020 12:44:31 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id e4sm9728173edk.38.2020.10.11.12.44.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:31 -0700 (PDT)
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
Message-ID: <9cde03fe-d032-521d-2d34-34429d6d1a1c@gmail.com>
Date: Sun, 11 Oct 2020 21:38:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 12 Oct 2020 09:23:55 +0000
Cc: linux-rdma@vger.kernel.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next 04/12] net: usb: qmi_wwan: use new
 function dev_fetch_sw_netstats
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
 drivers/net/usb/qmi_wwan.c | 24 +-----------------------
 1 file changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/net/usb/qmi_wwan.c b/drivers/net/usb/qmi_wwan.c
index 5ca1356b8..a322f5187 100644
--- a/drivers/net/usb/qmi_wwan.c
+++ b/drivers/net/usb/qmi_wwan.c
@@ -126,31 +126,9 @@ static void qmimux_get_stats64(struct net_device *net,
 			       struct rtnl_link_stats64 *stats)
 {
 	struct qmimux_priv *priv = netdev_priv(net);
-	unsigned int start;
-	int cpu;
 
 	netdev_stats_to_stats64(stats, &net->stats);
-
-	for_each_possible_cpu(cpu) {
-		struct pcpu_sw_netstats *stats64;
-		u64 rx_packets, rx_bytes;
-		u64 tx_packets, tx_bytes;
-
-		stats64 = per_cpu_ptr(priv->stats64, cpu);
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
+	dev_fetch_sw_netstats(stats, priv->stats64);
 }
 
 static const struct net_device_ops qmimux_netdev_ops = {
-- 
2.28.0


