Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E68A84C1869
	for <lists.bridge@lfdr.de>; Wed, 23 Feb 2022 17:20:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CBB381314;
	Wed, 23 Feb 2022 16:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qxFUgUQ9lK4w; Wed, 23 Feb 2022 16:20:31 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 1BFE7827DE;
	Wed, 23 Feb 2022 16:20:31 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B09E0C0073;
	Wed, 23 Feb 2022 16:20:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 311BAC0011
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 16:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16C894022C
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 16:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rVkNVdrTbEto for <bridge@lists.linux-foundation.org>;
 Wed, 23 Feb 2022 16:20:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C13C40110
 for <bridge@lists.linux-foundation.org>; Wed, 23 Feb 2022 16:20:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 31CDF61953;
 Wed, 23 Feb 2022 16:20:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4853C340F0;
 Wed, 23 Feb 2022 16:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645633226;
 bh=iwzxRJ3WVWy1eMmDfafaRhAbMtXzmT+t5EvSTlNcAhw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=g4BRZ7ssHQH3BTFNVPjOS3ckd3nmgvpjeaE6eLm4+XUXP0p5axjNrcGTtMfzhmrq7
 Nhcbf3g9R8hNq0paOiE1nVkEqAotlMxe0EaQZQadN0Uhz+KTv7PmTPenDkuPRDcuQR
 Tt1uJZ4G4Kq6w+taKyNr/4T9SwKhCu8dSVdDotMfP28fc1ubQRb7y84aXgqkPWSaLi
 9fl+THewyu4XI3Mmd4yN5JxIfYW9UzLW+ETSwyjh2IAtNPq2MhczbUAgXaxV6LgxEV
 N1JZPlcngeU5p4x7XKaQM51n98/bb2knKdm8kOW7TlJOqAK2PEQ2IiLNdXp7jQPJZJ
 h1T0z0snwRKCQ==
Date: Wed, 23 Feb 2022 08:20:24 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220223082024.6ab51265@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <86y222vuuc.fsf@gmail.com>
References: <20220222132818.1180786-1-schultz.hans+netdev@gmail.com>
 <20220222111523.030ab13d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <86y222vuuc.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Petr Machata <petrm@nvidia.com>, Andrew Lunn <andrew@lunn.ch>,
 Baowen Zheng <baowen.zheng@corigine.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Cohen <amcohen@nvidia.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
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

On Wed, 23 Feb 2022 09:40:59 +0100 Hans Schultz wrote:
> > You still haven't answer my question. Is the data plane clear text in
> > the deployment you describe?  
> 
> Sorry, I didn't understand your question in the first instance. So as
> 802.1X is only about authentication/authorization, the port when opened
> for a host is like any other switch port and thus communication is in
> the clear.

Alright, thanks for clarifying!

> I have not looked much into macsec (but know ipsec), and that is a
> crypto (key) based connection mechanism, but that is a totally different
> ballgame, and I think it would for most practical cases require hardware 
> encryption.
