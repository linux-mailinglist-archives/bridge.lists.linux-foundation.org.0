Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E8761DBCF
	for <lists.bridge@lfdr.de>; Sat,  5 Nov 2022 17:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED5B7605EC;
	Sat,  5 Nov 2022 16:00:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED5B7605EC
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google header.b=iIDJL03z
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gb_OPRep6ez8; Sat,  5 Nov 2022 16:00:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5FD5860797;
	Sat,  5 Nov 2022 16:00:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FD5860797
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7671C0077;
	Sat,  5 Nov 2022 16:00:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0B44DC002D
 for <bridge@lists.linux-foundation.org>; Sat,  5 Nov 2022 16:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D8E428198A
 for <bridge@lists.linux-foundation.org>; Sat,  5 Nov 2022 16:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8E428198A
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linux-foundation.org
 header.i=@linux-foundation.org header.a=rsa-sha256 header.s=google
 header.b=iIDJL03z
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O4-73VqVVSIP for <bridge@lists.linux-foundation.org>;
 Sat,  5 Nov 2022 16:00:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85B4281971
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com
 [IPv6:2001:4860:4864:20::34])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85B4281971
 for <bridge@lists.linux-foundation.org>; Sat,  5 Nov 2022 16:00:13 +0000 (UTC)
Received: by mail-oa1-x34.google.com with SMTP id
 586e51a60fabf-13bd19c3b68so8532771fac.7
 for <bridge@lists.linux-foundation.org>; Sat, 05 Nov 2022 09:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=GP8p4dRzNVpyUotOfaypMmYTGE9lsMcq6qB3gjhmc04=;
 b=iIDJL03zNkH0lS9YORaCB4Nnx18G1RT5PAxkqTBkren7bOYLdVGnhhilx+OlS481lw
 gQr71gF/2R0QtX/qOni1Pt9vrqOkIr43rj0MZrH/uG69dzQgSBZeGC3nRHzTa1HEb5Zv
 OhEAlIPPkZmfK8ER3fSUpMd0BmaBeM97bdw94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GP8p4dRzNVpyUotOfaypMmYTGE9lsMcq6qB3gjhmc04=;
 b=731IPoNJfMStStXBdmc3q5jL21ts6yfc3rIF28Pko/2wx+rPYisnzLJRJnfk5ntSlJ
 vzmDW0QJ8e1TiAFuOQmtZFuhuq8W85JQGQvQJ5aV8lotm+iNJlS5ap2ds9+KPPh7SdZk
 mhz4heMFuZM/mUMQJDzv04dluQu+S1fR22FzKBkqm5vxPA2CfsBa1qeUmq03HGn+eYLT
 kvCsHtBiVacnUFHCXaE0G/gBFsIrV7oQCFMUXbFlKjYI1jbpz8hXbLA360LGILbI84UJ
 Cyd4LJ/Lt1TsNHS6Ae/a6hTsFJVNzwxK2HSs+CsxLDfda1Aw0AktL19hyKamsSb4elUt
 xGNw==
X-Gm-Message-State: ACrzQf3pU9SvlXHZ5P+VFR5OJ4U5GhKNrRw48SsSx9oC+Q8IskN43Lo4
 lflZvVN7l5WqEtbDHdrSL0yL0lBzv/w2qesI
X-Google-Smtp-Source: AMsMyM4GycZKwAPEZTS+TBaDk18S+dELS6GYr0jNDCJ88UWBziNz/WDypo/5T/mpsGAtAxlzu1dUGQ==
X-Received: by 2002:a05:6870:96a3:b0:13b:b19:fbf with SMTP id
 o35-20020a05687096a300b0013b0b190fbfmr25074967oaq.175.1667664011761; 
 Sat, 05 Nov 2022 09:00:11 -0700 (PDT)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com.
 [209.85.161.52]) by smtp.gmail.com with ESMTPSA id
 e1-20020a056830200100b00661b5e95173sm961628otp.35.2022.11.05.09.00.03
 for <bridge@lists.linux-foundation.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Nov 2022 09:00:07 -0700 (PDT)
Received: by mail-oo1-f52.google.com with SMTP id
 r10-20020a4aa2ca000000b0049dd7ad4128so1055224ool.13
 for <bridge@lists.linux-foundation.org>; Sat, 05 Nov 2022 09:00:03 -0700 (PDT)
X-Received: by 2002:a81:114e:0:b0:36a:fc80:fa62 with SMTP id
 75-20020a81114e000000b0036afc80fa62mr40431421ywr.58.1667663992806; Sat, 05
 Nov 2022 08:59:52 -0700 (PDT)
MIME-Version: 1.0
References: <20221105060024.598488967@goodmis.org>
In-Reply-To: <20221105060024.598488967@goodmis.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 5 Nov 2022 08:59:36 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
Message-ID: <CAHk-=wi95dGkg7DiuOZ27gGW+mxJipn9ykB6LHB-HrbbLG6OMQ@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-s390@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org, cgroups@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linaro-mm-sig@lists.linaro.org
Subject: Re: [Bridge] [PATCH v4a 00/38] timers: Use timer_shutdown*() before
	freeing timers
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

On Fri, Nov 4, 2022 at 11:01 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Patch 1 fixes an issue with sunrpc/xprt where it incorrectly uses
> del_singleshot_timer_sync() for something that is not a oneshot timer. As this
> will be converted to shutdown, this needs to be fixed first.

So this is the kind of thing that I would *not* want to get eartly.

I really would want to get just the infrastructure in to let people
start doing conversions.

And then the "mindlessly obvious patches that are done by scripting
and can not possibly matter".

The kinds that do not *need* review, because they are mechanical, and
that just cause pointless noise for the rest of the patches that *do*
want review.

Not this kind of thing that is so subtle that you have to explain it.
That's not a "scripted patch for no semantic change".

So leave the del_singleshot_timer_sync() cases alone, they are
irrelevant for the new infrastructure and for the "mindless scripted
conversion" patches.

> Patches 2-4 changes existing timer_shutdown() functions used locally in ARM and
> some drivers to better namespace names.

Ok, these are relevant.

> Patch 5 implements the new timer_shutdown() and timer_shutdown_sync() functions
> that disable re-arming the timer after they are called.

This is obviously what I'd want early so that people can start doign
this in their trees.

> Patches 6-28 change all the locations where there's a kfree(), kfree_rcu(),
> kmem_cache_free() and one call_rcu() call where the RCU function frees the
> timer (the workqueue patch) in the same function as the del_timer{,_sync}() is
> called on that timer, and there's no extra exit path between the del_timer and
> freeing of the timer.

So honestly, I was literally hoping for a "this is the coccinelle
script" kind of patch.

Now there seems to be a number of patches here that are actualyl
really hard to see that they are "obviously correct" and I can't tell
if they are actually scripted or not.

They don't *look* scripted, but I can't really tell.  I looked at the
patches with ten lines of context, and I didn't see the immediately
following kfree() even in that expanded patch context, so it's fairly
far away.

Others in the series were *definitely* not scripted, doing clearly
manual cleanups:

-    if (dch->timer.function) {
-        del_timer(&dch->timer);
-        dch->timer.function = NULL;
-    }
+    timer_shutdown(&dch->timer);

so no, this does *not* make me feel "ok, this is all trivial".

IOW, I'd really want *just* the infrastructure and *just* the provably
trivial stuff. If it wasn't some scripted really obvious thing that
cannot possibly change anything and that wasn't then edited manually
for some reason, I really don't want it early.

IOW, any early conversions I'd take are literally about removing pure
mindless noise. Not about doing conversions.

And I wouldn't mind it as a single conversion patch that has the
coccinelle script as the explanation.

Really just THAT kind of "100% mindless conversion".

               Linus
