Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ACB4E7AA4
	for <lists.bridge@lfdr.de>; Fri, 25 Mar 2022 21:31:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1425E844D8;
	Fri, 25 Mar 2022 20:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFC85GFiDifT; Fri, 25 Mar 2022 20:31:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 335E3844BE;
	Fri, 25 Mar 2022 20:31:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F0D8EC0073;
	Fri, 25 Mar 2022 20:31:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B7CFDC0012
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 20:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93BCD40167
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 20:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id juooKsh6U7ST for <bridge@lists.linux-foundation.org>;
 Fri, 25 Mar 2022 20:31:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81388400A4
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 20:31:01 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id y10so10477008edv.7
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 13:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=688sj//6ZYYmXeEOBA9mO+3iA2HUWbMyva2TmireD9U=;
 b=kB/tVx6DI6Rgd6ixZLqpV4Fomxj2NvOTH7zcKgx4vW3AyK/a5uKj7pBDt7VIJSZcTt
 yFyfwpI8ZA6TINWZ0ypY4Ul0qmcqdEQLmSIj9sb+p4d1/6p4jbwjtKAtUZxsGLgIXIkH
 rWTswGSYlZlr797QZICFUjlmaasJ+TmHSOuLwE4eGz0j4u2p1Wl/rwjvZsstXDmRvVGr
 CbuUEfYoqB4dvOnE8+fYS0vSqQEAx2JTeq0d9BPFkWls0GQWb8CuRsVXeSsh62ETyp3n
 s1EF9/9+bQE0FCDMT4PcH23ASib0CKeaE8GEehwEn9WLltLeQzexfYF+yWEmoUkADJiD
 CgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=688sj//6ZYYmXeEOBA9mO+3iA2HUWbMyva2TmireD9U=;
 b=FnhKC3Kf+3UcPuQLShhLjFaA+w0nrR6Luit17L6s2yuZ+aOc9cQYdJzeiSncRCLsMW
 C48r0x81LKCm8LbbXqldiCVTObEk8hBe9pCx9q58yYpxVEsMg+AL+wXgHY/LwrWkEkgs
 IHaF9xxnE+GfH6AonEVtgACN+OXn7xGbBRIGCBfrSsGq3Wn3et7Dy81e2dTsubIJ2JfQ
 aknoc4rmxAtOKToG67qjS+jR0Hr0NrpjrLbInQTzeBlmj3UpEwnFij0EqEwkwWO3BBKQ
 tYDp+F2l2cD7tx5upK1nyq8LRiaBD1i+EzNLM6INgkEQGj2KlAE4SAksd2jPZNOVaJIX
 Uppw==
X-Gm-Message-State: AOAM530GhnZNpvjvxAIhhh3LVZI5w9scoujv0Fq03vLTR8BCWC72e1lt
 5fW6w4XQi3n6QVm+jZSfzwY=
X-Google-Smtp-Source: ABdhPJyyV0hsBOrPNn7eKSgqfeP2ZMo+aiWYXa5UNMoWgR3oUZZRiCP+f6kWAjWOPtrDOU7PIpGRCQ==
X-Received: by 2002:a05:6402:40d5:b0:419:496b:5ab0 with SMTP id
 z21-20020a05640240d500b00419496b5ab0mr578673edb.284.1648240259548; 
 Fri, 25 Mar 2022 13:30:59 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 b19-20020aa7dc13000000b00418eef0a019sm3237740edu.34.2022.03.25.13.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 13:30:59 -0700 (PDT)
Date: Fri, 25 Mar 2022 22:30:57 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220325203057.vrw5nbwqctluc6u3@skbuf>
References: <20220323144304.4uqst3hapvzg3ej6@skbuf> <86lewzej4n.fsf@gmail.com>
 <20220324110959.t4hqale35qbrakdu@skbuf> <86v8w3vbk4.fsf@gmail.com>
 <20220324142749.la5til4ys6zva4uf@skbuf> <86czia1ned.fsf@gmail.com>
 <20220325132102.bss26plrk4sifby2@skbuf> <86fsn6uoqz.fsf@gmail.com>
 <20220325140003.a4w4hysqbzmrcxbq@skbuf> <86tubmt408.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86tubmt408.fsf@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 2/4] net: switchdev: add support
 for offloading of fdb locked flag
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

On Fri, Mar 25, 2022 at 05:01:59PM +0100, Hans Schultz wrote:
> > An attacker sweeping through the 2^47 source MAC address range is a
> > problem regardless of the implementations proposed so far, no?
> 
> The idea is to have a count on the number of locked entries in both the
> ATU and the FDB, so that a limit on entries can be enforced.

I can agree with that.

Note that as far as I understand regular 802.1X, these locked FDB
entries are just bloatware if you don't need MAC authentication bypass,
because the source port is already locked, so it drops all traffic from
an unknown MAC SA except for the link-local packets necessary to run
EAPOL, which are trapped to the CPU.

So maybe user space should opt into the MAC authentication bypass
process, really, since that requires secure CPU-assisted learning, and
regular 802.1X doesn't. It's a real additional burden that shouldn't be
ignored or enabled by default.

> > If unlimited growth of the mv88e6xxx locked ATU entry cache is a
> > concern (which it is), we could limit its size, and when we purge a
> > cached entry in software is also when we could emit a
> > SWITCHDEV_FDB_DEL_TO_BRIDGE for it, right?
> 
> I think the best would be dynamic entries in both the ATU and the FDB
> for locked entries.

Making locked (DPV=0) ATU entries be dynamic (age out) makes sense.
Since you set the IgnoreWrongData for source ports, you suppress ATU
interrupts for this MAC SA, which in turn means that a station which is
unauthorized on port A can never redeem itself when it migrates to port B,
for which it does have an authorization, since software never receives
any notice that it has moved to a new port.

But making the locked bridge FDB entry be dynamic, why does it matter?
I'm not seeing this through. To denote that it can migrate, or to denote
that it can age out? These locked FDB entries are 'extern_learn', so
they aren't aged out by the bridge anyway, they are aged out by whomever
added them => in our case the SWITCHDEV_FDB_DEL_TO_BRIDGE that I mentioned.

> How the two are kept in sync is another question, but if there is a
> switchcore, it will be the 'master', so I don't think the bridge
> module will need to tell the switchcore to remove entries in that
> case. Or?

The bridge will certainly not *need* to tell the switch to delete a
locked FDB entry, but it certainly *can* (and this is in fact part of
the authorization process, replace an ATU entry with DPV=0 with an ATU
entry with DPV=BIT(port)).

I feel as if I'm missing the essence of your reply.
