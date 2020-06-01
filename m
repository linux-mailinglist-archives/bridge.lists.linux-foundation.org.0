Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6FA1EAEB4
	for <lists.bridge@lfdr.de>; Mon,  1 Jun 2020 20:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 808B786DCC;
	Mon,  1 Jun 2020 18:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t+nmEx3ysbkY; Mon,  1 Jun 2020 18:56:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96A4E86E6E;
	Mon,  1 Jun 2020 18:56:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 74CB2C0176;
	Mon,  1 Jun 2020 18:56:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71E45C0176
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 18:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 542302046C
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 18:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rv8ZEHvEeF+1 for <bridge@lists.linux-foundation.org>;
 Mon,  1 Jun 2020 18:56:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B2E220025
 for <bridge@lists.linux-foundation.org>; Mon,  1 Jun 2020 18:56:30 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 256E1120ED483;
 Mon,  1 Jun 2020 11:56:29 -0700 (PDT)
Date: Mon, 01 Jun 2020 11:56:28 -0700 (PDT)
Message-Id: <20200601.115628.932125543367472654.davem@davemloft.net>
To: horatiu.vultur@microchip.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200530180948.1194569-1-horatiu.vultur@microchip.com>
References: <20200530180948.1194569-1-horatiu.vultur@microchip.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 01 Jun 2020 11:56:29 -0700 (PDT)
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next v2 0/3] bridge: mrp: Add support for
	MRA role
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
Date: Sat, 30 May 2020 18:09:45 +0000

> This patch series extends the MRP with the MRA role.
> A node that has the MRA role can behave as a MRM or as a MRC. In case there are
> multiple nodes in the topology that has the MRA role then only one node can
> behave as MRM and all the others need to be have as MRC. The node that has the
> higher priority(lower value) will behave as MRM.
> A node that has the MRA role and behaves as MRC, it just needs to forward the
> MRP_Test frames between the ring ports but also it needs to detect in case it
> stops receiving MRP_Test frames. In that case it would try to behave as MRM.
> 
> v2:
>  - add new patch that fixes sparse warnings
>  - fix parsing of prio attribute

Series applied, thank you.
