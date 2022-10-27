Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 908226121E6
	for <lists.bridge@lfdr.de>; Sat, 29 Oct 2022 11:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69AD060B13;
	Sat, 29 Oct 2022 09:38:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69AD060B13
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google header.b=AiYRsbNP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BA6tEYEW1Xha; Sat, 29 Oct 2022 09:38:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 4EF5860B14;
	Sat, 29 Oct 2022 09:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EF5860B14
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D11EDC0088;
	Sat, 29 Oct 2022 09:38:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4CB6AC002D
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 20:15:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12DBE410C1
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 20:15:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12DBE410C1
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=linux-foundation.org
 header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google
 header.b=AiYRsbNP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nHTCnM9B3Hdy for <bridge@lists.linux-foundation.org>;
 Thu, 27 Oct 2022 20:15:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14D48410B7
Received: from mail-ua1-x931.google.com (mail-ua1-x931.google.com
 [IPv6:2607:f8b0:4864:20::931])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14D48410B7
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 20:15:52 +0000 (UTC)
Received: by mail-ua1-x931.google.com with SMTP id e22so1050448uar.5
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 13:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=PkxtUHaGFDycP6D2luIHLSXJkXOzlvpiMUNbGq0VIDw=;
 b=AiYRsbNPUrZt3HPq+xtJfDrvafoV3sgbBvDsYvDt8alNybjtz3OkR1xymRkE3QILqj
 mmJ4n9e+K/PVts3cQ2eJ5htk2mJ+mPxzhWMdsaeW6GINZP2CIccvVT49FekPjg7PRFXI
 92WGHwoPAVqBkaMzcdjnmCw5MEE1uFvTm34eA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PkxtUHaGFDycP6D2luIHLSXJkXOzlvpiMUNbGq0VIDw=;
 b=z7hwOmJqo+TsgOqOCqOLvxVc2+OPW7zJWgxHdQ84+HtnqiLXucQ67n1+AUldZUfOf3
 ObxIc8azYR+SiEXMbMCqK7v/or6SXPKHxsCnZ0rvg5oI2tnDif3xEbRFewl4zKCd0Q9g
 CibMxoeb9DohOJocjllZF7Aj28DT/QJjyAbSLXnerH2IfWLnGGzG6jA8PvkNzhDnMGrk
 Nrr5F5IMYbg3cfYJXaNW/h9FCnJdmdnz35QhZAJIaOuOSnOVEeRvGArxcLh1M04x6LLw
 boAUkPyT1ipLkWCl6djBJMw8ITA4PCli/IFIIQP/ZbiHcwven6j7QV3BDFaCIvEkDefV
 vYsQ==
X-Gm-Message-State: ACrzQf00omp7RF03IA8TtPWbkUKYWh1mAMfkpaDxX2ugmFrZy5BnzjqV
 Odikks6GWYC9bpzwkMwZjJJc9Djw3SCFixAv
X-Google-Smtp-Source: AMsMyM6WRbYPCNK4lYJgn16Zrw/c89ETsB7X5ZWSIcjERncz8lkedxdD9y9LJV6eaC5z1sa0Qm4HUA==
X-Received: by 2002:a9f:3d88:0:b0:3e2:f8c6:90ca with SMTP id
 c8-20020a9f3d88000000b003e2f8c690camr30411739uai.29.1666901751626; 
 Thu, 27 Oct 2022 13:15:51 -0700 (PDT)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com.
 [209.85.222.44]) by smtp.gmail.com with ESMTPSA id
 w140-20020a1f9492000000b003aea62272d1sm237551vkd.34.2022.10.27.13.15.51
 for <bridge@lists.linux-foundation.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Oct 2022 13:15:51 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id c31so1039074uae.10
 for <bridge@lists.linux-foundation.org>; Thu, 27 Oct 2022 13:15:51 -0700 (PDT)
X-Received: by 2002:a81:d34c:0:b0:349:1e37:ce4e with SMTP id
 d12-20020a81d34c000000b003491e37ce4emr46057341ywl.112.1666901739776; Thu, 27
 Oct 2022 13:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <20221027150525.753064657@goodmis.org>
 <20221027150928.780676863@goodmis.org>
 <20221027155513.60b211e2@gandalf.local.home>
In-Reply-To: <20221027155513.60b211e2@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 27 Oct 2022 13:15:23 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjAjW2P5To82+CAM0Rx8RexQBHPTVZBWBPHyEPGm37oFA@mail.gmail.com>
Message-ID: <CAHk-=wjAjW2P5To82+CAM0Rx8RexQBHPTVZBWBPHyEPGm37oFA@mail.gmail.com>
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

On Thu, Oct 27, 2022 at 12:55 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> I think we need to update this code to squeeze in a del_timer_shutdown() to
> make sure that the timers are never restarted.

So the reason the networking code does this is that it can't just do
the old 'sync()' thing, the timers are deleted in contexts where that
isn't valid.

Which is also afaik why the networking code does that whole "timer
implies a refcount to the socket" and then does the

    if (del_timer(timer))
           sock_put()

thing (ie if the del_timer failed - possibly because it was already
running - you leave the refcount alone).

So the networking code cannot do the del_timer_shutdown() for the same
reason it cannot do the del_timer_sync(): it can't afford to wait for
the timer to stop running.

I suspect it needs something like a new "del_timer_shutdown_async()"
that isn't synchronous, but does that

 - acts as del_timer in that it doesn't wait, and returns a success if
it could just remove the pending case

 - does that "mark timer for shutdown" in that success case

or something similar.

But the networking people will know better.

               Linus
