Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E65F3B7A4D
	for <lists.bridge@lfdr.de>; Wed, 30 Jun 2021 00:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA06A608AB;
	Tue, 29 Jun 2021 22:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PlJAgtrlQwDu; Tue, 29 Jun 2021 22:08:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6E07E60699;
	Tue, 29 Jun 2021 22:08:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 19DECC0022;
	Tue, 29 Jun 2021 22:08:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28222C000E
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 22:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02C35400CC
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 22:08:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQtBa9x6s-0v for <bridge@lists.linux-foundation.org>;
 Tue, 29 Jun 2021 22:08:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3959D4010C
 for <bridge@lists.linux-foundation.org>; Tue, 29 Jun 2021 22:08:49 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id 4282A4F7E3849;
 Tue, 29 Jun 2021 15:08:46 -0700 (PDT)
Date: Tue, 29 Jun 2021 15:08:42 -0700 (PDT)
Message-Id: <20210629.150842.66124616027054264.davem@davemloft.net>
To: olteanv@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20210629190923.kf5utzbhmmgszwwc@skbuf>
References: <20210629.115213.547056454675149348.davem@davemloft.net>
 <20210629185822.ir3vp52xkyddm3j3@skbuf>
 <20210629190923.kf5utzbhmmgszwwc@skbuf>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Tue, 29 Jun 2021 15:08:46 -0700 (PDT)
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vladimir.oltean@nxp.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, vivien.didelot@gmail.com,
 tobias@waldekranz.com
Subject: Re: [Bridge] [PATCH v5 net-next 00/15] RX filtering in DSA
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

From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 29 Jun 2021 22:09:23 +0300

> On Tue, Jun 29, 2021 at 09:58:22PM +0300, Vladimir Oltean wrote:
>> On Tue, Jun 29, 2021 at 11:52:13AM -0700, David Miller wrote:
>> > From: Vladimir Oltean <olteanv@gmail.com>
>> > Date: Tue, 29 Jun 2021 17:06:43 +0300
>> > 
>> > > Changes in v5:
>> > > - added READ_ONCE and WRITE_ONCE for fdb->dst
>> > > - removed a paranoid WARN_ON in DSA
>> > > - added some documentation regarding how 'bridge fdb' is supposed to be
>> > >   used with DSA
>> > 
>> > Vlad, I applied v4, could you please send me relative fixups to v5?
>> > 
>> > Thank you.
>> 
>> Thanks for applying. I'm going to prepare the delta patches right now.
> 
> Dave, is it possible that you may have applied v5 with the cover letter
> from v4? I checked and everything is in its right place:

Yes I believe that is what happened.

Thanks for checking...
