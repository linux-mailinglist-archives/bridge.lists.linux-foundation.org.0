Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9A14E2B3F
	for <lists.bridge@lfdr.de>; Mon, 21 Mar 2022 15:51:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9BE2408E9;
	Mon, 21 Mar 2022 14:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkWJLZCHuCuy; Mon, 21 Mar 2022 14:51:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A2DB040521;
	Mon, 21 Mar 2022 14:51:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5B28EC0082;
	Mon, 21 Mar 2022 14:51:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 16C5FC000B
 for <bridge@lists.linux-foundation.org>; Mon, 21 Mar 2022 14:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC3868291A
 for <bridge@lists.linux-foundation.org>; Mon, 21 Mar 2022 14:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LI4fUX6KcH10 for <bridge@lists.linux-foundation.org>;
 Mon, 21 Mar 2022 14:51:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03963828F7
 for <bridge@lists.linux-foundation.org>; Mon, 21 Mar 2022 14:51:07 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id bu29so25070914lfb.0
 for <bridge@lists.linux-foundation.org>; Mon, 21 Mar 2022 07:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=V9QJhItuGj131X5U24BIjE6xMJa7ckWXlhf3pX2Qb7w=;
 b=hVNxEkMPFhWNhQ6oKe5bcnNri0UMhznsBewxDmrB8a18rPDQXU3w3+ibFl3giYgcO7
 3LN7H+LGrRc8+f9qHNriFO15Z1jKztavMZK70q4eTDKCHkuQR88FoUssKCzIGjwdOSxe
 qZQNNLp0xRmS6obHoFrpMzCT/FYV73BTqJY31XKRw/zPyPF46kovinfnipbgxvR9QuDc
 pCCb4FMiYS40owPPP25hJu0RaJq/CIQ/NEaJUnQ8HV0t3Gdljf2j0pYGjvYfr9ShOHnL
 wlnXEPW8WEFbrLzBP3BqMFI2Pi0JtDjaVvcDx0NVEP6+oQB2HcrzMxIoxsLTWr+2qdeR
 U5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=V9QJhItuGj131X5U24BIjE6xMJa7ckWXlhf3pX2Qb7w=;
 b=CnpHO5omvPEQ0GORRwDTHOue7XKY2CeNE6AxPe1d4oMcm+p7akSi9jvJ1xo268T6iE
 8cD/pdboJBwzK8lpz8z2lCruPIrP26vj/1/j8x1HQrWrZR5JZWTV3Bkc6lC1cAVQGBnA
 IvUYiZvalopP46n6nOFy4obDhgzr4p3sHyMyEZI/2vcvY9+DeLdlOnM0syQIV4242QpE
 1YVkX1v0C0r31846aQUEUrnIQ1UBLYJN4ACGamuKMfjUDcSlDPSSlKOFAcBuhxVlh0pI
 iO1hmySTgpml5+FRevHZ9HJPlAqG7f+C7Q2tLFxCbbh96feMpKOy6U1PXkY/z6z7QPg7
 9oeQ==
X-Gm-Message-State: AOAM533JCCP8PbtukVdOOj3/UqpWxFRMKFEhSRBq4wYh2Znl0quKq4Y6
 sO4awJCWrd4Mfaor4zVVCmI+Ka7X1IM=
X-Google-Smtp-Source: ABdhPJy/zkuOFRI5NSGnx6DSDrPaX00+ZIvAAggAOHT0Nhrt9aFLL0ndDJXWs/3Gt43hJTyUnWwrbQ==
X-Received: by 2002:ac2:4ed4:0:b0:44a:212e:fa1a with SMTP id
 p20-20020ac24ed4000000b0044a212efa1amr7065503lfr.372.1647874265558; 
 Mon, 21 Mar 2022 07:51:05 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 bu1-20020a056512168100b004437db5e773sm1829487lfb.94.2022.03.21.07.51.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 07:51:05 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YjNDgnrYaYfviNTi@lunn.ch>
References: <20220310142320.611738-1-schultz.hans+netdev@gmail.com>
 <20220310142320.611738-4-schultz.hans+netdev@gmail.com>
 <20220310142836.m5onuelv4jej5gvs@skbuf> <86r17495gk.fsf@gmail.com>
 <20220316233447.kwyirxckgancdqmh@skbuf> <86lex9hsg0.fsf@gmail.com>
 <YjNDgnrYaYfviNTi@lunn.ch>
Date: Mon, 21 Mar 2022 15:51:02 +0100
Message-ID: <86czifxstl.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, davem@davemloft.net
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

On tor, mar 17, 2022 at 15:19, Andrew Lunn <andrew@lunn.ch> wrote:
> On Thu, Mar 17, 2022 at 09:52:15AM +0100, Hans Schultz wrote:
>> On tor, mar 17, 2022 at 01:34, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Mon, Mar 14, 2022 at 11:46:51AM +0100, Hans Schultz wrote:
>> >> >> @@ -396,6 +414,13 @@ static irqreturn_t mv88e6xxx_g1_atu_prob_irq_thread_fn(int irq, void *dev_id)
>> >> >>  				    "ATU miss violation for %pM portvec %x spid %d\n",
>> >> >>  				    entry.mac, entry.portvec, spid);
>> >> >>  		chip->ports[spid].atu_miss_violation++;
>> >> >> +		if (mv88e6xxx_port_is_locked(chip, chip->ports[spid].port))
>> >> >> +			err = mv88e6xxx_switchdev_handle_atu_miss_violation(chip,
>> >> >> +									    chip->ports[spid].port,
>> >> >> +									    &entry,
>> >> >> +									    fid);
>> >> >
>> >> > Do we want to suppress the ATU miss violation warnings if we're going to
>> >> > notify the bridge, or is it better to keep them for some reason?
>> >> > My logic is that they're part of normal operation, so suppressing makes
>> >> > sense.
>> >> >
>> >> 
>> >> I have been seeing many ATU member violations after the miss violation is
>> >> handled (using ping), and I think it could be considered to suppress the ATU member
>> >> violations interrupts by setting the IgnoreWrongData bit for the
>> >> port (sect 4.4.7). This would be something to do whenever a port is set in locked mode?
>> >
>> > So the first packet with a given MAC SA triggers an ATU miss violation
>> > interrupt.
>> >
>> > You program that MAC SA into the ATU with a destination port mask of all
>> > zeroes. This suppresses further ATU miss interrupts for this MAC SA, but
>> > now generates ATU member violations, because the MAC SA _is_ present in
>> > the ATU, but not towards the expected port (in fact, towards _no_ port).
>> >
>> > Especially if user space decides it doesn't want to authorize this MAC
>> > SA, it really becomes a problem because this is now a vector for denial
>> > of service, with every packet triggering an ATU member violation
>> > interrupt.
>> >
>> > So your suggestion is to set the IgnoreWrongData bit on locked ports,
>> > and this will suppress the actual member violation interrupts for
>> > traffic coming from these ports.
>> >
>> > So if the user decides to unplug a previously authorized printer from
>> > switch port 1 and move it to port 2, how is this handled? If there isn't
>> > a mechanism in place to delete the locked FDB entry when the printer
>> > goes away, then by setting IgnoreWrongData you're effectively also
>> > suppressing migration notifications.
>> 
>> I don't think such a scenario is so realistic, as changing port is not
>> just something done casually, besides port 2 then must also be a locked
>> port to have the same policy.
>
> I think it is very realistic. It is also something which does not work
> is going to cause a lot of confusion. People will blame the printer,
> when in fact they should be blaming the switch. They will be rebooting
> the printer, when in fact, they need to reboot the switch etc.
>
> I expect there is a way to cleanly support this, you just need to
> figure it out.
>
>> The other aspect is that the user space daemon that authorizes catches
>> the fdb add entry events and checks if it is a locked entry. So it will
>> be up to said daemon to decide the policy, like remove the fdb entry
>> after a timeout.
>> 
>> >
>> > Oh, btw, my question was: could you consider suppressing the _prints_ on
>> > an ATU miss violation on a locked port?
>> 
>> As there will only be such on the first packet, I think it should be
>> logged and those prints serve that purpose, so I think it is best to
>> keep the print.
>> If in the future some tests or other can argue for suppressing the
>> prints, it is an easy thing to do.
>
> Please use a traffic generator and try to DOS one of your own
> switches. Can you?
>
> 	  Andrew

Here is a trafgen report, where I sent packets to a locked port with random SAs:

    42527020 packets outgoing
  3104472460 bytes outgoing
         329 sec, 989345 usec on CPU0 (5835746 packets)
         329 sec, 985243 usec on CPU1 (2119061 packets)
         329 sec, 997323 usec on CPU2 (5656546 packets)
         329 sec, 989475 usec on CPU3 (5617322 packets)
         330 sec, 5228 usec on CPU4 (6034671 packets)
         330 sec, 1603 usec on CPU5 (5833505 packets)
         329 sec, 989319 usec on CPU6 (5709841 packets)
         329 sec, 989294 usec on CPU7 (5720328 packets)

I could do 'bridge fdb show' after stopping the traffic, printing out a
very long list (minutes to print). The ATU was normal, so there is an
issue of the soft FDB locked entries not ageing out.

I saw many reports of suppressed IRQs in the kernel log.
