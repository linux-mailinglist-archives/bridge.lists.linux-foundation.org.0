Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 597573736B1
	for <lists.bridge@lfdr.de>; Wed,  5 May 2021 11:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B02A2607F7;
	Wed,  5 May 2021 09:01:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GDKF91JmbtpI; Wed,  5 May 2021 09:01:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A709607EF;
	Wed,  5 May 2021 09:01:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E93B9C0024;
	Wed,  5 May 2021 09:01:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6B8EFC0001
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 09:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B08983CE8
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 09:01:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uPKJCWD-zFZT for <bridge@lists.linux-foundation.org>;
 Wed,  5 May 2021 09:01:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F13F83CE6
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 09:01:13 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id e12so1500328ljn.2
 for <bridge@lists.linux-foundation.org>; Wed, 05 May 2021 02:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=CHszZK7LblPbIXozkASGXG0KNy6kheJ5G3pXtlHdYnQ=;
 b=k6bHhtUS4olAAtkrAOahBxLSc5WpKrfi4zD12DHNMLUAjYB6RGAXtjuP4hmnDJGhIy
 xUowlwnIr1SvmdcLgavdkJpQs1ajPmjaIqxezkolP5XvjRWlSuMB6qiACRyd8Nz7SqQB
 4Mbqj6cHA272gLGFBZ6FfpvDLTHDdjE5v/zn3ZhVvHJUYR9g/XwJ4q0vjJRTv/F+2fqx
 pmCcjQ4Y5yGc18g9k2DxfXm18Bs7JuyNhnzsGeeD6Qb5X3lRJVyoHFzxb6h3kLtDtLU0
 FGunUYRveXcjLVzUFE/NzElQ3hysDDDBtfWjDc2aFWsvXDbHHBbn+YUUfBfrLnSH3A16
 MPwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=CHszZK7LblPbIXozkASGXG0KNy6kheJ5G3pXtlHdYnQ=;
 b=Nta+exjREZgIHL/ngy33BwTWcqBg9SARM+s7hpIN/yrqteVh0/Ov2MGpa9Fqyah7cs
 9RZneMq+aXKZMZgX8g2U8NfeRKnZBlN0WdK3bqKLPh+bTdRZ26SkKjsuobbFzJLFWqWO
 Q3YyXdMbXJMhrxx0YSe+r9yS6uWOXxDhzvGvwVywwwvXWQCOB5WVTnqvAMH0pcoh+QBs
 iI3NACwgX2Wxt5M4ouDfujXvsqLjo4PciSW9ZW214+/MPiK9JNJ3nq60JdTN5TAjbyaa
 28SEKVEWPzXtf88/6lgg1W6dz7FyXLXag9KAfTVrscUgTwwN9IqlgWtlmW73VvhoR7Uy
 YbOw==
X-Gm-Message-State: AOAM531Ks2ry7A4tRenEy7fJ4shUQGJyboYeO6XQ0YRdoS/KRwrWCMqU
 ioM5E8MPOVDFSfxvpn4TU+K95+Ha49i4NQ==
X-Google-Smtp-Source: ABdhPJzAq8p38vqysHThVjNdLyomEUJ7rUdLeUrbXdQcCLO4QeXk/YDc/UttBRLNdlSwCApCKlkGkA==
X-Received: by 2002:a2e:8283:: with SMTP id y3mr20906981ljg.51.1620205270712; 
 Wed, 05 May 2021 02:01:10 -0700 (PDT)
Received: from wkz-x280 (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id q20sm368123lfm.194.2021.05.05.02.01.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 02:01:10 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Vladimir Oltean <olteanv@gmail.com>
In-Reply-To: <20210504230409.kohxoc4cl7sjpkrg@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf> <878s4uo8xc.fsf@waldekranz.com>
 <20210504152106.oppawchuruapg4sb@skbuf> <874kfintzh.fsf@waldekranz.com>
 <20210504205823.j5wg547lgyw776rl@skbuf> <87y2cum9mo.fsf@waldekranz.com>
 <20210504230409.kohxoc4cl7sjpkrg@skbuf>
Date: Wed, 05 May 2021 11:01:09 +0200
Message-ID: <87pmy5mu5m.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, idosch@idosch.org, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 6/9] net: dsa: Forward offloading
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

On Wed, May 05, 2021 at 02:04, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Wed, May 05, 2021 at 12:12:15AM +0200, Tobias Waldekranz wrote:
>> > and you create a dependency between the tagger and the switch driver
>> > which was supposed by design to not exist.
>> 
>> Sure, but _why_ should it not exist? Many fields in the tag can only be
>> correctly generated/interpreted in combination with knowledge of the
>> current configuration, which is the driver's domain. The dependency is
>> already there, etched in silicon.
>
> I'm a bit more of a pragmatic person,

Excuse me sir, I believe you left your dagger IN MY HEART :)

> it's not so much that I think that
> Lennert Buytenhek's original DSA design from 2008 was the holy grail and
> that we should do everything we can to preserve it intact. Far from it.
> But I actually like having the option to inject a DSA-tagged packet
> using Spirent TestCenter and measure IP forwarding between dsa_loop
> "switch" ports (actually a one-armed router is what it is). I also like,
> as a reviewer, to be able to test, if I want to, how a tail tagger
> behaves even if I don't own a switch with tail tagging. And this
> separation between the switch driver and the tag protocol driver makes
> that possible, just see it as a nice perk which we don't want to lose.

Completely understandable. I was trying to extrapolate where we will end
up with this separation as we add more and more features and couple the
tagger closer to the driver, and see if the current architecture was
still the optimal one. Trying to be ...pragmatic, if you will.

> As for more advanced features, like "the hardware requires me to invent
> a unique number based on a rolling counter, call it a TX timestamp ID,
> put it in the DSA header, then when transmission is done, an IRQ will be
> raised, and I need to match that TX timestamp that just became available
> to me, which is identifiable via the timestamp ID that I put in the DSA
> header, with the original skb", of course you can't do that without
> communication between the tagger and the driver itself, unless you make
> the tagger handle interrupts (and then there's the whole issue that the
> tagging protocol driver needs to be instantiated per switch, if it's
> going to be stateful), or the switch driver send packets. As a general
> rule of thumb, just don't break dsa_loop and we should be fine. For
> example, yes, PTP requires driver <-> tagger communication, but PTP
> timestamping is also not enabled by default, and guarded by an ioctl
> which dsa_loop doesn't implement. So the tagger can never trigger faulty
> code, dereferencing a ds->priv pointer which it thinks is "struct
> mv88e6xxx_chip" but is actually "struct dsa_loop_priv".

This should also hold for forward offloading, since dsa_loop would not
implement .ndo_dfwd_{add,del}_station.

Alright, include/linux/dsa/mv88e6xxx.h here I come!
