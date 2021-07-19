Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D5F3CCF52
	for <lists.bridge@lfdr.de>; Mon, 19 Jul 2021 10:19:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91F6160705;
	Mon, 19 Jul 2021 08:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9-8U4V4uzEbZ; Mon, 19 Jul 2021 08:19:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 44E3B6069F;
	Mon, 19 Jul 2021 08:19:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EBB41C001F;
	Mon, 19 Jul 2021 08:19:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A100C000E
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 08:19:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 179EF8301F
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 08:19:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gb2JpkssuNxD for <bridge@lists.linux-foundation.org>;
 Mon, 19 Jul 2021 08:19:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 58BBC82F13
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 08:19:13 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id w14so22766544edc.8
 for <bridge@lists.linux-foundation.org>; Mon, 19 Jul 2021 01:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tIojDdwExwM2bQG0JEvEesKc8kB3tKWJV3J1f0da5ZA=;
 b=pdHzLs5JGnc0J1gic2eKxFomgPy6zqT0sZNphWWO9rk6ZQr5XoeVwd+EvAce7pSnzl
 pUIE2LXmpy2gAR6WEkKk2qmmtpaTsjwWSMhBTCVNRoud2hIVrFnHzipUadejss5eMiWv
 3mQ0B5ahMAiUUsn4MY92QQzo7jbwH2qMqx6VbDXqW4Uf6OmRns2EdMOpUfj6M3U28t2T
 FD7+wmaDWFfbgtKG64yhGyNB/0v+F46q9C1FEyXJTjt1KuHVb7GxDX3Onq1myrr17Bcc
 SS/5FzCblHim68zec4TUheUDGVsFHiV2D8bolqpNdEp3VK4laF2LZp2n11HMiqNzdYv0
 vc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tIojDdwExwM2bQG0JEvEesKc8kB3tKWJV3J1f0da5ZA=;
 b=EJgdyz9NYNQY5IEgo7Cavc0f8yCVW4aringzbhQZBN/na1jUi1xAdEXBnltY+ZvObJ
 10s9Ea2AMa/btNcrATS0i10CgV/h9vJ7h8igIOCBmAZ2I40hGqmLqGnlmwnRyn8rLdo7
 KLUV6oNh3yb7zciQ+j8o/EHSKbNuCYDtIUeB+JydKSEDUZAdOBvGs4Q1sMleaxXImviT
 7GJwT3FcSn5jMOvcElSwDuiXYrzrdzjAXLc02ZhxaRK/UuKvbW/xGC3FQEofq5xuLXGj
 kCy9FYHLaWbTTGnX+jG7SiwvPnhDaccgCMQgQ5HBf03gPIWOjgvqvpRmIyboXwK8qhVY
 oYFw==
X-Gm-Message-State: AOAM533uLzh58iw/ZzIVtw3RbeSb/cKnRLho7dBQhtg83wHWTAuSuFPV
 s4IAeRVjR9KlPJ39uK09/48=
X-Google-Smtp-Source: ABdhPJzeDbzmVBfzpLsfwhdhZmxQ7LJiAWsUEkvcmmvvUk87xLxPhaDXDuRWKgj3SQzZbgUnBoMpNg==
X-Received: by 2002:aa7:d990:: with SMTP id u16mr32760879eds.263.1626682751332; 
 Mon, 19 Jul 2021 01:19:11 -0700 (PDT)
Received: from skbuf ([82.76.66.29])
 by smtp.gmail.com with ESMTPSA id m15sm7401930edp.73.2021.07.19.01.19.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 01:19:10 -0700 (PDT)
Date: Mon, 19 Jul 2021 11:19:08 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20210719081908.qnxw7gjetwkubxz3@skbuf>
References: <20210718214434.3938850-1-vladimir.oltean@nxp.com>
 <20210718214434.3938850-11-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210718214434.3938850-11-vladimir.oltean@nxp.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ido Schimmel <idosch@idosch.org>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Marek Behun <kabel@blackhole.sk>, Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 bridge@lists.linux-foundation.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, DENG Qingfang <dqfext@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v4 net-next 10/15] net: bridge: switchdev
 object replay helpers for everybody
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

On Mon, Jul 19, 2021 at 12:44:29AM +0300, Vladimir Oltean wrote:
> Note that:
> (c) I do not expect a lot of functional change introduced for drivers in
>     this patch, because:
>     - nbp_vlan_init() is called _after_ netdev_master_upper_dev_link(),
>       so br_vlan_replay() should not do anything for the new drivers on
>       which we call it. The existing drivers where there was even a
>       slight possibility for there to exist a VLAN on a bridge port
>       before they join it are already guarded against this: mlxsw and
>       prestera deny joining LAG interfaces that are members of a bridge.
>     - br_fdb_replay() should now notify of local FDB entries, but I
>       patched all drivers except DSA to ignore these new entries in
>       commit 2c4eca3ef716 ("net: bridge: switchdev: include local flag
>       in FDB notifications"). Driver authors can lift this restriction
>       as they wish.
>     - br_mdb_replay() should now fix the issue described in commit
>       2c4eca3ef716 ("net: bridge: switchdev: include local flag in FDB
>       notifications") for all drivers, I don't see any downside.

I really meant commit 4f2673b3a2b6 ("net: bridge: add helper to replay
port and host-joined mdb entries"), sorry for the copy-pasta mistake.
