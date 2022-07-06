Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00407568D4D
	for <lists.bridge@lfdr.de>; Wed,  6 Jul 2022 17:38:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7732860FCF;
	Wed,  6 Jul 2022 15:38:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7732860FCF
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=UEc387RE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nzMczFu5tnKW; Wed,  6 Jul 2022 15:38:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AAB6B60FE1;
	Wed,  6 Jul 2022 15:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAB6B60FE1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 329DDC0077;
	Wed,  6 Jul 2022 15:38:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A4EB0C002D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 15:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CBFC405BC
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 15:38:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CBFC405BC
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=UEc387RE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jXX_VOyL05zP for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jul 2022 15:38:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFC33405B5
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EFC33405B5
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 15:38:40 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id bk26so7549079wrb.11
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 08:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZWNwOHmzSgkdv+jrzNwG3Jf3HDC0HOWhdAu3xXOwiQw=;
 b=UEc387REzaegIG1aRLLdB1AzsmZrVh+gNiHXsWTjXhdaIXBEbre+rDmlWSOlAA1Vld
 n0Fi365KWeLYSBX+ZvnFHrszQbK0H3fENyDsVj1hNCs1nA60BSBR2hEDFNqr5DQRjKky
 dQKlek0AHq7Iep3BhUVCSwjiS+C95AgzcEwlAsJQvMVK2qZDZM1KmmTjrIw1aetJCxLn
 9L0cwUYbN20ajoFd3P7SpdD0MsHuxGIv6DPo+SgijUWVjFMnK9PPyc3BzzpQLmRv+gnh
 BqfJl560A56QoLNEj+y/JpdM6c5AO2jOgPr1mZ33w/p+3qq1lggpAA1ynHhqol0/4hZO
 yzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZWNwOHmzSgkdv+jrzNwG3Jf3HDC0HOWhdAu3xXOwiQw=;
 b=L1wTulf1SSaPrurE4VI8Rnlu2zHJx+BsvGohRfLPzGbB7MzfpfrrJNyrlQuF5bHHsy
 bk5AsQj5+g9SeHXsSUGt+pjBHqdpabz75i25VcIJrUvsPE1CnmoeBNyg7ZuSf/CtjQ58
 UzLrwC364OB/zeMe7hoWq1NylyUnvh8oRiVHW2PHrdvVtfqu+dAfoE9dbld2CjzUl5X9
 0CF4GlNsJoRiuxGmpLqMXU18Ci27bXBHUolQs+g0yB/e0enhAuBQ8Jibe4tUksTVxCVZ
 pXaBZTnVQpz2KPTyvsuPKdJilROX/ywNRuLAa0wWEsANAGtUhFyp7Er+Z9b76ypABa4o
 xRuw==
X-Gm-Message-State: AJIora/Vb0RNiUEijaYA/ANM9X2E1tXpml6upotMAdioQansDSNLLgKJ
 i4x2znGPA+JHuLHTwnohkWLGGswEJ/vXsfSTFSs=
X-Google-Smtp-Source: AGRyM1tWbkdJLQwaPNSG7jQaW5G50wxV4D0b+agnSC53ENlTz2jqAxvQnOtgOf4+htM/ZiWXgwIJJcdjoxwI5t17fq0=
X-Received: by 2002:adf:dc0d:0:b0:21d:ea5:710f with SMTP id
 t13-20020adfdc0d000000b0021d0ea5710fmr38132877wri.48.1657121919107; Wed, 06
 Jul 2022 08:38:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
 <20220627180557.xnxud7d6ol22lexb@skbuf>
 <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
 <20220706085559.oyvzijcikivemfkg@skbuf>
 <CAKUejP7gmULyrjqd3b3PiWwi7TJzF4HNuEbmAf25Cqh3w7a1mw@mail.gmail.com>
 <20220706143339.iuwi23ktk53ihhb6@skbuf>
In-Reply-To: <20220706143339.iuwi23ktk53ihhb6@skbuf>
From: Hans S <schultz.hans@gmail.com>
Date: Wed, 6 Jul 2022 17:38:27 +0200
Message-ID: <CAKUejP6NG_X-Bh_xeA2y4Wru2=pxgHaRMdsvMu8NATNxPVeQ7A@mail.gmail.com>
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

On Wed, Jul 6, 2022 at 4:33 PM Vladimir Oltean <olteanv@gmail.com> wrote:
>
> > >> @@ -919,6 +920,9 @@ static void mv88e6xxx_mac_link_down(struct dsa_switch *ds, int port,
> > >>       if (err)
> > >>               dev_err(chip->dev,
> > >>                       "p%d: failed to force MAC link down\n", port);
> > >> +     else
> > >> +             if (mv88e6xxx_port_is_locked(chip, port, true))
> > >> +                     mv88e6xxx_atu_locked_entry_flush(ds, port);
> > >
> > >This is superfluous, is it not? The bridge will transition a port whose
> > >link goes down to BR_STATE_DISABLED, which will make dsa_port_set_state()
> > >fast-age the dynamic FDB entries on the port, which you've already
> > >handled below.
> >
> > I removed this code, but then on link down the locked entries were not
> > cleared out. Something not as thought?
>
> What was the port's STP state before the link down event, and did it
> change after the link down?

The stp state is FORWARDING.

>
> If the STP state wasn't LEARNING or FORWARDING, there weren't supposed
> to be dynamic FDB entries on the port in the first place, so DSA says
> there's nothing to flush, and doesn't call dsa_port_fast_age().
> Are there dynamic FDB entries being installed on a port that isn't
> in a state that's supposed to learn? I guess the answer is yes.
> Is that what you want, or should the locked entries be recorded only in
> the LEARNING or FORWARDING states, otherwise discarded?
>
Learning is off as has been discussed, and I do want the locked
entries to be dynamic in the sense that the driver removes them after
the system ageing time has passed.

>
> What you actually want to say is: "mv88e6xxx_port_set_lock() is also
> called when the DSA port joins a bridge, due to the switchdev attribute
> replay logic present in dsa_port_switchdev_sync_attrs()".
>
> Which, by the way, is logic that you've added yourself, in commit
> b9e8b58fd2cb ("net: dsa: Include BR_PORT_LOCKED in the list of synced
> brport flags") ;)
>
> You are free to return early from mv88e6xxx_port_set_lock() if nothing has
> changed. The DSA layer doesn't keep track of the locked state of the
> port so it cannot deduce whether propagating to the switch driver is
> necessary or not.
>

I think I can safely call mv88e6xxx_atu_locked_entry_flush() from
mv88e6xxx_port_set_lock() when locked is off as the port setup for the
respective port must have been completed successfully.

> > When added they are added with bridge FDB flags: extern_learn offload
> > locked, with a SWITCHDEV_FDB_ADD_TO_BRIDGE event. So they are owned by
> > the driver.
> > When the driver deletes the locked entry the bridge FDB entry is
> > removes by the SWITCHDEV_FDB_DEL_TO_BRIDGE event from the driver. That
> > seems quite fair?
>
> I'm just pointing out that you left other (probably unintended) code
> paths for which the SWITCHDEV_FDB_DEL_TO_BRIDGE notifier is quite
> useless. I haven't yet looked at your newest revision to see what
> changed there.
>

I guess I should add a boolean to tell if
mv88e6xxx_atu_locked_entry_purge() should send a notification or not.
So that port_fdb_del() will not cause a SWITCHDEV_FDB_DEL_TO_BRIDGE
event.

> > > > > Why is the rtnl_unlock() outside the switch statement but the rtnl_lock() inside?
> > > > > Not to mention, the dsa_port_to_bridge_port() call needs to be under rtnl_lock().
> > > >
> > > > Just a small optimization as I also have another case of the switch
> > > > (only one switch case if
> > > > you didn't notice) belonging to the next patch set regarding dynamic
> > > > ATU entries.
> > >
> > > What kind of optimization are you even talking about? Please get rid of
> > > coding patterns like this, sorry.
> > >
> > Right!
>
> Right what? I'm genuinely curious what optimization are you talking about.
>

I am just confirming that what you wrote is correct, e.g. the
"Right!". So I have fixed that. :-)

>
> Just out of curiosity, are you even trying, are you looking at the
> difference using a monospace font?
>
> > Another issue...
> >
> > I have removed the timers as they are superfluous and now just use the
> > worker and jiffies. But I have found that the whole ageing time seems
> > to be broken on the 5.17 kernel I am running. I don't know if it has
> > been fixed, but the ageing timeout is supposed to be given in seconds.
> > Here is the output from various functions after the command "ip link
> > set dev br0 type bridge ageing_time 1500" (that is nominally 1500
> > seconds according to man page!):
> >
> > dsa_switch_ageing_time: ageing_time 10000, ageing_time_min 1000,
> > ageing_time_max 3825000
> > mv88e6xxx_set_ageing_time: set ageing time to 10000
> > br0: failed (err=-34) to set attribute (id=6)
> > dsa_switch_ageing_time: ageing_time 15000, ageing_time_min 1000,
> > ageing_time_max 3825000
> > mv88e6xxx_set_ageing_time: set ageing time to 15000
> >
> > The 15000 set corresponds to 150 seconds! (I hardcoded the dsa
> > ageing_time_min to 1000)
>
> Are you talking about this known problem, that the ageing time values in
> seconds need to be scaled up by a factor of USER_HZ when passed to the
> kernel?
> https://www.spinics.net/lists/netdev/msg672070.html
> https://www.spinics.net/lists/netdev/msg567332.html

It might be so, but there is another factor 10 which might be
regarding topology change as I understand. If I want a ageing timeout
of say 15 or 30 seconds, that hardly seems possible?
