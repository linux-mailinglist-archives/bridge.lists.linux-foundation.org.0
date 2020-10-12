Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA72428B16C
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4DF2D86194;
	Mon, 12 Oct 2020 09:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rrKMfaeY6_I3; Mon, 12 Oct 2020 09:24:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D441D85D97;
	Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7FEDC0051;
	Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81FCBC0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C89C20774
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ObRqxyCptEX3 for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 478C6204DE
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:43 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id h24so21961927ejg.9
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XLSw4kk01QDTlGyCDpjTbXYryNnPNFLUaBj1auxatEE=;
 b=LduJxkBQrSrNHSKIi9bNM0SVbJKluwGhNNT2aFEdJAIcXQtnCSqfTLw3qowTIv7B0k
 Y2sdAA3ItnlB0Eyk9/Y+cX69aGW3HCYVWUtXlTAPogCWeG65EVyUOxvhsxvbLSgI/FXL
 1d2O6uk17pOmZozEIZASGi68BNeS0t94JAaVzmR0q7RaZTWdzRwxQ+2YVQ6SpOxOtYoa
 ogNJ3+MSqbpHQTIjYuj1zw3TFiNd4cDtzgkCvs8x6LTP/Cq33YL4P3S5oSfgqYivBiif
 gOykekdoeZpwX+yv2b5ceMCRDqgaPBLtKCCviCqQ/ZVVC+f568e5/iu/8ArkXLwT4h0I
 CsTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XLSw4kk01QDTlGyCDpjTbXYryNnPNFLUaBj1auxatEE=;
 b=RJcQuOhqLIDOcw1xUCS1FlhxhRZHGRi4Fq2c33fH2iIxDac1WaHcnpEC28yguUYYiu
 DHAeY5sYu3Y9evD3vm1xMWdBu1tZlP6TLGaKsUCFN8mZ+dJAw9+i2qFuKXUO3MIFdcLR
 G77F1AZ1qhDiqqzHbKMSWEOATj5VYafjem1bLWrmNlK//2n6dQPN1za8A1Yp1rPsZLmK
 u8j3Vjff5n5qBlHZbGIBpS1EFENWMxlNVWDAZTeVPtae3Fj2PDfdLK5HxfyYM2Cda/8p
 pJeEgxpX+FFRSuz4DxsjOtyHtnKrRoNXhjc05m/EYtZYhWwVy2HDjIiERzmxyTxJRQSy
 L+Ug==
X-Gm-Message-State: AOAM533s58oGEeuyZfZTn2p2wvPVmoxDdtgJmCFxH80cjpsNDpr+mGUd
 bOGX2qqLHl7bwPRjgyvWWVXNQdldGHAeNg==
X-Google-Smtp-Source: ABdhPJztw0xZvWbfVNUpz3P7tinaUOHzrkLOcdFj/n9SfGdrS0NBbEN2EP1ytjOc0wWKTJd8llR84Q==
X-Received: by 2002:a17:906:4e16:: with SMTP id
 z22mr20699549eju.527.1602490901540; 
 Mon, 12 Oct 2020 01:21:41 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id
 bu23sm10175810edb.69.2020.10.12.01.21.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:41 -0700 (PDT)
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
Message-ID: <6d16a338-52f5-df69-0020-6bc771a7d498@gmail.com>
Date: Mon, 12 Oct 2020 10:01:27 +0200
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
Subject: [Bridge] [PATCH net-next v2 01/12] net: add function
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

v2:
- constify argument netstats
- don't ignore netstats being NULL or an ERRPTR
- switch to EXPORT_SYMBOL_GPL

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 include/linux/netdevice.h |  2 ++
 net/core/dev.c            | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index a0df43b13..fa1d8d624 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -4495,6 +4495,8 @@ struct rtnl_link_stats64 *dev_get_stats(struct net_device *dev,
 					struct rtnl_link_stats64 *storage);
 void netdev_stats_to_stats64(struct rtnl_link_stats64 *stats64,
 			     const struct net_device_stats *netdev_stats);
+void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
+			   const struct pcpu_sw_netstats __percpu *netstats);
 
 extern int		netdev_max_backlog;
 extern int		netdev_tstamp_prequeue;
diff --git a/net/core/dev.c b/net/core/dev.c
index a146bac84..26bc10dec 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -10319,6 +10319,40 @@ struct rtnl_link_stats64 *dev_get_stats(struct net_device *dev,
 }
 EXPORT_SYMBOL(dev_get_stats);
 
+/**
+ *	dev_fetch_sw_netstats - get per-cpu network device statistics
+ *	@s: place to store stats
+ *	@netstats: per-cpu network stats to read from
+ *
+ *	Read per-cpu network statistics and populate the related fields in @s.
+ */
+void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
+			   const struct pcpu_sw_netstats __percpu *netstats)
+{
+	int cpu;
+
+	for_each_possible_cpu(cpu) {
+		const struct pcpu_sw_netstats *stats;
+		struct pcpu_sw_netstats tmp;
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
+EXPORT_SYMBOL_GPL(dev_fetch_sw_netstats);
+
 struct netdev_queue *dev_ingress_queue_create(struct net_device *dev)
 {
 	struct netdev_queue *queue = dev_ingress_queue(dev);
-- 
2.28.0


