Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D9628B176
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0869921503;
	Mon, 12 Oct 2020 09:24:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJNg-HMUjbEr; Mon, 12 Oct 2020 09:24:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8544421511;
	Mon, 12 Oct 2020 09:24:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 67DE7C07FF;
	Mon, 12 Oct 2020 09:24:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AEBA2C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A9C3985F53
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cH-sQxu41jaI for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 02F4885F46
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:58 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id o18so16001201edq.4
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=m4bUmyI+LcL2kRpVckxE5LM+etyYjhNnBeXZhGHIk4E=;
 b=lDYtJfWe8/DHmjC4qnf5MwRbdeN5hvaFN8hfqDPHJ+0ZfSsAgJJ/eXIwbH/bAiyviA
 aryMIMTmub/a4wvpBSrINDW0mgGtW14oQkcmg7cHioMBNYxSeFVJEVppU4CZN/z3pgYi
 yCFSGrnv7HyvCgvGS3/K6wNcJVNLfuuY8v8uzjSvqKU8yTWDfejU2Bd9+zFdG60zZczq
 jBuK8KZCwLWlL18mrCzoRXzYxMqfYb9GBbaRMEFJXupAYO/QmQVPMGU2VtefsbCISeUd
 mBdf8EcSNS2NDXdJN9FOMUgC0woGLf6i+BjyF8u1bEQoHHPT7PqN5ajYLcMBnPcAUc/e
 zu1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=m4bUmyI+LcL2kRpVckxE5LM+etyYjhNnBeXZhGHIk4E=;
 b=J3brpkHzVs/XQ051UU7M0aekgVzdoQ2kwCNho/P5X38jfomAa1XZd3isIYAZC+Zl16
 e3QzyZhek/6q3LTfU79mDgxyPNMFydcmKarDpVQxY1kNgFCaz05SvVrWgemZ76e+UAMt
 lXd5+6hnj47u1T6iXB1PWomcHK21prhFq00GO7dkXfWk9aTU0MpjewptBeTZrcJ8i7ZZ
 nSrFvWUF72ZEi9ed2Z7ySY59jNveB4cp82DEows0IC+BViffuAyVt+MIHUsVapkVInHA
 9xk36SfVX9EgsuRR9ngr0ODIU+qeGnULtSbEyCNIPxR96/WnAo1luCwbhLIlNl/h/uts
 ZQNw==
X-Gm-Message-State: AOAM5310365zXIIzsrmX8yECwV5KOxhiCSe06+4lSX0zix9Yg8D0cnLC
 gylfzzP/HLZ3lRgQi/srWS1sHEfmEpA4VQ==
X-Google-Smtp-Source: ABdhPJyxfMf7VORSSp5HyoFFzEneyPhPzS9WR/V/e17Yl+s28XgNVuSnVMDboRtDH0wsx5sophUXpw==
X-Received: by 2002:a50:c05b:: with SMTP id u27mr12607356edd.290.1602490916179; 
 Mon, 12 Oct 2020 01:21:56 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id j10sm10013041edy.97.2020.10.12.01.21.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:55 -0700 (PDT)
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
Message-ID: <93dda477-70ae-0ccf-71b4-bfebb66c9beb@gmail.com>
Date: Mon, 12 Oct 2020 10:18:19 +0200
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
Subject: [Bridge] [PATCH net-next v2 10/12] mac80211: use new function
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
 net/mac80211/iface.c | 23 +----------------------
 1 file changed, 1 insertion(+), 22 deletions(-)

diff --git a/net/mac80211/iface.c b/net/mac80211/iface.c
index 240862a74..1be775979 100644
--- a/net/mac80211/iface.c
+++ b/net/mac80211/iface.c
@@ -709,28 +709,7 @@ static u16 ieee80211_netdev_select_queue(struct net_device *dev,
 static void
 ieee80211_get_stats64(struct net_device *dev, struct rtnl_link_stats64 *stats)
 {
-	int i;
-
-	for_each_possible_cpu(i) {
-		const struct pcpu_sw_netstats *tstats;
-		u64 rx_packets, rx_bytes, tx_packets, tx_bytes;
-		unsigned int start;
-
-		tstats = per_cpu_ptr(dev->tstats, i);
-
-		do {
-			start = u64_stats_fetch_begin_irq(&tstats->syncp);
-			rx_packets = tstats->rx_packets;
-			tx_packets = tstats->tx_packets;
-			rx_bytes = tstats->rx_bytes;
-			tx_bytes = tstats->tx_bytes;
-		} while (u64_stats_fetch_retry_irq(&tstats->syncp, start));
-
-		stats->rx_packets += rx_packets;
-		stats->tx_packets += tx_packets;
-		stats->rx_bytes   += rx_bytes;
-		stats->tx_bytes   += tx_bytes;
-	}
+	dev_fetch_sw_netstats(stats, dev->tstats);
 }
 
 static const struct net_device_ops ieee80211_dataif_ops = {
-- 
2.28.0


