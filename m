Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B4A30CD4A
	for <lists.bridge@lfdr.de>; Tue,  2 Feb 2021 21:49:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C7638690D;
	Tue,  2 Feb 2021 20:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QWuVBC9BNmq4; Tue,  2 Feb 2021 20:49:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE3AA868F0;
	Tue,  2 Feb 2021 20:49:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C347EC013A;
	Tue,  2 Feb 2021 20:49:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 75D27C013A
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 20:49:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5BAD98690D
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 20:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OSwAObVatYKX for <bridge@lists.linux-foundation.org>;
 Tue,  2 Feb 2021 20:49:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB1EB868F0
 for <bridge@lists.linux-foundation.org>; Tue,  2 Feb 2021 20:49:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E4D3C64F61;
 Tue,  2 Feb 2021 20:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612298976;
 bh=TxCiK9MFWxmE+ojs+vuVEd7RHvf0a7ydvFCMKQDzY4w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gvHI9GG2gYhFGStNFewc6yQADNDHMES2D9l+feHm/lpAZ+6lZ6cYnt/HZW5XK+pqL
 u+UaAzp+dC6s23XTl8Z5+yoAfPybddjxP59FEGKhg5g+vDaz9IBtSM0WeHu1GEOTYM
 ATLZZAkAeE52s39GG/rH04OaKCp5bGK3Tpfyz9DA2m5b+X4Z8AAPigVW2ZxqkBIhTE
 w0An+ydB4Zdkl4eleFz4aCuWPGDobIKuABPQ+eIQdFzTL+iV4Q7QmFCjqgnMX70Tbe
 byyJaA6fzUZZDd2sTEqciqOkBdTwc0Ozl/fk5HD6ZViNZ1Fa35NY9VTxp7rq9QDrfA
 yAvko/bpQWEog==
Date: Tue, 2 Feb 2021 12:49:34 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Message-ID: <20210202124934.65c90df9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210202200649.mc7vpgltoqxf2oni@soft-dev3.localdomain>
References: <20210127205241.2864728-1-horatiu.vultur@microchip.com>
 <20210129190114.3f5b6b44@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <9143d15f-c41d-f0ab-7be0-32d797820384@prevas.dk>
 <20210202115032.6affffdc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210202200649.mc7vpgltoqxf2oni@soft-dev3.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, nikolay@nvidia.com,
 roopa@nvidia.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 0/4] bridge: mrp: Extend
	br_mrp_switchdev_*
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

On Tue, 2 Feb 2021 21:06:49 +0100 Horatiu Vultur wrote:
> The 02/02/2021 11:50, Jakub Kicinski wrote:
> > On Tue, 2 Feb 2021 08:40:02 +0100 Rasmus Villemoes wrote:  
> > > I am planning to test these, but it's unlikely I'll get around to it
> > > this week unfortunately.  
> > 
> > Horatiu are you okay with deferring the series until Rasmus validates?
> > Given none of this HW is upstream now (AFAIU) this is an awkward set
> > to handle. Having a confirmation from Rasmus would make us a little bit
> > more comfortable.  
> 
> It is perfectly fine for me to wait for Rasmus to validate this series.
> Also I have started to have a look how to implement the switchdev calls
> for Ocelot driver. I might have something by the end of the week, but
> lets see.

Great, thanks! Please repost once we got the confirmation.


