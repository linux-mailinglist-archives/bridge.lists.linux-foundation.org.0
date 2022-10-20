Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870FF606C46
	for <lists.bridge@lfdr.de>; Fri, 21 Oct 2022 01:58:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAB6B405D2;
	Thu, 20 Oct 2022 23:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAB6B405D2
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=jGsALBlO
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4us2QGI6kTMf; Thu, 20 Oct 2022 23:58:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 546FE400D9;
	Thu, 20 Oct 2022 23:58:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 546FE400D9
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D93A5C0078;
	Thu, 20 Oct 2022 23:58:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C1F0FC002D
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 23:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82C5A405D2
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 23:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82C5A405D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Y-ib7dMhGHr for <bridge@lists.linux-foundation.org>;
 Thu, 20 Oct 2022 23:58:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93368400D9
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93368400D9
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 23:58:07 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id m23so1602963lji.2
 for <bridge@lists.linux-foundation.org>; Thu, 20 Oct 2022 16:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jNzg2CMoVd1I4LouGMN20H+N7eFasZcE1vbuzP9T/xs=;
 b=jGsALBlOoX8f5qbY1dWPMgFbqX+TDJEuFICi8yi8v6ey26All+ybVMGus3u4o7CjtB
 2MlnTxAcMRNfrsJedjfk/cuF/95qZGp4fH+fJXWDNJozR5YTGoA10Lc9vs3BOIr2lmMI
 dxTsF38Tb8LG0uhRUly/piC5DxyLD8p/1KuWo8oLhwv7A3K8/GykppxaQsk8JSb+9BAA
 wNpb5AxxxGQlOKS4/adV7zfUH6dG8tJdUg8eyCGmIbl0tA3XCun6GVm7+XnY1YWsmZpG
 Kl/yNyKO6CH+FIURbM45H9nWjE6K3Ad/kHxcMcsi7kjVibiY8S1pBQQAlaEaeYR2oKp3
 6ghw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jNzg2CMoVd1I4LouGMN20H+N7eFasZcE1vbuzP9T/xs=;
 b=pCOeygcleRy58AwfjejBWT4cJhxQgbkg3Z9GxUHui0jjLH1Ov7ZmFqhtOIICUSgpoq
 n0y4xINi9fhMOZISkGKaht6QjetDdycqPZXsqJJ9K0Grqa4Fno6dM/MSg+8xPYWR3MhL
 0VXKR9vPzkyNY50+8X6XPch0J4XFRTRUdSAg5P958KIrzQNp8ysq+wDfWXcYuQfcOqiD
 JUV0p1LELlRulslA3RRjewTuWhe23NhO8tKnh1Ymx6lnY64S2eIvkUQuX5FmTHQ1tY5e
 C/Irjct5lajx1gfVSME59c6NDX6+9f1d9Dafx/Zl23/VQNTLwhRzMErEql9GHU1Y/tvj
 ZCTQ==
X-Gm-Message-State: ACrzQf3iIbMl5DUJmIkreptIvTKoufj49hVY50UPS2PkVh7cGvJ2CH9f
 S+6bI6dA7zaZPkXSo4IC50jHS9oproLoRg==
X-Google-Smtp-Source: AMsMyM6ssiTPx2XFwPqjIn7V795i4Bu9+MHPdpCMZkdeH3IV8p2KB475oEPOc+uSDgaRj3mmcC4d7g==
X-Received: by 2002:a17:907:86a2:b0:791:910e:cce4 with SMTP id
 qa34-20020a17090786a200b00791910ecce4mr13251967ejc.36.1666310274807; 
 Thu, 20 Oct 2022 16:57:54 -0700 (PDT)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 x24-20020a170906b09800b0078d46aa3b82sm10822041ejy.21.2022.10.20.16.57.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Oct 2022 16:57:53 -0700 (PDT)
Date: Fri, 21 Oct 2022 02:57:50 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20221020235750.ql5v55y3knnxofna@skbuf>
References: <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-1-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221018165619.134535-6-netdev@kapio-technology.com>
 <20221020130224.6ralzvteoxfdwseb@skbuf> <Y1FMAI9BzDRUPi5Y@shredder>
 <20221020133506.76wroc7owpwjzrkg@skbuf>
 <8456155b8e0f6327e4fb595c7a08399b@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8456155b8e0f6327e4fb595c7a08399b@kapio-technology.com>
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
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>,
 Landen Chao <Landen.Chao@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Jiri Pirko <jiri@resnulli.us>, Amit Cohen <amcohen@nvidia.com>,
 Christian Marangi <ansuelsmth@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Hans Schultz <schultz.hans@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Yuwei Wang <wangyuweihx@gmail.com>, Petr Machata <petrm@nvidia.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v8 net-next 05/12] net: dsa: propagate the
 locked flag down through the DSA layer
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

On Thu, Oct 20, 2022 at 08:47:39PM +0200, netdev@kapio-technology.com wrote:
> Just to add to it, now that there is a u16 for flags in the bridge->driver
> direction, making it easier to add such flags, I expect that for the
> mv88e6xxx driver there shall be a 'IS_DYNAMIC' flag also, as authorized
> hosts will have their authorized FDB entries added with dynamic entries...

With what is implemented in this patchset, the MAB daemon uses static
FDB entries for authorizations, just like the selftests, right? That's
the only thing that works.

> Now as the bridge will not be able to refresh such authorized FDB entries
> based on unicast incoming traffic on the locked port in the offloaded case,
> besides we don't want the CPU to do such in this case anyway,

..because the software bridge refreshes the FDB entry based on the traffic
it sees, and the hardware port refreshes the corresponding ATU entry
based on the traffic *it* sees, and the 2 are not in sync because most
of the traffic is autonomously forwarded, causing the FDB to be
refreshed more often in hardware than in software..

> to keep the authorized line alive without having to reauthorize in
> like every 5 minutes, the driver needs to do the ageing (and refreshing)
> of the dynamic entry added from userspace.

You're saying "now [...] to keep the authorized line alive [...], the
driver needs to do the [...] refreshing of the dynamic [FDB] entry".

Can you point me to the code where that is done now?

Or perhaps I'm misunderstanding and it is a "future now"...

> When the entry "ages" out, there is the HoldAt1 feature and Age Out
> Violations that should be used to tell userspace (plus bridge) that
> this authorization has been removed by the driver as the host has gone
> quiet.

So this is your proposal for how a dynamic FDB entry could be offloaded.

Have you given any thought to how can we prevent the software FDB entry
from ageing out first, and causing the hardware FDB entry to be removed
too, through the ensuing switchdev notification?

> So all in all, there is the need of another flag from
> userspace->bridge->driver, telling that we want a dynamic ATU entry (with
> mv88e6xxx it will start at age 7).

Sorry for the elementary question, but what is gained from making the
authorized FDB entries dynamic in the bridge? You don't have to
reauthorize every 5 minutes even with the current implementation; you
could make the FDB entries static. The ability for authorized stations
to roam? This is why the authorizations are removed every 5 minutes,
to see if anybody is still there? Who removes the authorizations in the
implementation with the currently proposed patch set? The MAB daemon,
right?


Could you please present a high level overview of how you want things to
look in the end and how far you are along that line? Maybe a set of user
space + kernel repos where everything is implemented and works?
