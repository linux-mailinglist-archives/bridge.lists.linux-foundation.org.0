Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BABB31104FC
	for <lists.bridge@lfdr.de>; Tue,  3 Dec 2019 20:22:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F01585727;
	Tue,  3 Dec 2019 19:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F363ImX5gHDQ; Tue,  3 Dec 2019 19:22:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7928F857A4;
	Tue,  3 Dec 2019 19:22:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 49A3AC1799;
	Tue,  3 Dec 2019 19:22:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1EF0DC087F
 for <bridge@lists.linux-foundation.org>; Tue,  3 Dec 2019 19:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 08DD28506F
 for <bridge@lists.linux-foundation.org>; Tue,  3 Dec 2019 19:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w62-lJi6ZMuI for <bridge@lists.linux-foundation.org>;
 Tue,  3 Dec 2019 19:22:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 538DB84F5A
 for <bridge@lists.linux-foundation.org>; Tue,  3 Dec 2019 19:22:48 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 712CA1510370A;
 Tue,  3 Dec 2019 11:22:46 -0800 (PST)
Date: Tue, 03 Dec 2019 11:22:45 -0800 (PST)
Message-Id: <20191203.112245.4269861704222403.davem@davemloft.net>
To: nikolay@cumulusnetworks.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191203144806.10468-1-nikolay@cumulusnetworks.com>
References: <20191203144806.10468-1-nikolay@cumulusnetworks.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 03 Dec 2019 11:22:46 -0800 (PST)
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, syzkaller-bugs@googlegroups.com,
 syzbot+2add91c08eb181fea1bf@syzkaller.appspotmail.com
Subject: Re: [Bridge] [PATCH net] net: bridge: deny dev_set_mac_address()
 when unregistering
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

From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Date: Tue,  3 Dec 2019 16:48:06 +0200

> We have an interesting memory leak in the bridge when it is being
> unregistered and is a slave to a master device which would change the
> mac of its slaves on unregister (e.g. bond, team). This is a very
> unusual setup but we do end up leaking 1 fdb entry because
> dev_set_mac_address() would cause the bridge to insert the new mac address
> into its table after all fdbs are flushed, i.e. after dellink() on the
> bridge has finished and we call NETDEV_UNREGISTER the bond/team would
> release it and will call dev_set_mac_address() to restore its original
> address and that in turn will add an fdb in the bridge.
> One fix is to check for the bridge dev's reg_state in its
> ndo_set_mac_address callback and return an error if the bridge is not in
> NETREG_REGISTERED.
> 
> Easy steps to reproduce:
>  1. add bond in mode != A/B
>  2. add any slave to the bond
>  3. add bridge dev as a slave to the bond
>  4. destroy the bridge device
> 
> Trace:
>  unreferenced object 0xffff888035c4d080 (size 128):
 ...
> Fixes: 43598813386f ("bridge: add local MAC address to forwarding table (v2)")
> Reported-by: syzbot+2add91c08eb181fea1bf@syzkaller.appspotmail.com
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Looks good, applied and queued up for -stable.

Thanks.
