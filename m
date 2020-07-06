Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE86215F52
	for <lists.bridge@lfdr.de>; Mon,  6 Jul 2020 21:28:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33DFB894CF;
	Mon,  6 Jul 2020 19:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Set5t6NR+q-J; Mon,  6 Jul 2020 19:27:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39FE6894CC;
	Mon,  6 Jul 2020 19:27:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1D4BBC016F;
	Mon,  6 Jul 2020 19:27:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 94B4BC016F
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 19:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D472226E75
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 19:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1LVk2zwZkllI for <bridge@lists.linux-foundation.org>;
 Mon,  6 Jul 2020 19:27:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 1BD5626E49
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 19:27:50 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 193CD1277EA61;
 Mon,  6 Jul 2020 12:27:49 -0700 (PDT)
Date: Mon, 06 Jul 2020 12:27:48 -0700 (PDT)
Message-Id: <20200706.122748.828248704525141203.davem@davemloft.net>
To: horatiu.vultur@microchip.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200706091842.3324565-3-horatiu.vultur@microchip.com>
References: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
 <20200706091842.3324565-3-horatiu.vultur@microchip.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 06 Jul 2020 12:27:49 -0700 (PDT)
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next 02/12] bridge: uapi: mrp: Extend MRP
 attributes for MRP interconnect
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
Date: Mon, 6 Jul 2020 11:18:32 +0200

> +struct br_mrp_in_state {
> +	__u16 in_id;
> +	__u32 in_state;
> +};

Put the __u32 first then the __u16.

> +struct br_mrp_in_role {
> +	__u16 in_id;
> +	__u32 ring_id;
> +	__u32 in_role;
> +	__u32 i_ifindex;
> +};

Likewise.

> +struct br_mrp_start_in_test {
> +	__u16 in_id;
> +	__u32 interval;
> +	__u32 max_miss;
> +	__u32 period;
> +};

Likewise.

> +struct br_mrp_in_test_hdr {
> +	__be16 id;
> +	__u8 sa[ETH_ALEN];
> +	__be16 port_role;
> +	__be16 state;
> +	__be16 transitions;
> +	__be32 timestamp;
> +};

Likewise.  Put the larger members first.  There is lots of unnecessary
padding in this structure.

