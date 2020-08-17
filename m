Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B753245B50
	for <lists.bridge@lfdr.de>; Mon, 17 Aug 2020 06:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5125988026;
	Mon, 17 Aug 2020 04:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hyiXq74LP3rd; Mon, 17 Aug 2020 04:10:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9164487F71;
	Mon, 17 Aug 2020 04:10:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 78386C0890;
	Mon, 17 Aug 2020 04:10:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AC73DC07FF
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 04:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A26DB877B4
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 04:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CEyFF0orm5gC for <bridge@lists.linux-foundation.org>;
 Mon, 17 Aug 2020 04:10:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07D07877AD
 for <bridge@lists.linux-foundation.org>; Mon, 17 Aug 2020 04:10:05 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B1E0C1260D062;
 Sun, 16 Aug 2020 20:53:17 -0700 (PDT)
Date: Sun, 16 Aug 2020 21:10:02 -0700 (PDT)
Message-Id: <20200816.211002.1955628031429504263.davem@davemloft.net>
To: linus.luessing@c0d3.blue
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200816202424.3526-1-linus.luessing@c0d3.blue>
References: <20200816202424.3526-1-linus.luessing@c0d3.blue>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 16 Aug 2020 20:53:18 -0700 (PDT)
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 gluon@luebeck.freifunk.net, openwrt-devel@lists.openwrt.org
Subject: Re: [Bridge] [RFC PATCH net-next] bridge: Implement MLD Querier
 wake-up calls / Android bug workaround
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

From: Linus L=FCssing <linus.luessing@c0d3.blue>
Date: Sun, 16 Aug 2020 22:24:24 +0200

> I'm aware that this is quite a hack, so I'm unsure if this is suitabl=
e
> for upstream. On the other hand, the Android ticket isn't moving
> anywhere and even if it were fixed in Android, I'd expect it to take
> years until that fix would propagate or unpatched Android devices to
> vanish. So I'm wondering if it should be treated like a hardware bug
> workaround and by that should be suitable for applying it upstream in=

> the Linux kernel?

Long after those Android devices are deprecated and no longer used, we
will still have this ugly hack in the tree.

Sorry, we're not doing this.
