Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B746E28B16E
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6AF4385FB2;
	Mon, 12 Oct 2020 09:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lY7l9tdCqZaD; Mon, 12 Oct 2020 09:24:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D87985FAE;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6DBDBC0893;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81689C0051
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6FAC78710E
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1gR5YtT4boDl for <bridge@lists.linux-foundation.org>;
 Mon, 12 Oct 2020 08:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ABD89870FA
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 08:21:46 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id o18so16000590edq.4
 for <bridge@lists.linux-foundation.org>; Mon, 12 Oct 2020 01:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KFsZNGzDx3aV9CBTy2OuwyFykIUFu3usYnhhVM1hRRA=;
 b=Xmk4y4x522mXEH+Dhh4RrFypK4roS1v/xIOaX0lr0EZq27TaCNE5OZORYclY3v3o2r
 eP3NMqn+4pUQLmpYKg7wehIGmg24sF+V8wC2AYunxZvEsdHiPwZgjNakCons7Yvfss53
 NIxxAZ2kDrjvgpXioN4FIN/07nmPdNNRsCr5/fLGLNriL9DJvJaHtmHcDvpsyN6OCpF3
 g3qvkvaYv+zFlMlI0+trdkTAyYVsOfNQsNYLpPStxXPd4IVqAyUOgOJQi4iACnIndZGZ
 1EJ/k1a3TGNlZxxSlUmVxfqfwo03c6W4uDKplq+kdP0W6/DQ6qrzLOM3ljaQ62jwmr/S
 W8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KFsZNGzDx3aV9CBTy2OuwyFykIUFu3usYnhhVM1hRRA=;
 b=GlSV8iLql3EQ+IkwJ/KFVcUxBs3SU+0pJirz9wEIxPxPhVkShT2ZFzDsQp8Ghujitb
 QUjZ7SZKJGx/eAmLWk89JQu+S+ZveNcfAAkstDVLna0We0ezgWkIUoZIwlf8j26ws0C3
 BfJdShAiLGwOLM7N2DaFKtb6llpyyFxG9QZbdt+uHJRAyzdIxrTXh8YGgRMHo4QDWNXP
 mNbxsWD47JOwc+dO09wOJVR9FrNzEwxrOMo3jihhye4XteiuVLaqUuCzqbW7NrBLHRw+
 NInnSFrAwiPu2m6T8SigjyGt65fE7Jcqg2lNNxPjn7gWv1RBRHfkQdhM6hgcWOYKxUC/
 lqYQ==
X-Gm-Message-State: AOAM530j4Fcxyqy01V1VQXx7kR75pHJNYb9Mc+DwkVFgyxkffsfFF81v
 6HXbqOGX+AB4yRS5PZuz607NsRKG2j9Fmw==
X-Google-Smtp-Source: ABdhPJykp+lxaaGcdX82HGw6i6U1SxsR+4RCLYM9xJ2P7D+cDQN9lVoCdoC8oc8SfhJ4/15Hw0r1ZQ==
X-Received: by 2002:a50:88c6:: with SMTP id d64mr13155125edd.141.1602490904884; 
 Mon, 12 Oct 2020 01:21:44 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:f90c:2907:849f:701c?
 (p200300ea8f006a00f90c2907849f701c.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:f90c:2907:849f:701c])
 by smtp.googlemail.com with ESMTPSA id q3sm10177923edv.17.2020.10.12.01.21.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:21:44 -0700 (PDT)
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
Message-ID: <0d81e0f7-7784-42df-8e10-d0b77ca5b7ee@gmail.com>
Date: Mon, 12 Oct 2020 10:04:11 +0200
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
Subject: [Bridge] [PATCH net-next v2 03/12] net: macsec: use new function
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
 drivers/net/macsec.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index 2b0c8f01d..11ca5fa90 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -3647,30 +3647,10 @@ static int macsec_change_mtu(struct net_device *dev, int new_mtu)
 static void macsec_get_stats64(struct net_device *dev,
 			       struct rtnl_link_stats64 *s)
 {
-	int cpu;
-
 	if (!dev->tstats)
 		return;
 
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


