Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5B5241201
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AFAFC87863;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eb7ouW0XwgR8; Mon, 10 Aug 2020 21:05:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07EC3877F8;
	Mon, 10 Aug 2020 21:05:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8D14C0895;
	Mon, 10 Aug 2020 21:05:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DC7ABC004C
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C422F8798A
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h-sWt3N4bRgU for <bridge@lists.linux-foundation.org>;
 Sun, 26 Jul 2020 07:18:06 +0000 (UTC)
X-Greylist: delayed 00:09:09 by SQLgrey-1.7.6
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A2A9B87898
 for <bridge@lists.linux-foundation.org>; Sun, 26 Jul 2020 07:18:06 +0000 (UTC)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4BDvDf0Trdz1rrLW;
 Sun, 26 Jul 2020 09:08:46 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4BDvDY4g2Xz1qrDX;
 Sun, 26 Jul 2020 09:08:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id M61H8ekLgDni; Sun, 26 Jul 2020 09:08:43 +0200 (CEST)
X-Auth-Info: ObXr7NKuP/ed3aOqUP2DwRSFWg3CkaF7qmUDKZFNiwlgCHly/bMVI0yUZSDe+Kon
Received: from hase.home (ppp-46-244-174-182.dynamic.mnet-online.de
 [46.244.174.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun, 26 Jul 2020 09:08:43 +0200 (CEST)
Received: by hase.home (Postfix, from userid 1000)
 id C79E21028BD; Sun, 26 Jul 2020 09:08:42 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Christoph Hellwig <hch@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200724.154342.1433271593505001306.davem@davemloft.net>
 <20200726070311.GA16687@lst.de>
X-Yow: -- I can do ANYTHING ... I can even ... SHOPLIFT!!
Date: Sun, 26 Jul 2020 09:08:42 +0200
In-Reply-To: <20200726070311.GA16687@lst.de> (Christoph Hellwig's message of
 "Sun, 26 Jul 2020 09:03:11 +0200")
Message-ID: <87imea3g91.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
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
 bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 David Miller <davem@davemloft.net>
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

On Jul 26 2020, Christoph Hellwig wrote:

> From 6601732f7a54db5f04efba08f7e9224e5b757112 Mon Sep 17 00:00:00 2001
> From: Christoph Hellwig <hch@lst.de>
> Date: Sun, 26 Jul 2020 09:00:09 +0200
> Subject: mISDN: remove a debug printk in data_sock_setsockopt
>
> The %p won't work with the new sockptr_t type.  But in the times of
> ftrace, bpftrace and co these kinds of debug printks are pretty anyway,

I think there is a word missing after pretty.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."
