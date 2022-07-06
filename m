Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1F2568B21
	for <lists.bridge@lfdr.de>; Wed,  6 Jul 2022 16:23:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FCCB417D9;
	Wed,  6 Jul 2022 14:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FCCB417D9
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=MipxUNNv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v3Lst7oodQCz; Wed,  6 Jul 2022 14:23:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 6D9AE4154F;
	Wed,  6 Jul 2022 14:23:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D9AE4154F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0B2ACC0077;
	Wed,  6 Jul 2022 14:23:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 203E5C002D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 14:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC92540AE8
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 14:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC92540AE8
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=MipxUNNv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tUj3y18Wud0k for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jul 2022 14:23:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F4E24012D
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F4E24012D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 14:23:38 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id s1so22309065wra.9
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 07:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WPpPFt2vreAvukEchuJ8KcyDhd0FY1gp7qevaVZJpHI=;
 b=MipxUNNv1CuzDomW4TDLl1zhaylRYTrx3HZq9GYsjxdcB9+8zSPYgqHTdiwr1z+vMx
 1FrXYtgFdTKQJAw332y5OtL+a1DSibzdekPFpU8scZF5wsXT5IozNxflL5z/F9J/EOc8
 6fUUAb+3A0iOvdHXB3B0v7vb03sGXtWPoywgxAYh5fGJNL2Gf/akgZZ3o5Q2t/X8AhTv
 oGRsf1z5hI6JAZutJvqwANARqRbZmUNjWEgtE6le0ja1+VhmfDcpIbt7w6NmofsaRELe
 4kHBuQJNq9n9YQUGsOMl/wOhnMFV9A/p892T0cj4Bxeo7uwyANFpUYfIfrchPmUhtkUp
 n2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WPpPFt2vreAvukEchuJ8KcyDhd0FY1gp7qevaVZJpHI=;
 b=kP2k/RB5lB+2M2AXgAMbbequEMua2wV1EF93rskSttAQamU9ehTeT6GlWjBvVJkfi5
 o1A7umF3k9c7KgyN6CPckWkrmQOenOOVvKKkc0ks3oM34zgH74QvhsppMiDuH0uJFRT6
 5AZCzDUZ9Hai8D/hECDDkSAGZJbP1ETsvgGnqQVBEUAPU+zV3JgJTD+Ls8njRCGWJAPs
 bWs8SFz0VfQPJN1u6j9WhXTKD2KV5yadNIR4sHOmI6CfqIaO95y3hXx4TUriCELbpmqe
 C07xVmpo0szDXfnNcanUxyL/S3McLKr80vEEgBAJlmXYVzvGqkQZgwrTFMkAeCWohNP/
 S2FA==
X-Gm-Message-State: AJIora+70on23F6VNR+Qkv9hmTcAMUtwTxKvJZHdHlOMw0q8HQOwh6kp
 ty6vbBEZklLjJvyYsdr3eH6GnI9DP4SvFKs2YcU=
X-Google-Smtp-Source: AGRyM1vyCqZB5Fa3OerranrlSzgeG9k7CwyXwEFfqtrJ8m53fLEj0coZuzcxmy+5Zyo17nvKGoYAEoROlUXUwRhXr1Q=
X-Received: by 2002:a5d:4304:0:b0:21b:9b2c:be34 with SMTP id
 h4-20020a5d4304000000b0021b9b2cbe34mr40056150wrq.577.1657117416326; Wed, 06
 Jul 2022 07:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
 <20220627180557.xnxud7d6ol22lexb@skbuf>
 <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
 <20220706085559.oyvzijcikivemfkg@skbuf>
 <CAKUejP7gmULyrjqd3b3PiWwi7TJzF4HNuEbmAf25Cqh3w7a1mw@mail.gmail.com>
In-Reply-To: <CAKUejP7gmULyrjqd3b3PiWwi7TJzF4HNuEbmAf25Cqh3w7a1mw@mail.gmail.com>
From: Hans S <schultz.hans@gmail.com>
Date: Wed, 6 Jul 2022 16:23:25 +0200
Message-ID: <CAKUejP5modz89PxvgjWxNZ6mwyfdD+e2r_2n0Aj+HF8LFfn9SQ@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
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

> >> @@ -919,6 +920,9 @@ static void mv88e6xxx_mac_link_down(struct dsa_switch *ds, int port,
> >>       if (err)
> >>               dev_err(chip->dev,
> >>                       "p%d: failed to force MAC link down\n", port);
> >> +     else
> >> +             if (mv88e6xxx_port_is_locked(chip, port, true))
> >> +                     mv88e6xxx_atu_locked_entry_flush(ds, port);
> >
> >This is superfluous, is it not? The bridge will transition a port whose
> >link goes down to BR_STATE_DISABLED, which will make dsa_port_set_state()
> >fast-age the dynamic FDB entries on the port, which you've already
> >handled below.
>
> I removed this code, but then on link down the locked entries were not
> cleared out. Something not as thought?

I don't see a fast ageing happening on link down. There is the two cases:
1. Soft link down

With iproute2 command the link is brought down and
mv88e6xxx_mac_link_down() is called with rtnl lock taken.

2. Hard link down

I remove the cable from the port and mv88e6xxx_mac_link_down() is
called without rtnl lock.

As the hard link down case calls without rtnl lock, either I trigger
the case you have mentioned or I have to use rtnl_is_locked()
somewhere along the line?
