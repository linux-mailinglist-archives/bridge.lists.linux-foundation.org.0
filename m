Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1618667DE7D
	for <lists.bridge@lfdr.de>; Fri, 27 Jan 2023 08:26:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A018827BB;
	Fri, 27 Jan 2023 07:26:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A018827BB
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=TboVLCAn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ckYjZmUQQaS; Fri, 27 Jan 2023 07:26:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0E31A827DE;
	Fri, 27 Jan 2023 07:26:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E31A827DE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2676C007C;
	Fri, 27 Jan 2023 07:26:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5FECDC002D
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 07:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F08E6113C
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 07:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F08E6113C
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TboVLCAn
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q10MWjxBIqg1 for <bridge@lists.linux-foundation.org>;
 Fri, 27 Jan 2023 07:26:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 542E860B2C
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 542E860B2C
 for <bridge@lists.linux-foundation.org>; Fri, 27 Jan 2023 07:26:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 09C0EB81F83;
 Fri, 27 Jan 2023 07:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 426ADC433D2;
 Fri, 27 Jan 2023 07:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1674804378;
 bh=YRpZqCUJGzHFe4qMsVOvMtBYuFuPJtP4nCTJvR/19U8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TboVLCAn/Zgr2F7n0/AWrfYqTJoIjiwQXuMqPI/rMzBWMMMY41XC3lh+wsQQwm8kH
 saxjDHpJssdcWWb/dQl8Fs5jwfdyMT3AvgMEFIH1mp8Tm6sTW+CohoYlS5Q/y/JXwx
 yasy5MHQLb1UMpUYLxZ5uV5ahWTNJQkPLkxg/VCfPFtUYqatgb7HHo2PMp86J6pzmJ
 zgpc3CeOgWvNvyTCMyxJUGCxQun96LF6aaMEDRqzKWzAucAIhS7SU4t3Qbm0v2uZVP
 WqnklZYL9zqOEQ7UefYCpZkjd6ZyzA26cNWBXW6ji2QNnb+IUYbQz7zm5BulHpDExR
 Q9AtJluRXF+Tg==
Date: Thu, 26 Jan 2023 23:26:15 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230126232615.1901128c@kernel.org>
In-Reply-To: <Y9NgdXk3NLtjG3Mj@unreal>
References: <2919eb55e2e9b92265a3ba600afc8137a901ae5f.1674760340.git.leon@kernel.org>
 <20230126223213.riq6i2gdztwuinwi@skbuf>
 <20230126143723.7593ce0b@kernel.org> <Y9NgdXk3NLtjG3Mj@unreal>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] netlink: provide an ability to set
 default extack message
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

On Fri, 27 Jan 2023 07:26:13 +0200 Leon Romanovsky wrote:
> > That'd be my preference too, FWIW. It's only the offload cases which
> > need this sort of fallback.  
> 
> Of course not, almost any error unwind path which sets extack will need it.

I guess we can come up with scenarios where the new behavior would 
be useful. But the fact is - your patch changes 4 places...

> See devlink as an example

I don't know what part of devlink you mean at a quick scroll.
