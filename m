Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E1B28B160
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6BFB869F8;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o-rTeF+gBtdP; Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA61B8677D;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AA973C0051;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD676C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B4B1207A8
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8AhnloySe2kE for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7443C20555
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:48 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id ce10so21985053ejc.5
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1wOWozXJ4utk2al1FxKRLR9aiEc2n/7R7pCk8KlT/EY=;
 b=gdWvMc+ds5lggRfkD+SUMGUuH638xQkwAy+e8n5Mo7ZRSDYEPzaQtR9qfL++MOHP20
 va97/CqWm8hgjDrEzG2Hcg36FXA5MGYZqe4cXAP3EtfNmxLRRM+z4aZkd1av+qmz3vKJ
 Hdb/EbLySehHW9Lnwdok4qok7d36BK2J4cmWsgto/oGZRRT9W9X9mBYmgTLe+5XbAzAq
 PlIBELAmZtoMmLhS3/E59H5AU2F7w43TqXNZ1ZGiQAYY5AUfa0/GYYWjvEuf2lOfJgd2
 9NvJWF1sBhqoPd+8EIXuDQRt1to6QYk60Yc3HXpSawKyP0ZIINF96WNCqYC/SkbBjEer
 tiOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1wOWozXJ4utk2al1FxKRLR9aiEc2n/7R7pCk8KlT/EY=;
 b=BXab0JsvnmzK5LiFCvtDoOrVsBZLFDwq/UYe1fap3mjpFjyxWjUkbGZtox4rMdIpa2
 GZT/eA8W43ajvSgG/YFP55lez//cA+kNkwoze8EEQcTkF89uAmtPHgOszcV8xpR9VBI0
 jBEACXdeuEY+VswHTlfqWXCiLVEPuaTlI/oez+fsc66c31d5blNu2xjOs5YDw0FoM6hI
 Pgr2VzLOHEZTewCdBvTTo8tkcR/bzVVhacM/hPngzulEZXG4uMlY2lM5JWiUbwqnlhGr
 l07Wy7bLdcrf1K2Da1EypZCDnkR7j+Nr9QredpJ0D+Muj2puiW9VQCMM5kPpme/sErva
 L6Lw==
X-Gm-Message-State: AOAM533+ERGBLBeIVxk7eSBNe6mZeiWSRkmfFhp6ouD/K77l2xieCwgm
 u5S7UlPRORm0rIh8mCvdfTNy4ZKMd0p/UQ==
X-Google-Smtp-Source: ABdhPJybN133vx8Ykqx0BlhQOoR1nEkI9d6/vMogtaA8z/z2ZiUyyQ5Qlyid6QSVeywYp3JCUY3mxA==
X-Received: by 2002:a17:906:a8b:: with SMTP id
 y11mr26283425ejf.302.1602490906538; 
 Mon, 12 Oct 2020 01:21:46 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id
 lb11sm10190517ejb.27.2020.10.12.01.21.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:46 -0700 (PDT)
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
Message-ID: <2c97b75b-107e-0ab6-d9ef-9f38bb03f495@gmail.com>
Date: Mon, 12 Oct 2020 10:06:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <d77b65de-1793-f808-66b5-aaa4e7c8a8f0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Oct 2020 09:23:56 +0000
Cc: linux-rdma@vger.kernel.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 bridge@lists.linux-foundation.org
Subject: [Bridge] [PATCH net-next v2 04/12] net: usb: qmi_wwan: use new
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
Acked-by: Bjørn Mork <bjorn@mork.no>
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


