Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id E4563E947A
	for <lists.bridge@lfdr.de>; Wed, 30 Oct 2019 02:13:20 +0100 (CET)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 03FBDCDE;
	Wed, 30 Oct 2019 01:13:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5EF1ACCB
	for <bridge@lists.linux-foundation.org>;
	Wed, 30 Oct 2019 01:13:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0BBA5174
	for <bridge@lists.linux-foundation.org>;
	Wed, 30 Oct 2019 01:13:08 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 454DB144B439A;
	Tue, 29 Oct 2019 18:13:07 -0700 (PDT)
Date: Tue, 29 Oct 2019 18:13:06 -0700 (PDT)
Message-Id: <20191029.181306.2176110994019095777.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191029114559.28653-1-nikolay@cumulusnetworks.com>
References: <20191029114559.28653-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Tue, 29 Oct 2019 18:13:07 -0700 (PDT)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 0/7] net: bridge: convert fdbs to use
	bitops
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
Date: Tue, 29 Oct 2019 13:45:52 +0200

> We'd like to have a well-defined behaviour when changing fdb flags. The
> problem is that we've added new fields which are changed from all
> contexts without any locking. We are aware of the bit test/change races
> and these are fine (we can remove them later), but it is considered
> undefined behaviour to change bitfields from multiple threads and also
> on some architectures that can result in unexpected results,
> specifically when all fields between the changed ones are also
> bitfields. The conversion to bitops shows the intent clearly and
> makes them use functions with well-defined behaviour in such cases.
> There is no overhead for the fast-path, the bit changing functions are
> used only in special cases when learning and in the slow path.
> In addition this conversion allows us to simplify fdb flag handling and
> avoid bugs for future bits (e.g. a forgetting to clear the new bit when
> allocating a new fdb). All bridge selftests passed, also tried all of the
> converted bits manually in a VM.

Series applied, thanks.
