Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE3E6121EC
	for <lists.bridge@lfdr.de>; Sat, 29 Oct 2022 11:38:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FF7960B0F;
	Sat, 29 Oct 2022 09:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FF7960B0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EUSlc76Va88T; Sat, 29 Oct 2022 09:38:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AA20860E91;
	Sat, 29 Oct 2022 09:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA20860E91
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95C69C0096;
	Sat, 29 Oct 2022 09:38:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 215D6C002D
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 21:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3DC340383
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 21:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3DC340383
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iGM7YWW5Ma0j for <bridge@lists.linux-foundation.org>;
 Thu, 27 Oct 2022 21:07:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1974840125
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1974840125
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 21:07:44 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 090C4624F5;
 Thu, 27 Oct 2022 21:07:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB0E0C433D6;
 Thu, 27 Oct 2022 21:07:40 +0000 (UTC)
Date: Thu, 27 Oct 2022 17:07:55 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20221027170755.40ee4059@gandalf.local.home>
In-Reply-To: <20221027163453.383bbf8e@gandalf.local.home>
References: <20221027150525.753064657@goodmis.org>
 <20221027150928.780676863@goodmis.org>
 <20221027155513.60b211e2@gandalf.local.home>
 <CAHk-=wjAjW2P5To82+CAM0Rx8RexQBHPTVZBWBPHyEPGm37oFA@mail.gmail.com>
 <20221027163453.383bbf8e@gandalf.local.home>
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
 tipc-discussion@lists.sourceforge.net, Stephen Boyd <sboyd@kernel.org>,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 netfilter-devel@vger.kernel.org, Pavel Begunkov <asml.silence@gmail.com>
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

On Thu, 27 Oct 2022 16:34:53 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> What about del_timer_try_shutdown(), that if it removes the timer, it sets
> the function to NULL (making it equivalent to a successful shutdown),
> otherwise it does nothing. Allowing the the timer to be rearmed.
> 
> I think this would work in this case.

Guenter,

Can you apply this patch on top of the series, and see if it makes the
warning go away?

diff --git a/include/linux/timer.h b/include/linux/timer.h
index d4d90149d015..e3c5f4bdd526 100644
--- a/include/linux/timer.h
+++ b/include/linux/timer.h
@@ -184,12 +184,23 @@ static inline int timer_pending(const struct timer_list * timer)
 	return !hlist_unhashed_lockless(&timer->entry);
 }
 
+extern int __del_timer(struct timer_list * timer, bool free);
+
 extern void add_timer_on(struct timer_list *timer, int cpu);
-extern int del_timer(struct timer_list * timer);
 extern int mod_timer(struct timer_list *timer, unsigned long expires);
 extern int mod_timer_pending(struct timer_list *timer, unsigned long expires);
 extern int timer_reduce(struct timer_list *timer, unsigned long expires);
 
+static inline int del_timer_try_shutdown(struct timer_list *timer)
+{
+	return __del_timer(timer, true);
+}
+
+static inline int del_timer(struct timer_list *timer)
+{
+	return __del_timer(timer, false);
+}
+
 /*
  * The jiffies value which is added to now, when there is no timer
  * in the timer wheel:
diff --git a/kernel/time/timer.c b/kernel/time/timer.c
index 7305c65ad0eb..073031cb3bb9 100644
--- a/kernel/time/timer.c
+++ b/kernel/time/timer.c
@@ -1255,7 +1255,7 @@ EXPORT_SYMBOL_GPL(add_timer_on);
  * (ie. del_timer() of an inactive timer returns 0, del_timer() of an
  * active timer returns 1.)
  */
-int del_timer(struct timer_list *timer)
+int __del_timer(struct timer_list *timer, bool free)
 {
 	struct timer_base *base;
 	unsigned long flags;
@@ -1266,12 +1266,16 @@ int del_timer(struct timer_list *timer)
 	if (timer_pending(timer)) {
 		base = lock_timer_base(timer, &flags);
 		ret = detach_if_pending(timer, base, true);
+		if (free && ret) {
+			timer->function = NULL;
+			debug_timer_deactivate(timer);
+		}
 		raw_spin_unlock_irqrestore(&base->lock, flags);
 	}
 
 	return ret;
 }
-EXPORT_SYMBOL(del_timer);
+EXPORT_SYMBOL(__del_timer);
 
 static int __try_to_del_timer_sync(struct timer_list *timer, bool free)
 {
diff --git a/net/core/sock.c b/net/core/sock.c
index 10cc84379d75..23a97442a0a6 100644
--- a/net/core/sock.c
+++ b/net/core/sock.c
@@ -3345,7 +3345,7 @@ EXPORT_SYMBOL(sk_reset_timer);
 
 void sk_stop_timer(struct sock *sk, struct timer_list* timer)
 {
-	if (del_timer(timer))
+	if (del_timer_try_shutdown(timer))
 		__sock_put(sk);
 }
 EXPORT_SYMBOL(sk_stop_timer);
