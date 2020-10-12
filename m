Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BACB28B171
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB412860AE;
	Mon, 12 Oct 2020 09:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id shRAp9kJd6px; Mon, 12 Oct 2020 09:24:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A914885FB6;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7633CC0893;
	Mon, 12 Oct 2020 09:24:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 83E98C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7FDAA869C6
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YDKoNRdLwAcd for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B112A86951
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:54 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id qp15so21984414ejb.3
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kQY13u/J7Fp4HN8JNyMiTiNVGyBR7+vKMY2CDxSIOpA=;
 b=LoWNdkgQEg6j2t7jglG4pZY5cy520+KElxP+XTQdibuLKMJQ17qaQKrgNKcZWMBhwd
 fh4tfgP9JMDppbFJLafJC7AKRl2W9Pmnrke1fkqaKB5xIOTDxiQLFWJXbIPBgnyW0byC
 b8zTIxJwYdtYF/lEL0uGz/AVe1CufR7arN5LYOBTY4JbKxwlmSu+tekilqKbSCodZKrZ
 ojSi1s6kcnwT0o91vuspcWEklTsDCI3HXvTwhb4qSDKLIf2Pjhw0XtgMyBzOSQiTDZHv
 ZyTjpn1tXvfeOALJnWiNgDYpht2jRdGu5C1L+qfeMJFU+ChxAf27lipacYpUWzI45E3X
 pPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kQY13u/J7Fp4HN8JNyMiTiNVGyBR7+vKMY2CDxSIOpA=;
 b=bblLS+fy44B1YJJvN2y8JhVxK312egPhUliOKYwFKpgmXktDdpIyRbI4m0ifJr+meF
 ih+u9pEYBnpskrMEHGYrLoyKOJrJFZYCDMjwLkq5mDaEFvdKXjv3ETH+uBsp6Y5SkBkh
 K8tLzBSGIjhhwbH4Pe3HmFlD3cZe3KXM0gjl3zinxke4p5wL2QpODITvkNplXVpbdTYp
 50YQDOxW1z4BOgyRRtb5fSHrs9pFN7jGzpWXM0FAzvbavCOBZk59s6xF6YCBvyZsMZQC
 llys59jv25GWTZqR8hOUw2z2YfPkT5p10e+QKkIOomqQCreoSFNG22NschsI0y5pYAPU
 lY8g==
X-Gm-Message-State: AOAM532x5GfXJ1VzIXjQJLW+Dh+fiZXsvjn47gwQt6OzlUDdKWJorspz
 QGYoy3eV/lNLdcHRG900NTM08V5iRTIAvQ==
X-Google-Smtp-Source: ABdhPJxZjb6wWOhCJS0wl42e7OPCO1VSso+NFMpWMst/0+/wbjV+Z98wJGkpbVoqTuh2/EBZga8S5g==
X-Received: by 2002:a17:906:f8ca:: with SMTP id
 lh10mr5845312ejb.528.1602490912970; 
 Mon, 12 Oct 2020 01:21:52 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id k9sm9480801ejv.113.2020.10.12.01.21.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:52 -0700 (PDT)
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
Message-ID: <b6047017-8226-6b7e-a3cd-064e69fdfa27@gmail.com>
Date: Mon, 12 Oct 2020 10:16:18 +0200
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
Subject: [Bridge] [PATCH net-next v2 08/12] net: dsa: use new function
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
Tested-by: Vladimir Oltean <olteanv@gmail.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
 net/dsa/slave.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/net/dsa/slave.c b/net/dsa/slave.c
index e7c1d62fd..3bc5ca40c 100644
--- a/net/dsa/slave.c
+++ b/net/dsa/slave.c
@@ -1221,28 +1221,9 @@ static void dsa_slave_get_stats64(struct net_device *dev,
 				  struct rtnl_link_stats64 *stats)
 {
 	struct dsa_slave_priv *p = netdev_priv(dev);
-	struct pcpu_sw_netstats *s;
-	unsigned int start;
-	int i;
 
 	netdev_stats_to_stats64(stats, &dev->stats);
-	for_each_possible_cpu(i) {
-		u64 tx_packets, tx_bytes, rx_packets, rx_bytes;
-
-		s = per_cpu_ptr(p->stats64, i);
-		do {
-			start = u64_stats_fetch_begin_irq(&s->syncp);
-			tx_packets = s->tx_packets;
-			tx_bytes = s->tx_bytes;
-			rx_packets = s->rx_packets;
-			rx_bytes = s->rx_bytes;
-		} while (u64_stats_fetch_retry_irq(&s->syncp, start));
-
-		stats->tx_packets += tx_packets;
-		stats->tx_bytes += tx_bytes;
-		stats->rx_packets += rx_packets;
-		stats->rx_bytes += rx_bytes;
-	}
+	dev_fetch_sw_netstats(stats, p->stats64);
 }
 
 static int dsa_slave_get_rxnfc(struct net_device *dev,
-- 
2.28.0


