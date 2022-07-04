Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A99975658C0
	for <lists.bridge@lfdr.de>; Mon,  4 Jul 2022 16:36:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F22C80314;
	Mon,  4 Jul 2022 14:36:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F22C80314
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=KHZG5UXy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sjs_b581tL_E; Mon,  4 Jul 2022 14:36:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E143280A4C;
	Mon,  4 Jul 2022 14:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E143280A4C
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 62305C007C;
	Mon,  4 Jul 2022 14:36:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DBF21C002D
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 14:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B66B460A81
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 14:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B66B460A81
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KHZG5UXy
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PPRJupHRhf4j for <bridge@lists.linux-foundation.org>;
 Mon,  4 Jul 2022 14:36:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9C0C605DB
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9C0C605DB
 for <bridge@lists.linux-foundation.org>; Mon,  4 Jul 2022 14:36:25 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id j7so5528113wmp.2
 for <bridge@lists.linux-foundation.org>; Mon, 04 Jul 2022 07:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8FvyoCcZIIWT/+d0TYytTEN4tkuREx1whLnCxZohGlQ=;
 b=KHZG5UXy9v/MjhNrt3cHkM3YTmdVYJaL2BcNPKrJQaopiKoqiAyrqNgWY49OmWQyCL
 7DC45L0lQS0jnG9b6KpwONbUHu7Vp0wjfNIctqYY10AJ2IOAocf+gUe8Edg3O3pyQ1Og
 VweJVuLEdPT50/6ORDjR5bhbKJGdZZInziAksmp1ZS1qZNrzdyTeWUBTJJg9AY8VAPwb
 CFAiwK21HXoBexPaEQtykodppTzSk4sjV2+CRP6ZzUXDDK0YsSnS244i7bMljTk4JYf8
 eDn6nfn+TT8vWK1rsJPtM1dP1oPs5OyriPhBZ8SM/osUaOHwtijzHOT6r7pkRdsKgKyp
 xdVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8FvyoCcZIIWT/+d0TYytTEN4tkuREx1whLnCxZohGlQ=;
 b=Q1RoWCYASgUzNeLguZd0fzGVKu1T9qgfxY5Cel5xtDGuGBszDnnPM+15zbDpCmyPj7
 s/d2edtlouwdjkrZYVr34anXjVMF8yTXQgduRDhxTblGUyfkmmw5S3kmoGQ+F23qJQuy
 UNKHof92dxs/W9llj/C4is7nnH5YZHtiFWlNAeJKSzHD31BRkT0baoNLcmXa29/uwWsz
 0Q0/tSF4jqIkN7xI80c0MBpXB7PsWfZBNXQyGnH8sJnZhd9Sgu3fBNzeH4Npue/Nu3TL
 XrPuDgme7PahOY/+uQoDiD7FPo+ScrBhsleKP3LtjRCc0saCLSW5XVbUM0Q4xcCFBPbo
 fF0A==
X-Gm-Message-State: AJIora8CGqa577M5PBVKSBBW868dcHI1puLj8zhNiWVXgMAblmNn5cZC
 T9gsI4RwgJ82eYPHENZA5g8292nQou3zWrxEJbA=
X-Google-Smtp-Source: AGRyM1u7HbD+/JJKPGW955kb9W8u+xDxmUQN73RgzFx9ZGPMg4WQt8xMOQemSUXBmNjV7kNDwYM2t8gxMOO2lnh9xKc=
X-Received: by 2002:a05:600c:386:b0:3a1:8cd8:fee4 with SMTP id
 w6-20020a05600c038600b003a18cd8fee4mr18584805wmd.44.1656945383975; Mon, 04
 Jul 2022 07:36:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
 <Yr8oPba83rpJE3GV@shredder>
 <CAKUejP4_05E0hfFp-ceXLgPuid=MwrAoHyQ-nYE3qx3Tisb4uA@mail.gmail.com>
 <YsE+hreRa0REAG3g@shredder>
 <CAKUejP4H4yKu6LaLUUUWypt7EPuYDK-5UdUDHPF8F2U5hGnzOQ@mail.gmail.com>
 <YsLILMpLI3alAj+1@shredder>
In-Reply-To: <YsLILMpLI3alAj+1@shredder>
From: Hans S <schultz.hans@gmail.com>
Date: Mon, 4 Jul 2022 16:36:12 +0200
Message-ID: <CAKUejP5=eNyAso=MW2nb2o=OKMaysmWUJ-zqLcerPg6EzsQVYQ@mail.gmail.com>
To: Ido Schimmel <idosch@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
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

On Mon, Jul 4, 2022 at 1:00 PM Ido Schimmel <idosch@nvidia.com> wrote:
>
> On Mon, Jul 04, 2022 at 09:54:31AM +0200, Hans S wrote:
> > >
> > > IIUC, with mv88e6xxx, when the port is locked and learning is disabled:
> > >
> > > 1. You do not get miss violation interrupts. Meaning, you can't report
> > > 'locked' entries to the bridge driver.
> > >
> > > 2. You do not get aged-out interrupts. Meaning, you can't tell the
> > > bridge driver to remove aged-out entries.
> > >
> > > My point is that this should happen regardless if learning is enabled on
> > > the bridge driver or not. Just make sure it is always enabled in
> > > mv88e6xxx when the port is locked. Learning in the bridge driver itself
> > > can be off, thereby eliminating the need to disable learning from
> > > link-local packets.
> >
> > So you suggest that we enable learning in the driver when locking the
> > port and document that learning should be turned off from user space
> > before locking the port?
>
> Yes. Ideally, the bridge driver would reject configurations where
> learning is enabled and the port is locked, but it might be too late for
> that. It would be good to add a note in the man page that learning
> should be disabled when the port is locked to avoid "unlocking" the port
> by accident.

Well you cannot unlock the port by either enabling or disabling
learning after the port is locked, but Mac-Auth and refreshing might
not work. I clarify just so that no-one gets confused.

I can do so that the driver returns -EINVAL if learning is on when
locking the port, but that would of course only be for mv88e6xxx...
