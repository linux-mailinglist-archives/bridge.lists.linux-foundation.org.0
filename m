Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E0828B158
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE67186945;
	Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6Aac8Jcr0B3; Mon, 12 Oct 2020 09:23:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE9A486977;
	Mon, 12 Oct 2020 09:23:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D5D24C0051;
	Mon, 12 Oct 2020 09:23:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 62A28C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 48A4D203FD
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Es35q2LdmPTo for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id D93BA2044C
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:28 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id t25so20264364ejd.13
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=11y0pgG7aEVp4MN5bK5igJeBve2DHauuUJfvXQcU/cQ=;
 b=S7Yhz7FN4RrMaWZm062rjZtizkHtS2nV//ChDYOYkWaZc2/x3cEdl0rYtGoalmayEv
 l6AXRWI4xAJDVQC++R7i4AUWeE9nt3IDlOsLJfhNz/n0nROqitAsJb1eMMW0Yhfeyapq
 qMxH65BqWerBKZ4RgZ9KNhyYwXdUKGtBcQJnmk0ChQ/rARn80X/hhBRogAcNMNwiCk1R
 WCL9mXtmyKYZletsrxv5wKAuFEwNw0sfn4YhHnyFiqudQ0WPzB9n0wZfD0dXd67mpvtu
 OQJX97FsIVmi7NonufBQle/Iu1kSzfxG+Pr4jFLedyLWzd079oE6JpWXdDobDiqzrc4Z
 L9qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=11y0pgG7aEVp4MN5bK5igJeBve2DHauuUJfvXQcU/cQ=;
 b=FVwJKP/qc3X2KLTTbiFlBBoB1akm0C0xi2V3OTkjlizODiHtg/EYiaNt5ST8SZ79s0
 /4SoLj8jIkzDVv+x2pjEg+C+UvqfE29d8SXn4BboV0S5+N50T/u//ZPritd0/EGAbSYX
 bh6aO+28WhgFlLpn0uzTT9r+np6rwgi8UC2k90VNM8HCQjwQ37pFO1ZcmetqgLEIJHR4
 /+cFc2gjt17c3pn5tv3Vdz1WR+KuFr0A2cq6RCasZhLKSJTfncB0h5t5tjFQc1Ck/bgv
 1rukqglEizNah4uGUrt7gM8hQufUznVeoJtZ1PTfTQSJLlAM3jIeXSQ/CKXOI1D3a9Kt
 wb1w==
X-Gm-Message-State: AOAM5300XKpUmAQ8ttoETDNTIeK58JNfNlnBDZEaTaR/YQI3V624CuIW
 nGDHDvDbbjfE3yDpU3XEYnqdniRX3ZbQ1A==
X-Google-Smtp-Source: ABdhPJwVvpcAwXtIRgiHnHwS6RDkPJ1F5KHG+smtvSF9qxcZiwxZuqYBL0otDnZ7nDsvJi4e8+FCrw==
X-Received: by 2002:a17:906:6887:: with SMTP id
 n7mr24494904ejr.288.1602445467117; 
 Sun, 11 Oct 2020 12:44:27 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id y25sm9655319edr.7.2020.10.11.12.44.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:26 -0700 (PDT)
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
Message-ID: <5bb71143-0dac-c413-7e97-50eed8a57862@gmail.com>
Date: Sun, 11 Oct 2020 21:36:43 +0200
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
Subject: [Bridge] [PATCH net-next 01/12] net: core: add function
 dev_fetch_sw_netstats for fetching pcpu_sw_netstats
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

In several places the same code is used to populate rtnl_link_stats64
fields with data from pcpu_sw_netstats. Therefore factor out this code
to a new function dev_fetch_sw_netstats().

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 include/linux/netdevice.h |  2 ++
 net/core/dev.c            | 36 ++++++++++++++++++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index a0df43b13..ca4736349 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -4495,6 +4495,8 @@ struct rtnl_link_stats64 *dev_get_stats(struct net_device *dev,
 					struct rtnl_link_stats64 *storage);
 void netdev_stats_to_stats64(struct rtnl_link_stats64 *stats64,
 			     const struct net_device_stats *netdev_stats);
+void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
+			   struct pcpu_sw_netstats __percpu *netstats);
 
 extern int		netdev_max_backlog;
 extern int		netdev_tstamp_prequeue;
diff --git a/net/core/dev.c b/net/core/dev.c
index 7d18560b2..ba91bf16b 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -10323,6 +10323,42 @@ struct rtnl_link_stats64 *dev_get_stats(struct net_device *dev,
 }
 EXPORT_SYMBOL(dev_get_stats);
 
+/**
+ *	dev_fetch_sw_netstats - get per-cpu network device statistics
+ *	@s: place to store stats
+ *	@netstats: per-cpu network stats to read from
+ *
+ *	Read per-cpu network statistics and populate the related fields in s.
+ */
+void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
+			   struct pcpu_sw_netstats __percpu *netstats)
+{
+	int cpu;
+
+	if (IS_ERR_OR_NULL(netstats))
+		return;
+
+	for_each_possible_cpu(cpu) {
+		struct pcpu_sw_netstats *stats, tmp;
+		unsigned int start;
+
+		stats = per_cpu_ptr(netstats, cpu);
+		do {
+			start = u64_stats_fetch_begin_irq(&stats->syncp);
+			tmp.rx_packets = stats->rx_packets;
+			tmp.rx_bytes   = stats->rx_bytes;
+			tmp.tx_packets = stats->tx_packets;
+			tmp.tx_bytes   = stats->tx_bytes;
+		} while (u64_stats_fetch_retry_irq(&stats->syncp, start));
+
+		s->rx_packets += tmp.rx_packets;
+		s->rx_bytes   += tmp.rx_bytes;
+		s->tx_packets += tmp.tx_packets;
+		s->tx_bytes   += tmp.tx_bytes;
+	}
+}
+EXPORT_SYMBOL(dev_fetch_sw_netstats);
+
 struct netdev_queue *dev_ingress_queue_create(struct net_device *dev)
 {
 	struct netdev_queue *queue = dev_ingress_queue(dev);
-- 
2.28.0


