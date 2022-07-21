Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 030EF57C9E7
	for <lists.bridge@lfdr.de>; Thu, 21 Jul 2022 13:45:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A529A84777;
	Thu, 21 Jul 2022 11:45:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A529A84777
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=jBQ3tHqi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fECto9bD-42s; Thu, 21 Jul 2022 11:45:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2455F84774;
	Thu, 21 Jul 2022 11:45:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2455F84774
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BED7FC007D;
	Thu, 21 Jul 2022 11:45:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1FAA9C002D
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D73F861010
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:45:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D73F861010
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=jBQ3tHqi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c_1qVowReOpi for <bridge@lists.linux-foundation.org>;
 Thu, 21 Jul 2022 11:45:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E88F60FD3
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E88F60FD3
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:45:46 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id y8so1821032eda.3
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 04:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Z0+wVeznGOhrF2PQZAZsTW98eQP0pfgcFl8bmcvRHk4=;
 b=jBQ3tHqiU5j8c9PUfH8HkZF0hFZ6L33OoB2KBuDZ3Wu49WOzt54VTcmDCjYkTO5hCU
 T65wKmm6bApDnSyDdsa8Fs6ks/4NNBGe+C7ZtioowfqwqVL1d4J69vy98i3EdknV+fM4
 UBTMhQGMAgDrpC2iWVTGvP+qNS6o+bWD3jTFA8Dh09jneWhaZHjsZdgLoPLeFnAwsYH1
 9dPUju5cUfAn5ZtvIxpbWJw4laOv0MSk8GeWv+TRThzn1ZX2qp+PtmUgLS1LW9fJ5+mq
 F3UvE/gBF3SUgMoP8OqsQqZ9c1PSRvzAMrvN4Mg2BDAIHYbs6YGCCOD/7fUCpbn/+2x8
 QyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Z0+wVeznGOhrF2PQZAZsTW98eQP0pfgcFl8bmcvRHk4=;
 b=mSp8XZJDIJqeIjnuQAO5d9K8I7PC14fZbQMm7Tcmnk7jYutrEawmCYnUqc7PoMZx9T
 ZREUZtni2FSniFOnR46s6RM6f0+AW+0zLspBQor6xKzTUO25KxVAV92IyAspcRCq105l
 UHW1zOpbRh/1GhDWtx7pXRJSv8lbDvodB9KsRrlcTe8IDhlmGiRTSnlTdoKI/ukVP2QO
 ljpwwJC/GpU3m0Lx/5d/kkygh8QKRHHBphBcb6qmTCocIdremLDbIZuC1u4DfpNYbaXS
 8wMNq+jXA4WD/L5HizonFxFb9AKQlKNEO345o6sRI94xlroo4c6LCLRyRrBsXw9iOcgK
 f3eQ==
X-Gm-Message-State: AJIora+s/5HDeNV1+LBPpGYEbMrMoVS7eRqxIn1sfIYVMrxSNkZqzjC3
 edt7gP6zhWXbQnxUyxLjRYo=
X-Google-Smtp-Source: AGRyM1tL0AuwhW8Q9+cnhtPSM6/usR06tvWsKej6gm85BQK/JC0IDnM6icXBsHNzrgRibg5NVrHXAQ==
X-Received: by 2002:a05:6402:11c7:b0:43a:c61c:21cd with SMTP id
 j7-20020a05640211c700b0043ac61c21cdmr56153170edw.108.1658403944462; 
 Thu, 21 Jul 2022 04:45:44 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 kw26-20020a170907771a00b0072124df085bsm788710ejc.15.2022.07.21.04.45.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 04:45:43 -0700 (PDT)
Date: Thu, 21 Jul 2022 14:45:40 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans S <schultz.hans@gmail.com>
Message-ID: <20220721114540.ovm22rtnwqs77nfb@skbuf>
References: <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
 <20220717134610.k3nw6mam256yxj37@skbuf>
 <20220717140325.p5ox5mhqedbyyiz4@skbuf>
 <CAKUejP6g3HxS=Scj-2yhsQRJApxnq1e31Nkcc995s7gzfMJOew@mail.gmail.com>
 <20220717183852.oi6yg4tgc5vonorp@skbuf>
 <CAKUejP7WyL2r03EiZU4hA63u2e=Wz3KM4X=rDdji5pdZ0ptaZg@mail.gmail.com>
 <CAKUejP7WyL2r03EiZU4hA63u2e=Wz3KM4X=rDdji5pdZ0ptaZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKUejP7WyL2r03EiZU4hA63u2e=Wz3KM4X=rDdji5pdZ0ptaZg@mail.gmail.com>
 <CAKUejP7WyL2r03EiZU4hA63u2e=Wz3KM4X=rDdji5pdZ0ptaZg@mail.gmail.com>
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

On Sun, Jul 17, 2022 at 09:20:57PM +0200, Hans S wrote:
> On Sun, Jul 17, 2022 at 8:38 PM Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > On Sun, Jul 17, 2022 at 06:22:57PM +0200, Hans S wrote:
> > > On Sun, Jul 17, 2022 at 4:03 PM Vladimir Oltean <olteanv@gmail.com> wrote:
> > >
> > > Yes, it creates an FDB entry in the bridge without the locked flag
> > > set, and sends an ADD_TO_DEVICE notice with it.
> > > And furthermore link-local packets include of course EAPOL packets, so
> > > that's why +learning is a problem.
> >
> > So if we fix that, and make the dynamically learned FDB entry be locked
> > because the port is locked (and offload them correctly in mv88e6xxx),
> > what would be the problem, exactly? The +learning is what would allow
> > these locked FDB entries to be created, and would allow the MAB to work.
> > User space may still decide to not authorize this address, and it will
> > remain locked.
> 
> The alternative is to have -learning and let the driver only enable
> the PAV to admit the interrupts, which is what this implementation
> does.
> The plus side of this is that having EAPOL packets triggering locked
> entries from the bridge side is not really so nice IMHO. In a
> situation with 802.1X and MAB on the same port, there will then not be
> any triggering of MAB when initiating the 802.1X session, which I
> think is the best option. It then also lessens the confusion between
> hostapd and the daemon that handles MAB sessions.

Why is it "not really so nice" to "trigger MAB" (in fact only to learn a
locked entry on a locked port) when initiating the 802.1X session?
You can disable link-local learning via the bridge option if you're
really bothered by that. When you have MAB enabled on an 802.1X port,
I think it's reasonable to expect that there will be some locked entries
which user space won't ever unlock via MAB. If those entries happen to
be created as a side effect of the normal EAPOL authentication process,
I don't exactly see where is the functional problem. This shouldn't
block EAPOL from proceeding any further, because this protocol uses
link-local packets which are classified as control traffic, and that
isn't subject to FDB lookups but rather always trapped to CPU, so locked
or not, it should still be received.

I'm only pointing out the obvious here, we need an opt in for MAB, and
the implemented behavior I've seen here kind of points to mapping this
to "+learning +locked", where the learning process creates locked FDB entries.
