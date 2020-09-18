Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD9227087F
	for <lists.bridge@lfdr.de>; Fri, 18 Sep 2020 23:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0839387859;
	Fri, 18 Sep 2020 21:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HAE-8Cs8j6IU; Fri, 18 Sep 2020 21:47:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id BCCC18785C;
	Fri, 18 Sep 2020 21:47:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9F40BC0051;
	Fri, 18 Sep 2020 21:47:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B4746C0051
 for <bridge@lists.linux-foundation.org>; Fri, 18 Sep 2020 21:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 921AF87AFA
 for <bridge@lists.linux-foundation.org>; Fri, 18 Sep 2020 21:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVxpd4t6Nrce for <bridge@lists.linux-foundation.org>;
 Fri, 18 Sep 2020 21:47:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA17387AEA
 for <bridge@lists.linux-foundation.org>; Fri, 18 Sep 2020 21:47:24 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8857A15A01A79;
 Fri, 18 Sep 2020 14:30:35 -0700 (PDT)
Date: Fri, 18 Sep 2020 14:47:21 -0700 (PDT)
Message-Id: <20200918.144721.348413288598834487.davem@davemloft.net>
To: nikolay@nvidia.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <9ab2973de2c0fb32de7fbc4ae823a820cd48a769.camel@nvidia.com>
References: <20200912.183437.1205152743307947529.davem@davemloft.net>
 <CAMuHMdXGmKYKWtkFCV0WmYnY4Gn--Bbz-iSX76oc-UNNrzCMuw@mail.gmail.com>
 <9ab2973de2c0fb32de7fbc4ae823a820cd48a769.camel@nvidia.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Fri, 18 Sep 2020 14:30:36 -0700 (PDT)
Cc: andrew@lunn.ch, f.fainelli@gmail.com, netdev@vger.kernel.org,
 yoshihiro.shimoda.uh@renesas.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, geert@linux-m68k.org, roopa@nvidia.com,
 kuba@kernel.org, gaku.inami.xh@renesas.com, hkallweit1@gmail.com
Subject: Re: [Bridge] [PATCH] Revert "net: linkwatch: add check for
 netdevice being present to linkwatch_do_dev"
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

From: Nikolay Aleksandrov <nikolay@nvidia.com>
Date: Fri, 18 Sep 2020 12:35:02 +0000

> Thanks for the analysis, I don't see any issues with checking if the device
> isn't present. It will have to go through some testing, but no obvious
> objections/issues. Have you tried if it fixes your case?
> I have briefly gone over drivers' use of net_device_detach(), mostly it's used
> for suspends, but there are a few cases which use it on IO error or when a
> device is actually detaching (VF detach). The vlan port event is for vlan
> devices on top of the bridge when BROPT_VLAN_BRIDGE_BINDING is enabled and their
> carrier is changed based on vlan participating ports' state.

There are two things to resolve:

1) Why does the bridge need to get a change event for devices which have
   not fully resumed yet?

2) What kind of link state change is happening on devices which are not
   currently fully resumed yet?

Really this whole situation is still quite mysterious to me.

If the driver (or the PHY library it is using, etc.) is emitting link
state changes before it marks itself as "present", that's the real
bug.
