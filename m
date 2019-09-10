Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F3EAE530
	for <lists.bridge@lfdr.de>; Tue, 10 Sep 2019 10:13:44 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 768BEE60;
	Tue, 10 Sep 2019 08:13:34 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12B29B8A
	for <bridge@lists.linux-foundation.org>;
	Tue, 10 Sep 2019 08:13:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B666782B
	for <bridge@lists.linux-foundation.org>;
	Tue, 10 Sep 2019 08:13:31 +0000 (UTC)
Received: from localhost (unknown [148.69.85.38])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id E5AD8154B1F3B;
	Tue, 10 Sep 2019 01:13:29 -0700 (PDT)
Date: Tue, 10 Sep 2019 10:13:28 +0200 (CEST)
Message-Id: <20190910.101328.1956638594556147157.davem@davemloft.net>
To: nicolas.dichtel@6wind.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190906094703.21300-1-nicolas.dichtel@6wind.com>
References: <20190906094703.21300-1-nicolas.dichtel@6wind.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Tue, 10 Sep 2019 01:13:31 -0700 (PDT)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
	roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net v2] bridge/mdb: remove wrong use of
	NLM_F_MULTI
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

From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Date: Fri,  6 Sep 2019 11:47:02 +0200

> NLM_F_MULTI must be used only when a NLMSG_DONE message is sent at the end.
> In fact, NLMSG_DONE is sent only at the end of a dump.
> 
> Libraries like libnl will wait forever for NLMSG_DONE.
> 
> Fixes: 949f1e39a617 ("bridge: mdb: notify on router port add and del")
> CC: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Signed-off-by: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Applied and queued up for -stable.
