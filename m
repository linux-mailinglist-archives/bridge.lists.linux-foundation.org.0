Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C130822DCFF
	for <lists.bridge@lfdr.de>; Sun, 26 Jul 2020 09:46:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDD81860CF;
	Sun, 26 Jul 2020 07:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nP8RCAmEIMKs; Sun, 26 Jul 2020 07:46:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00B4F860BE;
	Sun, 26 Jul 2020 07:46:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D844CC004C;
	Sun, 26 Jul 2020 07:46:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EAFAAC004C
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:46:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7893B86ACD
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4r4rcwMSrvY4 for <bridge@lists.linux-foundation.org>;
 Sun, 26 Jul 2020 07:46:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DDEB786995
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:46:49 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::460])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9C3271277D61E;
 Sun, 26 Jul 2020 00:30:02 -0700 (PDT)
Date: Sun, 26 Jul 2020 00:46:44 -0700 (PDT)
Message-Id: <20200726.004644.71243023033363639.davem@davemloft.net>
To: hch@lst.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200726070311.GA16687@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200724.154342.1433271593505001306.davem@davemloft.net>
 <20200726070311.GA16687@lst.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 26 Jul 2020 00:30:03 -0700 (PDT)
Cc: ast@kernel.org, linux-sctp@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-s390@vger.kernel.org, rds-devel@oss.oracle.com, daniel@iogearbox.net,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 kuznet@ms2.inr.ac.ru, linux-can@vger.kernel.org, kuba@kernel.org,
 linux-hams@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-x25@vger.kernel.org, edumazet@google.com, yoshfuji@linux-ipv6.org,
 netdev@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 bpf@vger.kernel.org, linux-wpan@vger.kernel.org
Subject: Re: [Bridge] get rid of the address_space override in setsockopt v2
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

From: Christoph Hellwig <hch@lst.de>
Date: Sun, 26 Jul 2020 09:03:11 +0200

> On Fri, Jul 24, 2020 at 03:43:42PM -0700, David Miller wrote:
>> > Changes since v1:
>> >  - check that users don't pass in kernel addresses
>> >  - more bpfilter cleanups
>> >  - cosmetic mptcp tweak
>> 
>> Series applied to net-next, I'm build testing and will push this out when
>> that is done.
> 
> The buildbot found one warning with the isdn debug code after a few
> days, here is what I think is the best fix:

I already fixed this in net-next.
