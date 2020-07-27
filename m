Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E3222EDDB
	for <lists.bridge@lfdr.de>; Mon, 27 Jul 2020 15:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C9C020415;
	Mon, 27 Jul 2020 13:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FIBjUACgRmME; Mon, 27 Jul 2020 13:49:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E1BFE2043F;
	Mon, 27 Jul 2020 13:49:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BEEE7C0864;
	Mon, 27 Jul 2020 13:49:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 30429C004D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 13:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1DC8C87C25
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 13:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nkQNWa8OwgPK for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jul 2020 13:49:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A5609877E0
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jul 2020 13:49:17 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1k03UE-003g0B-15; Mon, 27 Jul 2020 13:48:14 +0000
Date: Mon, 27 Jul 2020 14:48:14 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Laight <David.Laight@aculab.com>
Message-ID: <20200727134814.GD794331@ZenIV.linux.org.uk>
References: <20200723060908.50081-1-hch@lst.de>
 <20200724.154342.1433271593505001306.davem@davemloft.net>
 <8ae792c27f144d4bb5cbea0c1cce4eed@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ae792c27f144d4bb5cbea0c1cce4eed@AcuMS.aculab.com>
Cc: "ast@kernel.org" <ast@kernel.org>,
 "linux-sctp@vger.kernel.org" <linux-sctp@vger.kernel.org>,
 "hch@lst.de" <hch@lst.de>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "dccp@vger.kernel.org" <dccp@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "lvs-devel@vger.kernel.org" <lvs-devel@vger.kernel.org>,
 "coreteam@netfilter.org" <coreteam@netfilter.org>,
 "mptcp@lists.01.org" <mptcp@lists.01.org>,
 "kuznet@ms2.inr.ac.ru" <kuznet@ms2.inr.ac.ru>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "linux-hams@vger.kernel.org" <linux-hams@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-x25@vger.kernel.org" <linux-x25@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "yoshfuji@linux-ipv6.org" <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-decnet-user@lists.sourceforge.net"
 <linux-decnet-user@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
 "netfilter-devel@vger.kernel.org" <netfilter-devel@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-wpan@vger.kernel.org" <linux-wpan@vger.kernel.org>,
 'David Miller' <davem@davemloft.net>
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

On Mon, Jul 27, 2020 at 09:51:45AM +0000, David Laight wrote:

> I'm sure there is code that processes options in chunks.
> This probably means it is possible to put a chunk boundary
> at the end of userspace and continue processing the very start
> of kernel memory.
> 
> At best this faults on the kernel copy code and crashes the system.

Really?  Care to provide some details, or is it another of your "I can't
be possibly arsed to check what I'm saying, but it stands for reason
that..." specials?
