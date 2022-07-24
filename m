Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AC257F3F0
	for <lists.bridge@lfdr.de>; Sun, 24 Jul 2022 10:11:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83BB740BC9;
	Sun, 24 Jul 2022 08:11:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83BB740BC9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=FDC1RPQ3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KOUR0GO_m_G2; Sun, 24 Jul 2022 08:11:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EDA024168B;
	Sun, 24 Jul 2022 08:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDA024168B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 85444C0078;
	Sun, 24 Jul 2022 08:11:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3405EC002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Jul 2022 08:11:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 07DF640BC9
 for <bridge@lists.linux-foundation.org>; Sun, 24 Jul 2022 08:11:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07DF640BC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cU64J9EtD-Ko for <bridge@lists.linux-foundation.org>;
 Sun, 24 Jul 2022 08:11:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88F3840156
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88F3840156
 for <bridge@lists.linux-foundation.org>; Sun, 24 Jul 2022 08:11:25 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id d8so11864933wrp.6
 for <bridge@lists.linux-foundation.org>; Sun, 24 Jul 2022 01:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4j2cZN1zYQwRk4mpzSYDT0FtltzsuIeHx0BCJeg+1MI=;
 b=FDC1RPQ342icpKEeFzetsAQN1Q1CFXtM5cASqyAfrvxxiF0Mi9rDkVLxxGPfS7UXJ+
 Q3096eUT8BRnrsCb1iY6+0aENWYYoP9qOg+K3yblDf62ndrmf/huBe8vHUeFwDB1nges
 xqpwsVcbZuRIKHOo9oMu3N2pcEkXHECcFHDaCYfHg8U4oxbeckCHueqb67SdxJdMxj3z
 wGkeSF/bcFcMQzvlLVdVJ4Gayv17AmSXKOCEqm8HY6VzWhVidZLl0ldUzmX11zvvy4dM
 chgw6+MRG4eYzqo6i4YV17MMFk+/v1VPkhLngGm8PBJdzOXdYwCQtAHn2ubDmGZiyaGJ
 2Kgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4j2cZN1zYQwRk4mpzSYDT0FtltzsuIeHx0BCJeg+1MI=;
 b=bBAToeHnT8aHN2XZcZT75RweOZ1Fdu+cUFRye7HJjC7X6+prGdsQNKfpE/tOX8kKbI
 a5zcEfJVyjvYVswOPD6GpU6J5zFgJ9P0oWP59rioVNxQneBsU4MmAkkauZVwbWGFU8/B
 ULpLeEMgeEN59s4cnVwlt407zGFU5kLASjzbRiGetH2hKcycmKTxQIQPA2y/D89lTLtP
 StMxPOjmPM5a+RV+RZCFkqO6ea+wwD8UcsWgYxbTgMSB37lv0HZkBLcI6s+CGlEg9Bic
 W4coSkH4cLR8FObuq258Qa2Ar+NGT+EOzX/EWbmitar/NQKDPUmC5t0xxjA2QGE+nAYp
 G7Cg==
X-Gm-Message-State: AJIora9YpR/UjFGiruaBwbqcQHlGXIC3Fg8mGjJcnOSGH3lT94/vnTHD
 70amb57SwrjyaqplH2XYov39gvq7xY5OOS02JME=
X-Google-Smtp-Source: AGRyM1tdv7lj8flnITHW2lunWgSsEX+G51gI971XJKu/diR64iG8Iwygok8RSeTQqFi6tcZnZuQKp/riuVo+gjUzxAo=
X-Received: by 2002:a5d:42c4:0:b0:21e:2cd4:a72e with SMTP id
 t4-20020a5d42c4000000b0021e2cd4a72emr4545412wrr.249.1658650283641; Sun, 24
 Jul 2022 01:11:23 -0700 (PDT)
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
In-Reply-To: <20220721114540.ovm22rtnwqs77nfb@skbuf>
From: Hans S <schultz.hans@gmail.com>
Date: Sun, 24 Jul 2022 10:09:11 +0200
Message-ID: <CAKUejP6xR81p1QeSCnDP_3uh9owafdYr1pifeCzekzUvU3_dPw@mail.gmail.com>
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

On Thu, Jul 21, 2022 at 1:45 PM Vladimir Oltean <olteanv@gmail.com> wrote:
>
> On Sun, Jul 17, 2022 at 09:20:57PM +0200, Hans S wrote:
>
> I'm only pointing out the obvious here, we need an opt in for MAB, and
> the implemented behavior I've seen here kind of points to mapping this
> to "+learning +locked", where the learning process creates locked FDB entries.

I can go with the reasoning for the opt in for MAB, but disabling link
local learning system wide I don't think is a good idea, unless
someone can ensure me that it does not impact something else.
In general locked ports should never learn from link local, which is a
problem if they do, which suggests to me that this patch should
eventually be accepted as the best solution.
