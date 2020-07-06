Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7A9215F4A
	for <lists.bridge@lfdr.de>; Mon,  6 Jul 2020 21:26:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 707EB86B22;
	Mon,  6 Jul 2020 19:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BIUd3qnFmrrD; Mon,  6 Jul 2020 19:26:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC3A886B08;
	Mon,  6 Jul 2020 19:26:30 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BFCD5C016F;
	Mon,  6 Jul 2020 19:26:30 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B4186C016F
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 19:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A130F8815F
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 19:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id axNb864Kz9Ri for <bridge@lists.linux-foundation.org>;
 Mon,  6 Jul 2020 19:26:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C792871F0
 for <bridge@lists.linux-foundation.org>; Mon,  6 Jul 2020 19:26:28 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1A8B21277D626;
 Mon,  6 Jul 2020 12:26:27 -0700 (PDT)
Date: Mon, 06 Jul 2020 12:26:26 -0700 (PDT)
Message-Id: <20200706.122626.2248567362397969247.davem@davemloft.net>
To: horatiu.vultur@microchip.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200706091842.3324565-2-horatiu.vultur@microchip.com>
References: <20200706091842.3324565-1-horatiu.vultur@microchip.com>
 <20200706091842.3324565-2-horatiu.vultur@microchip.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 06 Jul 2020 12:26:27 -0700 (PDT)
Cc: ivecera@redhat.com, andrew@lunn.ch, jiri@resnulli.us,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, kuba@kernel.org
Subject: Re: [Bridge] [PATCH net-next 01/12] switchdev: mrp: Extend
 switchdev API for MRP Interconnect
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
Date: Mon, 6 Jul 2020 11:18:31 +0200

> +/* SWITCHDEV_OBJ_ID_IN_TEST_MRP */
> +struct switchdev_obj_in_test_mrp {
> +	struct switchdev_obj obj;
> +	/* The value is in us and a value of 0 represents to stop */
> +	u32 interval;
> +	u8 max_miss;
> +	u32 in_id;
> +	u32 period;
> +};
 ...
> +#define SWITCHDEV_OBJ_IN_TEST_MRP(OBJ) \
> +	container_of((OBJ), struct switchdev_obj_in_test_mrp, obj)
> +
> +/* SWICHDEV_OBJ_ID_IN_ROLE_MRP */
> +struct switchdev_obj_in_role_mrp {
> +	struct switchdev_obj obj;
> +	u16 in_id;
> +	u32 ring_id;
> +	u8 in_role;
> +	struct net_device *i_port;
> +};
 ...
> +#define SWITCHDEV_OBJ_IN_ROLE_MRP(OBJ) \
> +	container_of((OBJ), struct switchdev_obj_in_role_mrp, obj)
> +
> +struct switchdev_obj_in_state_mrp {
> +	struct switchdev_obj obj;
> +	u8 in_state;
> +	u32 in_id;
> +};

Please arrange these structure members in a more optimal order so that
the resulting object is denser.  For example, in switchdev_obj_in_role_mrp
if you order it such that:

> +	u32 ring_id;
> +	u16 in_id;
> +	u8 in_role;

You'll have less wasted space from padding.

Use 'pahole' or similar tools to guide you.
