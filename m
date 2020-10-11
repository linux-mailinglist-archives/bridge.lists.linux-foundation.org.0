Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC8428B170
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 16BC02094C;
	Mon, 12 Oct 2020 09:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id scYzDq9RgQIA; Mon, 12 Oct 2020 09:24:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 97FF22094E;
	Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 73E72C0895;
	Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 70D07C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C0EE86F9F
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yM2J-ikzgOM2 for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48BA086F90
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:44 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id qp15so20329375ejb.3
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gfr3ALYPLKmxZda8jB3ld1N0hpEXjoqgwocV8/nd3X0=;
 b=UbL1GtjqXIjEGis5eM/8DwyMsHni206CGfZbq8bJ4Cq/dPqLWTpDUaxfFfzUN/NQ0R
 WNmYW3qdxh0pnWXQaoDe1nChSTIh6UTJ1SUMKcaQwRu7tQHbnHMJYc9b60vNWy4nh2aR
 39ZLS52ZJ30L2HF+21PL5XB8xlAqyxKt0lsCWZO9rcVudZySuROSZS34XHNWL3VL6POI
 W9VRr+t4S9PS8gPdJ6DjdYR+h3OE9rx1F5wr5xgIPwYgalHlaXejI9sL//flzgCHykQy
 G2u1erqZ9fsK4FIHDpNBHaAuHIFP5hkKTLCqnvVJlEoUoVZHPXw9YfD1SP1dRKmk2vw8
 oFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gfr3ALYPLKmxZda8jB3ld1N0hpEXjoqgwocV8/nd3X0=;
 b=fmbcVsvQ2A8bc5jQaVl5cktwVpgu11kCoz8B3QR7ZJ7r2ckKrI/8hioF+QusagIlbx
 a2s0nvT/0qQ77Vty/Fm21EPf4PkKSkRw+95kT53WwpURATMlNqAAPA3geyJ/cuWLk4LA
 Qu2cIx4sg5V9OlVdPGV0AFbfikXLoXR+Y1gFA7Bc2Wxb436ZyicajIF9UQcVoHhjLFQZ
 fW7rZZCNjfbzxPLJkGTS+cytCJx+bFRXVKg3hpwKWYfZKm9utsHUCN25Fi6+OswY4+uA
 jgAcqNpgG4PVE6TcaiNG2sziaDPZimfHHuPH0WL2wCGBguCZ8k73D5w8/huj3XlWUgMl
 P7iQ==
X-Gm-Message-State: AOAM532O+VEW2gTXcJc1gVP5HtgiFg8lKW0/WKwcckzeUH3cubGOOu5e
 NXeuJCY/EYywqlTELM+b+SUm/CXc48c4NQ==
X-Google-Smtp-Source: ABdhPJxJzVcxYYhChoisYAA0WC0eftqGze9+lsho48XfvKPZgGEASN1Fa9S6xPslx35aOFc2I6gM5Q==
X-Received: by 2002:a17:906:3b91:: with SMTP id
 u17mr24104083ejf.504.1602445482592; 
 Sun, 11 Oct 2020 12:44:42 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id x2sm9504409edr.65.2020.10.11.12.44.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:42 -0700 (PDT)
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
Message-ID: <7debf7e5-ea7f-6fec-4f58-7dd6c8f28b7b@gmail.com>
Date: Sun, 11 Oct 2020 21:43:18 +0200
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
Subject: [Bridge] [PATCH net-next 11/12] net: openvswitch: use new function
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
 net/openvswitch/vport-internal_dev.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/net/openvswitch/vport-internal_dev.c b/net/openvswitch/vport-internal_dev.c
index d8fe66eea..1e30d8df3 100644
--- a/net/openvswitch/vport-internal_dev.c
+++ b/net/openvswitch/vport-internal_dev.c
@@ -86,31 +86,13 @@ static void internal_dev_destructor(struct net_device *dev)
 static void
 internal_get_stats(struct net_device *dev, struct rtnl_link_stats64 *stats)
 {
-	int i;
-
 	memset(stats, 0, sizeof(*stats));
 	stats->rx_errors  = dev->stats.rx_errors;
 	stats->tx_errors  = dev->stats.tx_errors;
 	stats->tx_dropped = dev->stats.tx_dropped;
 	stats->rx_dropped = dev->stats.rx_dropped;
 
-	for_each_possible_cpu(i) {
-		const struct pcpu_sw_netstats *percpu_stats;
-		struct pcpu_sw_netstats local_stats;
-		unsigned int start;
-
-		percpu_stats = per_cpu_ptr(dev->tstats, i);
-
-		do {
-			start = u64_stats_fetch_begin_irq(&percpu_stats->syncp);
-			local_stats = *percpu_stats;
-		} while (u64_stats_fetch_retry_irq(&percpu_stats->syncp, start));
-
-		stats->rx_bytes         += local_stats.rx_bytes;
-		stats->rx_packets       += local_stats.rx_packets;
-		stats->tx_bytes         += local_stats.tx_bytes;
-		stats->tx_packets       += local_stats.tx_packets;
-	}
+	dev_fetch_sw_netstats(stats, dev->tstats);
 }
 
 static const struct net_device_ops internal_dev_netdev_ops = {
-- 
2.28.0


