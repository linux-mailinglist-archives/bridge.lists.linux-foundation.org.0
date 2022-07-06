Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6C456822D
	for <lists.bridge@lfdr.de>; Wed,  6 Jul 2022 10:56:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23A1982C89;
	Wed,  6 Jul 2022 08:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23A1982C89
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=iZgloJtb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XFXhdGPSm7Wd; Wed,  6 Jul 2022 08:56:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 94D888148F;
	Wed,  6 Jul 2022 08:56:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94D888148F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D335C0070;
	Wed,  6 Jul 2022 08:56:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7B875C002D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 08:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E1BB4047D
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 08:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E1BB4047D
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=iZgloJtb
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jhPlZ8ka0qyy for <bridge@lists.linux-foundation.org>;
 Wed,  6 Jul 2022 08:56:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67F454016A
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67F454016A
 for <bridge@lists.linux-foundation.org>; Wed,  6 Jul 2022 08:56:04 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id fd6so18377273edb.5
 for <bridge@lists.linux-foundation.org>; Wed, 06 Jul 2022 01:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TiSbYoSDE0lMlfqj+l2CCSMOXHr+cfG4LYMnjViLfKg=;
 b=iZgloJtbC+6whSU9AepPlzjoWEwtuEoHIfHnGtNlQ4C7UtGfnEEmVwBmNUQ+hp8QPE
 srctWeLgf/fotpb89l8rI9lg4mQnr87w7+3vinjVE3RJNZRD0kzVD+wvsw7UaK+t8/s1
 st8AI91D07QbVN2WkuVWV8CPl3yJX9BZwJFdkx0W5TdbJV2D1CKOCqCSvlq6wN6RqaPf
 UUjR7td8tkJqcXdBiPbDT5qzW5f7hWK/dJbmdUy1js1wwVwqnvzOz88LxLXf05GrHzur
 AKLeY/3k9Tub41UOdBMxbshm3a3Agu7xGvCJZt+FuehosHVD+1D5nfFrAlxRw5PKNxdD
 XPoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TiSbYoSDE0lMlfqj+l2CCSMOXHr+cfG4LYMnjViLfKg=;
 b=1PSCSaGBHeNsdpUdhzwtv1UrwRRfn2q31YNoGbVQBeuh7KSPZWpua9aoMZjt6BgoSY
 LDutEHqVGbEjZWIDeS4cj2/hTdthBj45QuAUu+HTuL9KrIaSiPDlLqcqeCQJVQGAVvH0
 nxtp2GQ0zok9/UTQwASpMNtk7iaA4lbzrir1ZS2zxBksQXh6VlHbAS+EDymmczhQ/yEE
 6wEm3p5EBtP/siu+pL0fuwc+Y5i6jMydtLyjTVwECI2il8JYPTCh/jTuA9EWrM/2cInE
 gLB09nIk/lEb2lFmeVjZfRlceyMaxs8Cfzwwlf/SW8zov3AhCHHGmTXdXYphTxmakfjj
 9dIA==
X-Gm-Message-State: AJIora8hqw/PI7NkYw5YhnagRDEgN7J/ete4ag1n4ICj6aA9eKCDNfDk
 ZYAb6haUyTjR8V/z/0pNk4I=
X-Google-Smtp-Source: AGRyM1sX+A6RqHnQ5QmWzoiAncEiL9RQsnExvWaj8wwcC2AJnUx5vD9KmRmIFnuBHDzZTV1CprW1Hw==
X-Received: by 2002:aa7:ce8a:0:b0:43a:7b0e:9950 with SMTP id
 y10-20020aa7ce8a000000b0043a7b0e9950mr9208313edv.58.1657097762610; 
 Wed, 06 Jul 2022 01:56:02 -0700 (PDT)
Received: from skbuf ([188.26.185.61]) by smtp.gmail.com with ESMTPSA id
 i10-20020a170906698a00b00705fa7087bbsm17260818ejr.142.2022.07.06.01.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jul 2022 01:56:01 -0700 (PDT)
Date: Wed, 6 Jul 2022 11:55:59 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans S <schultz.hans@gmail.com>
Message-ID: <20220706085559.oyvzijcikivemfkg@skbuf>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-4-schultz.hans+netdev@gmail.com>
 <20220627180557.xnxud7d6ol22lexb@skbuf>
 <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKUejP7ugMB9d3MVX3m9Brw12_ocFoT+nuJJucYdQH70kzC7=w@mail.gmail.com>
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

On Tue, Jun 28, 2022 at 02:26:43PM +0200, Hans S wrote:
> > Dumb question: if you only flush the locked entries at fast age if the
> > port is locked, then what happens with the existing locked entries if
> > the port becomes unlocked before an FDB flush takes place?
> > Shouldn't mv88e6xxx_port_set_lock() call mv88e6xxx_atu_locked_entry_flush()
> > too?
> 
> That was my first thought too, but the way the flags are handled with the mask etc, does so that
> mv88e6xxx_port_set_lock() is called when other flags change. It could be done by the transition
> from locked->unlocked by checking if the port is locked already.

Why does mv88e6xxx_port_set_lock() get called when other flags change?

> On the other hand, the timers will timeout and the entries will be removed anyhow.

> > > +static void mv88e6xxx_atu_locked_entry_timer_work(struct atu_locked_entry *ale)
> >
> > Please find a more adequate name for this function.
> 
> Any suggestions?

Not sure. It depends on whether you leave just the logic to delete a
locked ATU entry, or also the switchdev FDB_DEL_TO_BRIDGE notifier.
In any case, pick a name that reflects what it does. Something with
locked_entry_delete() can't be too wrong.

> > From the discussion with Ido and Nikolay I get the impression that
> > you're not doing the right thing here either, notifying a
> > SWITCHDEV_FDB_DEL_TO_BRIDGE from what is effectively the
> > SWITCHDEV_FDB_DEL_TO_DEVICE handler (port_fdb_del).
> 
> Hmm, my experience tells me that much is opposite the normal
> conventions when dealing with
> locked ports, as there was never switchdev notifications from the
> driver to the bridge before, but
> that is needed to keep ATU and FDB entries in sync.

On delete you mean? So the bridge signals switchdev a deletion of a
locked FDB entry (as I pointed out, this function gets indirectly called
from port_fdb_del), but it won't get deleted until switchdev signals it
back, is what you're saying?

> > Why is the rtnl_unlock() outside the switch statement but the rtnl_lock() inside?
> > Not to mention, the dsa_port_to_bridge_port() call needs to be under rtnl_lock().
> 
> Just a small optimization as I also have another case of the switch
> (only one switch case if
> you didn't notice) belonging to the next patch set regarding dynamic
> ATU entries.

What kind of optimization are you even talking about? Please get rid of
coding patterns like this, sorry.

> > Please, no "if (chiplock) mutex_lock()" hacks. Just lockdep_assert_held(&chip->reg_lock),
> > which serves both for documentation and for validation purposes, ensure
> > the lock is always taken at the caller (which in this case is super easy)
> > and move on.
> 
> As I am calling the function in if statement checks, it would make
> that code more messy, while with
> this approach the function can be called from anywhere. I also looked
> at having two functions, with
> one being a wrapper function taking the lock and calling the other...

There are many functions in mv88e6xxx that require the reg_lock to be
held, there's nothing new or special here.

> >
> > > +
> > > +     if (mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg))
> > > +             goto out;
> >
> > It would be good to actually propagate the error to the caller and
> > "locked" via a pass-by-reference bool pointer argument, not just say
> > that I/O errors mean that the port is unlocked.
> 
> Again the wish to be able to call it from if statement checks,.
> 
> > > +     reg &= MV88E6XXX_PORT_ASSOC_VECTOR_PAV_MASK;
> > > +     if (locked) {
> > > +             reg |= MV88E6XXX_PORT_ASSOC_VECTOR_IGNORE_WRONG |
> > > +                     MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT |
> > > +                     MV88E6XXX_PORT_ASSOC_VECTOR_INT_AGE_OUT |
> > > +                     MV88E6XXX_PORT_ASSOC_VECTOR_HOLD_AT_1;
> >
> > I'd suggest aligning these macros vertically.
> 
> They are according to the Linux kernel coding standard wrt indentation afaik.

Compare:

		reg |= MV88E6XXX_PORT_ASSOC_VECTOR_IGNORE_WRONG |
			MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT |
			MV88E6XXX_PORT_ASSOC_VECTOR_INT_AGE_OUT |
			MV88E6XXX_PORT_ASSOC_VECTOR_HOLD_AT_1;

with:

		reg |= MV88E6XXX_PORT_ASSOC_VECTOR_IGNORE_WRONG |
		       MV88E6XXX_PORT_ASSOC_VECTOR_LOCKED_PORT |
		       MV88E6XXX_PORT_ASSOC_VECTOR_INT_AGE_OUT |
		       MV88E6XXX_PORT_ASSOC_VECTOR_HOLD_AT_1;
