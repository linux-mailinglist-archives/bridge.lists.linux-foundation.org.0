Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE23B6121E8
	for <lists.bridge@lfdr.de>; Sat, 29 Oct 2022 11:38:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE1C681760;
	Sat, 29 Oct 2022 09:38:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE1C681760
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google header.b=KiOYl6oY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8P2sXNCnD3JS; Sat, 29 Oct 2022 09:38:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 07C6881401;
	Sat, 29 Oct 2022 09:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07C6881401
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 32617C008E;
	Sat, 29 Oct 2022 09:38:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 32568C002D
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 20:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED5FA410AC
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 20:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED5FA410AC
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=linux-foundation.org
 header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google
 header.b=KiOYl6oY
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXV5n7W8x3l5 for <bridge@lists.linux-foundation.org>;
 Thu, 27 Oct 2022 20:49:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED8DD4109B
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED8DD4109B
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 20:49:23 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id d13so2059378qko.5
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 13:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=oSQGNRMEvUKfx6go8ULfblA0p1pLNMVNwBSwzmOAVIQ=;
 b=KiOYl6oYgVWmVt5yfOwXFbg2uqh6VMRSaNrvgwmuxSGJROVhF0gOA1n6rrYx8VRW6R
 VVZ63rmL9pY6OoKE9oUm6undU4L2Zw1Drahl+CZCyz+M4M06l6JRo9sMPUn+pAaD9PiI
 Dk7dgLCKUTOIMkWDgv7w/+2Fdi4C07XO5WJgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oSQGNRMEvUKfx6go8ULfblA0p1pLNMVNwBSwzmOAVIQ=;
 b=APJt4U/iGlzgP7/P66XY/htC+W/QQ3Qgl84+dAEp8P8g1Leyol4kGt7uh14PCDb+82
 SWa57JbM90YxlETL4XzysMNck3UNAhrT33iv9vxFWNP7gQzuJwUvMmuVYvRVm3IymLcw
 ieOdhtObHQxXTa27nvvHqsiTmZo01NcUl78ge9NPyjk62XZ8r1gdTS0dxocETcXq8VgC
 OJbjjyT7TZvcpLxG7kILLw7+RRfJP+R7QNfz8NjyGKdAOqpSXNnsITjva0W2OTBnQcEP
 h5xhc3sI30pGYina6nz1+cj81wWTbTkgvJzEiLzsq2hg/CwC8gQQG5JT6D8XkVsqWuOu
 FPjw==
X-Gm-Message-State: ACrzQf1qcAhxFNJRQKge/K/H2kS17yaJ6elP21jpa9ANLZexSnMziW4k
 kEvzKAbU+EuVa4WqMeUJJauVqtLUKODF9qqY
X-Google-Smtp-Source: AMsMyM7vvdW37R9zl/GoV7jo9/xAYkb7y6p7HG5mQecrDchwly+4f2OXVo69zHAP8IU3nJEaZcfOpQ==
X-Received: by 2002:a05:620a:4149:b0:6ee:bdb3:7610 with SMTP id
 k9-20020a05620a414900b006eebdb37610mr35728433qko.514.1666903762604; 
 Thu, 27 Oct 2022 13:49:22 -0700 (PDT)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com.
 [209.85.128.175]) by smtp.gmail.com with ESMTPSA id
 t18-20020a37ea12000000b006af0ce13499sm1595078qkj.115.2022.10.27.13.49.21
 for <bridge@lists.linux-foundation.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Oct 2022 13:49:22 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id
 00721157ae682-367b8adf788so28744047b3.2
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 13:49:21 -0700 (PDT)
X-Received: by 2002:a05:6902:124f:b0:66e:e3da:487e with SMTP id
 t15-20020a056902124f00b0066ee3da487emr49547816ybu.310.1666903751005; Thu, 27
 Oct 2022 13:49:11 -0700 (PDT)
MIME-Version: 1.0
References: <20221027150525.753064657@goodmis.org>
 <20221027150928.780676863@goodmis.org>
 <20221027155513.60b211e2@gandalf.local.home>
 <CAHk-=wjAjW2P5To82+CAM0Rx8RexQBHPTVZBWBPHyEPGm37oFA@mail.gmail.com>
 <20221027163453.383bbf8e@gandalf.local.home>
In-Reply-To: <20221027163453.383bbf8e@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 27 Oct 2022 13:48:54 -0700
X-Gmail-Original-Message-ID: <CAHk-=whoS+krLU7JNe=hMp2VOcwdcCdTXhdV8qqKoViwzzJWfA@mail.gmail.com>
Message-ID: <CAHk-=whoS+krLU7JNe=hMp2VOcwdcCdTXhdV8qqKoViwzzJWfA@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
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

On Thu, Oct 27, 2022 at 1:34 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> What about del_timer_try_shutdown(), that if it removes the timer, it sets
> the function to NULL (making it equivalent to a successful shutdown),
> otherwise it does nothing. Allowing the the timer to be rearmed.

Sounds sane to me and should work, but as mentioned, I think the
networking people need to say "yeah" too.

And maybe that function can also disallow any future re-arming even
for the case where the timer couldn't be actively removed.

So any *currently* active timer wouldn't be waited for (either because
locking may make that a deadlock situation, or simply due to
performance issues), but at least it would guarantee that no new timer
activations can happen.

Because I do like the whole notion of "timer has been shutdown and
cannot be used as a timer any more without re-initializing it" being a
real state - even for a timer that may be "currently in flight".

So this all sounds very worthwhile to me, but I'm not surprised that
we have code that then knows about all the subtleties of "del_timer()
might still have a running timer" and actually take advantage of it
(where "advantage" is likely more of a "deal with the complexities"
rather than anything really positive ;)

And those existing subtle users might want particular semantics to at
least make said complexities easier.

               Linus
