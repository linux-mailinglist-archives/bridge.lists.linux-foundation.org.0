Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE7B525672
	for <lists.bridge@lfdr.de>; Thu, 12 May 2022 22:38:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D5C1827DE;
	Thu, 12 May 2022 20:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tHqggdsy-TqZ; Thu, 12 May 2022 20:38:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 414CF82848;
	Thu, 12 May 2022 20:38:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F175CC0081;
	Thu, 12 May 2022 20:38:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5C261C002D
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 20:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4460760767
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 20:38:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lunn.ch
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ElOcxqrRr_4k for <bridge@lists.linux-foundation.org>;
 Thu, 12 May 2022 20:38:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1522D60634
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 20:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=S/UI/eN4HwCCiWLOZ1UqE0EVsAjwaLVp/H45PVQBemM=; b=iz0EavQxhypRm4Zsnq7107JJrz
 tvZaMj0jceqW8uPxBqWzA/GCljz7vWfRAWorUuOYwQsPkF01lPm2Cgqm8VGvS0CbOKZWFdea6Tth3
 l3XIJ91Hv327qn1J5kFTumo78GwXSpcDX74djDySbpqZoFWoUNx+c1WNS2GesReapZ8E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1npFZT-002VEf-27; Thu, 12 May 2022 22:38:03 +0200
Date: Thu, 12 May 2022 22:38:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <Yn1wK78zKzcgzg15@lunn.ch>
References: <20220505225904.342388-1-andrew@lunn.ch>
 <20220506143644.mzfffht44t3glwci@skbuf> <Ynd213m/0uXfjArm@shredder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ynd213m/0uXfjArm@shredder>
Cc: Ido Schimmel <idosch@mellanox.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Nikolay Aleksandrov <razor@blackwall.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 netdev <netdev@vger.kernel.org>
Subject: Re: [Bridge] [PATCH RFC] net: bridge: Clear offload_fwd_mark when
 passing frame up bridge interface.
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

> I like Andrew's patch because it is the Rx equivalent of
> br_switchdev_frame_unmark() in br_dev_xmit(). However, if we go with the
> second option, it should allow us to remove the clearing of the mark in
> the Tx path as the control block is cleared in the Tx path since commit
> fd65e5a95d08 ("net: bridge: clear bridge's private skb space on xmit").
> 
> I don't know how far back Nik's patch was backported and I don't know
> how far back Andrew's patch will be backported, so it might be best to
> submit Andrew's patch to net as-is and then in net-next change
> nbp_switchdev_allowed_egress() and remove br_switchdev_frame_unmark()
> from both the Rx and Tx paths.
> 
> Anyway, I have applied this patch to our tree for testing. Will report
> tomorrow in case there are any regressions.

Hi Ido

Did your testing find any issues?

Thanks
	Andrew
