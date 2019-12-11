Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C468411BD8F
	for <lists.bridge@lfdr.de>; Wed, 11 Dec 2019 21:01:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E685587F3E;
	Wed, 11 Dec 2019 20:01:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ws4tPlqGNc3K; Wed, 11 Dec 2019 20:01:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84AF687F49;
	Wed, 11 Dec 2019 20:01:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4C581C1D7F;
	Wed, 11 Dec 2019 20:01:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 564D8C0881
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 20:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 420AE87F40
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 20:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLDDlLObOr4O for <bridge@lists.linux-foundation.org>;
 Wed, 11 Dec 2019 20:01:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9BA7987F3E
 for <bridge@lists.linux-foundation.org>; Wed, 11 Dec 2019 20:01:22 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9773013EF0DC6;
 Wed, 11 Dec 2019 12:01:20 -0800 (PST)
Date: Wed, 11 Dec 2019 12:01:20 -0800 (PST)
Message-Id: <20191211.120120.991784482938734303.davem@davemloft.net>
To: vivien.didelot@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191211134133.GB1587652@t480s.localdomain>
References: <0e45fd22-c31b-a9c2-bf87-22c16a60aeb4@gmail.com>
 <9f978ee1-08ee-aa57-6e3d-9b68657eeb14@cumulusnetworks.com>
 <20191211134133.GB1587652@t480s.localdomain>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 11 Dec 2019 12:01:20 -0800 (PST)
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
Date: Wed, 11 Dec 2019 13:41:33 -0500

> Hi David, Nikolay,
> 
> On Wed, 11 Dec 2019 17:42:33 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
>> >>  /* Bridge multicast database attributes
>> >>   * [MDBA_MDB] = {
>> >>   *     [MDBA_MDB_ENTRY] = {
>> >> @@ -261,6 +270,7 @@ enum {
>> >>  	BRIDGE_XSTATS_UNSPEC,
>> >>  	BRIDGE_XSTATS_VLAN,
>> >>  	BRIDGE_XSTATS_MCAST,
>> >> +	BRIDGE_XSTATS_STP,
>> >>  	BRIDGE_XSTATS_PAD,
>> >>  	__BRIDGE_XSTATS_MAX
>> >>  };
>> > 
>> > Shouldn't the new entry be appended to the end - after BRIDGE_XSTATS_PAD
>> > 
>> 
>> Oh yes, good catch. That has to be fixed, too.
>> 
> 
> This I don't get. Why new attributes must come between BRIDGE_XSTATS_PAD
> and __BRIDGE_XSTATS_MAX?

Because, just like any other attribute value, BRIDGE_XSTATS_PAD is an
API and fixed in stone.  You can't add things before it which change
it's value.

