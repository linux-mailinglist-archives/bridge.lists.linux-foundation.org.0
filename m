Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D65128B167
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27A4B2079A;
	Mon, 12 Oct 2020 09:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gmTUVCgqkze; Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 15E1720791;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EEB50C0051;
	Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 111F9C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A85E203FD
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zotH7qJ9hxeZ for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 3559C2014B
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:35 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id v19so14719937edx.9
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pinXyNbLzNVPX/bjvrXpQvjJmZP5stTSjNwoOuOjf58=;
 b=MdJ4QWv6yJuL/l2OhB7xzWNVy+zRUUOc2Zmq2r6kz69YmC7edeD8SQOWY5BcoLeUzX
 ogwkOVKYgX4+0aXYCsA21Yq8sFWFV/uZizHm5EdW4jeYb3EGjA0DJzLY8lOlwC6uHMW8
 htjV2C56x49koAQuXCDOYq5rteaudtGE/1A/EkXqsS3IZrZbvCKo5Ss1J92v1uV2inRv
 2eAuq2Lnzb2cMyumzcVEu0HNZYarGbEWVHwpeNgc14/xQ3jR2dp9sHRdackkJhiaKvji
 vyxU1eXFLdpm3OBVokdaXHoxQAitkX2aUINFS4qr3ukUQ1AQ3+VtjoOJhb5DgxspDs43
 vYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pinXyNbLzNVPX/bjvrXpQvjJmZP5stTSjNwoOuOjf58=;
 b=hdJhJzYV5DdTiyz1UNVAirZa7R5kbmA6bVT58w7yEt/uCcYTdCEOdhlWkFTk8xFlln
 v4++xkpQVgt3cGhqvsJ4+bDkRqylARTqP+lH+7HFvrcpeXwRv5SwgpdR3X7KnqPMeCXJ
 aSU67N5IM+qeeseER+6l3ELoF9ci5mKGjSqDHpm3DiZsLWfYsMddv+VE/y9ko1K3Nyqh
 Pf0KpTagBwyDCngfBCUmC/FyfhDiW1I7Rdq7GChgjwsQ3RUY+59endZPqGCOaeA7xpnV
 n/JAzhnSY20JGIXkoHZulod2g/y3jWiGg+y4+26dq9oAzB0jH5In6PdDDE96dinoNNPe
 O+FQ==
X-Gm-Message-State: AOAM531V1fRZoDAJNyWIeEP0ON+hsd6S5HGmUxUoigon+oTloj47LwQp
 eJmgkM+eq51s3Yco3fc27emVxPHzR1FhPg==
X-Google-Smtp-Source: ABdhPJxFHfj/MBXeetj477kxdURdC3Dlcz5g257iXuawEKZFoVAzZWuyj+HwYtf/AqICeqid3bPHBw==
X-Received: by 2002:a05:6402:b0e:: with SMTP id
 bm14mr10989272edb.259.1602445473344; 
 Sun, 11 Oct 2020 12:44:33 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id a22sm9549717ejs.25.2020.10.11.12.44.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:32 -0700 (PDT)
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
Message-ID: <e24d4325-07c4-9015-e617-4cfa27777e91@gmail.com>
Date: Sun, 11 Oct 2020 21:39:28 +0200
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
Subject: [Bridge] [PATCH net-next 05/12] net: usbnet: use new function
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
 drivers/net/usb/usbnet.c | 24 +-----------------------
 1 file changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index 963d260d1..6062dc278 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -983,31 +983,9 @@ EXPORT_SYMBOL_GPL(usbnet_set_link_ksettings);
 void usbnet_get_stats64(struct net_device *net, struct rtnl_link_stats64 *stats)
 {
 	struct usbnet *dev = netdev_priv(net);
-	unsigned int start;
-	int cpu;
 
 	netdev_stats_to_stats64(stats, &net->stats);
-
-	for_each_possible_cpu(cpu) {
-		struct pcpu_sw_netstats *stats64;
-		u64 rx_packets, rx_bytes;
-		u64 tx_packets, tx_bytes;
-
-		stats64 = per_cpu_ptr(dev->stats64, cpu);
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
+	dev_fetch_sw_netstats(stats, dev->stats64);
 }
 EXPORT_SYMBOL_GPL(usbnet_get_stats64);
 
-- 
2.28.0


