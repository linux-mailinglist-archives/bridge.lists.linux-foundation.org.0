Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B7A618D13
	for <lists.bridge@lfdr.de>; Fri,  4 Nov 2022 01:00:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CC8E6104E;
	Fri,  4 Nov 2022 00:00:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CC8E6104E
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.a=rsa-sha256 header.s=20210112 header.b=WfZQ7T5J
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bsyhMJGkwMFa; Fri,  4 Nov 2022 00:00:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1408B6104C;
	Fri,  4 Nov 2022 00:00:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1408B6104C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9A368C007B;
	Fri,  4 Nov 2022 00:00:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD345C002D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 00:00:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93B5240121
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 00:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93B5240121
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=WfZQ7T5J
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1xhU1OzjApHW for <bridge@lists.linux-foundation.org>;
 Fri,  4 Nov 2022 00:00:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7292F400D8
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7292F400D8
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 00:00:33 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-36a4b86a0abso30310577b3.7
 for <bridge@lists.linux-foundation.org>; Thu, 03 Nov 2022 17:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=OIWN7urgPvg7gWQ/2jmCuNIcCwluarihUklEPGyHjcg=;
 b=WfZQ7T5J19AGsPaNUJuOsP0Km5Ixqe3g2OjzWlZ48O9n++G6HOElr/NHRpLA9fDnwr
 zjRaF+oN7J52K4Hkt1QfKpCQB5Wz5OV6RrsZAgAUs0tkU6h0aV7cYd6yEHz8xOWTUUaE
 nTwx3sfZXExTHFKflgZ0kHbhOyWH5xYa/4o8baHcab29Hq9pAX7cOlT1SrWXDbt87QYk
 qqJgjVZVqEHQO2qDmqBHDnF4n6wAmtRz5tmd/UsTP0SD10mD6uXXRAlwFdt5yYXaLs84
 Q6NGteraqshFTYF08psP5WYnjWqJg/XADvug0NuClQLOveJFe7i203jnVfhv2iws1QsI
 5poA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OIWN7urgPvg7gWQ/2jmCuNIcCwluarihUklEPGyHjcg=;
 b=8M9tBSOEvnUx8CSUKnoqbZrp5QPDK/VNYhVlhJF89PxFGvYDbhBCcRj9gXzpTC78Rt
 nfZ/vciG+YeoQ0F090bPeKW02HiDD8DTJjDfXFo2Uh95Db427oCwGrCOPliQr7YCAMq7
 l6PfosutalGZ59zeRPWnELB0Qhizf0mQ4mmutUIq2DNVmMryhQZ0iXuuyDqPBLlzLf0x
 gf1a9HA6pPvQvteyu5CfF4irdPylNAooOeZXFa+gtFSNABwutYzd7MJJ1j3EArUy1KJU
 0YIwI5pjJGEN/r4g1eSnTBC2MZ5mNRxDfRByPZUJW06DEGp6rz08gSsemySz090Rg0rA
 medg==
X-Gm-Message-State: ACrzQf2S4cDmS2xhUCmSTavIFVPKsROx4Yw0VUHjq5tJ8sVGAtBnYig8
 s7Jo/ZiiKXrwiIgR+cXLVBzkfZOtHuZ7qdADx1UcFg==
X-Google-Smtp-Source: AMsMyM4aPgSxRkszwf78hhXzMH4nUQ/6+7Nmf1bkd3EgAr4pZAmAEnobR0Kbs5o4qTyfKdYLFWynOitqShpFiKJNAxo=
X-Received: by 2002:a81:6084:0:b0:370:10fa:c4ff with SMTP id
 u126-20020a816084000000b0037010fac4ffmr32397029ywb.255.1667520032026; Thu, 03
 Nov 2022 17:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <20221027150525.753064657@goodmis.org>
 <20221027150928.780676863@goodmis.org>
 <20221027155513.60b211e2@gandalf.local.home>
 <CAHk-=wjAjW2P5To82+CAM0Rx8RexQBHPTVZBWBPHyEPGm37oFA@mail.gmail.com>
 <20221027163453.383bbf8e@gandalf.local.home>
 <CAHk-=whoS+krLU7JNe=hMp2VOcwdcCdTXhdV8qqKoViwzzJWfA@mail.gmail.com>
 <20221027170720.31497319@gandalf.local.home>
 <20221027183511.66b058c4@gandalf.local.home>
 <20221028183149.2882a29b@gandalf.local.home>
 <20221028154617.3c63ba68@kernel.org>
 <27a6a587fee5e9172e41acd16ae1bc1f556fdbd7.camel@redhat.com>
 <20221103175123.744d0f37@rorschach.local.home>
In-Reply-To: <20221103175123.744d0f37@rorschach.local.home>
Date: Thu, 3 Nov 2022 17:00:20 -0700
Message-ID: <CANn89iLv9cak6_vXJG5t=Kq+eiMPdMxF8w4AAuAuFB5sOsy2zg@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Alexei Starovoitov <ast@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-afs@lists.infradead.org,
 Menglong Dong <imagedong@tencent.com>, bridge@lists.linux-foundation.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Guenter Roeck <linux@roeck-us.net>,
 Martin KaFai Lau <martin.lau@kernel.org>,
 Kuniyuki Iwashima <kuniyu@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mirko Lindner <mlindner@marvell.com>, linux-nfs@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, Stephen Boyd <sboyd@kernel.org>,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 netfilter-devel@vger.kernel.org,
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
From: Eric Dumazet via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Eric Dumazet <edumazet@google.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Thu, Nov 3, 2022 at 2:51 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Sun, 30 Oct 2022 18:22:03 +0100
> Paolo Abeni <pabeni@redhat.com> wrote:
>
> > On the positive side, I think converting the sk_stop_timer in
> > inet_csk_clear_xmit_timers() should be safe and should cover the issue
> > reported by Guenter
>
> Would something like this be OK?
>
> [ Note, talking with Thomas Gleixner, we agreed that we are changing the
>   name to: time_shutdown_sync() and timer_shutdown() (no wait version).
>   I'll be posting new patches soon. ]
>
> -- Steve
>
> diff --git a/include/net/sock.h b/include/net/sock.h
> index 22f8bab583dd..0ef58697d4e5 100644
> --- a/include/net/sock.h
> +++ b/include/net/sock.h
> @@ -2439,6 +2439,8 @@ void sk_stop_timer(struct sock *sk, struct timer_list *timer);
>
>  void sk_stop_timer_sync(struct sock *sk, struct timer_list *timer);
>
> +void sk_shutdown_timer(struct sock *sk, struct timer_list *timer);
> +
>  int __sk_queue_drop_skb(struct sock *sk, struct sk_buff_head *sk_queue,
>                         struct sk_buff *skb, unsigned int flags,
>                         void (*destructor)(struct sock *sk,
> diff --git a/net/core/sock.c b/net/core/sock.c
> index a3ba0358c77c..82124862b594 100644
> --- a/net/core/sock.c
> +++ b/net/core/sock.c
> @@ -3357,6 +3357,13 @@ void sk_stop_timer_sync(struct sock *sk, struct timer_list *timer)
>  }
>  EXPORT_SYMBOL(sk_stop_timer_sync);
>
> +void sk_shutdown_timer(struct sock *sk, struct timer_list* timer)
> +{
> +       if (timer_shutdown(timer))
> +               __sock_put(sk);
> +}
> +EXPORT_SYMBOL(sk_shutdown_timer);
> +
>  void sock_init_data(struct socket *sock, struct sock *sk)
>  {
>         sk_init_common(sk);
> diff --git a/net/ipv4/inet_connection_sock.c b/net/ipv4/inet_connection_sock.c
> index 5e70228c5ae9..71f398f51958 100644
> --- a/net/ipv4/inet_connection_sock.c
> +++ b/net/ipv4/inet_connection_sock.c
> @@ -722,15 +722,15 @@ void inet_csk_clear_xmit_timers(struct sock *sk)
>
>         icsk->icsk_pending = icsk->icsk_ack.pending = 0;
>
> -       sk_stop_timer(sk, &icsk->icsk_retransmit_timer);
> -       sk_stop_timer(sk, &icsk->icsk_delack_timer);
> -       sk_stop_timer(sk, &sk->sk_timer);
> +       sk_shutdown_timer(sk, &icsk->icsk_retransmit_timer);
> +       sk_shutdown_timer(sk, &icsk->icsk_delack_timer);
> +       sk_shutdown_timer(sk, &sk->sk_timer);
>  }
>  EXPORT_SYMBOL(inet_csk_clear_xmit_timers);

 inet_csk_clear_xmit_timers() can be called multiple times during TCP
socket lifetime.

(See tcp_disconnect(), which can be followed by another connect() ... and loop)

Maybe add a second parameter, or add a new
inet_csk_shutdown_xmit_timers() only called from tcp_v4_destroy_sock() ?

>
>  void inet_csk_delete_keepalive_timer(struct sock *sk)
>  {
> -       sk_stop_timer(sk, &sk->sk_timer);
> +       sk_shutdown_timer(sk, &sk->sk_timer);

SO_KEEPALIVE can be called multiple times in a TCP socket lifetime,
on/off/on/off/...

I suggest leaving sk_stop_timer() here.

Eventually  inet_csk_clear_xmit_timers( sk, destroy=true) (or
inet_csk_shutdown_xmit_timers(())
   will  be called before the socket is destroyed.
