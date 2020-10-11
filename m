Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 341A228B166
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B5B786102;
	Mon, 12 Oct 2020 09:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fkw-Tm5N7s_E; Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDDA785F94;
	Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B15A2C0051;
	Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D79F1C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C6EFB87101
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BhQNy0hg3Kk1 for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 19:44:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E007870E9
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 19:44:46 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id i5so14737509edr.5
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 12:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=t6mBah8f7Cbtv+XC/jNYzc0qx0/PRMeIzqK4sBdTEL4=;
 b=rPx+oLh0oDeejrIAjThcqiU01bY+NR/k9Ak/q2AE42r8Gg7pRz3M+Uy3dqcWg/5a0y
 sU6Fu8p8hMgV+DxLdyXWUXNi/WlICSn/J74p/bkR5B8QMpgSNJ7i78VvvbKZTvTWUmUO
 ssIM5hWV8fer6aBzRCJ3ILF+cF6tNEy173XU7jOQnTqZ7TmIGacbgP1mzVWthRP4ZkfF
 n6sU8bfkOVjw3SuQlW30E4i4blnq1TTgch31KKRt16pVpCDmYF4xhrum7E1h5HVGQl0k
 YF6X/p8B3lKJqZLDYJYVza3bSDkW/GBL26emjt3oHzNjoXOna1w3iNOSMd0OYAoxPq2H
 jTiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t6mBah8f7Cbtv+XC/jNYzc0qx0/PRMeIzqK4sBdTEL4=;
 b=Rzj0Ug8udS49T8oVhwRQcnamIBeq7PupJsp26n863eimRmqeAgWG6R4tT99iHiQilF
 wKQ2TNLSG1oqPxYSvzcIo6YsQ5z0gm1werYyrhSDuAAjSydEm40wcOTO/1Lt7qQWEXFY
 PWtP8pzbDj2dQFZjlzmOH8n4Bwcqu3BKu3kBm0ynn1q0MxR9WbPX6jyP1T+O0S+fJ2Sm
 VgsIe7DTw9HdoeOY2cV9nO7pFj51shVZyuEmavfLSFdG/b8T0na+15hEZuyiOm3ZhdZl
 NaQzNlEOQkulXRSeIYRoTjAm2yJRVbEXMFMsa8LFnibvcjOZKP5nPgTSVbc5O6o3kke6
 phOg==
X-Gm-Message-State: AOAM5329r3H8FtFy9aq5UFIO+3G3o17FGwB1N8f3QAH03R/VPqctNndG
 cPj5fRhfFEeof05hE+NMlyENvowc5aNILg==
X-Google-Smtp-Source: ABdhPJze22jzr28NBfMCWqu+FyuYjUDaaRfQd4k9/kJxDSiAjQKlgPzLiPicrGF5qB1uFU4ILMcjtw==
X-Received: by 2002:aa7:dc16:: with SMTP id b22mr10482539edu.252.1602445484162; 
 Sun, 11 Oct 2020 12:44:44 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id s6sm9816029ejx.79.2020.10.11.12.44.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 12:44:43 -0700 (PDT)
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
Message-ID: <b0edee7e-4594-e3b3-ea75-68b4f33509df@gmail.com>
Date: Sun, 11 Oct 2020 21:44:02 +0200
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
Subject: [Bridge] [PATCH net-next 12/12] xfrm: use new function
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


