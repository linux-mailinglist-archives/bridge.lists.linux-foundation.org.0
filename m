Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 612F722CD64
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:23:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE3DD88C1D;
	Fri, 24 Jul 2020 18:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1FyXfsqs7yzQ; Fri, 24 Jul 2020 18:23:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0CC5288C3D;
	Fri, 24 Jul 2020 18:22:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DDF94C004E;
	Fri, 24 Jul 2020 18:22:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0DAE8C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 11:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 005318880F
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 11:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QGs0Rt43xXA0 for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 11:45:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8B4E6895B6
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 11:45:03 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 82EBD68AFE; Thu, 23 Jul 2020 13:44:58 +0200 (CEST)
Date: Thu, 23 Jul 2020 13:44:58 +0200
From: 'Christoph Hellwig' <hch@lst.de>
To: David Laight <David.Laight@ACULAB.COM>
Message-ID: <20200723114458.GA31363@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-14-hch@lst.de>
 <621e193e4af74d8198ed87d6a9ce8260@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <621e193e4af74d8198ed87d6a9ce8260@AcuMS.aculab.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:36 +0000
Cc: Alexei Starovoitov <ast@kernel.org>,
 "linux-sctp@vger.kernel.org" <linux-sctp@vger.kernel.org>,
 'Christoph Hellwig' <hch@lst.de>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "rds-devel@oss.oracle.com" <rds-devel@oss.oracle.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "dccp@vger.kernel.org" <dccp@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-afs@lists.infradead.org" <linux-afs@lists.infradead.org>,
 "lvs-devel@vger.kernel.org" <lvs-devel@vger.kernel.org>,
 "coreteam@netfilter.org" <coreteam@netfilter.org>,
 "mptcp@lists.01.org" <mptcp@lists.01.org>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "linux-hams@vger.kernel.org" <linux-hams@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-x25@vger.kernel.org" <linux-x25@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-decnet-user@lists.sourceforge.net"
 <linux-decnet-user@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>,
 "netfilter-devel@vger.kernel.org" <netfilter-devel@vger.kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-wpan@vger.kernel.org" <linux-wpan@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 13/26] bpfilter: switch bpfilter_ip_set_sockopt
 to sockptr_t
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

On Thu, Jul 23, 2020 at 11:16:16AM +0000, David Laight wrote:
> From: Christoph Hellwig
> > Sent: 23 July 2020 07:09
> > 
> > This is mostly to prepare for cleaning up the callers, as bpfilter by
> > design can't handle kernel pointers.
> 
> You've failed to fix the sense of the above...

The sense still is correct.
