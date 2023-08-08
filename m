Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068117735CC
	for <lists.bridge@lfdr.de>; Tue,  8 Aug 2023 03:21:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B833D40022;
	Tue,  8 Aug 2023 01:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B833D40022
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=iiOAUEJg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Uxy58o5Wnop; Tue,  8 Aug 2023 01:20:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5B2FC40235;
	Tue,  8 Aug 2023 01:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B2FC40235
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7E63C008D;
	Tue,  8 Aug 2023 01:20:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CC49BC0032
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 01:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A001A81ECE
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 01:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A001A81ECE
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com
 header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=iiOAUEJg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vMhHpF-eUDhv for <bridge@lists.linux-foundation.org>;
 Tue,  8 Aug 2023 01:20:54 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9114A81EC6
 for <bridge@lists.linux-foundation.org>; Tue,  8 Aug 2023 01:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9114A81EC6
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-1b8b2b60731so31917965ad.2
 for <bridge@lists.linux-foundation.org>; Mon, 07 Aug 2023 18:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1691457654;
 x=1692062454; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WR26IpOQQwm4aqVV0c+/k4nzav5EX2MxTcfcAxKBNT0=;
 b=iiOAUEJgNn0G1NceJvzY4gNZ6bYqjJ59dMwtvTUdOpyM83uOBbg3uYEkKP01i+fuVP
 jeff8zyUTRpVQEh9t0jzszwuAyQx5cod9ezC9TC5i3I4wGR5T6dpMYHBg+XSAAuhHREl
 AlAKRhMDoau8cNnD10gGyBJLEXGcgrxjFr7M0LA+zC0Gq2PWQ4ZHSP/YBaqzDxz40grL
 Mt5yqp8gAXa0nhPDIL/3O0tqZaHPP6Itu3YWBAuJrl6prUuil2EZEi4eO4gw44INR1NF
 MJNmIhpgbIKdOsdBKfweLYDYFJng4IdnLrvEq4AD31qhto3GrH7724HpSUmXZtyTB3o6
 kZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691457654; x=1692062454;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WR26IpOQQwm4aqVV0c+/k4nzav5EX2MxTcfcAxKBNT0=;
 b=BCK+v2S448f+ixcCcRWT8Iw1vbqQcZms05PACni+1EFBAM29iAqvtyMd39xyrgkIjQ
 pq5WqYSBxK79oGDDC32Z/7JuT1rg3sJebeHSlh7cVcYT+jgoa5V4h93xfYagIjSi3I9s
 iC/jUt0on4TEF3nxhMpc496oMZ60zD93n41IyP+kzy74Bw5sv+4ZewHtisIfqLZzAJii
 xghg3jZOpbMKpzf45snxR1iwNlY3QesdkMxdK7/ATKHuC/ZjY4pRHVRyStGxPBlIormc
 WNP5g6BG0JwHk7J5HZdZO8JMOILIMCCLuddF3hxnkyUpYf3k6u1WK7876gyWpr0m/hy7
 5prg==
X-Gm-Message-State: AOJu0YyDwJS2u4zvTiuX2bRRXMitRUtMN0j2hFEFhuI7XjHmwOl+BYkE
 6+l8vMnS7VwDwUW74QaMY54cDNm3UkzYXC+MtVyRUF9N
X-Google-Smtp-Source: AGHT+IEJhujUVZ+1gvUdDduO+6FF6NKNMPr/oCeaQs7d9yjkx9PYpC+/ckKrOditeiuAGbAINSKXMg==
X-Received: by 2002:a17:902:8502:b0:1b8:94e9:e7cb with SMTP id
 bj2-20020a170902850200b001b894e9e7cbmr7850032plb.21.1691457653848; 
 Mon, 07 Aug 2023 18:20:53 -0700 (PDT)
Received: from hermes.local (204-195-127-207.wavecable.com. [204.195.127.207])
 by smtp.gmail.com with ESMTPSA id
 jf12-20020a170903268c00b001b8a3729c23sm7567141plb.17.2023.08.07.18.20.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Aug 2023 18:20:53 -0700 (PDT)
Date: Mon, 7 Aug 2023 18:20:51 -0700
To: Linus =?UTF-8?B?TMO8c3Npbmc=?= <linus.luessing@c0d3.blue>
Message-ID: <20230807182051.47d4d613@hermes.local>
In-Reply-To: <ZNGMVUNsZWWUd7so@sellars>
References: <ZNGMVUNsZWWUd7so@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: bridge@lists.linux-foundation.org
Subject: Re: [Bridge] Getting + maintaining a consistent MDB view in
 userspace?
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Tue, 8 Aug 2023 02:29:09 +0200
Linus L=C3=BCssing <linus.luessing@c0d3.blue> wrote:

> Hi,
>=20
> Is there a recommended way to get and monitor the MDB state from
> userspace, without potential synchronization races?
>=20
> I can use "bridge monitor mdb" to get changes or "bridge mdb show"
> to get the current state (as well as use the underlying netlink
> calls from my own application without the "bridge" command).
>=20
> But if I were first calling "bridge mdb show" and then "bridge
> monitor mdb" then there is a brief moment where I might miss some
> changes. Or if I were doing it the other way around then a change
> might wrongly override a valid entry? Or the full dump might not
> be as up to date as the change event I got before?
>=20
> Ideally I'd be looking for a variant of "bridge monitor mdb" which
> first dumps the whole, consistent mdb state and after that
> provides updates in the correct order.
>=20
> Regards, Linus

Same issue as dumping routing table which routing daemons deal with.
Most applications end up with two netlink sockets, one for monitor
and one for dumping.

You really can't do it from the bridge utility, need to build your
own tools.
