Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A706661A5D4
	for <lists.bridge@lfdr.de>; Sat,  5 Nov 2022 00:34:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C5F881291;
	Fri,  4 Nov 2022 23:34:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C5F881291
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Jg8jucXt
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IjuVM4N53AvY; Fri,  4 Nov 2022 23:34:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4B91C80FA7;
	Fri,  4 Nov 2022 23:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B91C80FA7
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA690C0077;
	Fri,  4 Nov 2022 23:34:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4676BC002D
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 23:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D079607B0
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 23:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D079607B0
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Jg8jucXt
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aHxpH6M8qm5Z for <bridge@lists.linux-foundation.org>;
 Fri,  4 Nov 2022 23:34:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08357607A1
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com
 [IPv6:2001:4860:4864:20::29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08357607A1
 for <bridge@lists.linux-foundation.org>; Fri,  4 Nov 2022 23:34:43 +0000 (UTC)
Received: by mail-oa1-x29.google.com with SMTP id
 586e51a60fabf-13b103a3e5dso7174610fac.2
 for <bridge@lists.linux-foundation.org>; Fri, 04 Nov 2022 16:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=6hvd6urNEa2bZ2TTknP5YJ+H72Ja2eceUu/0SfBV1dc=;
 b=Jg8jucXtBJP8myrTJM3z0Wltiv65Ikg/KpM2vg9+TBoUW8c9U6W60sIjrbQ9g2FcCc
 31LubanrKiS7Sxd3jWqCYjN51E7mjzHAKTsl2yG3a+PmWqITk6B5s+HGczlPeMYiJFrb
 vBZoQtVDG0kLRBI424jNNGG2b2bDrcM9K1WztoTH0rQVEK4L8GAlPvrCSGnj6IlV9xUa
 XQ46HitYNVXogafALOjhYHs25Hj1J/FbNvVDg+CD68rFnvYhDXkugu2K8l076C7M7TZq
 Qr6xjmcHk7Gk4pAipfE4FkxiMKzRcyJTcom7FrkAkJoEkKmmujHBgxhv3f/neLNWJFlx
 4OcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6hvd6urNEa2bZ2TTknP5YJ+H72Ja2eceUu/0SfBV1dc=;
 b=6bQGOu9zxYPXrbeqTOnkANjj0eDQkiqyv977JVSEW9nIocSp0KQqhTMYoP2kc3QNJ0
 g5BV17Bx3ZJxOT/9FABieTRKEPRUjLMu8GPl5HRWpzwrDaBenyy025kXN84JfCZHOfdb
 X99wYGnA19ueuprtodioHkLqZmjyYg5nQdnqC0g9LMXKnctS0PTDc+qfXkaKjQdvnOr+
 8kWpl6UGYQ+CakJ7y9Kd4iGdyxdjWM1XA+8HA6e7yQoevbs9p78TaI3KLCw7vbrm2TPW
 1BVIafYbl0T+zYD7yT4W2nuuIF278B1bnKaxTLXacAKFgGzU0LDG6J9zZsG69lQYGQ59
 9neQ==
X-Gm-Message-State: ACrzQf2eY8KtFHl7jFAbKm2AYRRZ4eWxAEl8iparRBhIlIuMm/3WdQkb
 /8cgAaqswiXyrBcn92UAKtY=
X-Google-Smtp-Source: AMsMyM7MF9Q/Pp9YnJEtGj4XwhLtYIPmz5/gJtrzdgqLYVrzm8NOvh6bI3lkPYE6537XupHrGdc+uQ==
X-Received: by 2002:a05:6870:6717:b0:13d:8222:329e with SMTP id
 gb23-20020a056870671700b0013d8222329emr7986841oab.128.1667604883046; 
 Fri, 04 Nov 2022 16:34:43 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 w29-20020a056870339d00b0011e37fb5493sm183421oae.30.2022.11.04.16.34.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 16:34:41 -0700 (PDT)
Date: Fri, 4 Nov 2022 16:34:40 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104233440.GA2443898@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221104054053.431922658@goodmis.org>
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

On Fri, Nov 04, 2022 at 01:40:53AM -0400, Steven Rostedt wrote:
> 
> Back in April, I posted an RFC patch set to help mitigate a common issue
> where a timer gets armed just before it is freed, and when the timer
> goes off, it crashes in the timer code without any evidence of who the
> culprit was. I got side tracked and never finished up on that patch set.
> Since this type of crash is still our #1 crash we are seeing in the field,
> it has become a priority again to finish it.
> 

After applying the patches attached below, everything compiles for me,
and there are no crashes. There are still various warnings, most in
networking. I know I need to apply some patch(es) to fix the networking
warnings, but I didn't entirely understand what exactly to apply, so
I didn't try.

Complete logs are at https://kerneltests.org/builders, on the bottom half
of the page (qemu tests, in the 'testing' column).

Guenter

---
Warnings:

ODEBUG: free active (active state 0) object type: timer_list hint: tcp_write_timer+0x0/0x1d0
	from tcp_close -> __sk_destruct -> tcp_write_timer

ODEBUG: free active (active state 0) object type: timer_list hint: tcp_keepalive_timer+0x0/0x4c0
	from tcp_close -> __sk_destruct -> tcp_keepalive_timer -> __del_timer_sync

ODEBUG: free active (active state 0) object type: timer_list hint: blk_rq_timed_out_timer+0x0/0x40
	blk_free_queue_rcu -> blk_free_queue_rcu -> blk_rq_timed_out_timer

---
Changes applied on top of patch set to fix build errors:

diff --git a/arch/arm/mach-spear/time.c b/arch/arm/mach-spear/time.c
index e979e2197f8e..5371c824786d 100644
--- a/arch/arm/mach-spear/time.c
+++ b/arch/arm/mach-spear/time.c
@@ -90,7 +90,7 @@ static void __init spear_clocksource_init(void)
 		200, 16, clocksource_mmio_readw_up);
 }
 
-static inline void timer_shutdown(struct clock_event_device *evt)
+static inline void spear_timer_shutdown(struct clock_event_device *evt)
 {
 	u16 val = readw(gpt_base + CR(CLKEVT));
 
@@ -101,7 +101,7 @@ static inline void timer_shutdown(struct clock_event_device *evt)
 
 static int spear_shutdown(struct clock_event_device *evt)
 {
-	timer_shutdown(evt);
+	spear_timer_shutdown(evt);
 
 	return 0;
 }
@@ -111,7 +111,7 @@ static int spear_set_oneshot(struct clock_event_device *evt)
 	u16 val;
 
 	/* stop the timer */
-	timer_shutdown(evt);
+	spear_timer_shutdown(evt);
 
 	val = readw(gpt_base + CR(CLKEVT));
 	val |= CTRL_ONE_SHOT;
@@ -126,7 +126,7 @@ static int spear_set_periodic(struct clock_event_device *evt)
 	u16 val;
 
 	/* stop the timer */
-	timer_shutdown(evt);
+	spear_timer_shutdown(evt);
 
 	period = clk_get_rate(gpt_clk) / HZ;
 	period >>= CTRL_PRESCALER16;
diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index a7ff77550e17..9c3420a0d19d 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -687,8 +687,8 @@ static irqreturn_t arch_timer_handler_virt_mem(int irq, void *dev_id)
 	return timer_handler(ARCH_TIMER_MEM_VIRT_ACCESS, evt);
 }
 
-static __always_inline int timer_shutdown(const int access,
-					  struct clock_event_device *clk)
+static __always_inline int arch_timer_shutdown(const int access,
+					       struct clock_event_device *clk)
 {
 	unsigned long ctrl;
 
@@ -701,22 +701,22 @@ static __always_inline int timer_shutdown(const int access,
 
 static int arch_timer_shutdown_virt(struct clock_event_device *clk)
 {
-	return timer_shutdown(ARCH_TIMER_VIRT_ACCESS, clk);
+	return arch_timer_shutdown(ARCH_TIMER_VIRT_ACCESS, clk);
 }
 
 static int arch_timer_shutdown_phys(struct clock_event_device *clk)
 {
-	return timer_shutdown(ARCH_TIMER_PHYS_ACCESS, clk);
+	return arch_timer_shutdown(ARCH_TIMER_PHYS_ACCESS, clk);
 }
 
 static int arch_timer_shutdown_virt_mem(struct clock_event_device *clk)
 {
-	return timer_shutdown(ARCH_TIMER_MEM_VIRT_ACCESS, clk);
+	return arch_timer_shutdown(ARCH_TIMER_MEM_VIRT_ACCESS, clk);
 }
 
 static int arch_timer_shutdown_phys_mem(struct clock_event_device *clk)
 {
-	return timer_shutdown(ARCH_TIMER_MEM_PHYS_ACCESS, clk);
+	return arch_timer_shutdown(ARCH_TIMER_MEM_PHYS_ACCESS, clk);
 }
 
 static __always_inline void set_next_event(const int access, unsigned long evt,
diff --git a/drivers/clocksource/timer-sp804.c b/drivers/clocksource/timer-sp804.c
index e6a87f4af2b5..a3c38e1343f0 100644
--- a/drivers/clocksource/timer-sp804.c
+++ b/drivers/clocksource/timer-sp804.c
@@ -155,14 +155,14 @@ static irqreturn_t sp804_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static inline void timer_shutdown(struct clock_event_device *evt)
+static inline void sp804_timer_shutdown(struct clock_event_device *evt)
 {
 	writel(0, common_clkevt->ctrl);
 }
 
 static int sp804_shutdown(struct clock_event_device *evt)
 {
-	timer_shutdown(evt);
+	sp804_timer_shutdown(evt);
 	return 0;
 }
 
@@ -171,7 +171,7 @@ static int sp804_set_periodic(struct clock_event_device *evt)
 	unsigned long ctrl = TIMER_CTRL_32BIT | TIMER_CTRL_IE |
 			     TIMER_CTRL_PERIODIC | TIMER_CTRL_ENABLE;
 
-	timer_shutdown(evt);
+	sp804_timer_shutdown(evt);
 	writel(common_clkevt->reload, common_clkevt->load);
 	writel(ctrl, common_clkevt->ctrl);
 	return 0;

