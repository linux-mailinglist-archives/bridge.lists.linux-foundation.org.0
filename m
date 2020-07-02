Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBED212EB0
	for <lists.bridge@lfdr.de>; Thu,  2 Jul 2020 23:19:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 462BE2046E;
	Thu,  2 Jul 2020 21:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qhxkX2+slGua; Thu,  2 Jul 2020 21:19:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0B85120345;
	Thu,  2 Jul 2020 21:19:36 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F3F1FC0733;
	Thu,  2 Jul 2020 21:19:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2CA7FC0733
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 21:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0AEFC2046E
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 21:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ev+3z1ib8LEq for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jul 2020 21:19:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 031A020345
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jul 2020 21:19:33 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B473A12841C27;
 Thu,  2 Jul 2020 14:19:32 -0700 (PDT)
Date: Thu, 02 Jul 2020 14:19:31 -0700 (PDT)
Message-Id: <20200702.141931.1713593201879768648.davem@davemloft.net>
To: horatiu.vultur@microchip.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200702081307.933471-1-horatiu.vultur@microchip.com>
References: <20200702081307.933471-1-horatiu.vultur@microchip.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 02 Jul 2020 14:19:33 -0700 (PDT)
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, jiri@mellanox.com,
 kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next v3 0/3] bridge: mrp: Add support for
 getting the status
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
Date: Thu, 2 Jul 2020 10:13:04 +0200

> This patch series extends the MRP netlink interface to allow the userspace
> daemon to get the status of the MRP instances in the kernel.
> 
> v3:
>   - remove misleading comment
>   - fix to use correctly the RCU
> 
> v2:
>   - fix sparse warnings

Series applied, thank you.
