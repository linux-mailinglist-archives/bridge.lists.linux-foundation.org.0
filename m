Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2152E24EEF6
	for <lists.bridge@lfdr.de>; Sun, 23 Aug 2020 19:19:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3D9A85F4C;
	Sun, 23 Aug 2020 17:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OovJul1co7dz; Sun, 23 Aug 2020 17:19:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36F4685E91;
	Sun, 23 Aug 2020 17:19:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 19004C0891;
	Sun, 23 Aug 2020 17:19:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C04BCC0051
 for <bridge@lists.linux-foundation.org>; Sun, 23 Aug 2020 17:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A88C381E10
 for <bridge@lists.linux-foundation.org>; Sun, 23 Aug 2020 17:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UxkFMuHEiekj for <bridge@lists.linux-foundation.org>;
 Sun, 23 Aug 2020 17:19:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5DCEC81B88
 for <bridge@lists.linux-foundation.org>; Sun, 23 Aug 2020 17:19:47 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id m34so3399088pgl.11
 for <bridge@lists.linux-foundation.org>; Sun, 23 Aug 2020 10:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BS2nmejjK8PFe/qEJ+mPxfa0gAg77/DJy1RcdnRmJqo=;
 b=kDxSK0Pm+zdmrkB5fd83GDsg1eEmfcLeRDiPeLtUqPUraM/MgAaxOzQuexkQs5YsCm
 XxWSHF9v3a+3gSjRvgG5G7Y1wXGXm4lEnUvvjcDq4tbNyfsd72ZO+d8cgpJqzisZzEb8
 zPPcoyVh/u6RrMbduwuFjE4XHF/+hpyOBLqVJ7WRfM0Nxdi2gazt64njfM3alph30t3t
 hNhAsBXTiuX34GYiDlUKFZ6NjJ0c+d8n0KVh89xRVL1m9tGao9Jmgb22wBVfJWb6/QAe
 ZzISWiXMlZaaASyCKjAHIKr6oLKmUMWQl0rZFSO+xmDactrcpyWgY5+y9Q23VIpr0hvQ
 7UUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BS2nmejjK8PFe/qEJ+mPxfa0gAg77/DJy1RcdnRmJqo=;
 b=bDSJFz+HBDne4a4ZIU3HyhO0+WlPjfdKDmt2KXFVcFwI/sKTqbEfp3fA1rQUiTVW33
 S2m6/1vJ7ZjrdKTjUhQ9p52/OSUz5W8ZqDfJvJsPWpeJpG8rZHdsPHKFYhFSHfHSwq/o
 BndjLeowh0VdmKVGbL5JBe5rvdA2aLyVVYL/a1zBt+1+ED0FEnLjfnqO9l9dP4HlqGOj
 6iWug8A37BPEbv5AqQbiGWJego35xj9h/MMk/M9+IyyOGJFX7vHFDkZRmcg3kJzqnzRW
 s0+KXuq5Us5LHEub1d8IuuCIqDNOfXrc+siPUANr9gd01VhukSZ66AR0idG2T/yp75Xy
 XvwQ==
X-Gm-Message-State: AOAM532l+xqxqTDl0Vr0p57C09zmZZH+yQV44PQxJSLuWqYTJBeTtwss
 9/denZo75EuKZBFKMI+I/n9rbA==
X-Google-Smtp-Source: ABdhPJy0TVFqXEPZRL8Pw/jPagZzQEQNsB0NeQ6x7scWtGbJDHgb1hU0rttkVKd1Me46cUzH4FJqqA==
X-Received: by 2002:a62:7c09:: with SMTP id x9mr1417461pfc.229.1598203186862; 
 Sun, 23 Aug 2020 10:19:46 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id f20sm8913784pfk.36.2020.08.23.10.19.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Aug 2020 10:19:46 -0700 (PDT)
Date: Sun, 23 Aug 2020 10:19:38 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Linus =?UTF-8?B?TMO8c3Npbmc=?= <linus.luessing@c0d3.blue>
Message-ID: <20200823101938.0f956d96@hermes.lan>
In-Reply-To: <20200823154239.GA2302@otheros>
References: <20200816202424.3526-1-linus.luessing@c0d3.blue>
 <20200816150813.0b998607@hermes.lan>
 <20200823154239.GA2302@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 gluon@luebeck.freifunk.net, openwrt-devel@lists.openwrt.org,
 "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH net-next] bridge: Implement MLD Querier
 wake-up calls / Android bug workaround
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

On Sun, 23 Aug 2020 17:42:39 +0200
Linus L=C3=BCssing <linus.luessing@c0d3.blue> wrote:

> On Sun, Aug 16, 2020 at 03:08:13PM -0700, Stephen Hemminger wrote:
> > Rather than adding yet another feature to the bridge, could this hack b=
e done by
> > having a BPF hook? or netfilter module? =20
>=20
> Hi Stephen,
>=20
> Thanks for the constructive feedback and suggestions!
>=20
> The netfilter approach sounds tempting. However as far as I know
> OpenWrt's firewall has no easy layer 2 netfilter integration yet.
> So it has default layer 3 netfilter rules, but not for layer 2.
>=20
> Ideally I'd want to work towards a solution where things "just
> work as expected" when a user enables "IGMP Snooping" in the UI.
> I could hack the netfilter rules into netifd, the OpenWrt network
> manager, when it configures the bridge. But not sure if the
> OpenWrt maintainers would like that...
>=20
> Any preferences from the OpenWrt maintainers side?
>=20
> Regards, Linus
>=20
>=20
> PS: With BPF I don't have that much experience yet. I would need
> to write a daemon which would parse the MLD packets and would
> fetch the FDB via netlink, right? If so, sounds like that would
> need way more than 300 lines of code. And that would need to be
> maintained within OpenWrt, right?

With BPF you would need to write a small program that transforms the packet
as you want. The BPF program and the userspace program would share a
map table.  The userspace program would monitor netlink messages about
FDB and update the map. Yes it would be a few hundred lines but not huge.
The userspace could even be selective and only do it for devices where
it knows they are using the broken Android code.

Sorry, no idea how OpenWrt manages their packages.
