Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DFF373F4C
	for <lists.bridge@lfdr.de>; Wed,  5 May 2021 18:12:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BBD9607F4;
	Wed,  5 May 2021 16:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jGSQRBFiViv3; Wed,  5 May 2021 16:12:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1833A6071A;
	Wed,  5 May 2021 16:12:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DAA10C0024;
	Wed,  5 May 2021 16:12:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5507DC0001
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 16:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2F3F660804
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 16:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bRLWht8m37Fi for <bridge@lists.linux-foundation.org>;
 Wed,  5 May 2021 16:12:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 596106071A
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 16:12:20 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id di13so2719581edb.2
 for <bridge@lists.linux-foundation.org>; Wed, 05 May 2021 09:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lq9QE1KWIofg068mXEEQMoq14pdbbzqQ04CPhXSEQps=;
 b=hRJnetFs62TeujbYBDE2pth8Qcemr6044enw4ZiwWQSnwLcsEIbkJvE2swMsi5vQwJ
 0Hci1+s9GQt+QGGAJ0gzHrUvHKG31CjTBPvkswpALm4Y+OM4MaL3QQvaBhDe1r5nghO6
 OXNgudZBE5i0kOiba1KP4zQKDjn1agdvVHeGIK2moRu9T6P7DzXMK9pp0XgsEpwRiHOV
 uJBqrtg8GgaGWzCMss3uRkEqJz7OxfJI2Ui/v/LTAA/QwvAa4qTB0JqxXvs14cBDXq2j
 f93So6dKRWCPZJmtAXL9QOBN2MkfyDi05lvCU6PieqBGlDTGrTr2AeJtagbk/6bxLJnB
 v++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lq9QE1KWIofg068mXEEQMoq14pdbbzqQ04CPhXSEQps=;
 b=O1PxqjH48mA63S0OYxjq0jXep1AUS3QtLV9xslGTE9ClLBAtWHiw8o7pkiEpbHLpIR
 0sCeZ/YuVsrBfh9f1w1ZXeluh3AVk/yW0jM5BYUOw3woqpaAU9yRhBRHBmyGnWn95Cxj
 m+dCTsWy3DKNV4RaAKSF5Z164cKlyiLBS8m3d1AqGUTZqUcNDktu6W2Fc7KsMf+g0qrT
 xRueTW9fvySOiqBxXuQjsS0FCQdWGPGlO9jIA8cygcgO9DHcNUROKIYoe6tLerWMTeS2
 1iEw3ElhkCwtE4vItK52oC5MgSYOMcpa8C4ONkTorYeLiWnnEu88qlIIGM7CLLcDz6ZJ
 LzlA==
X-Gm-Message-State: AOAM532CrIfI4aS7ynj2T9cTY3l+0dasT/DZBajmQ9KH1z0Tzxx8yAl5
 Px+J536KdlxT6wnEHD3UPCY=
X-Google-Smtp-Source: ABdhPJzZz53cNeXNVEG354mzxC0kYFBwSxERf9piLtGD2n6tvxrBtBDh8cGI0zsDZ2KGo/6+1P8WFw==
X-Received: by 2002:a50:fc87:: with SMTP id f7mr32792166edq.215.1620231138408; 
 Wed, 05 May 2021 09:12:18 -0700 (PDT)
Received: from skbuf ([86.127.41.210])
 by smtp.gmail.com with ESMTPSA id i19sm3057110ejd.114.2021.05.05.09.12.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 09:12:16 -0700 (PDT)
Date: Wed, 5 May 2021 19:12:15 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210505161215.xljue7z525znuf3y@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf>
 <878s4uo8xc.fsf@waldekranz.com>
 <20210504152106.oppawchuruapg4sb@skbuf>
 <874kfintzh.fsf@waldekranz.com>
 <20210504205823.j5wg547lgyw776rl@skbuf>
 <87y2cum9mo.fsf@waldekranz.com>
 <20210504230409.kohxoc4cl7sjpkrg@skbuf>
 <87pmy5mu5m.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87pmy5mu5m.fsf@waldekranz.com>
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

On Wed, May 05, 2021 at 11:01:09AM +0200, Tobias Waldekranz wrote:
> On Wed, May 05, 2021 at 02:04, Vladimir Oltean <olteanv@gmail.com> wrote:
> > On Wed, May 05, 2021 at 12:12:15AM +0200, Tobias Waldekranz wrote:
> >> > and you create a dependency between the tagger and the switch driver
> >> > which was supposed by design to not exist.
> >> 
> >> Sure, but _why_ should it not exist? Many fields in the tag can only be
> >> correctly generated/interpreted in combination with knowledge of the
> >> current configuration, which is the driver's domain. The dependency is
> >> already there, etched in silicon.
> >
> > I'm a bit more of a pragmatic person,
> 
> Excuse me sir, I believe you left your dagger IN MY HEART :)

You might have misinterpreted my words, I did not mean to say "look what
a good quality I have and you don't", in fact I don't view pragmatism as
much of a desirable quality at all. What I meant to say in the context
is that, even though in general I value functionality more than how it
is implemented, I would still like to keep the separation between
taggers and switch drivers at least at the most basic RX/TX level, for
the reasons explained.
