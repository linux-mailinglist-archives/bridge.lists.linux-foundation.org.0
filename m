Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC24C61A284
	for <lists.bridge@lfdr.de>; Fri,  4 Nov 2022 21:42:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71C3E8204D;
	Fri,  4 Nov 2022 20:42:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71C3E8204D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=lSF8e6DL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7Nm9wlbi-qm; Fri,  4 Nov 2022 20:42:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0460E821BF;
	Fri,  4 Nov 2022 20:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0460E821BF
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AD450C0077;
	Fri,  4 Nov 2022 20:42:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E9CFFC002D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 20:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4726403F9
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 20:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4726403F9
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=lSF8e6DL
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7D-h6PFm_k4W for <bridge@lists.linux-foundation.org>;
 Fri,  4 Nov 2022 20:42:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 287D2403D6
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 287D2403D6
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 20:42:54 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id y67so6394885oiy.1
 for <bridge@lists.linux-foundation.org>; Fri, 04 Nov 2022 13:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=;
 b=lSF8e6DLqbKKv+/YhmRhAK/T1efgb2O636TOXNjLfcC0viXP62NhHdxomxLJWtIe7d
 2JndYje5nsRNFlqIXElcBPkKCNEcFme9PlK3C7Q1VMpYaqUkgV/gQHQcIxtcw2fILMZW
 OKJ4E8wSXhLBL3J9S3NnNPs9rdwe6KKkDhBPqcY/XDJgpqSUigUMcqCvapDa55nrN05q
 GmtiLLrP+Y0lcIHCsefgW4EhiR9DSJnDXwmLBbW8A31Y89yswej4P9L3XtJNKO8bMaw7
 4czQwKTd2lx34+qzGmcV/Exm8IIRhuHeavJKESaaJd5m9cQQb9K2fLTxromO6yhuwk2D
 Ci4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jQ4gXr1turouEQ95+x3UakyDrVi4g3dT0y7NpfH0qPs=;
 b=sL8nFTp9dFFXpIhhIlIr84DYofOzwirmL8NjpynyIP1EVuM5Xu1ebDiW0M+EmrlNk6
 stqhoBo7TJUnBXHO/igxUaDdX+l9pjEsd1Aa5oTYZY3sWGC6FCzB7OHkU+U1pAFshCTt
 D36r6BMuXURr6+aiJ+6B0m9srGOjdVt4KLUPVMvBSbk307iqHWoNMyO8gneKQIBPMHdL
 3bZ/zhxY3nFXEEa1Nfies+AF2K6lLOqH3iyM0nIHZeCCJbQqfYSN0WzPurbf67kpveWU
 lbc65SykQxgDKK7YjkXtJlidm3Rup/DYRCKf+WTNYSXCStjqHhTlNIln4WTsuSJIry9n
 C3Eg==
X-Gm-Message-State: ACrzQf26OSQPQAFkZy2AhI7d28vLpWY9bUf8cHE/vlerK6rmSO5GxJEc
 cQYbnydOVcN25CNIBYqVtBM=
X-Google-Smtp-Source: AMsMyM6uhfbCXJb2q3AkwRuMO9Mjf9xHTKiSSXkljdTFDkgQ9gIWK1vZZlSecO9utfeB4MFPxnhffw==
X-Received: by 2002:a54:4587:0:b0:359:c737:b2e8 with SMTP id
 z7-20020a544587000000b00359c737b2e8mr20212921oib.234.1667594573223; 
 Fri, 04 Nov 2022 13:42:53 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 f1-20020a056830204100b006619483182csm162608otp.18.2022.11.04.13.42.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 13:42:52 -0700 (PDT)
Date: Fri, 4 Nov 2022 13:42:51 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104204251.GB506794@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
 <20221104154209.21b26782@rorschach.local.home>
 <20221104154355.578ab689@rorschach.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104154355.578ab689@rorschach.local.home>
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org,
 cgroups@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bridge] [RFC][PATCH v3 00/33] timers: Use timer_shutdown*()
 before freeing timers
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

On Fri, Nov 04, 2022 at 04:38:34PM -0400, Steven Rostedt wrote:
> On Fri, 4 Nov 2022 15:42:09 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
[ ... ]
> 
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> > drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
> > drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
> 
> I won't touch structure fields though.
> 

Agreed, same here.

Guenter
