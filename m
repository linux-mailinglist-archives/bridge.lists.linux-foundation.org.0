Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10068225541
	for <lists.bridge@lfdr.de>; Mon, 20 Jul 2020 03:17:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2740D85BCF;
	Mon, 20 Jul 2020 01:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KPZctzXIMcSL; Mon, 20 Jul 2020 01:17:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E91F85BD1;
	Mon, 20 Jul 2020 01:17:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 53D73C016F;
	Mon, 20 Jul 2020 01:17:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2020BC016F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 01:17:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F354085ADB
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 01:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NDAdpJifkuzW for <bridge@lists.linux-foundation.org>;
 Mon, 20 Jul 2020 01:17:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE83585810
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 01:17:02 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1B85F1284AF6B;
 Sun, 19 Jul 2020 18:17:00 -0700 (PDT)
Date: Sun, 19 Jul 2020 18:16:59 -0700 (PDT)
Message-Id: <20200719.181659.1807927650741641565.davem@davemloft.net>
To: hch@lst.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200717062331.691152-1-hch@lst.de>
References: <20200717062331.691152-1-hch@lst.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 19 Jul 2020 18:17:00 -0700 (PDT)
Cc: linux-arch@vger.kernel.org, daniel@iogearbox.net, dccp@vger.kernel.org,
 yoshfuji@linux-ipv6.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org, fw@strlen.de, ast@kernel.org,
 kadlec@netfilter.org, linux-bluetooth@vger.kernel.org,
 linux-sctp@vger.kernel.org, netfilter-devel@vger.kernel.org,
 mptcp@lists.01.org, 3chas3@gmail.com, netdev@vger.kernel.org,
 kuznet@ms2.inr.ac.ru, bpf@vger.kernel.org, linux-can@vger.kernel.org,
 linux-wpan@vger.kernel.org, pablo@netfilter.org
Subject: Re: [Bridge] sockopt cleanups
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
Date: Fri, 17 Jul 2020 08:23:09 +0200

> this series cleans up various lose ends in the sockopt code, most
> importantly removing the compat_{get,set}sockopt infrastructure in favor
> of just using in_compat_syscall() in the few places that care.

Series applied to net-next, thanks.
