Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE6520B98C
	for <lists.bridge@lfdr.de>; Fri, 26 Jun 2020 22:00:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9F1787CDA;
	Fri, 26 Jun 2020 20:00:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhAimteVrJ6f; Fri, 26 Jun 2020 20:00:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9ACD287CE7;
	Fri, 26 Jun 2020 20:00:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7AF47C016F;
	Fri, 26 Jun 2020 20:00:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CA91AC016F
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 20:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A469A2051C
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 20:00:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id avXmAAPZiKr5 for <bridge@lists.linux-foundation.org>;
 Fri, 26 Jun 2020 20:00:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 7EC2D204CF
 for <bridge@lists.linux-foundation.org>; Fri, 26 Jun 2020 20:00:34 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D72CF118EE359;
 Fri, 26 Jun 2020 13:00:32 -0700 (PDT)
Date: Fri, 26 Jun 2020 13:00:29 -0700 (PDT)
Message-Id: <20200626.130029.89317239393030387.davem@davemloft.net>
To: horatiu.vultur@microchip.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200626073349.3495526-1-horatiu.vultur@microchip.com>
References: <20200626073349.3495526-1-horatiu.vultur@microchip.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 26 Jun 2020 13:00:33 -0700 (PDT)
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next v3 0/2] bridge: mrp: Extend MRP
 netlink interface with IFLA_BRIDGE_MRP_CLEAR
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

From: Horatiu Vultur <horatiu.vultur@microchip.com>
Date: Fri, 26 Jun 2020 09:33:47 +0200

> This patch series extends MRP netlink interface with IFLA_BRIDGE_MRP_CLEAR.
> To allow the userspace to clear all MRP instances when is started. The
> second patch in the series fix different sparse warnings.
> 
> v3:
>   - add the second patch to fix sparse warnings

These changes are completely unrelated.

The sparse stuff should probably be submitted to 'net'.

And I have to ask why you really need a clear operation.  Routing
daemons come up and see what routes are installed, and update their
internal SW tables to match.  This not only allows efficient restart
after a crash, but it also allows multiple daemons to work
cooperatively as an agent for the same forwarding/routing table.

Your usage model limits one daemon to manage the table and that
limitation is completely unnecessary.

Furthermore, even in a one-daemon scenerio, it's wasteful to throw
away all the work the previous daemon did to load the MRP entries into
the bridge.

Thanks.

