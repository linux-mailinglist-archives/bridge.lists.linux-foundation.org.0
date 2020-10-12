Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2220328B16F
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B24B486053;
	Mon, 12 Oct 2020 09:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VNAMMgcASqsY; Mon, 12 Oct 2020 09:24:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1096A86099;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E95B5C0051;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14D0FC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B521869C6
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 79Cyo1dApjO1 for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DE9F186951
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:49 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id u8so22017519ejg.1
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pinXyNbLzNVPX/bjvrXpQvjJmZP5stTSjNwoOuOjf58=;
 b=YIWmvaXj7toieBiR6u74axTiOYjNawVWVtnHUyzNWXykWBn89aGaVyvF2haYTaAskF
 jjgPJIg550NZ0VDgYrXna3lBgTWA8Z6sK/nB4o9vWcDFD/u02S1ilD8dorfma/JoyyYB
 mMYHDCKYtOpROJbMbPzz3JLo74hKj1Iy0uOE4Hcjp6O/K0iTauIgpVp6CQyCBwpJVjlY
 0LHrbQIbAeJx7vxB9Oap2QLNBhXOyobXyaYc4zVE5ZbL1P+7UwIgIS/1P26x7gUndJng
 3ENBnQVP+YMBJ9+uqKlnKlRD1E8LYrMZypcQp2lhUydsh1gi7Grpu3WO831Lx14+H3WH
 KB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pinXyNbLzNVPX/bjvrXpQvjJmZP5stTSjNwoOuOjf58=;
 b=NPKcPgdiTmMedgIpWxC9iBFI0O2q7TVIaw4NGvKWE6xlM1NftaDQk0W0HXxAu1qj4h
 GB/LPpSOk4lp2mhypGeMOvDjUfORomFsa6rhCyMMM+0lt5BzbNMlIT0jNQdSPSmrv+5x
 Il1DOoGsazSaJyrdBRyTBYkjkOLXNlaCyQG/aluBn6sha+A6h6I+esUTN1G2YOMIbW8U
 MxjvOVIbKJKGKXUb0ldCqwKeMbWL261VE7z9RD+CzQvGecyESPpimt/7vVRSXCgUoomG
 gzmYeHmGW0XzPuds5v0BEdRuXk3AnNUqyU1wZlB9IIg2CMwmUha6OtlzvTMcst9uTdxh
 jKCg==
X-Gm-Message-State: AOAM531DXCLtppZahn5RwxYJDz+oArjmNuW9BFloJQhlfBRYtsawIRZt
 YAmlrDCpMtass/vNe1MshK/YUx9A4T5QTw==
X-Google-Smtp-Source: ABdhPJw2bnUJbtCuziDVxBntmS/1DOzHEWat6ryyl6+Lnf71IgL4kFsQqFK6oNkIj97r+IUGer37lg==
X-Received: by 2002:a17:906:8519:: with SMTP id
 i25mr26774698ejx.76.1602490908123; 
 Mon, 12 Oct 2020 01:21:48 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id h22sm10232665ejc.80.2020.10.12.01.21.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:47 -0700 (PDT)
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
Message-ID: <70ad3e33-8ea6-e12e-31de-5fec7a3c4f6e@gmail.com>
Date: Mon, 12 Oct 2020 10:07:33 +0200
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
Subject: [Bridge] [PATCH net-next v2 05/12] net: usbnet: use new function
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


