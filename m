Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF43D57774E
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 18:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C75F660EDB;
	Sun, 17 Jul 2022 16:25:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C75F660EDB
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Aa/n1738
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJ3ctAIiE5Sd; Sun, 17 Jul 2022 16:25:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5874560F45;
	Sun, 17 Jul 2022 16:25:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5874560F45
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E60F4C0078;
	Sun, 17 Jul 2022 16:25:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71A56C002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 16:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36A844161B
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 16:25:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36A844161B
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Aa/n1738
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zm_ZxigoKfd8 for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 16:25:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15AFE41612
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15AFE41612
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 16:25:03 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id e15so8524684wro.5
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 09:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rwSneiH5xSNmTYynHVLLuzHsfAWoKgKKKN3H7FS7rMk=;
 b=Aa/n1738ntBuPAWlhWhRZjFLdhg8myxMR8iZ6ftlyCeOiQ/9YT8wiSQDcg0c7UVHIb
 2Zf+Xsi8VkZXPDEp01hK59xKVY+ZeOj4PS2UxKfYEv4K3yTRf9K2tX6EMzePC9j4jIKH
 KqE0qziR4v/rSbMbLc6LQsa3oLHRC90c3EkGtQFBzwWt46gIvb/hbxlvPS5EVjBA8Y6A
 oA+BKnFpc7syZFnPPTRyec4XOuVWoPrd0uyUJ4vobAUIhE09YyViry6TZxnnzAauydiz
 qsFW/1eGnCix7ZOzsUHc/RXx+Lpk23JF/BP9ido13S6OxIOCNapP3PBFdxuYeYy9NFdW
 2UuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rwSneiH5xSNmTYynHVLLuzHsfAWoKgKKKN3H7FS7rMk=;
 b=iNEW8pVqHrOPrb/knlbIyWGwFB1hB96b3/6pcs2SPGLVpCCOdLqQbwJ96yQnRFvXef
 vzcDnp4HPs/4fRQekNOC2XifW/ErvutLaakZaB9rNqI8hx9yOclBmVzoKDCN7Jgz2bom
 0TZwTRQ2Rd0f/3SnrfzC52b4Oh2VdNIyZNjZll6HUzQ5R+EHOPfM7iLUP1hwu1apZHMD
 47gD3sSDFKUTK+6TfVatBLmiseVWyLkOFkd2caZ8lDDieuuTPBjeL9qTA6HqSDLh2zMr
 wkbjriKpLfHo9g57xLoMUDT/rxsojPtBodj0/ZiRg+UxauqxP9LaRLqg2pW5By6XorXO
 /6hg==
X-Gm-Message-State: AJIora9nARlx9dzwAYMahnd0A8DOiZt4/drd7D1BuSHRIpPnPBDuwlKO
 ncApuUQ4uP+OYY3WSW8lj2vmZicL8GJSyQQ4Tr0=
X-Google-Smtp-Source: AGRyM1tKKG1DTxpJhgljLKjM1b0ZBI1n3j2cO/EQg0uio6SMOdiW6aawdpL2hUIf0EJQ/Yx0Ma8Z86scLN5oUYig9mY=
X-Received: by 2002:a5d:6a88:0:b0:21d:6ee4:1fb1 with SMTP id
 s8-20020a5d6a88000000b0021d6ee41fb1mr19575491wru.249.1658075102011; Sun, 17
 Jul 2022 09:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
 <20220717134610.k3nw6mam256yxj37@skbuf>
 <20220717140325.p5ox5mhqedbyyiz4@skbuf>
In-Reply-To: <20220717140325.p5ox5mhqedbyyiz4@skbuf>
From: Hans S <schultz.hans@gmail.com>
Date: Sun, 17 Jul 2022 18:22:57 +0200
Message-ID: <CAKUejP6g3HxS=Scj-2yhsQRJApxnq1e31Nkcc995s7gzfMJOew@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

On Sun, Jul 17, 2022 at 4:03 PM Vladimir Oltean <olteanv@gmail.com> wrote:
>
> On Sun, Jul 17, 2022 at 04:46:10PM +0300, Vladimir Oltean wrote:
> > Here, what happens is that a locked port learns the MAC SA from the
> > traffic it didn't drop, i.e. link-local. In other words, the bridge
> > behaves as expected and instructed: +locked +learning will cause just
> > that. It's the administrator's fault for not disabling learning.
> > It's also the mv88e6xxx driver's fault for not validating the "locked" +
> > "learning" brport flag *combination* until it properly supports "+locked
> > +learning" (the feature you are currently working on).
> >
> > I'm still confused why we don't just say that "+locked -learning" means
> > plain 802.1X, "+locked +learning" means MAB where we learn locked FDB entries.
>
> Or is it the problem that a "+locked +learning" bridge port will learn
> MAC SA from link-local traffic, but it will create FDB entries without
> the locked flag while doing so? The mv88e6xxx driver should react to the
> 'locked' flag from both directions (ADD_TO_DEVICE too, not just ADD_TO_BRIDGE).

Yes, it creates an FDB entry in the bridge without the locked flag
set, and sends an ADD_TO_DEVICE notice with it.
And furthermore link-local packets include of course EAPOL packets, so
that's why +learning is a problem.
