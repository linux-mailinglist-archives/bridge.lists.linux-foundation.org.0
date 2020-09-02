Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B07B825B4EA
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 21:58:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 21D0A203E2;
	Wed,  2 Sep 2020 19:58:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cfEhPG3iQ0JB; Wed,  2 Sep 2020 19:58:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A8E0D203A6;
	Wed,  2 Sep 2020 19:58:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 926ADC0051;
	Wed,  2 Sep 2020 19:58:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CA761C0051
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 19:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B31E7872E7
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 19:58:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8R+ABa7UDIhl for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 19:58:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 089A7872E1
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 19:58:48 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id ADD0315634E26;
 Wed,  2 Sep 2020 12:42:00 -0700 (PDT)
Date: Wed, 02 Sep 2020 12:58:46 -0700 (PDT)
Message-Id: <20200902.125846.1328960907241014780.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Wed, 02 Sep 2020 12:42:00 -0700 (PDT)
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v2 00/15] net: bridge: mcast: initial
 IGMPv3 support (part 1)
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

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Wed,  2 Sep 2020 14:25:14 +0300

> Here're the sets that will come next (in order):
>  - Fast path patch-set which adds support for (S, G) mdb entries needed
>    for IGMPv3 forwarding, entry add source (kernel, user-space etc)
>    needed for IGMPv3 entry management, entry block mode needed for
>    IGMPv3 exclude mode. This set will also add iproute2 support for
>    manipulating and showing all the new state.
>  - Selftests patch-set which will verify all IGMPv3 state transitions
>    and forwarding
>  - Explicit host tracking patch-set, needed for proper fast leave and
>    with it fast leave will be enabled for IGMPv3
> 
> Not implemented yet:
>  - Host IGMPv3 support (currently we handle only join/leave as before)
>  - Proper other querier source timer and value updates
>  - IGMPv3/v2 compat (I have a few rough patches for this one)

What about ipv6 support?  The first thing I notice when reading these
patches is the source filter code only supports ipv4.
