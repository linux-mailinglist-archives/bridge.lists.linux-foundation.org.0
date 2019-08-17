Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE98912B7
	for <lists.bridge@lfdr.de>; Sat, 17 Aug 2019 21:37:27 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7A88BFEC;
	Sat, 17 Aug 2019 19:37:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1D23DB43
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 19:37:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3155E5
	for <bridge@lists.linux-foundation.org>;
	Sat, 17 Aug 2019 19:37:13 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 525C114DB6DFE;
	Sat, 17 Aug 2019 12:37:11 -0700 (PDT)
Date: Sat, 17 Aug 2019 12:37:10 -0700 (PDT)
Message-Id: <20190817.123710.1132912615652102377.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190817112213.27097-1-nikolay@cumulusnetworks.com>
References: <20190816.130417.1610388599335442981.davem@davemloft.net>
	<20190817112213.27097-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
	(shards.monkeyblade.net [149.20.54.216]);
	Sat, 17 Aug 2019 12:37:11 -0700 (PDT)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next v3 0/4] net: bridge: mdb: allow
 dump/add/del of host-joined entries
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
Date: Sat, 17 Aug 2019 14:22:09 +0300

> This set makes the bridge dump host-joined mdb entries, they should be
> treated as normal entries since they take a slot and are aging out.
> We already have notifications for them but we couldn't dump them until
> now so they remained hidden. We dump them similar to how they're
> notified, in order to keep user-space compatibility with the dumped
> objects (e.g. iproute2 dumps mdbs in a format which can be fed into
> add/del commands) we allow host-joined groups also to be added/deleted via
> mdb commands. That can later be used for L2 mcast MAC manipulation as
> was recently discussed. Note that iproute2 changes are not necessary,
> this set will work with the current user-space mdb code.
> 
> Patch 01 - a trivial comment move
> Patch 02 - factors out the mdb filling code so it can be
>            re-used for the host-joined entries
> Patch 03 - dumps host-joined entries
> Patch 04 - allows manipulation of host-joined entries via standard mdb
>            calls
> 
> v3: fix compiler warning in patch 04 (DaveM)
> v2: change patch 04 to avoid double notification and improve host group
>     manual removal if no ports are present in the group

Series applied.
