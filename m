Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A94514DC1EC
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 09:52:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2809612AE;
	Thu, 17 Mar 2022 08:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ke4Ju2aBQg3t; Thu, 17 Mar 2022 08:52:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6BDF9612B0;
	Thu, 17 Mar 2022 08:52:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2AF53C0073;
	Thu, 17 Mar 2022 08:52:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0892DC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA33D41882
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fdUd-cF6ND3B for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 08:52:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F7DC4187D
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 08:52:25 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id c15so6290698ljr.9
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 01:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=utKCqy7VusDzWJzGDfUfuV+/FoQNmgt468RWLPQd6V0=;
 b=NM6sOaIQvQf9NIJbbFjBIfyieIyU0skVM5rgUkl9FvZneQx2HSPloiBsWeAcsEJzIb
 NP+QzwvBMcuqA2GBaLyzFGxWzrlnzsV8VrzL7WNizIZj9AmgCSOpfy8PHPEhYNC07GNK
 uAmgZWBx9AvC75LJ+jAqm51M56zcFNQyiW3wpajVfafRVeSUAesvWV+m1NrZ32VEQ+KY
 ev2CHEKQf6mBiYGgLNdxzKfXjACQoAbLDzyD7hwFj74JBAXw0BfifRaX7j07i4Hvlofx
 BNBp4OySem/jZbF3Bhd8Ssrowh7qIzGpf0ApNsr8qB4IHbqjlzraGU8nhnfdgS8aUZdn
 AXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=utKCqy7VusDzWJzGDfUfuV+/FoQNmgt468RWLPQd6V0=;
 b=tEbllJgjW6oFhOOFu/xT9YtJSQZjxlQ+HBHYr6x+45EiRZWnh62leCMFyfSM0NbYxV
 Y1Sw0mkd6TJDcsoLrkrlt1L1vHJQlqT/xHmjy34RK9/4HqQFidRxbCh3bR/KFIw5mzbM
 eNIg6L21QZB6JmtMKHXzx3nZuVxvRA6lLzlqlnX1Ov7OAPXiSxEy99+pdUjUtY1nC3SO
 SwcTWuQ3gM30zFvFpRX3gl5tLuxo+TpaAEKSpp6GFeN+crZnJwAea3UyumvW9LVZw8N8
 P2wDab71oi0elWxIKVtNE5xw1ss5ggHgmHtzv+Xa4j+hMWnfJp8UYgSl/okDh0+wmpX6
 IfiQ==
X-Gm-Message-State: AOAM533gLj0bcfZ/eqtqlqjqHNbsq4mctIMhXSntT8nm1j0HcFadMSkK
 QziFFgvYMsqOwS7z9A1b8WRIZ/h1ONqhCg==
X-Google-Smtp-Source: ABdhPJwoAa1OhOh+IkuyXalL41IHoOBMMg8O2b36bpTO7l5x0ToxGn+f9QvlfvC2lUqe8mYWqoDMiA==
X-Received: by 2002:a2e:bd13:0:b0:246:1ff8:6da1 with SMTP id
 n19-20020a2ebd13000000b002461ff86da1mr2173758ljq.219.1647507143460; 
 Thu, 17 Mar 2022 01:52:23 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 u27-20020ac25bdb000000b004485984616bsm388993lfn.296.2022.03.17.01.52.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 01:52:22 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220316233447.kwyirxckgancdqmh@skbuf>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf> <86r17495gk.fsf@gmail.com>
 <20220316233447.kwyirxckgancdqmh@skbuf>
Date: Thu, 17 Mar 2022 09:52:15 +0100
Message-ID: <86lex9hsg0.fsf@gmail.com>
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

On tor, mar 17, 2022 at 01:34, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Mon, Mar 14, 2022 at 11:46:51AM +0100, Hans Schultz wrote:
>> >> @@ -396,6 +414,13 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>> >>  				    "ATU miss violation for %pM portvec %x spid %d\n",
>> >>  				    entry.mac, entry.portvec, spid);
>> >>  		chip->ports[spid].atu_miss_violation++;
>> >> +		if (mv88e6xxx_port_is_locked(chip, chip->ports[spid].port))
>> >> +			err = mv88e6xxx_switchdev_handle_atu_miss_violation(chip,
>> >> +									    chip->ports[spid].port,
>> >> +									    &entry,
>> >> +									    fid);
>> >
>> > Do we want to suppress the ATU miss violation warnings if we're going to
>> > notify the bridge, or is it better to keep them for some reason?
>> > My logic is that they're part of normal operation, so suppressing makes
>> > sense.
>> >
>> 
>> I have been seeing many ATU member violations after the miss violation is
>> handled (using ping), and I think it could be considered to suppress the ATU member
>> violations interrupts by setting the IgnoreWrongData bit for the
>> port (sect 4.4.7). This would be something to do whenever a port is set in locked mode?
>
> So the first packet with a given MAC SA triggers an ATU miss violation
> interrupt.
>
> You program that MAC SA into the ATU with a destination port mask of all
> zeroes. This suppresses further ATU miss interrupts for this MAC SA, but
> now generates ATU member violations, because the MAC SA _is_ present in
> the ATU, but not towards the expected port (in fact, towards _no_ port).
>
> Especially if user space decides it doesn't want to authorize this MAC
> SA, it really becomes a problem because this is now a vector for denial
> of service, with every packet triggering an ATU member violation
> interrupt.
>
> So your suggestion is to set the IgnoreWrongData bit on locked ports,
> and this will suppress the actual member violation interrupts for
> traffic coming from these ports.
>
> So if the user decides to unplug a previously authorized printer from
> switch port 1 and move it to port 2, how is this handled? If there isn't
> a mechanism in place to delete the locked FDB entry when the printer
> goes away, then by setting IgnoreWrongData you're effectively also
> suppressing migration notifications.

I don't think such a scenario is so realistic, as changing port is not
just something done casually, besides port 2 then must also be a locked
port to have the same policy.

The other aspect is that the user space daemon that authorizes catches
the fdb add entry events and checks if it is a locked entry. So it will
be up to said daemon to decide the policy, like remove the fdb entry
after a timeout.

>
> Oh, btw, my question was: could you consider suppressing the _prints_ on
> an ATU miss violation on a locked port?

As there will only be such on the first packet, I think it should be
logged and those prints serve that purpose, so I think it is best to
keep the print.
If in the future some tests or other can argue for suppressing the
prints, it is an easy thing to do.
