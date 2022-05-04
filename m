Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E89C519CC3
	for <lists.bridge@lfdr.de>; Wed,  4 May 2022 12:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56DF561066;
	Wed,  4 May 2022 10:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vF9I9Sn8cOWU; Wed,  4 May 2022 10:17:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AE87F60EE4;
	Wed,  4 May 2022 10:17:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 713E1C007E;
	Wed,  4 May 2022 10:17:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ABFECC0032
 for <bridge@lists.linux-foundation.org>; Wed,  4 May 2022 10:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B73B82538
 for <bridge@lists.linux-foundation.org>; Wed,  4 May 2022 10:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 39jYJ_LEnRXe for <bridge@lists.linux-foundation.org>;
 Wed,  4 May 2022 10:17:10 +0000 (UTC)
X-Greylist: delayed 00:10:56 by SQLgrey-1.8.0
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B9B98248F
 for <bridge@lists.linux-foundation.org>; Wed,  4 May 2022 10:17:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id E10F54116B; Wed,  4 May 2022 12:06:02 +0200 (CEST)
Date: Wed, 4 May 2022 12:06:00 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Kevin Mitchell <kevmitch@arista.com>
Message-ID: <YnJQCIKgriI3kjFc@sellars>
References: <20220405235117.269511-1-kevmitch@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220405235117.269511-1-kevmitch@arista.com>
X-Last-TLS-Session-Version: TLSv1.3
Cc: "David S. Miller" <davem@davemloft.net>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 gal@nvidia.com, bridge@lists.linux-foundation.org,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 Jozsef Kadlecsik <kadlec@netfilter.org>, coreteam@netfilter.org,
 netfilter-devel@vger.kernel.org, Nikolay Aleksandrov <nikolay@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Schiffer <mschiffer@universe-factory.net>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [PATCH v2 0/1] UDP traceroute packets with no checksum
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

On Tue, Apr 05, 2022 at 04:51:15PM -0700, Kevin Mitchell via Bridge wrote:
> This is v2 of https://lkml.org/lkml/2022/1/14/1060
> 
> That patch was discovered to cause problems with UDP tunnels as
> described here:
> 
> https://lore.kernel.org/netdev/7eed8111-42d7-63e1-d289-346a596fc933@nvidia.com/
> 
> This version addresses the issue by instead explicitly handling zero UDP
> checksum in the nf_reject_verify_csum() helper function.
> 
> Unlike the previous patch, this one only allows zero UDP checksum in
> IPv4. I discovered that the non-netfilter IPv6 path would indeed drop
> zero UDP checksum packets, so it's probably best to remain consistent.

Are you sure that a UDP zero checksum is not working for IPv6
packets? We are using it here without any issues with VXLAN
tunnels.

Yes, the original RFC did not allow UDP zero checksums in IPv6
packets, but I believe this has changed:

https://www.rfc-editor.org/rfc/rfc6936
(https://www.ietf.org/archive/id/draft-ietf-6man-udpzero-01.html)

Regards, Linus
