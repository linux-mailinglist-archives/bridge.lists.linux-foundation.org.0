Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FE95684E1
	for <lists.bridge@lfdr.de>; Wed,  6 Jul 2022 12:12:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C3E041831;
	Wed,  6 Jul 2022 10:12:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C3E041831
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Thg92U1E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hzXtlLgdPvIT; Wed,  6 Jul 2022 10:12:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3A3BE41821;
	Wed,  6 Jul 2022 10:12:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A3BE41821
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C7750C0077;
	Wed,  6 Jul 2022 10:12:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9F540C002D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 10:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6913F41830
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 10:12:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6913F41830
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bHGh3e8ECygt for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jul 2022 10:12:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C59F141821
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C59F141821
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 10:12:14 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id m184so8560443wme.1
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 03:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8vzw6bFniL24T6OECphPlNcFeN72oaM117VUsHYULlE=;
 b=Thg92U1EPycx9LB0a//LM9U+OMX34Fsr0FAVhF1xY91kKLYsTWAqz9dUlN0CXw3cSP
 J+j87wOTOcH4DzPMD36ypemV/7VtYu029uIRCv8crksOEAT12ZTSRVvJuh/rwNBh94Vk
 maXP4DaacK5HX+wYS+L1H0FWCnzIDfKBzMbIk14zZV5wNHLm9UOc7fLv2WcX8pANnnn9
 HgG9irCgP6JELmnIt3mw1BWBbXOFSwHXUt9IGgO4P+vVuOYEmIwd3vcuVwOz9PsHrvUJ
 Gp7QjAxA8Ubnvn39P1nsHQQjXv8MMRPt6H21f3SFZ5m4fCByeLThxwYTh7coZ5HK5TQx
 kQUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8vzw6bFniL24T6OECphPlNcFeN72oaM117VUsHYULlE=;
 b=FOaxo99CCPu9KTAySnEsBlX5HLm5h9dUzfqJmXXknnmid7ax3Xc8ieff2s7e2+ycJT
 ELHEbmPsDvsX/jqkpMSfXb/OlDiqOsAI9MQbpFL76sRf7Sj3PflmCNWn9a8u9DITxDXQ
 Z/yORiMYsDS1DfWjhK8XsGMAFUMy4pMMeRqxdaF2wgqygbuuxwKSNZXcQapfliKUqpTW
 a5em7YPqiZxtzs6NNefbl9Dk8eLFqU5GZt7IUDOntWiiSHhyeNZnNtirQ7TykxJ+KawU
 a9wTYoiXRiC1qZJVyOO+XBS2RFuJ2ozGhiVn3d90UtQZlB9Zer54g6ytWYVxgPzz0MrM
 uVUQ==
X-Gm-Message-State: AJIora8wQ6pUJOP/+zZpE7qMhx0h1wS0P02dJYthh1kom8Q3yYQeUopU
 x6yIR++IGU1RTywJzEyAQMv9DfHBtr0c2EnLUwQ=
X-Google-Smtp-Source: AGRyM1sCzHST+YhMi5w2+9hHPYiwsrrf6MeFPLaxUs7QmKI7OpMUhP9KCuJGluc5CQjY+3D6X+bEQ1JXW1gQE+tA3s8=
X-Received: by 2002:a05:600c:6004:b0:3a0:41db:aae with SMTP id
 az4-20020a05600c600400b003a041db0aaemr42613766wmb.171.1657102332798; Wed, 06
 Jul 2022 03:12:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
 <20220627180557.xnxud7d6ol22lexb@skbuf>
 <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
 <20220706085559.oyvzijcikivemfkg@skbuf>
In-Reply-To: <20220706085559.oyvzijcikivemfkg@skbuf>
From: Hans S <schultz.hans@gmail.com>
Date: Wed, 6 Jul 2022 12:12:01 +0200
Message-ID: <CAKUejP7gmULyrjqd3b3PiWwi7TJzF4HNuEbmAf25Cqh3w7a1mw@mail.gmail.com>
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

On Wed, Jul 6, 2022 at 10:56 AM Vladimir Oltean <olteanv@gmail.com> wrote:
>
> On Tue, Jun 28, 2022 at 02:26:43PM +0200, Hans S wrote:
> > > Dumb question: if you only flush the locked entries at fast age if the
> > > port is locked, then what happens with the existing locked entries if
> > > the port becomes unlocked before an FDB flush takes place?
> > > Shouldn't mv88e6xxx_port_set_lock() call mv88e6xxx_atu_locked_entry_flush()
> > > too?

BTW:
>> @@ -919,6 +920,9 @@ static void mv88e6xxx_mac_link_down(struct dsa_switch *ds, int port,
>>       if (err)
>>               dev_err(chip->dev,
>>                       "p%d: failed to force MAC link down\n", port);
>> +     else
>> +             if (mv88e6xxx_port_is_locked(chip, port, true))
>> +                     mv88e6xxx_atu_locked_entry_flush(ds, port);
>
>This is superfluous, is it not? The bridge will transition a port whose
>link goes down to BR_STATE_DISABLED, which will make dsa_port_set_state()
>fast-age the dynamic FDB entries on the port, which you've already
>handled below.

I removed this code, but then on link down the locked entries were not
cleared out. Something not as thought?

> >
> > That was my first thought too, but the way the flags are handled with the mask etc, does so that
> > mv88e6xxx_port_set_lock() is called when other flags change. It could be done by the transition
> > from locked->unlocked by checking if the port is locked already.
>
> Why does mv88e6xxx_port_set_lock() get called when other flags change?

That is what seems to happen, but maybe I am wrong. Looking at the dsa
functions dsa_port_inherit_brport_flags() and
dsa_port_clear_brport_flags(), they set the mask for which underlying
function is called, and it looks to me that they call once for all the
flags: BR_LEARNING, BR_FLOOD, BR_MCAST_FLOOD, BR_BCAST_FLOOD,
BR_PORT_LOCKED?

>
> > On the other hand, the timers will timeout and the entries will be removed anyhow.
>
> > > > +static void mv88e6xxx_atu_locked_entry_timer_work(struct atu_locked_entry *ale)
> > >
> > > Please find a more adequate name for this function.
> >
> > Any suggestions?
>
> Not sure. It depends on whether you leave just the logic to delete a
> locked ATU entry, or also the switchdev FDB_DEL_TO_BRIDGE notifier.
> In any case, pick a name that reflects what it does. Something with
> locked_entry_delete() can't be too wrong.
>
> > > From the discussion with Ido and Nikolay I get the impression that
> > > you're not doing the right thing here either, notifying a
> > > SWITCHDEV_FDB_DEL_TO_BRIDGE from what is effectively the
> > > SWITCHDEV_FDB_DEL_TO_DEVICE handler (port_fdb_del).
> >
> > Hmm, my experience tells me that much is opposite the normal
> > conventions when dealing with
> > locked ports, as there was never switchdev notifications from the
> > driver to the bridge before, but
> > that is needed to keep ATU and FDB entries in sync.
>
> On delete you mean? So the bridge signals switchdev a deletion of a
> locked FDB entry (as I pointed out, this function gets indirectly called
> from port_fdb_del), but it won't get deleted until switchdev signals it
> back, is what you're saying?
>

When added they are added with bridge FDB flags: extern_learn offload
locked, with a SWITCHDEV_FDB_ADD_TO_BRIDGE event. So they are owned by
the driver.
When the driver deletes the locked entry the bridge FDB entry is
removes by the SWITCHDEV_FDB_DEL_TO_BRIDGE event from the driver. That
seems quite fair?

> > > Why is the rtnl_unlock() outside the switch statement but the rtnl_lock() inside?
> > > Not to mention, the dsa_port_to_bridge_port() call needs to be under rtnl_lock().
> >
> > Just a small optimization as I also have another case of the switch
> > (only one switch case if
> > you didn't notice) belonging to the next patch set regarding dynamic
> > ATU entries.
>
> What kind of optimization are you even talking about? Please get rid of
> coding patterns like this, sorry.
>
Right!

> > > Please, no "if (chiplock) mutex_lock()" hacks. Just lockdep_assert_held(&chip->reg_lock),
> > > which serves both for documentation and for validation purposes, ensure
> > > the lock is always taken at the caller (which in this case is super easy)
> > > and move on.
> >
> > As I am calling the function in if statement checks, it would make
> > that code more messy, while with
> > this approach the function can be called from anywhere. I also looked
> > at having two functions, with
> > one being a wrapper function taking the lock and calling the other...
>
> There are many functions in mv88e6xxx that require the reg_lock to be
> held, there's nothing new or special here.
>

Now I take the lock in the function regardless. No boolean.

> > >
> > > > +
> > > > +     if (mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg))
> > > > +             goto out;
> > >
> > > It would be good to actually propagate the error to the caller and
> > > "locked" via a pass-by-reference bool pointer argument, not just say
> > > that I/O errors mean that the port is unlocked.
> >
> > Again the wish to be able to call it from if statement checks,.
> >
> > > > +     reg &= MV88E6XXX_PORT_ASSOC_VECTOR_PAV_MASK;
> > > > +     if (locked) {
> > > > +             reg |= MV88E6XXX_PORT_ASSOC_VECTOR_IGNORE_WRONG |
> > > > +                     MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT |
> > > > +                     MV88E6XXX_PORT_ASSOC_VECTOR_INT_AGE_OUT |
> > > > +                     MV88E6XXX_PORT_ASSOC_VECTOR_HOLD_AT_1;
> > >
> > > I'd suggest aligning these macros vertically.
> >
> > They are according to the Linux kernel coding standard wrt indentation afaik.
>
> Compare:
>
>                 reg |= MV88E6XXX_PORT_ASSOC_VECTOR_IGNORE_WRONG |
>                         MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT |
>                         MV88E6XXX_PORT_ASSOC_VECTOR_INT_AGE_OUT |
>                         MV88E6XXX_PORT_ASSOC_VECTOR_HOLD_AT_1;
>
> with:
>
>                 reg |= MV88E6XXX_PORT_ASSOC_VECTOR_IGNORE_WRONG |
>                        MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT |
>                        MV88E6XXX_PORT_ASSOC_VECTOR_INT_AGE_OUT |
>                        MV88E6XXX_PORT_ASSOC_VECTOR_HOLD_AT_1;

I cannot see the difference here...?

Another issue...

I have removed the timers as they are superfluous and now just use the
worker and jiffies. But I have found that the whole ageing time seems
to be broken on the 5.17 kernel I am running. I don't know if it has
been fixed, but the ageing timeout is supposed to be given in seconds.
Here is the output from various functions after the command "ip link
set dev br0 type bridge ageing_time 1500" (that is nominally 1500
seconds according to man page!):

dsa_switch_ageing_time: ageing_time 10000, ageing_time_min 1000,
ageing_time_max 3825000
mv88e6xxx_set_ageing_time: set ageing time to 10000
br0: failed (err=-34) to set attribute (id=6)
dsa_switch_ageing_time: ageing_time 15000, ageing_time_min 1000,
ageing_time_max 3825000
mv88e6xxx_set_ageing_time: set ageing time to 15000

The 15000 set corresponds to 150 seconds! (I hardcoded the dsa
ageing_time_min to 1000)
