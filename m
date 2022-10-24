Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8F760B383
	for <lists.bridge@lfdr.de>; Mon, 24 Oct 2022 19:08:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10DC5812E4;
	Mon, 24 Oct 2022 17:08:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10DC5812E4
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=Zu+kqShR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIzbSMnUwOdS; Mon, 24 Oct 2022 17:08:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9F2298137B;
	Mon, 24 Oct 2022 17:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F2298137B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2227AC007C;
	Mon, 24 Oct 2022 17:08:09 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 223E7C002D
 for <bridge@lists.linux-foundation.org>; Mon, 24 Oct 2022 17:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E42A0405DB
 for <bridge@lists.linux-foundation.org>; Mon, 24 Oct 2022 17:08:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E42A0405DB
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Zu+kqShR
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ldX2mb_eXQu for <bridge@lists.linux-foundation.org>;
 Mon, 24 Oct 2022 17:08:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDB31405BC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDB31405BC
 for <bridge@lists.linux-foundation.org>; Mon, 24 Oct 2022 17:08:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9EAE5614A7;
 Mon, 24 Oct 2022 17:08:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0086C433C1;
 Mon, 24 Oct 2022 17:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666631284;
 bh=qWgfUtE4UN4/iCrWAyctAyzwt74lHMnUej7miAfWozs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Zu+kqShRcjC8nRPj+ZPavRcjYG48rUxYr/xtUKVxq/tVD3qP4BQ8938gc4JRHh+sQ
 wUEoCQstYbywkycJbXo1Gx9NudXpA31ePGv1ymKF7AziAkUafYLdFNwgeHV1QImOEK
 JFwJgG3tBQ+MqnkxeUpIBTBFzGPMlWiBuQYZJPplfyUZSfiekZhXplF9BCf4TEz5cR
 BoSuO18xOEhTlK5W4tnJUnjIc+5268Ad/+OGpyLVWX/qO+ewTt1u6BRu/hvzFkn3Kl
 CbW0He1dZ/toR97u7dANoXILUr18MDMSTzT2iOWvvh3xihpjn8Gr15icEr7MzFt17l
 NwXsJuVW8BO6Q==
Date: Mon, 24 Oct 2022 10:08:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@kapio-technology.com
Message-ID: <20221024100801.6c391ff9@kernel.org>
In-Reply-To: <7690b7f836b144b60f60b3b68d3bf784@kapio-technology.com>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-3-netdev@kapio-technology.com>
 <Y1FHuXE+X/V9aRvh@shredder>
 <7690b7f836b144b60f60b3b68d3bf784@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Joachim Wiberg <troglobit@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Ivan Vecera <ivecera@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Florent Fourcot <florent.fourcot@wifirst.fr>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Ido Schimmel <idosch@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@resnulli.us>, Amit Cohen <amcohen@nvidia.com>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Hans Schultz <schultz.hans@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Vladimir Oltean <olteanv@gmail.com>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 02/12] net: bridge: add blackhole
 fdb entry flag
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

On Sun, 23 Oct 2022 07:32:02 +0200 netdev@kapio-technology.com wrote:
> >> @@ -1140,7 +1148,7 @@ static int __br_fdb_add(struct ndmsg *ndm, 
> >> struct net_bridge *br,
> >>  		err = br_fdb_external_learn_add(br, p, addr, vid, true);
> >>  	} else {
> >>  		spin_lock_bh(&br->hash_lock);
> >> -		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, nfea_tb);
> >> +		err = fdb_add_entry(br, p, addr, ndm, nlh_flags, vid, ext_flags, 
> >> nfea_tb);  
> > 
> > I believe the preference is to wrap to 80 columns when possible.  
> 
> Very strange... since I ran checkpatch.pl from the net-next kernel 
> itself and it did not
> give me any warnings about 80 columns, but rather said 'patch is ready 
> for submission'.
> 
> As this is silent, could it be some missing python plugins or something 
> to do with perl?

I run:

./scripts/checkpatch.pl --strict --max-line-length=80

