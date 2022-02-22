Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2254C01E0
	for <lists.bridge@lfdr.de>; Tue, 22 Feb 2022 20:15:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE21E81570;
	Tue, 22 Feb 2022 19:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Gpxj9CdaLA0; Tue, 22 Feb 2022 19:15:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 42432812F1;
	Tue, 22 Feb 2022 19:15:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E98BEC0073;
	Tue, 22 Feb 2022 19:15:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8B452C0011
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 19:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79331812B7
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 19:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ekfSgCIBR0NJ for <bridge@lists.linux-foundation.org>;
 Tue, 22 Feb 2022 19:15:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 913B2812A8
 for <bridge@lists.linux-foundation.org>; Tue, 22 Feb 2022 19:15:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 52364615D5;
 Tue, 22 Feb 2022 19:15:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23712C340EF;
 Tue, 22 Feb 2022 19:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645557324;
 bh=U9jeNgWTnREJMOGMhNcgz9fVNyZ6v4l6J7nfG6DOUbE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kWXWCyLxNVANdV5eeEktWoPfKTJphflfJSUcU4jZVaHQnJS0AraA+Bh2WccNDGPND
 Pti8QeNuH9VF2E7xzHou4j9QEiodZABeC+pcnhnsuoPclcK0Ldy1wmzGaFsdMbkLWT
 gIYz/w3E5EcBBxUBy6ui1nhgwVxRpq4WfiyNESnOHNnsu0dTIPVY+NQvUFhlEzu/ss
 wMrfr3tH9sJyyadZck4iJJdBRodB93wuyZd05mJUmaoZtOZiQnpa4THmg4kF4nTD80
 fmGqUM2ffmFxPPSk3TiZlvFEFWzaIxeUwSYKjK1lJCYYntMBNODSm3spMFLl9rWQUy
 a4FMqFCBPLjpQ==
Date: Tue, 22 Feb 2022 11:15:23 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220222111523.030ab13d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
References: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Stephen Suryaputra <ssuryaextr@gmail.com>,
 Po-Hsu Lin <po-hsu.lin@canonical.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 0/5] Add support for locked bridge
 ports (for 802.1X)
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

On Tue, 22 Feb 2022 14:28:13 +0100 Hans Schultz wrote:
> This series starts by adding support for SA filtering to the bridge,
> which is then allowed to be offloaded to switchdev devices. Furthermore
> an offloading implementation is supplied for the mv88e6xxx driver.
> 
> Public Local Area Networks are often deployed such that there is a
> risk of unauthorized or unattended clients getting access to the LAN.
> To prevent such access we introduce SA filtering, such that ports
> designated as secure ports are set in locked mode, so that only
> authorized source MAC addresses are given access by adding them to
> the bridges forwarding database. Incoming packets with source MAC
> addresses that are not in the forwarding database of the bridge are
> discarded. It is then the task of user space daemons to populate the
> bridge's forwarding database with static entries of authorized entities.
> 
> The most common approach is to use the IEEE 802.1X protocol to take
> care of the authorization of allowed users to gain access by opening
> for the source address of the authorized host.
> 
> With the current use of the bridge parameter in hostapd, there is
> a limitation in using this for IEEE 802.1X port authentication. It
> depends on hostapd attaching the port on which it has a successful
> authentication to the bridge, but that only allows for a single
> authentication per port. This patch set allows for the use of
> IEEE 802.1X port authentication in a more general network context with
> multiple 802.1X aware hosts behind a single port as depicted, which is
> a commonly used commercial use-case, as it is only the number of
> available entries in the forwarding database that limits the number of
> authenticated clients.
> 
>       +--------------------------------+
>       |                                |
>       |      Bridge/Authenticator      |
>       |                                |
>       +-------------+------------------+
>        802.1X port  |
>                     |
>                     |
>              +------+-------+
>              |              |
>              |  Hub/Switch  |
>              |              |
>              +-+----------+-+
>                |          |
>             +--+--+    +--+--+
>             |     |    |     |
>     Hosts   |  a  |    |  b  |   . . .
>             |     |    |     |
>             +-----+    +-----+
> 
> The 802.1X standard involves three different components, a Supplicant
> (Host), an Authenticator (Network Access Point) and an Authentication
> Server which is typically a Radius server. This patch set thus enables
> the bridge module together with an authenticator application to serve
> as an Authenticator on designated ports.
> 
> 
> For the bridge to become an IEEE 802.1X Authenticator, a solution using
> hostapd with the bridge driver can be found at
> https://github.com/westermo/hostapd/tree/bridge_driver .
> 
> 
> The relevant components work transparently in relation to if it is the
> bridge module or the offloaded switchcore case that is in use.

You still haven't answer my question. Is the data plane clear text in
the deployment you describe?
