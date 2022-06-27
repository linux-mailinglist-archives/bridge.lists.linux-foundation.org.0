Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F39DC55B9A1
	for <lists.bridge@lfdr.de>; Mon, 27 Jun 2022 14:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 756508176C;
	Mon, 27 Jun 2022 12:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 756508176C
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=h0RUdzs/
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v4aDt631UNMW; Mon, 27 Jun 2022 12:58:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id EC92581761;
	Mon, 27 Jun 2022 12:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC92581761
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94420C007E;
	Mon, 27 Jun 2022 12:58:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 850AEC002D
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jun 2022 12:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6DF9B81751
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jun 2022 12:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DF9B81751
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fND20u0ATexV for <bridge@lists.linux-foundation.org>;
 Mon, 27 Jun 2022 12:58:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A932816F5
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A932816F5
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jun 2022 12:58:26 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 i67-20020a1c3b46000000b003a03567d5e9so5820098wma.1
 for <bridge@lists.linux-foundation.org>; Mon, 27 Jun 2022 05:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JMkhE15DqUuUYsqdeVw0YV5US1cbKTxDmN+AZSpDcP0=;
 b=h0RUdzs/T1fLlIR1/zIfcZGTBTOxi0NalXvCnyBA3PGTv2E7elyVjIS0kcS62w7C9w
 kdGiI6r4eCjtXJcrM3R8GaNCejm6jR3xF/0YbyuR7hgwhhYbFxlKfl6qs6JQpV6/zT54
 nAKGvxumCU2NoVQn9kpTtB8CCDUCHlzQQvvtLOHvk63ZigC9CbUFSxdui5ZR7BL7hy1n
 Qi0H15xrkblODPN/Nx5fwtrO+ikBEKHoMCTKgDuDJrLL2HgUiPP85P19d6arDE65G/tL
 UqPyRYAtkryAZe99Mf98zV+2YvRoTCF15jc48N8OMDFVmtoHJZu2YS2UMdifPdRKr1ru
 JWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JMkhE15DqUuUYsqdeVw0YV5US1cbKTxDmN+AZSpDcP0=;
 b=ovrQW+0j9ELiTSTwmU+dM7HsYeDyckUrFbLZYds54DSLNIp65rU4epeWkZLg9GnvLI
 fik2A8lVSTgho216O5Y8YOK3KD1ySe/3ZgGUrSy3JJgTlR5cBLwbj9CxanPV2s2521tl
 ErcgStLUJqqupyXvM294qwCDxLF61klGakd83ZI2VuCxs53S6c6atg3j3VzS/TStSGyI
 8KguRzpD9RTOk9BsNslFQNMbuH4yCrOdKyM/DXBmfCjJlBD8Dj1lcg+E38mr2b8Lsaml
 CG2CZHnqPT1Ye+jOdSAF6u86nNZcS5z/BLNWupEbybxY6WN9p8nXUu52GkcIjZM35ZHJ
 sMmA==
X-Gm-Message-State: AJIora/zGYckBbQMl4bZdX/zBEF60PaBs35LxmHg5XkbwrNbbOYEDHIl
 MiEvhMxJQttj+8+esJIZY65JC9DN0ko+xjLugqI=
X-Google-Smtp-Source: AGRyM1vjPE5hZwDXlzx8IvGj9TaZn/xlyGJ8rqNUB+DR5A3YYTBJAKlAN4COeaY6depDsGtZbnoGdALGOzVDvpJyCQE=
X-Received: by 2002:a7b:c20d:0:b0:3a0:39e4:19e8 with SMTP id
 x13-20020a7bc20d000000b003a039e419e8mr20413223wmi.166.1656334704704; Mon, 27
 Jun 2022 05:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
In-Reply-To: <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
From: Hans S <schultz.hans@gmail.com>
Date: Mon, 27 Jun 2022 14:58:13 +0200
Message-ID: <CAKUejP7xPByVP2Qe0fFCxhU_vX84qp2i_7RFnL9ZYMVr0xH=jw@mail.gmail.com>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 linux-kernel@vger.kernel.org, Hans Schultz <schultz.hans+netdev@gmail.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH V3 net-next 3/4] net: dsa: mv88e6xxx:
	mac-auth/MAB implementation
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

Hi Vladimir,
maybe you have missed my upstreaming of this patch set...

According to our earlier discussions I have now implemented the
feature, so that the ATU locked entries are owned by the driver, so to
make the entries dynamic I add the entries to a list and use kernel
timers to age out the entries as they should be 'dynamic'. See
mv88e6xxx_switchdev.c.

Hans

On Tue, May 24, 2022 at 5:22 PM Hans Schultz <schultz.hans@gmail.com> wrote:
>
> This implementation for the Marvell mv88e6xxx chip series, is
> based on handling ATU miss violations occurring when packets
> ingress on a port that is locked. The mac address triggering
> the ATU miss violation is communicated through switchdev to
> the bridge module, which adds a fdb entry with the fdb locked
> flag set. The entry is kept according to the bridges ageing
> time, thus simulating a dynamic entry.
>
> Note: The locked port must have learning enabled for the ATU
> miss violation to occur.
>
> Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
> ---
>  drivers/net/dsa/mv88e6xxx/Makefile            |   1 +
>  drivers/net/dsa/mv88e6xxx/chip.c              |  40 ++-
>  drivers/net/dsa/mv88e6xxx/chip.h              |   5 +
>  drivers/net/dsa/mv88e6xxx/global1.h           |   1 +
>  drivers/net/dsa/mv88e6xxx/global1_atu.c       |  35 ++-
>  .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 249 ++++++++++++++++++
>  .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   |  40 +++
>  drivers/net/dsa/mv88e6xxx/port.c              |  32 ++-
>  drivers/net/dsa/mv88e6xxx/port.h              |   2 +
>  9 files changed, 389 insertions(+), 16 deletions(-)
>  create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
>  create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
>
