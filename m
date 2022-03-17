Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F434DCBE5
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 17:58:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22BF94011B;
	Thu, 17 Mar 2022 16:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2kOnucQhukKY; Thu, 17 Mar 2022 16:58:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4BE534014C;
	Thu, 17 Mar 2022 16:58:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 02079C0082;
	Thu, 17 Mar 2022 16:58:41 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4D3A4C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 16:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EC73410D6
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 16:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8u38PgwUJN8l for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 16:58:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF93A40A01
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 16:58:37 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id g17so10076121lfh.2
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=7RjURph1ulhWbgSxbLltAc1F3xHz1q5y5PeCWCvajco=;
 b=cbEAAnej0o9xlpSdtxKRVZhY7GC6oaM1nv1v9twreZqw6lrPBziaqNeBb2e1Utf9GS
 u5ZBKctfZ6QBBZb/gQ6Zmg7e/Lcfq2vRuuW0lX4bC+yuv77r0LpdODSBr50JWir+iik8
 OYAq1jK57FPIDWyTApnM3r0ior3f7XqxdSMAVz0PyTrv1Bo+8rLu8k4x6SubSZNwpwss
 RxJxbAs1dz8UP8tR92DhA4oh08nty57zjVm3kuu8yrUi/O+U0ZRMD/nG6H9OR943NwCU
 6hiBBLV//0VxzQgw3RWnR3BHtXFzMdO5ETdfweROJLPKN2qTQjP6Wo5q4LcNyb0BMpmm
 J1qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=7RjURph1ulhWbgSxbLltAc1F3xHz1q5y5PeCWCvajco=;
 b=JcDuNajN96uxakcPd7WXljsFyStsTu2e/BXFHiAbmhWtZwuB0zCxm6GlZRkpyhnzHC
 gJwUaE8zr7Ntx335/57nFgxfHgdbQzg9qlxN9isXvbVI0YdM23/YkfrJuQsuh6lFvdj3
 LSBBpw4YVssUC8oSMpBh/PFgwXCplRFFkiJPxV5VsF/5OpCy/FN6EbcLz4pbPUCa1TWq
 aMb+/ovPgBDCgTnNx1u5ImBsCxzO8NEbMjtVvcR2j5ID5VKnp5paPZYq6A0GOwyZLFqL
 vbfFyDi2SOauPbS7zqpwDjU/mIiNd3qShPZP3G2mtvFA6/uI9G4x/q0fnDH7ANtOzxDy
 a0Rg==
X-Gm-Message-State: AOAM530vmoiXjdQs2d/kogmZO5YadNLHtbfl/vjYxx/5h8l1446mx4Fy
 RuyNc131kvxGCqQvJVJGbubrFat8GL00Qg==
X-Google-Smtp-Source: ABdhPJyKrUREvMZTEAjZc2Ua7Whpe4wV/DLxSKhf8JOStOUH/yu5GlY/GxpA3MtpkBCN8t3bhJrogw==
X-Received: by 2002:a05:6512:96e:b0:448:4bd7:fff7 with SMTP id
 v14-20020a056512096e00b004484bd7fff7mr3490483lft.605.1647536315655; 
 Thu, 17 Mar 2022 09:58:35 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 d6-20020a056512320600b00448bb4da3a2sm426276lfe.10.2022.03.17.09.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 09:58:35 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220317161808.psftauoz5iaecduy@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf> <86r17495gk.fsf@gmail.com>
 <20220316233447.kwyirxckgancdqmh@skbuf> <86lex9hsg0.fsf@gmail.com>
 <YjNDgnrYaYfviNTi@lunn.ch> <20220317153625.2ld5zgtuhoxbcgvo@skbuf>
 <86ilscr2a4.fsf@gmail.com> <20220317161808.psftauoz5iaecduy@skbuf>
Date: Thu, 17 Mar 2022 17:58:26 +0100
Message-ID: <8635jg5xe5.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/3] net: dsa: mv88e6xxx: mac-auth/MAB
 implementation
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

On tor, mar 17, 2022 at 18:18, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Thu, Mar 17, 2022 at 05:07:15PM +0100, Hans Schultz wrote:
>> On tor, mar 17, 2022 at 17:36, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Thu, Mar 17, 2022 at 03:19:46PM +0100, Andrew Lunn wrote:
>> >> On Thu, Mar 17, 2022 at 09:52:15AM +0100, Hans Schultz wrote:
>> >> > On tor, mar 17, 2022 at 01:34, Vladimir Oltean <olteanv@gmail.com> wrote:
>> >> > > On Mon, Mar 14, 2022 at 11:46:51AM +0100, Hans Schultz wrote:
>> >> > >> >> @@ -396,6 +414,13 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>> >> > >> >>  				    "ATU miss violation for %pM portvec %x spid %d\n",
>> >> > >> >>  				    entry.mac, entry.portvec, spid);
>> >> > >> >>  		chip->ports[spid].atu_miss_violation++;
>> >> > >> >> +		if (mv88e6xxx_port_is_locked(chip, chip->ports[spid].port))
>> >> > >> >> +			err = mv88e6xxx_switchdev_handle_atu_miss_violation(chip,
>> >> > >> >> +									    chip->ports[spid].port,
>> >> > >> >> +									    &entry,
>> >> > >> >> +									    fid);
>> >> > >> >
>> >> > >> > Do we want to suppress the ATU miss violation warnings if we're going to
>> >> > >> > notify the bridge, or is it better to keep them for some reason?
>> >> > >> > My logic is that they're part of normal operation, so suppressing makes
>> >> > >> > sense.
>> >> > >> >
>> >> > >> 
>> >> > >> I have been seeing many ATU member violations after the miss violation is
>> >> > >> handled (using ping), and I think it could be considered to suppress the ATU member
>> >> > >> violations interrupts by setting the IgnoreWrongData bit for the
>> >> > >> port (sect 4.4.7). This would be something to do whenever a port is set in locked mode?
>> >> > >
>> >> > > So the first packet with a given MAC SA triggers an ATU miss violation
>> >> > > interrupt.
>> >> > >
>> >> > > You program that MAC SA into the ATU with a destination port mask of all
>> >> > > zeroes. This suppresses further ATU miss interrupts for this MAC SA, but
>> >> > > now generates ATU member violations, because the MAC SA _is_ present in
>> >> > > the ATU, but not towards the expected port (in fact, towards _no_ port).
>> >> > >
>> >> > > Especially if user space decides it doesn't want to authorize this MAC
>> >> > > SA, it really becomes a problem because this is now a vector for denial
>> >> > > of service, with every packet triggering an ATU member violation
>> >> > > interrupt.
>> >> > >
>> >> > > So your suggestion is to set the IgnoreWrongData bit on locked ports,
>> >> > > and this will suppress the actual member violation interrupts for
>> >> > > traffic coming from these ports.
>> >> > >
>> >> > > So if the user decides to unplug a previously authorized printer from
>> >> > > switch port 1 and move it to port 2, how is this handled? If there isn't
>> >> > > a mechanism in place to delete the locked FDB entry when the printer
>> >> > > goes away, then by setting IgnoreWrongData you're effectively also
>> >> > > suppressing migration notifications.
>> >> > 
>> >> > I don't think such a scenario is so realistic, as changing port is not
>> >> > just something done casually, besides port 2 then must also be a locked
>> >> > port to have the same policy.
>> >> 
>> >> I think it is very realistic. It is also something which does not work
>> >> is going to cause a lot of confusion. People will blame the printer,
>> >> when in fact they should be blaming the switch. They will be rebooting
>> >> the printer, when in fact, they need to reboot the switch etc.
>> >> 
>> >> I expect there is a way to cleanly support this, you just need to
>> >> figure it out.
>> >
>> > Hans, why must port 2 also be a locked port? The FDB entry with no
>> > destinations is present in the ATU, and static, why would just locked
>> > ports match it?
>> >
>> You are right of course, but it was more from a policy standpoint as I
>> pointed out. If the FDB entry is removed after some timeout and the
>> device in the meantime somehow is on another port that is not locked
>> with full access, the device will of course get full access.
>> But since it was not given access in the first instance, the policy is
>> not consistent.
>> 
>> >> > The other aspect is that the user space daemon that authorizes catches
>> >> > the fdb add entry events and checks if it is a locked entry. So it will
>> >> > be up to said daemon to decide the policy, like remove the fdb entry
>> >> > after a timeout.
>> >
>> > When you say 'timeout', what is the moment when the timer starts counting?
>> > The last reception of the user space daemon of a packet with this MAC SA,
>> > or the moment when the FDB entry originally became unlocked?
>> 
>> I think that if the device is not given access, a timer should be
>> started at that moment. No further FDB add events with the same MAC
>> address will come of course until the FDB entry is removed, which I
>> think would be done based on the said timer.
>> >
>> > I expect that once a device is authorized, and forwarding towards the
>> > devices that it wants to talk to is handled in hardware, that the CPU no
>> > longer receives packets from this device. In other words, are you saying
>> > that you're going to break networking for the printer every 5 minutes,
>> > as a keepalive measure?
>> 
>> No, I don't think that would be a good idea, but as we are in userspace,
>> that is a policy decision of those creating the daemon. The kernel just
>> facilitates, it does not make those decisions as far as I think.
>> >
>> > I still think there should be a functional fast path for authorized
>> > station migrations.
>> >
>> I am not sure in what way you are suggesting that should be, if the
>> kernel should actively do something there? If a station is authorized,
>> and somehow is transferred to another port, if that port is not locked it
>> will get access, if the port is locked a miss violation will occur etc...
>
> Wait, if the new port is locked and the device was previously
> authorized, why will the new port trigger a miss violation? This is the
> part I'm not following. The authorization is still present in the form
> of an ATU entry on the old locked port, is it not?
>
I am sure (have not tested) that a miss violation will occur. It might
be a member violation in this instance though.
When thinking of it, afaik there is no way today of having fine control
over the DPV when adding a FDB entry.
If the DPV could be finer controlled the entry could cover several
possible ports and the fast (immediate migration) will be accomplished?

>> >> > > Oh, btw, my question was: could you consider suppressing the _prints_ on
>> >> > > an ATU miss violation on a locked port?
>> >> > 
>> >> > As there will only be such on the first packet, I think it should be
>> >> > logged and those prints serve that purpose, so I think it is best to
>> >> > keep the print.
>> >> > If in the future some tests or other can argue for suppressing the
>> >> > prints, it is an easy thing to do.
>> >> 
>> >> Please use a traffic generator and try to DOS one of your own
>> >> switches. Can you?
>> >> 
>> >> 	  Andrew
