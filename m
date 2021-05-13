Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD7937F8D7
	for <lists.bridge@lfdr.de>; Thu, 13 May 2021 15:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3760740333;
	Thu, 13 May 2021 13:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oCR_yo6eE_5d; Thu, 13 May 2021 13:34:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC17D40369;
	Thu, 13 May 2021 13:34:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4D608C001C;
	Thu, 13 May 2021 13:34:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 86F55C0001
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 13:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6931C83886
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 13:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ctvZlWW-geW7 for <bridge@lists.linux-foundation.org>;
 Thu, 13 May 2021 13:34:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 684A383880
 for <bridge@lists.linux-foundation.org>; Thu, 13 May 2021 13:34:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 464743E8F5; Thu, 13 May 2021 15:34:26 +0200 (CEST)
Date: Thu, 13 May 2021 15:34:24 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20210513133423.GB2222@otheros>
References: <20210512231941.19211-1-linus.luessing@c0d3.blue>
 <c5634f19-f9f3-5966-a5b3-a0a64ca4534b@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c5634f19-f9f3-5966-a5b3-a0a64ca4534b@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Last-TLS-Session-Version: TLSv1.2
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v3 00/11] net: bridge: split IPv4/v6
 mc router state and export for batman-adv
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

On Thu, May 13, 2021 at 03:02:13PM +0300, Nikolay Aleksandrov wrote:
> Nice work overall, thank you. I hope it was tested well. :)
> It'd be great if later you could add some selftests.
> 
> Cheers,
>  Nik

Hi Nikolay,

I think I found a way now to better deal with the protocol
specific hlist_for_each_entry(), by using hlist_for_each()
and a helper function, to reduce the duplicate code
with br_{ip4,ip6}_multicast_get_rport_slot() as you suggested
(and also removing duplicate code with 
br_{ip4,ip6}_multicast_mark_router()) and reworked patches 7
and 9 a bit for that...

Sorry for the inconvience and my bad timing with your reviews. But
thanks a lot for all your valuable feedback!

Also netdevbpf patchwork had a few more remarks, they should
hopefully be fixed now, too.

Regards, Linus
