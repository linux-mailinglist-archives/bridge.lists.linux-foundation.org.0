Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C744D611D84
	for <lists.bridge@lfdr.de>; Sat, 29 Oct 2022 00:46:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5A114159F;
	Fri, 28 Oct 2022 22:46:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5A114159F
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=VxGwJ9O9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5sb1Vr1VJdx4; Fri, 28 Oct 2022 22:46:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id F0646415A6;
	Fri, 28 Oct 2022 22:46:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0646415A6
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7E5B0C007B;
	Fri, 28 Oct 2022 22:46:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BE4C9C002D
 for <bridge@lists.linux-foundation.org>; Fri, 28 Oct 2022 22:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8693B81846
 for <bridge@lists.linux-foundation.org>; Fri, 28 Oct 2022 22:46:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8693B81846
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VxGwJ9O9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3eS8RMVtLOXO for <bridge@lists.linux-foundation.org>;
 Fri, 28 Oct 2022 22:46:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3189081842
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3189081842
 for <bridge@lists.linux-foundation.org>; Fri, 28 Oct 2022 22:46:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 08EC262A9A;
 Fri, 28 Oct 2022 22:46:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82950C433D6;
 Fri, 28 Oct 2022 22:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1666997179;
 bh=s26jHyd1kGfu++KNYnyX//dTrAoWFdZ+ZNmo3nKnJss=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VxGwJ9O9yotsrKvlxcwXmQ0Fk4p3v9D5+DlTte1u/b8zE1L6oWXtT1okcCGymzc+F
 uUzTBz6nnK6iiPp7ONuOcluxciyA+H2AWZrZubpDNsGXF9Il1djnbo/LR4hvlZPj9A
 0kcsvnbXvyZm70ZgqLxx8R3a5VvJzOLCGoXRet/I+ti1hMmQnBvu+tjrjCIr4vv2w6
 OEFoGL6xEvwVAQA3kmozlS8z6UFzjyJceJxRPFqcAUpN8icgdMmKp9Kauc4XA3OBaI
 M/O249pRehQLwqy4hrrgyuAQ8mLrPOQJg4gBTCW/3paQdOBy2HRsGcOdxhzSitZK13
 YSSld8uxG8jGQ==
Date: Fri, 28 Oct 2022 15:46:17 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221028154617.3c63ba68@kernel.org>
In-Reply-To: <20221028183149.2882a29b@gandalf.local.home>
References: <20221027150525.753064657@goodmis.org>
 <20221027150928.780676863@goodmis.org>
 <20221027155513.60b211e2@gandalf.local.home>
 <CAHk-=wjAjW2P5To82+CAM0Rx8RexQBHPTVZBWBPHyEPGm37oFA@mail.gmail.com>
 <20221027163453.383bbf8e@gandalf.local.home>
 <CAHk-=whoS+krLU7JNe=hMp2VOcwdcCdTXhdV8qqKoViwzzJWfA@mail.gmail.com>
 <20221027170720.31497319@gandalf.local.home>
 <20221027183511.66b058c4@gandalf.local.home>
 <20221028183149.2882a29b@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-afs@lists.infradead.org,
 Menglong Dong <imagedong@tencent.com>, bridge@lists.linux-foundation.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, tipc-discussion@lists.sourceforge.net,
 Paolo Abeni <pabeni@redhat.com>, Guenter Roeck <linux@roeck-us.net>,
 Martin KaFai Lau <martin.lau@kernel.org>,
 Kuniyuki Iwashima <kuniyu@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mirko Lindner <mlindner@marvell.com>, linux-nfs@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Pavel Begunkov <asml.silence@gmail.com>
Subject: Re: [Bridge] [RFC][PATCH v2 19/31] timers: net: Use
 del_timer_shutdown() before freeing timer
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

On Fri, 28 Oct 2022 18:31:49 -0400 Steven Rostedt wrote:
> Could someone from networking confirm (or deny) that the timer being
> removed in sk_stop_timer() will no longer be used even if del_timer()
> returns false?
> 
> net/core/sock.c:
> 
> void sk_stop_timer(struct sock *sk, struct timer_list* timer)
> {
> 	if (del_timer(timer))
> 		__sock_put(sk);
> }
> 
> If this is the case, then I'll add the following interface:
> 
>    del_timer_sync_shutdown() // the common case which syncs
> 
>    del_timer_shutdown() // the uncommon case, that returns immediately
>                         // used for those cases that add extra code to
>                         // handle it, like sk_stop_timer()

Sorry too many bugs at once :)

FWIW Paolo was saying privately earlier today that he spotted some cases
of reuse, he gave an example of ccid2_hc_tx_packet_recv()

So we can't convert all cases of sk_stop_timer() in one fell swoop :(

> Which has the same semantics as del_timer_sync() and del_timer()
> respectively, but will prevent the timer from being rearmed again.
> 
> This way we can convert the sk_stop_timer() to:
> 
> void sk_stop_timer(struct sock *sk, struct timer_list* timer)
> {
> 	if (del_timer_shutdown(timer))
> 		__sock_put(sk);
> }
> 
> 
> We can also add the del_timer_shutdown() to other locations that need to
> put a timer into a shutdown state before freeing, and where it's in a
> context that can not call del_timer_sync_shutdown().
