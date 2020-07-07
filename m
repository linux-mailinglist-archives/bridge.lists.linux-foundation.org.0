Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E81217B13
	for <lists.bridge@lfdr.de>; Wed,  8 Jul 2020 00:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48F3788607;
	Tue,  7 Jul 2020 22:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rCHzaymNYv-a; Tue,  7 Jul 2020 22:39:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06A4488BFB;
	Tue,  7 Jul 2020 22:39:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DAF67C016F;
	Tue,  7 Jul 2020 22:39:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CED17C016F
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 22:39:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7FF38836E
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 22:39:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sABjBfdlxz7r for <bridge@lists.linux-foundation.org>;
 Tue,  7 Jul 2020 22:39:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1F5DF88305
 for <bridge@lists.linux-foundation.org>; Tue,  7 Jul 2020 22:39:06 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3BD85120ED48D;
 Tue,  7 Jul 2020 15:39:05 -0700 (PDT)
Date: Tue, 07 Jul 2020 15:39:04 -0700 (PDT)
Message-Id: <20200707.153904.491848475455000428.davem@davemloft.net>
To: linus.luessing@c0d3.blue
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200705191017.10546-1-linus.luessing@c0d3.blue>
References: <20200705191017.10546-1-linus.luessing@c0d3.blue>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 Jul 2020 15:39:05 -0700 (PDT)
Cc: nikolay@cumulusnetworks.com, netdev@vger.kernel.org,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, martin@linuxlounge.net
Subject: Re: [Bridge] [PATCH net v2] bridge: mcast: Fix MLD2 Report IPv6
 payload length check
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
Date: Sun,  5 Jul 2020 21:10:17 +0200

> Commit e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in
> igmp3/mld2 report handling") introduced a bug in the IPv6 header payl=
oad
> length check which would potentially lead to rejecting a valid MLD2 R=
eport:
> =

> The check needs to take into account the 2 bytes for the "Number of
> Sources" field in the "Multicast Address Record" before reading it.
> And not the size of a pointer to this field.
> =

> Fixes: e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in =
igmp3/mld2 report handling")
> Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Signed-off-by: Linus L=FCssing <linus.luessing@c0d3.blue>

Applied and queued up for -stable, thank you.
