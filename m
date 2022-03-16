Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BD04DBB1F
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 00:34:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA05883E9A;
	Wed, 16 Mar 2022 23:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uOF8_H0sJFFq; Wed, 16 Mar 2022 23:34:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5D167832C7;
	Wed, 16 Mar 2022 23:34:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1355EC0033;
	Wed, 16 Mar 2022 23:34:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 989E5C000B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 23:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95DD34089B
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 23:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SVTseeByrJdH for <bridge@lists.linux-foundation.org>;
 Wed, 16 Mar 2022 23:34:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54FA940893
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 23:34:52 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id a8so7342953ejc.8
 for <bridge@lists.linux-foundation.org>; Wed, 16 Mar 2022 16:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ARERQSDKxTIHCnmFYNI1ElJI4Oo2Aq2UKhPNaAbSNg4=;
 b=Sg3427dW092vAOLJR2XEcQ/K29NB/DZt5twKJ8gVmA9TrPScdCEOtwyPlsi4FCZsiQ
 bN6oZmE9p4etd9Y6inAr5Puw1utDZX1rFnBWQ/Kpw1SJwyJvdV92GzUsabqabxxpvrUw
 SuzDuuIWz9zSPEAhmuwzs5F3vzZwI94orfMmhn15cY4No379IIbQ/JRjSzJKRW3gtKKD
 rxnRnwNQyJvEIEh4HtC9XgiNZGXrJ4PnKGxAYhTfEkNyZz1Hr0L41eJNWrJGUv7Avdcz
 DmvCS0goyAE/O66WKrs1t7lWQet5Au9SV2XSJTjXfMpLlMmnET6Qdd40ZCIJXPmUKBRG
 Fj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ARERQSDKxTIHCnmFYNI1ElJI4Oo2Aq2UKhPNaAbSNg4=;
 b=oo7bkVwyTTcZToETe7mS+qU5fkZm6tZJi7/E0uPri3W8jIz8uFslcd4QeY5BG6Lh7d
 /7tAxqCtW/l/7uwVSa6hoxHiNqLoIrFr4IbNr1oxpyrgeEnPUezKg3uLteBN5s1WaaLB
 qr2KIpZ0qphs9JJPsWh8uN0YNsZ2xQJb08adSEFkMzFALJuBKTrR6+puYb3tSAFXnA64
 RIRkA951o1TrurBki4znn/ynM3KivAhdj+azAjjSA4pXbjO+0MCmmYbkCVwbUQj0Dvj8
 44W1h5fMfxExrr6IyRTcLKV4QHXuV4Kh/pKr3imZZDky7Z6rjyq9/lBI83eoGNCdUwdg
 qYag==
X-Gm-Message-State: AOAM5303u3HNCtzPAB+9QfXMAl9JwjxLoZi3JE8j++MXHOJsPbnYxjpM
 38tEJZwZTXGfA3xraYGuQVY=
X-Google-Smtp-Source: ABdhPJwzQis6t91nexEui4K1KPa23MRwnqFeO4w44T/uxSjtpflFDPZt8DNsrj9ZuyA0q7D5SMSOpQ==
X-Received: by 2002:a17:906:a398:b0:6ce:71b:deff with SMTP id
 k24-20020a170906a39800b006ce071bdeffmr1962568ejz.204.1647473690310; 
 Wed, 16 Mar 2022 16:34:50 -0700 (PDT)
Received: from skbuf ([188.26.57.45]) by smtp.gmail.com with ESMTPSA id
 l9-20020a170906078900b006dac5f336f8sm1505354ejc.124.2022.03.16.16.34.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 16:34:49 -0700 (PDT)
Date: Thu, 17 Mar 2022 01:34:47 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <20220316233447.kwyirxckgancdqmh@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf> <86r17495gk.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86r17495gk.fsf@gmail.com>
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

On Mon, Mar 14, 2022 at 11:46:51AM +0100, Hans Schultz wrote:
> >> @@ -396,6 +414,13 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
> >>  				    "ATU miss violation for %pM portvec %x spid %d\n",
> >>  				    entry.mac, entry.portvec, spid);
> >>  		chip->ports[spid].atu_miss_violation++;
> >> +		if (mv88e6xxx_port_is_locked(chip, chip->ports[spid].port))
> >> +			err = mv88e6xxx_switchdev_handle_atu_miss_violation(chip,
> >> +									    chip->ports[spid].port,
> >> +									    &entry,
> >> +									    fid);
> >
> > Do we want to suppress the ATU miss violation warnings if we're going to
> > notify the bridge, or is it better to keep them for some reason?
> > My logic is that they're part of normal operation, so suppressing makes
> > sense.
> >
> 
> I have been seeing many ATU member violations after the miss violation is
> handled (using ping), and I think it could be considered to suppress the ATU member
> violations interrupts by setting the IgnoreWrongData bit for the
> port (sect 4.4.7). This would be something to do whenever a port is set in locked mode?

So the first packet with a given MAC SA triggers an ATU miss violation
interrupt.

You program that MAC SA into the ATU with a destination port mask of all
zeroes. This suppresses further ATU miss interrupts for this MAC SA, but
now generates ATU member violations, because the MAC SA _is_ present in
the ATU, but not towards the expected port (in fact, towards _no_ port).

Especially if user space decides it doesn't want to authorize this MAC
SA, it really becomes a problem because this is now a vector for denial
of service, with every packet triggering an ATU member violation
interrupt.

So your suggestion is to set the IgnoreWrongData bit on locked ports,
and this will suppress the actual member violation interrupts for
traffic coming from these ports.

So if the user decides to unplug a previously authorized printer from
switch port 1 and move it to port 2, how is this handled? If there isn't
a mechanism in place to delete the locked FDB entry when the printer
goes away, then by setting IgnoreWrongData you're effectively also
suppressing migration notifications.

Oh, btw, my question was: could you consider suppressing the _prints_ on
an ATU miss violation on a locked port?
