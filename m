Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2028A28B162
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C3D5E86A00;
	Mon, 12 Oct 2020 09:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2xV1spk+Ikl; Mon, 12 Oct 2020 09:24:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B6C986A31;
	Mon, 12 Oct 2020 09:24:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0A52EC0051;
	Mon, 12 Oct 2020 09:24:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87AA3C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6FA2220784
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKFdfNykX1EZ for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:22:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id A9E7020555
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:22:01 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id lw21so21988709ejb.6
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=t6mBah8f7Cbtv+XC/jNYzc0qx0/PRMeIzqK4sBdTEL4=;
 b=NWkmZm41Or7oJj4yHKmspy+OrWaPXUjOO6q5yMHMUW83945lY8phOot7oyDgef2jPL
 ZbBtAIu3dD7kLzFCsvULZgsu2VKNPw1plK2qMK+jvwWxoeSO4PQhxrMbEQ4RRTMlRgZb
 Aewc1ClDWIAUAJ79cweUgfhPYwAyzRne3Bkxt9IiaOXJO41cr2qUcBBQLcSozEm0WyQi
 fZ18uGsQO89vQNLOYxYJcwdsja5ljOD2QFLwHneixm0SS1c9NcMvJO+g6o8bhwPixTic
 92kuT501ONzBuwcy5NaMYuTDDtRw6cc0yuWUB+nPQzVGZN55ZXSJlIaL83ozl7+zhMxx
 AwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t6mBah8f7Cbtv+XC/jNYzc0qx0/PRMeIzqK4sBdTEL4=;
 b=bsCbDmxqz/28UN6XKm2XCJ/kUHOjPjDh1dpmbnZTtiTEdCDJHbSZlXaAFj5azJY60q
 pT+58FinieFpMMBaiQ/GdaTCf3BHHCt3PPURMcso7LRpAQ/k5UmnuYNMFMD9SKn5Vj8J
 IfN/vDIaYjw0u0R0rfHcPfojcc+6bI50EPeET49ju0eC/OuuNoTLrZahj/fVchd44dvw
 P9hyLAXSglNJt3BIow8Dp3xzRHujZFTJyXZSVz7LycBBtEr7e29B9FhETOOS2i0srasj
 5/VVhcaVZwtAfoebW0dy5oEvWzAM3KAA7xq1C8pP4AjWVPMw/ll+cm5/jINDa335asy+
 IXyA==
X-Gm-Message-State: AOAM5308LiQnKO4y32yNei0+az8M4I9KuwxedPdTbYM9o0I8HKMH95xm
 ND24SwpEEiPN1xYxam0ZIKJTWp2pJRiHSQ==
X-Google-Smtp-Source: ABdhPJz691gm0fYOVElrX0EBUzqGOtVHdXHSZAWWgkdG4CBDdqxmnQntiGDk+F5zgjsA4dfNBwA3Ww==
X-Received: by 2002:a17:906:935a:: with SMTP id
 p26mr2570633ejw.30.1602490919982; 
 Mon, 12 Oct 2020 01:21:59 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id
 oa19sm10244356ejb.95.2020.10.12.01.21.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:59 -0700 (PDT)
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
Message-ID: <a6b816f4-bbf2-9db0-d59a-7e4e9cc808fe@gmail.com>
Date: Mon, 12 Oct 2020 10:19:59 +0200
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
Subject: [Bridge] [PATCH net-next v2 12/12] xfrm: use new function
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
 net/xfrm/xfrm_interface.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/net/xfrm/xfrm_interface.c b/net/xfrm/xfrm_interface.c
index 5b120936d..aa4cdcf69 100644
--- a/net/xfrm/xfrm_interface.c
+++ b/net/xfrm/xfrm_interface.c
@@ -541,27 +541,7 @@ static int xfrmi_update(struct xfrm_if *xi, struct xfrm_if_parms *p)
 static void xfrmi_get_stats64(struct net_device *dev,
 			       struct rtnl_link_stats64 *s)
 {
-	int cpu;
-
-	for_each_possible_cpu(cpu) {
-		struct pcpu_sw_netstats *stats;
-		struct pcpu_sw_netstats tmp;
-		int start;
-
-		stats = per_cpu_ptr(dev->tstats, cpu);
-		do {
-			start = u64_stats_fetch_begin_irq(&stats->syncp);
-			tmp.rx_packets = stats->rx_packets;
-			tmp.rx_bytes   = stats->rx_bytes;
-			tmp.tx_packets = stats->tx_packets;
-			tmp.tx_bytes   = stats->tx_bytes;
-		} while (u64_stats_fetch_retry_irq(&stats->syncp, start));
-
-		s->rx_packets += tmp.rx_packets;
-		s->rx_bytes   += tmp.rx_bytes;
-		s->tx_packets += tmp.tx_packets;
-		s->tx_bytes   += tmp.tx_bytes;
-	}
+	dev_fetch_sw_netstats(s, dev->tstats);
 
 	s->rx_dropped = dev->stats.rx_dropped;
 	s->tx_dropped = dev->stats.tx_dropped;
-- 
2.28.0


