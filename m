Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE49A61A266
	for <lists.bridge@lfdr.de>; Fri,  4 Nov 2022 21:42:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A26F61043;
	Fri,  4 Nov 2022 20:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A26F61043
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=lOkZpKJZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vHyPLBwbMr_n; Fri,  4 Nov 2022 20:42:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D9032610C3;
	Fri,  4 Nov 2022 20:42:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9032610C3
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 72916C0077;
	Fri,  4 Nov 2022 20:42:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CFF4FC002D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 20:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A88E841928
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 20:42:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A88E841928
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=lOkZpKJZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wvn4Et-23EMH for <bridge@lists.linux-foundation.org>;
 Fri,  4 Nov 2022 20:42:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EE284190A
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com
 [IPv6:2001:4860:4864:20::2b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EE284190A
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 20:42:02 +0000 (UTC)
Received: by mail-oa1-x2b.google.com with SMTP id
 586e51a60fabf-13ae8117023so6770496fac.9
 for <bridge@lists.linux-foundation.org>; Fri, 04 Nov 2022 13:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=LPWTHAu4vAKpdYGymfUO7xJHpj+KFNZBd9yee/lAZWg=;
 b=lOkZpKJZGrRdTwW1q1n3PYtNavkFYrwxfV2GFvR6YWuaVKwLPk4VJ5U5ZDx0nuSETe
 4J0qx8jESJCo6y+3k5I/RIDeXo7Y6jSgRRXz2DJFkzXiePACdAOetFhkjtL5bcgp83ac
 L9LEH/9+5kOlP36xHlU1S0A9pTTFCmy4MsC6KZRblm7eTmGH17TdH1F+e+pVpfC6YibP
 OD0bbJB9hlpboqehpl8hGHOw6SotGw7ZzxTK+J5+Bkycl7auUJR59DVXhb+Lm2qdFRIM
 WNNsyFThpDNs5XVQPsJWiyibl8FySITsqyv8EbD5o54HP3A3J+dpKDkJeIuzl/+kIUVP
 0S2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LPWTHAu4vAKpdYGymfUO7xJHpj+KFNZBd9yee/lAZWg=;
 b=66j1u5el1hKjT1h1TwpP4WF8HJ8GT28olTVUdhTD8RvDLTu0A90yHDCkPb+seZvqsu
 s7/LJBKwXvBjyCnspNoVAqukln7ZQd3CtVAvnEdWfkbg5J/NlSrzVdkdFkQb0OVHo5Au
 opHqeOS1xm0pz2j11t88C5S0nytH7Xj2i19QrGktG93Z4Ndv7ucAWOd+0DSl0VNrAVYM
 NEuaAeT0nrO4sBzwcm8SdJOjtGyEhM7TB7Jg1vLfOku2JkDKgWXn6Y+ess7U3Bw/ceGG
 ZXQeSTI/pDkas0GKkFE0z+hnx3TA9/4M/zc6gafXp80ONl/gu0mKpZPacspvjJm+91ct
 Y6nQ==
X-Gm-Message-State: ACrzQf0EPLxK44G2G87ntkYGC47CMUmfAvXHlORB11boCnyfNofjoNVi
 JeLo+uySWuA7yLEFX0L8btM=
X-Google-Smtp-Source: AMsMyM4YoEr7WxXxO25Opwv5nzrxjGmv3HfOq/bk78IdaTMObaueZEnFddqxBoG0u+KT3n0Hv+LaGQ==
X-Received: by 2002:a05:6870:9597:b0:13a:f95a:2bc1 with SMTP id
 k23-20020a056870959700b0013af95a2bc1mr32722633oao.292.1667594521690; 
 Fri, 04 Nov 2022 13:42:01 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a9-20020a544e09000000b00359ad661d3csm43433oiy.30.2022.11.04.13.42.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 13:42:00 -0700 (PDT)
Date: Fri, 4 Nov 2022 13:41:59 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104204159.GA506794@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
 <20221104154209.21b26782@rorschach.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104154209.21b26782@rorschach.local.home>
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

On Fri, Nov 04, 2022 at 03:42:09PM -0400, Steven Rostedt wrote:
> On Fri, 4 Nov 2022 12:22:32 -0700
> Guenter Roeck <linux@roeck-us.net> wrote:
> 
> > Unfortunately the renaming caused some symbol conflicts.
> > 
> > Global definition: timer_shutdown
> > 
> >   File             Line
> > 0 time.c            93 static inline void timer_shutdown(struct clock_event_device *evt)
> > 1 arm_arch_timer.c 690 static __always_inline int timer_shutdown(const int access,
> > 2 timer-fttmr010.c 105 int (*timer_shutdown)(struct clock_event_device *evt);
> > 3 timer-sp804.c    158 static inline void timer_shutdown(struct clock_event_device *evt)
> > 4 timer.h          239 static inline int timer_shutdown(struct timer_list *timer)
> 
> $ git grep '\btimer_shutdown'
> arch/arm/mach-spear/time.c:static inline void timer_shutdown(struct clock_event_device *evt)
> arch/arm/mach-spear/time.c:     timer_shutdown(evt);
> arch/arm/mach-spear/time.c:     timer_shutdown(evt);
> arch/arm/mach-spear/time.c:     timer_shutdown(evt);
> drivers/clocksource/arm_arch_timer.c:static __always_inline int timer_shutdown(const int access,
> drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_VIRT_ACCESS, clk);
> drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_PHYS_ACCESS, clk);
> drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_VIRT_ACCESS, clk);
> drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_PHYS_ACCESS, clk);
> drivers/clocksource/timer-fttmr010.c:   int (*timer_shutdown)(struct clock_event_device *evt);
> drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
> drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
> drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
> drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
> drivers/clocksource/timer-sp804.c:static inline void timer_shutdown(struct clock_event_device *evt)
> drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);
> drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);
> 
> Honestly, I think these need to be renamed, as "timer_shutdown()"
> should be specific to the timer code, and not individual timers.

Yes, that is what I did locally. I am repeating my test now with that
change made.

Guenter
