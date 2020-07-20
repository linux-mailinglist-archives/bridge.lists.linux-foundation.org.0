Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F12C2272B3
	for <lists.bridge@lfdr.de>; Tue, 21 Jul 2020 01:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B826B88330;
	Mon, 20 Jul 2020 23:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZX4zhvdgTddC; Mon, 20 Jul 2020 23:20:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA41D8832F;
	Mon, 20 Jul 2020 23:20:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8F1C2C016F;
	Mon, 20 Jul 2020 23:20:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7681AC016F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 23:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5D17722268
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 23:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEyMENy3ZhDI for <bridge@lists.linux-foundation.org>;
 Mon, 20 Jul 2020 23:20:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 16C932038D
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 23:20:18 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0E8A811E8EC0A;
 Mon, 20 Jul 2020 16:20:16 -0700 (PDT)
Date: Mon, 20 Jul 2020 16:20:13 -0700 (PDT)
Message-Id: <20200720.162013.456211151711627380.davem@davemloft.net>
To: stefan@datenfreihafen.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <deaedc6d-edde-68da-50e8-6474ca818191@datenfreihafen.org>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720124737.118617-25-hch@lst.de>
 <deaedc6d-edde-68da-50e8-6474ca818191@datenfreihafen.org>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 20 Jul 2020 16:20:17 -0700 (PDT)
Cc: ast@kernel.org, linux-sctp@vger.kernel.org, hch@lst.de,
 linux-s390@vger.kernel.org, rds-devel@oss.oracle.com, daniel@iogearbox.net,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, mptcp@lists.01.org, kuznet@ms2.inr.ac.ru,
 linux-can@vger.kernel.org, kuba@kernel.org, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 edumazet@google.com, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org
Subject: Re: [Bridge] [PATCH 24/24] net: pass a sockptr_t into ->setsockopt
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

From: Stefan Schmidt <stefan@datenfreihafen.org>
Date: Mon, 20 Jul 2020 16:19:38 +0200

> For the ieee802154 part:
> 
> Acked-by: Stefan Schmidt <stefan@datenfreihafen.org>

Please do not quote an entire patch just to add an ACK, trim it just
to the commit message, or even less.

Thank you.
