Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7700F7DCCD
	for <lists.bridge@lfdr.de>; Thu,  1 Aug 2019 15:49:59 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D21A5149C;
	Thu,  1 Aug 2019 13:49:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6EC0718E5
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 16:50:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B09B604
	for <bridge@lists.linux-foundation.org>;
	Mon, 29 Jul 2019 16:50:58 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 4BDA51266536D;
	Mon, 29 Jul 2019 09:50:57 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:50:56 -0700 (PDT)
Message-Id: <20190729.095056.757433801392494014.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190729092841.4260-1-nikolay@cumulusnetworks.com>
References: <20190728182230.28818-1-nikolay@cumulusnetworks.com>
	<20190729092841.4260-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Mon, 29 Jul 2019 09:50:57 -0700 (PDT)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org,
	syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com
Subject: Re: [Bridge] [PATCH net v2] net: bridge: delete local fdb on device
 init failure
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
Date: Mon, 29 Jul 2019 12:28:41 +0300

> On initialization failure we have to delete the local fdb which was
> inserted due to the default pvid creation. This problem has been present
> since the inception of default_pvid. Note that currently there are 2 cases:
> 1) in br_dev_init() when br_multicast_init() fails
> 2) if register_netdevice() fails after calling ndo_init()
> 
> This patch takes care of both since br_vlan_flush() is called on both
> occasions. Also the new fdb delete would be a no-op on normal bridge
> device destruction since the local fdb would've been already flushed by
> br_dev_delete(). This is not an issue for ports since nbp_vlan_init() is
> called last when adding a port thus nothing can fail after it.
> 
> Reported-by: syzbot+88533dc8b582309bf3ee@syzkaller.appspotmail.com
> Fixes: 5be5a2df40f0 ("bridge: Add filtering support for default_pvid")
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> ---
> v2: reworded the commit message and comment so they're not plural, we're
>     talking about a single bridge local fdb added on the init vlan creation
>     of the default pvid
> 
> Tested with the provided reproducer and can no longer trigger the leak.
> Also tested the br_multicast_init() failure manually by making it always
> return an error.

Applied and queued up for -stable, thank you.
