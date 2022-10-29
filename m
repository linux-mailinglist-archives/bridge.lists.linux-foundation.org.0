Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E096121E4
	for <lists.bridge@lfdr.de>; Sat, 29 Oct 2022 11:38:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC0E48174F;
	Sat, 29 Oct 2022 09:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC0E48174F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aoRchww5-8PL; Sat, 29 Oct 2022 09:38:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E70298145D;
	Sat, 29 Oct 2022 09:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E70298145D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A92DDC002D;
	Sat, 29 Oct 2022 09:38:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E1157C002D
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 19:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7C93409A6
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 19:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7C93409A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLRuL_chKORX for <bridge@lists.linux-foundation.org>;
 Thu, 27 Oct 2022 19:55:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DA10409A5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DA10409A5
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 19:55:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6AC3F624C9;
 Thu, 27 Oct 2022 19:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 093E6C433C1;
 Thu, 27 Oct 2022 19:54:58 +0000 (UTC)
Date: Thu, 27 Oct 2022 15:55:13 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
Message-ID: <20221027155513.60b211e2@gandalf.local.home>
In-Reply-To: <20221027150928.780676863@goodmis.org>
References: <20221027150525.753064657@goodmis.org>
 <20221027150928.780676863@goodmis.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Sat, 29 Oct 2022 09:38:05 +0000
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-afs@lists.infradead.org,
 Menglong Dong <imagedong@tencent.com>, bridge@lists.linux-foundation.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Guenter Roeck <linux@roeck-us.net>,
 Martin KaFai Lau <martin.lau@kernel.org>,
 Kuniyuki Iwashima <kuniyu@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mirko Lindner <mlindner@marvell.com>, linux-nfs@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
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

On Thu, 27 Oct 2022 12:38:16 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> On 10/27/22 12:27, Steven Rostedt wrote:
> > On Thu, 27 Oct 2022 15:20:58 -0400
> > Steven Rostedt <rostedt@goodmis.org> wrote:
> >   
> >>> (many more of those)
> >>> ...
> >>> [   16.329989]  timer_fixup_free+0x40/0x54  
> >>
> >> Ah, I see the issue here. Looks like the timer_fixup_free() is calling
> >> itself and crashing.
> >>
> >> Let me take a look into that. I didn't touch the fixup code, and there
> >> could be an assumption there that it's behaving with the old approach.  
> > 
> > Can you add this and see if it makes this issue go away?
> >   
> 
> Yes, that fixes the crash. However, it still reports
> 
> [   12.235054] ------------[ cut here ]------------
> [   12.235240] ODEBUG: free active (active state 0) object type: timer_list hint: tcp_write_timer+0x0/0x190
> [   12.237331] WARNING: CPU: 0 PID: 310 at lib/debugobjects.c:502 debug_print_object+0xb8/0x100
> ...
> [   12.255251] Call trace:
> [   12.255305]  debug_print_object+0xb8/0x100
> [   12.255385]  __debug_check_no_obj_freed+0x1d0/0x25c
> [   12.255474]  debug_check_no_obj_freed+0x20/0x90
> [   12.255555]  slab_free_freelist_hook.constprop.0+0xac/0x1b0
> [   12.255650]  kmem_cache_free+0x1ac/0x500
> [   12.255728]  __sk_destruct+0x140/0x2a0
> [   12.255805]  sk_destruct+0x54/0x64
> [   12.255877]  __sk_free+0x74/0x120
> [   12.255944]  sk_free+0x64/0x8c
> [   12.256009]  tcp_close+0x94/0xc0
> [   12.256076]  inet_release+0x50/0xb0
> [   12.256145]  __sock_release+0x44/0xbc
> [   12.256219]  sock_close+0x18/0x30
> [   12.256292]  __fput+0x84/0x270
> [   12.256361]  ____fput+0x10/0x20
> [   12.256426]  task_work_run+0x88/0xf0
> [   12.256499]  do_exit+0x334/0xafc
> [   12.256566]  do_group_exit+0x34/0x90
> [   12.256634]  __arm64_sys_exit_group+0x18/0x20
> [   12.256713]  invoke_syscall+0x48/0x114
> [   12.256789]  el0_svc_common.constprop.0+0x60/0x11c
> [   12.256874]  do_el0_svc+0x30/0xd0
> [   12.256943]  el0_svc+0x48/0xc0
> [   12.257008]  el0t_64_sync_handler+0xbc/0x13c
> [   12.257086]  el0t_64_sync+0x18c/0x190
> 
> Is that a real problem or a false positive ? I didn't see that
> without your patch series (which of course might be the whole point
> of the series).
> 

I think this is indeed an issue, and I'm replying to the net patch as it
has the necessary folks Cc'd.

The ipv4 tcp code has:

void tcp_init_xmit_timers(struct sock *sk)
{
	inet_csk_init_xmit_timers(sk, &tcp_write_timer, &tcp_delack_timer,
				  &tcp_keepalive_timer);

And from the above back trace:

tcp_close() where I'm assuming that tcp_disconnect() or tcp_done() was
called that both calls:

  tcp_clear_xmit_timers(sk);

That calls:

	inet_csk_clear_xmit_timers(sk);

That has:

void inet_csk_clear_xmit_timers(struct sock *sk)
{
	struct inet_connection_sock *icsk = inet_csk(sk);

	icsk->icsk_pending = icsk->icsk_ack.pending = 0;

	sk_stop_timer(sk, &icsk->icsk_retransmit_timer);
	sk_stop_timer(sk, &icsk->icsk_delack_timer);
	sk_stop_timer(sk, &sk->sk_timer);
}

Where:

void sk_stop_timer(struct sock *sk, struct timer_list* timer)
{
	if (del_timer(timer))
		__sock_put(sk);
}


Hence, this is a case where we have timers that have been disabled with
only del_timer() before the timers are freed.

I think we need to update this code to squeeze in a del_timer_shutdown() to
make sure that the timers are never restarted.

There is a sk_stop_timer_sync() that I changed to use del_timer_shutdown()
but that's only used in one file: net/mptcp/pm_netlink.c

-- Steve
