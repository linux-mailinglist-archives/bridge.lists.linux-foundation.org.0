Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A7153B9A2
	for <lists.bridge@lfdr.de>; Thu,  2 Jun 2022 15:27:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 233B740B16;
	Thu,  2 Jun 2022 13:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KorXiJJLcMr7; Thu,  2 Jun 2022 13:27:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id B1A0A400D2;
	Thu,  2 Jun 2022 13:27:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 789E4C0081;
	Thu,  2 Jun 2022 13:27:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 067DEC002D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 13:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2A2841545
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 13:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1r0nnavNZ4Yc for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jun 2022 13:27:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D69DC40939
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 13:27:32 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 n124-20020a1c2782000000b003972dfca96cso2769485wmn.4
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jun 2022 06:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l8W+7tcFTmWgcZkmqtvEAURZZKd0U2SDl09JGSg/xJY=;
 b=EqF2c9DqGwXxEBxvnMScQ+ELXNccLj4Uv/g2mPawAj6APVYuwRlURI25YdBdFtNhb2
 hm5s4r8nxVxYtjk7B4r8ZAQ4vzbuC2C1ydfNdoH5WwtOfWly2jlVVtP9j8BfvaCSs1zY
 nqmTz20aaOy0p3CIvz4sk1WFXq5uP46hqsPKSW8g/jpwQ3zA1fVMgwKOmTVsQKYqRUoz
 R6xSU+xTqa6fVeRBfNS8XUZ1bYaAXHpbc8DlW9jiaEO+GeOPURDfDYYBl0TOUayMWdkn
 TdY+VKI1tfIWc9GfRq+WeG2qxLiGye2M4PXQ7ChXlB00w0wKbPA2c1U4iANB/s/HIAbj
 C0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l8W+7tcFTmWgcZkmqtvEAURZZKd0U2SDl09JGSg/xJY=;
 b=RzpHOuoRN40B1WdkxOjoIHz6xlrK/CY+ibh5NvcV5yutA7cME2ntpelNHIrVC/uymy
 cfAL9YPsDza1HQ3v0bgWHl0qsU7t4k/LvbhP5aA4z1IUYaJjZKmBPDmPfBL3NKs/dIj/
 AKTjjtW7Hl4ULAJumuSaHs7STLliEylum2bIAFMoxd1gqWwkcYU4b5RWsH8yrv/v6K9H
 J2CWVchbgl0BdYPLHDncaQbZM+pgL8JRLr+t4BREjjHoGeLXzLRBJS51eRTTkOsf19Z1
 4MsYj/77f7M8HX13Vx7qLIaBnKJbpg4Y69VOxuB9j8sdDzjO8vlTI+kaqXBCF7hvX083
 asZQ==
X-Gm-Message-State: AOAM532QPIVmy+3KeEemcudX33cyBmY92qw1+1azv83EfIghDJC33W97
 ULbkyc8KqvPvkHEnPcIlY6W8OtQ9Nqyo3XP3jrU=
X-Google-Smtp-Source: ABdhPJwYupf43+H7wFwlwquLKLXu/Ei58WabOVVaZSXOqm1N2/bD1VaLi6h42LIL3W3Xt9RG1iGYtvyot1MCGIgpLGw=
X-Received: by 2002:a05:600c:3d94:b0:39c:1c04:3191 with SMTP id
 bi20-20020a05600c3d9400b0039c1c043191mr3899511wmb.171.1654176450981; Thu, 02
 Jun 2022 06:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <86sfov2w8k.fsf@gmail.com> <YpCgxtJf9Qe7fTFd@shredder>
 <86sfoqgi5e.fsf@gmail.com> <YpYk4EIeH6sdRl+1@shredder>
 <86y1yfzap3.fsf@gmail.com>
 <d88b6090-2ac8-0664-0e38-bb2860be7f6e@blackwall.org>
 <86sfonjroi.fsf@gmail.com>
 <3d93d46d-c484-da0a-c12c-80e83eba31c9@blackwall.org>
 <YpiTbOsh0HBMwiTE@shredder>
 <86mtevjmie.fsf@gmail.com> <YpiqlziXDCg/1FJH@shredder>
In-Reply-To: <YpiqlziXDCg/1FJH@shredder>
From: Hans S <schultz.hans@gmail.com>
Date: Thu, 2 Jun 2022 15:27:19 +0200
Message-ID: <CAKUejP5NiPYre8qAJKqJ0SOxQ_DtXHt6q6ze6gr=Xx6VGc8xsA@mail.gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@idosch.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

Yes, that sounds much like the case. So the replace of course just
modifies the SW fdb entry, and then it just uses port_fdb_add() to
replace HW entry I assume, which then in my case triggers
SWITCHDEV_FDB_DEL_TO_BRIDGE as the locked entry is removed.
So I should not send the SWITCHDEV_FDB_DEL_TO_BRIDGE message when
removing the locked entry from port_fdb_add() function...

(note: having problems with smtp.gmail.com...)


On Thu, Jun 2, 2022 at 2:18 PM Ido Schimmel <idosch@nvidia.com> wrote:
>
> On Thu, Jun 02, 2022 at 02:08:41PM +0200, Hans Schultz wrote:
> > >
> > > I think Hans is testing with mv88e6xxx which dumps entries directly from
> > > HW via ndo_fdb_dump(). See dsa_slave_port_fdb_do_dump() which sets
> > > NTF_SELF.
> > >
> > > Hans, are you seeing the entry twice? Once with 'master' and once with
> > > 'self'?
> > >
> >
> > When replacing a locked entry it looks like this:
> >
> > # bridge fdb show dev eth6 | grep 4c
> > 00:4c:4c:4c:4c:4c vlan 1 master br0 extern_learn offload locked
> >
> > # bridge fdb replace 00:4c:4c:4c:4c:4c dev eth6 vlan 1 master static ; bridge fdb show dev eth6 | grep 4c
> > 00:4c:4c:4c:4c:4c vlan 1 self static
>
> This output means that the FDB entry was deleted from the bridge driver
> FDB.
>
> >
> > The problem is then that the function
> > br_fdb_find_rcu(br,eth_hdr(skb)->h_source, vid);
> > , where the h_source and vid is the entry above, does not find the entry.
> > My hypothesis was then that this is because of the 'self' flag that I
> > see.
>
> br_fdb_find_rcu() does a lookup in the bridge driver FDB, but per the
> output above, the entry isn't there for some reason. It's only in HW.
>
> Can it be that you driver is deleting these entries from the bridge
> driver FDB via SWITCHDEV_FDB_DEL_TO_BRIDGE for some reason?
>
> >
> > I am thinking that the function dsa_slave_port_fdb_do_dump() is only for
> > debug, and thus does not really set any flags in the bridge modules FDB,
> > but then I don't understand why the above find function does not find
> > the entry?
