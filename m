Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D4628B15A
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C53A885A6E;
	Mon, 12 Oct 2020 09:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wMzEdf3joqDs; Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F33885F84;
	Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6DB26C0051;
	Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DCE64C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CB96F86F9F
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kEcVktTXSS2z for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 17EA786F90
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:32 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id l24so14741906edj.8
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sVZWFKmWX+WTmfjlAyUC3V6edudq39GypRePR5bJKiI=;
 b=C8xvNbM+J7NKyEsbDZKiT8wqKhDzG1DFSSWlnrqPaai0Klv4u9p1zLokAKzvkxFwWp
 zO2dkU1AsYfjQWsCvKmHA/Umrz4lQuwDVoZbNLIM1uc/OHlpSqGR2avkysv2IPZbmtFY
 EUoeHDUxGsRKq3XKvExP6ZRH3KjwfwPI3+L0y2ABlu4NYIkjCozJ32JDRRjFMGYQul+K
 1Ia8AZLZdMeNkGuLeSe1XbRtZ9YRMCbBdorm/KGI7i3sHpoJq6w2Ym7s4Vmv5IjHykPT
 NFqvGj3F79yfbFktAU8x/oRbKmOI4pHJUFSlHJLA8YqOAoJbM4xIjkxlLZT5J9M7bkUG
 PQrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sVZWFKmWX+WTmfjlAyUC3V6edudq39GypRePR5bJKiI=;
 b=FuNZ7pSQjJsIh/HGB7OTleOAQ7FvnvnH66dPibQAWr+WgmU7ui4wmCP/x4wt4nhmM4
 77XdtUWvpD8hrZA/aXPaM3njMQgmMLY2kFkkAA+r5Q4vb7z4wP4VUtXSX6iaq3p+h5Ba
 2jukuimk41zesYKnOlHs6mF+bE69Ytnh4I4L2d1s89lw5KUhgqkHCmJYDBSjCkbfBr4O
 MEd7bMZ3QM7II0Mjb7UITF4tGLRFKtEJZI3Idp5IN+ebHXG1QOIxyfBBfC+ggVcfRM3L
 emsudoUnwVf9h258/dnhQTxzwqD1OlYvTWIxV95F0hxuLwwoWfGckBqaf2ULcDvNkwNy
 hBXQ==
X-Gm-Message-State: AOAM531CnVUz4Q3uTdT8Uhu7GLjNZ9HHkAZZqzMqwoIYDxlmcxSLo4xj
 rnQ1+POS7xLoA2FNdNcRCXNVrsR84CE89w==
X-Google-Smtp-Source: ABdhPJzZJhkP+n3UkxYwLmk7JgckORy+47i3n3MoP9Tt1H2VvGYHQ/kfQZo17UJuOkKtwIFsZaczLg==
X-Received: by 2002:a50:bb0d:: with SMTP id y13mr11033369ede.317.1602445470380; 
 Sun, 11 Oct 2020 12:44:30 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id p3sm9442717edp.28.2020.10.11.12.44.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:29 -0700 (PDT)
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
Message-ID: <26abd317-928e-3e52-698c-6b5feca2072f@gmail.com>
Date: Sun, 11 Oct 2020 21:38:05 +0200
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
Subject: [Bridge] [PATCH net-next 03/12] net: macsec: use new function
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
 drivers/net/macsec.c | 25 +------------------------
 1 file changed, 1 insertion(+), 24 deletions(-)

diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index 2b0c8f01d..e74483279 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -3647,30 +3647,7 @@ static int macsec_change_mtu(struct net_device *dev, int new_mtu)
 static void macsec_get_stats64(struct net_device *dev,
 			       struct rtnl_link_stats64 *s)
 {
-	int cpu;
-
-	if (!dev->tstats)
-		return;
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


