Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5143728B15E
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3FE786078;
	Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kMVgMMj3aNNL; Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91DE685FA5;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7689FC0051;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D260CC0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF3C586053
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LCy9nmdlch9B for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27BAB86044
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:38 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id a3so20268515ejy.11
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K5p6PQe9PHlb+DeFu3qCLN+dyNKfD6AR/iCNZWeTJCc=;
 b=HbRt6adGAkstImkM+FvDPUdRIwYLplfIyHr6lQj8N62eXViV/hea+3jch0P7j1QSAB
 XH0QnWYdoc68vK6BV4c2a/MGZmQhESAuaiw3nH6jaKZRtxReSo7CS4db24I/dCvBpJgx
 oZlNuBNZ2nX9TCEHVyKXJ9X9aB05foRI21NPRbCNHx6TqX7JIcFFDRlwbdkxHn4/hjGD
 npHaKOYfY4UL/Z0mRqf4t4/RPQ0n/iSlqNOx8vAXXwj8WPWYA8hK8o9AmRlXbHEVnL2l
 3QmDQzkyFXpVlEMSLnXneAVyxrUcvFdZJG4gNH/1j/i31cFkBdsNYAUwx5CGGew38com
 vupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K5p6PQe9PHlb+DeFu3qCLN+dyNKfD6AR/iCNZWeTJCc=;
 b=pxqq19vg8gk9sxWo1ZUXjLDTnyMmVAOTPz9ybxjos7pIg1gJAuxrNWtc549kr9dVHO
 G7BBccv0Ny6hSVwc0vhNz76iIA9QXcdSY35FKq85QhVCnAUfqVeUbttLzUUmF/33iAQ2
 XQCuIpVUTq/6Cu9zHfEiRPGYqDQH2pvz5JdPDl4dmcmRq4iS7YVxRRhjeI3DEHnzt7nU
 IWYtTGf5F4FUeIMMUgptoww2pcvZkeDHWi/YKOTA7+Y27U0UoYfcnnSTO3/ZPJhqLN2n
 ECPfz5xvtS2OFD70AML8eTSjGMbjBveJphJM4fdfgeS2ygH4x+QKixJLht9W4QMdWaQb
 T6lg==
X-Gm-Message-State: AOAM531EvR8BrES7cR6fkxefq2px3ukLkleFh4WqxNXDCm+tGSsv6bq5
 KtJ9lh/sevL3pZLcmS8qd0hmbV797PSAnA==
X-Google-Smtp-Source: ABdhPJzZ5j1LdDWA5dmv+e3w9peo+dUGtcw1j3sEyVi1uLGsEplo4M1SATqelgZk1ZYsssDnPQiyAA==
X-Received: by 2002:a17:906:1b15:: with SMTP id
 o21mr25308968ejg.19.1602445476379; 
 Sun, 11 Oct 2020 12:44:36 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id q27sm9766916ejd.74.2020.10.11.12.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:36 -0700 (PDT)
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
Message-ID: <ce91ffd8-f17f-613b-5d25-955348cfd9a1@gmail.com>
Date: Sun, 11 Oct 2020 21:40:50 +0200
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
Subject: [Bridge] [PATCH net-next 07/12] net: bridge: use new function
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


