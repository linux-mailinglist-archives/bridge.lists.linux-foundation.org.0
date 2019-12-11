Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE4411BFB3
	for <lists.bridge@lfdr.de>; Wed, 11 Dec 2019 23:17:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A70EE850EA;
	Wed, 11 Dec 2019 22:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wj-b83E-61Z1; Wed, 11 Dec 2019 22:17:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED81786EA8;
	Wed, 11 Dec 2019 22:17:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B185AC0881;
	Wed, 11 Dec 2019 22:17:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D9A74C0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 22:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C786020486
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 22:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bn6sG7OQ23AS for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 22:17:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id EA05220437
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 22:17:01 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id F1A3414F4FDA9;
 Wed, 11 Dec 2019 14:17:00 -0800 (PST)
Date: Wed, 11 Dec 2019 14:16:58 -0800 (PST)
Message-Id: <20191211.141658.433012532951670675.davem@davemloft.net>
To: vivien.didelot@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191211164754.GB1616641@t480s.localdomain>
References: <20191211134133.GB1587652@t480s.localdomain>
 <20191211.120120.991784482938734303.davem@davemloft.net>
 <20191211164754.GB1616641@t480s.localdomain>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 11 Dec 2019 14:17:01 -0800 (PST)
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 dsahern@gmail.com
Subject: Re: [Bridge] [PATCH net-next v2] net: bridge: add STP xstats
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

From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Wed, 11 Dec 2019 16:47:54 -0500

> I thought the whole point of using enums was to avoid caring about fixed
> numeric values, but well.

I don't get where you got that idea from.

Each and every netlink attribute value is like IPPROTO_TCP in an ipv4
header, the exact values matter, and therefore you cannot make changes
that modify existing values.

Therefore, you must add new attributes to the end of the enumberation,
right before the __MAX value.

> To be more precise, what I don't get is that when
> I move the BRIDGE_XSTATS_STP definition *after* BRIDGE_XSTATS_PAD, the STP
> xstats don't show up anymore in iproute2.

Because you ahve to recompile iproute2 so that it uses the corrected value
in the kernel header, did you do that?
