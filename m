Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4628584B14
	for <lists.bridge@lfdr.de>; Fri, 29 Jul 2022 07:25:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C89660E96;
	Fri, 29 Jul 2022 05:25:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C89660E96
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=WkAkV/6c
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3oYkuZZKKKI; Fri, 29 Jul 2022 05:25:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 165C560E9F;
	Fri, 29 Jul 2022 05:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 165C560E9F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B1BD9C007D;
	Fri, 29 Jul 2022 05:25:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6380C002D
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jul 2022 05:25:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D8C883EFF
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jul 2022 05:25:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D8C883EFF
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=WkAkV/6c
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnybj2-I51_1 for <bridge@lists.linux-foundation.org>;
 Fri, 29 Jul 2022 05:25:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBE1F83EFA
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBE1F83EFA
 for <bridge@lists.linux-foundation.org>; Fri, 29 Jul 2022 05:25:37 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 r1-20020a05600c35c100b003a326685e7cso3836355wmq.1
 for <bridge@lists.linux-foundation.org>; Thu, 28 Jul 2022 22:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9B+fJLFGx39Gcy7aaco5Kc5jq5xG1Fk7EO3xuRz7x3o=;
 b=WkAkV/6cwsJb4o9WWErAaQfbeC1idvMXn0SMP+MW4GHMxK6PsP/z8boKVsBjRgrBBf
 oTzZu97jc2U65u1P6Aeax1Cx2y/v8P6B2wALgIA+8yV6tLI+duOfE+322vNNfQOQ92nY
 cvi3vuxawepQluJvA0jxIr5J1KlB3sMnlPvRs5kxlw05xLFG5FSx2+qjcfDdHdFbofbo
 G2JACbV2XIdc/DdeSZ93GoESs+YjDo9spRpFHgzvgzntUgtSJ2EfvZPrxQeH9qRlbl0E
 YHUEQ92oO2oiojydFNjNNwKUcQvn5OFQuYSljUJB5OOmZsBc7BmRmeVjJ1btvuhoRknf
 WmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9B+fJLFGx39Gcy7aaco5Kc5jq5xG1Fk7EO3xuRz7x3o=;
 b=UhoGJ06I10TPOvoJ2H1YsOX5AxqL5dMisp+MNNp74jrxdHPP+lDQ7BtSglVK8dRf36
 rNQxiDDn3YaQ2LdQ4CnDHryxzYIyEqBrbNeBpK/xhiwmp03t471oEY3pDxO9lGWeUsla
 eX6cppyvRHjsMgwqLVrZsgovmzPe+xl4DIfsUTq9nEzDbVWldzuhCCBeCDocqv92Zpyh
 7+fOktIgPgcVsOTmAH9r5Qi0dMz15LHdPCAiiWDU3+R1WH0SAKSx0sbwzo4bdVInQMBC
 etwmK77mlwF4cLtN06CkmszrE+b7Mij/DRErSphnPIRvMsOzJGh1wCzLOvCD2TSXmgGo
 O8zg==
X-Gm-Message-State: AJIora+z6eRm7qNP83xvTNIZEtfU7pNU20I/CTsXRq0B+DjH+PhYHs/E
 puZGO0DtVg8Urs2G8JYNw4gti0NEbJdwaeul6rs=
X-Google-Smtp-Source: AGRyM1u21Qu8cK2qjhPRLPYSYqEDJ79Ti7WsX0dOf0bYOn/l7dW8mWB/5YluKzXnT+O4cUxAXDTkdwF+WnqSyq2eEs0=
X-Received: by 2002:a05:600c:3593:b0:3a3:3a49:41a3 with SMTP id
 p19-20020a05600c359300b003a33a4941a3mr1533880wmq.166.1659072335895; Thu, 28
 Jul 2022 22:25:35 -0700 (PDT)
MIME-Version: 1.0
References: <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
 <20220717134610.k3nw6mam256yxj37@skbuf>
 <20220717140325.p5ox5mhqedbyyiz4@skbuf>
 <CAKUejP6g3HxS=Scj-2yhsQRJApxnq1e31Nkcc995s7gzfMJOew@mail.gmail.com>
 <20220717183852.oi6yg4tgc5vonorp@skbuf>
 <CAKUejP7WyL2r03EiZU4hA63u2e=Wz3KM4X=rDdji5pdZ0ptaZg@mail.gmail.com>
 <20220721114540.ovm22rtnwqs77nfb@skbuf>
 <CAKUejP6xR81p1QeSCnDP_3uh9owafdYr1pifeCzekzUvU3_dPw@mail.gmail.com>
In-Reply-To: <CAKUejP6xR81p1QeSCnDP_3uh9owafdYr1pifeCzekzUvU3_dPw@mail.gmail.com>
From: Hans S <schultz.hans@gmail.com>
Date: Fri, 29 Jul 2022 07:23:19 +0200
Message-ID: <CAKUejP5FGqJZ3HNUANsi4VzM5VRGYmDBRQt3Ohvd90wxyEhEqA@mail.gmail.com>
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

On Sun, Jul 24, 2022 at 10:09 AM Hans S <schultz.hans@gmail.com> wrote:
>
> On Thu, Jul 21, 2022 at 1:45 PM Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > On Sun, Jul 17, 2022 at 09:20:57PM +0200, Hans S wrote:
> >
> > I'm only pointing out the obvious here, we need an opt in for MAB, and
> > the implemented behavior I've seen here kind of points to mapping this
> > to "+learning +locked", where the learning process creates locked FDB entries.
>
> I can go with the reasoning for the opt in for MAB, but disabling link
> local learning system wide I don't think is a good idea, unless
> someone can ensure me that it does not impact something else.
> In general locked ports should never learn from link local, which is a
> problem if they do, which suggests to me that this patch should
> eventually be accepted as the best solution.

Hi Vladimir,
sorry, I forget myself. We cannot use +learning as an opt in for MAB
with this driver, as there will be no HW refresh and other interrupts
like the age out violation will not occur either, which will be needed
further on.
If we really need an opt in for MAB, I think it will have to be a new flag.
Hans
