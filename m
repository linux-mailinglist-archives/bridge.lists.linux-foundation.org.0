Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 824CF37329D
	for <lists.bridge@lfdr.de>; Wed,  5 May 2021 01:04:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 709A940624;
	Tue,  4 May 2021 23:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L6RyJ0jRi93R; Tue,  4 May 2021 23:04:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3670402BF;
	Tue,  4 May 2021 23:04:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 66911C001C;
	Tue,  4 May 2021 23:04:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EFD3EC0001
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 23:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DBD616077B
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 23:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5l1zzdwNYXC for <bridge@lists.linux-foundation.org>;
 Tue,  4 May 2021 23:04:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00CC46071C
 for <bridge@lists.linux-foundation.org>; Tue,  4 May 2021 23:04:14 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id s8so368269wrw.10
 for <bridge@lists.linux-foundation.org>; Tue, 04 May 2021 16:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XS9eVQQm0ICA5clq7aGO+GeBxT02cu0PyE0FYwLbSn0=;
 b=KRZJRmSFkpfNmsXGHBLowNForVyQalqpK2f3Smci2Be07uF52HFbmgCnclGxRYM1Fs
 gJhFFkRrIMe1AVE4ZP+T0MonB3c+o8xTChaJ7EEeWw91ONXnKg26OQumIH7JyaCRLX7E
 2qUJ0eJS8PbhV1+osyUsDALyMB4NJYvfSqxrUXEVjvHM0QuMj1tQyTtrh2u+F0SRhb55
 gb/VNqVd6JYM7ElLiCWM0DUkCpUgV8OYti8XNvLOt85hQEv2qChMjO/Tj/sd6CAcRrnW
 KSl6tx6X1W90X1G3UuWQr25hg17UheGN0HkyBaEh7NJnyCgYodsGME13IN7JD3+Dd7wQ
 LPkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XS9eVQQm0ICA5clq7aGO+GeBxT02cu0PyE0FYwLbSn0=;
 b=lSe+Yiobl/ieM6AnbfcbnOB9rYOslVJZ/VMVRqCrYe+Z4gVIsbU0eYOFRtnVuRJWvs
 YaRtlFkFFOrH/KVRWI5+1AOnsSvD1OtSAG54me1PfOXcHuvBfHeRxc4eQg57env0bQPi
 r2cD6xbPCjFtB4PBnLvYXGKx/nsPXmXEEVpfIFlyeFpAYgajXMsy7VjQyNRV1o/onFPF
 dZnRXkqT1Y8jlgtJXe9+XidNoHzh3PYYFq0nV3xDR0shbkmfjVIpiBW6EShVk+k0bWiI
 tIdDtRe3Nzqma9pttTTVFOTux/7qkgcATO5PKUTnVxMIL3pEwedljEhLSgf5kKiz8jpy
 4xbg==
X-Gm-Message-State: AOAM531DIc2VtZVvpbtPsIXOQwv2xVBGzUNccOZVPAWsKVUYa9A3zHLa
 WhsYAur7anhCJiJk1CyId14=
X-Google-Smtp-Source: ABdhPJymHTiQGpFW2f+Ef+2YygYwikderfEGsdLlWVEZ8dBP+4XDKTL427lTLquKih/VXDt/tn2W/Q==
X-Received: by 2002:a5d:5047:: with SMTP id h7mr21337523wrt.287.1620169453211; 
 Tue, 04 May 2021 16:04:13 -0700 (PDT)
Received: from skbuf ([86.127.41.210])
 by smtp.gmail.com with ESMTPSA id p3sm3319064wmq.31.2021.05.04.16.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 16:04:10 -0700 (PDT)
Date: Wed, 5 May 2021 02:04:09 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210504230409.kohxoc4cl7sjpkrg@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <20210426170411.1789186-7-tobias@waldekranz.com>
 <20210427101747.n3y6w6o7thl5cz3r@skbuf>
 <878s4uo8xc.fsf@waldekranz.com>
 <20210504152106.oppawchuruapg4sb@skbuf>
 <874kfintzh.fsf@waldekranz.com>
 <20210504205823.j5wg547lgyw776rl@skbuf>
 <87y2cum9mo.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y2cum9mo.fsf@waldekranz.com>
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

On Wed, May 05, 2021 at 12:12:15AM +0200, Tobias Waldekranz wrote:
> > and you create a dependency between the tagger and the switch driver
> > which was supposed by design to not exist.
> 
> Sure, but _why_ should it not exist? Many fields in the tag can only be
> correctly generated/interpreted in combination with knowledge of the
> current configuration, which is the driver's domain. The dependency is
> already there, etched in silicon.

I'm a bit more of a pragmatic person, it's not so much that I think that
Lennert Buytenhek's original DSA design from 2008 was the holy grail and
that we should do everything we can to preserve it intact. Far from it.
But I actually like having the option to inject a DSA-tagged packet
using Spirent TestCenter and measure IP forwarding between dsa_loop
"switch" ports (actually a one-armed router is what it is). I also like,
as a reviewer, to be able to test, if I want to, how a tail tagger
behaves even if I don't own a switch with tail tagging. And this
separation between the switch driver and the tag protocol driver makes
that possible, just see it as a nice perk which we don't want to lose.

As for more advanced features, like "the hardware requires me to invent
a unique number based on a rolling counter, call it a TX timestamp ID,
put it in the DSA header, then when transmission is done, an IRQ will be
raised, and I need to match that TX timestamp that just became available
to me, which is identifiable via the timestamp ID that I put in the DSA
header, with the original skb", of course you can't do that without
communication between the tagger and the driver itself, unless you make
the tagger handle interrupts (and then there's the whole issue that the
tagging protocol driver needs to be instantiated per switch, if it's
going to be stateful), or the switch driver send packets. As a general
rule of thumb, just don't break dsa_loop and we should be fine. For
example, yes, PTP requires driver <-> tagger communication, but PTP
timestamping is also not enabled by default, and guarded by an ioctl
which dsa_loop doesn't implement. So the tagger can never trigger faulty
code, dereferencing a ds->priv pointer which it thinks is "struct
mv88e6xxx_chip" but is actually "struct dsa_loop_priv".
