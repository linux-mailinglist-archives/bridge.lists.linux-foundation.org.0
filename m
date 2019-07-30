Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E72B27DD68
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 16:07:31 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 652BF2905;
	Thu,  1 Aug 2019 14:07:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5D2832CE4
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 17:18:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED2D56CE
	for <bridge@lists.linux-foundation.org>;
	Tue, 30 Jul 2019 17:18:12 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 3BADA12652B2F;
	Tue, 30 Jul 2019 10:18:12 -0700 (PDT)
Date: Tue, 30 Jul 2019 10:18:11 -0700 (PDT)
Message-Id: <20190730.101811.1836331521043535108.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190730112100.18156-1-nikolay@cumulusnetworks.com>
References: <20190730112100.18156-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Tue, 30 Jul 2019 10:18:12 -0700 (PDT)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net] net: bridge: mcast: don't delete permanent
 entries when fast leave is enabled
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Tue, 30 Jul 2019 14:21:00 +0300

> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index 3d8deac2353d..f8cac3702712 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -1388,6 +1388,9 @@ br_multicast_leave_group(struct net_bridge *br,
>  			if (!br_port_group_equal(p, port, src))
>  				continue;
>  
> +			if (p->flags & MDB_PG_FLAGS_PERMANENT)
> +				break;
> +

Like David, I also don't understand why this can be a break.  Is it because
permanent entries are always the last on the list?  Why will there be no
other entries that might need to be processed on the list?
