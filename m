Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AD24DA04C
	for <lists.bridge@lfdr.de>; Tue, 15 Mar 2022 17:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A42EA84297;
	Tue, 15 Mar 2022 16:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9JqGcIbEADKU; Tue, 15 Mar 2022 16:44:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4563B84299;
	Tue, 15 Mar 2022 16:44:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0E9EAC0033;
	Tue, 15 Mar 2022 16:44:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B6746C000B
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:44:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91D8B403A2
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I8U9DncA9eAt for <bridge@lists.linux-foundation.org>;
 Tue, 15 Mar 2022 16:44:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3521E40217
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 16:44:45 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id qa43so42385185ejc.12
 for <bridge@lists.linux-foundation.org>; Tue, 15 Mar 2022 09:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g9frEwzbQdtp2pIYSY0lHpkIaw2YK5YeWDtzUeh3LJo=;
 b=YW8ujBQd5Y2ib1rY1s0oCo5I4Gk2J9cvJzhFA7N9/bnCJo3e2mT4VsdllVnZJ7wj3E
 iTzevAY+YxPHERoDhsltnqkqAk1Tdqc8cxZkJtom2Cy/TsJUykIQrAVAh5mdjgdZ5TQ+
 0PEuuCbnaugdhvpcI7n0K4usinvTxVvDgR5slcXDqaxfvfKA1GgYkvtVC2nNrntUlvC4
 0FHoR93hpkjuYyUENEmwIq+34cQvR7rK6tvTF2nWXkgwqrwIQFJbFkT6tWiqTK8hipeB
 Ko33bAOcvssV3ExDRi1mACftgPGIhVpnLTbBRbxj4X4lveSzc1YBE++4gFFPxoIrteAI
 esNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g9frEwzbQdtp2pIYSY0lHpkIaw2YK5YeWDtzUeh3LJo=;
 b=2coSiO4JWreIhBrgMQdehiOaNZ/dA5bPkIghCXU5EkXqsL1G5ZXmb20ZWJ2vOZics3
 4dqWMDCf/6a4C272TW/zrAN12TCBvyWrp7j4LPRBbjvFyy1qULUfICifI67T8DzA1Dle
 p2oEngK9j8mRmrnRmS/wlgpMMdFl5LIzZzKU/xyW4rg+3Ur0yIO3FeTzkSgEoo8SRbDD
 kJ4Ly+oJvR3H38goNead34QfYq/kpdifMUZl7H2/E+snRLoaflxE+GFtgG+PZLm9+BmW
 5wi50xSCyt4tqc9nD+y5wF116ztoJPynfCDI+rpiF8EJU+Zx+KxzWbrvKNj2iPcBRs5i
 ISOA==
X-Gm-Message-State: AOAM5325mD8p0RTkjFpWtPwJuUv1kY+Rl5Lps2fZB5msv26I74ZvviZV
 koV0KvUeA+YpyMJKT2RbiJQ=
X-Google-Smtp-Source: ABdhPJxNHRbkmNw939PW4oHDhZHgg9mYO+5MS8ksB83Ig9tY3Im3/17D5S6Hj0Hn8HUwrlQdn6JOvQ==
X-Received: by 2002:a17:906:9b94:b0:6db:472:db87 with SMTP id
 dd20-20020a1709069b9400b006db0472db87mr23954476ejc.624.1647362683249; 
 Tue, 15 Mar 2022 09:44:43 -0700 (PDT)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 d7-20020a50cd47000000b004187eacb4d6sm4258072edj.37.2022.03.15.09.44.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 09:44:42 -0700 (PDT)
Date: Tue, 15 Mar 2022 18:44:41 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220315164441.sz5jyooa3glnym5p@skbuf>
References: <20220315002543.190587-1-tobias@waldekranz.com>
 <20220315002543.190587-13-tobias@waldekranz.com>
 <20220315164249.sjgi6wbdpgehc6m6@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220315164249.sjgi6wbdpgehc6m6@skbuf>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v4 net-next 12/15] net: dsa: Handle MST state
	changes
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

On Tue, Mar 15, 2022 at 06:42:49PM +0200, Vladimir Oltean wrote:
> Is there a requirement in br_mst_set_state() to put the switchdev
> notifier at the end instead of at the beginning?
> 
> I'm tempted to ask you to introduce br_mst_get_state(), then assign
> old_state = br_mst_get_state(dsa_port_bridge_dev_get(dp), state->msti),

dsa_port_to_bridge_port(dp), excuse me.

> then perform the VLAN fast age only on the appropriate state transitions,
> just like the regular fast age.
