Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEACC4E7479
	for <lists.bridge@lfdr.de>; Fri, 25 Mar 2022 14:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39C3A41D07;
	Fri, 25 Mar 2022 13:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bBpAF8XKbdXw; Fri, 25 Mar 2022 13:48:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 73CD241D15;
	Fri, 25 Mar 2022 13:48:47 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3795BC0086;
	Fri, 25 Mar 2022 13:48:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4B4C7C002F
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 13:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78A334051B
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 13:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qbkZ-tqF-s05 for <bridge@lists.linux-foundation.org>;
 Fri, 25 Mar 2022 13:48:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 269F2404F4
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 13:48:43 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id e16so13430394lfc.13
 for <bridge@lists.linux-foundation.org>; Fri, 25 Mar 2022 06:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=amWqF9FN1k8fr8z9b04tLMMk2tjBAymF98woag+egW0=;
 b=O7yGl0mnXOvEIaGYRfxYLj2agm4o7mmnr5HOQkD9t/Al8QmaueIKr9PPjmveo9p8Qt
 MN93wphYmWtBBlP72BzeRzzpGvR00sner/jxmrBgB8tT1CJTYtlClbjeO/N/JTE2qpwJ
 AnnGzER3PCjkPPfB7KE+QuR92E1YHzljiufkf0SPrwm9C7eEOdJhBiYvAIwawXXq6tcK
 TdJxfTWd7U9xmfiXSDfTJwSPTRnv8rTZOEPwT0V3hS2E69QLdJJwGCusSNCHw76/aOgf
 38UlEKlzFhYjtgl5ugcp0+5Ce/daFWAvtBq1Nsh5CujiqOOPvXlIQKtbegyoaYvw3omc
 0xLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=amWqF9FN1k8fr8z9b04tLMMk2tjBAymF98woag+egW0=;
 b=BJ41Bl7Nv85yPGultpxXkOi56Jh038jnrP+aj8pvAiicYEOOHZhmPtM9QA0rWcKeP/
 Yp6ByN12PPw1272Im4KrKF/46+vBY8m/7zPrm87/mVZKE3VQ8waKSkUuOPacHeEnSai2
 xD45saeHcuXV/+TI3vMubSJXaE2Luq+dEsfCfbW/d+CnQZTpOo0hpW4mR5OoVQTbnlJh
 0gOk+gY0dTHst4WShETJdLwv+crHx6GuD+6otg30+kEW4xmiy9HtEgccPDdLbttv8+ND
 Vw7UpQQh5ezcK6e0ZHJJPBJytqmUr2qjPs8M0H9s/n49xDtCGLsP/4Sh4LvWOqVHq3wb
 u22Q==
X-Gm-Message-State: AOAM531wW8Cu7fNG8p6G4QQV/5UOguwD9/d5fU6u/Lykos2SLs9Er0Pr
 i5aSOmHGYYhp57Wa0VITpRU=
X-Google-Smtp-Source: ABdhPJxo1Ye6aIO5niyAQW1DgWfXSTy9yYMqiGAuHT99g1LQ7v31jgB64ziT8Tx7DrVdQAPAFxZYcA==
X-Received: by 2002:a05:6512:1281:b0:44a:2d67:98d2 with SMTP id
 u1-20020a056512128100b0044a2d6798d2mr7706364lfs.272.1648216120780; 
 Fri, 25 Mar 2022 06:48:40 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 z17-20020a19e211000000b0044a1348fc87sm715161lfg.43.2022.03.25.06.48.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 06:48:40 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220325132102.bss26plrk4sifby2@skbuf>
References: <20220317093902.1305816-3-schultz.hans+netdev@gmail.com>
 <86o81whmwv.fsf@gmail.com> <20220323123534.i2whyau3doq2xdxg@skbuf>
 <86wngkbzqb.fsf@gmail.com> <20220323144304.4uqst3hapvzg3ej6@skbuf>
 <86lewzej4n.fsf@gmail.com> <20220324110959.t4hqale35qbrakdu@skbuf>
 <86v8w3vbk4.fsf@gmail.com> <20220324142749.la5til4ys6zva4uf@skbuf>
 <86czia1ned.fsf@gmail.com> <20220325132102.bss26plrk4sifby2@skbuf>
Date: Fri, 25 Mar 2022 14:48:36 +0100
Message-ID: <86fsn6uoqz.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On fre, mar 25, 2022 at 15:21, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Fri, Mar 25, 2022 at 08:50:34AM +0100, Hans Schultz wrote:
>> On tor, mar 24, 2022 at 16:27, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Thu, Mar 24, 2022 at 12:23:39PM +0100, Hans Schultz wrote:
>> >> On tor, mar 24, 2022 at 13:09, Vladimir Oltean <olteanv@gmail.com> wrote:
>> >> > On Thu, Mar 24, 2022 at 11:32:08AM +0100, Hans Schultz wrote:
>> >> >> On ons, mar 23, 2022 at 16:43, Vladimir Oltean <olteanv@gmail.com> wrote:
>> >> >> > On Wed, Mar 23, 2022 at 01:49:32PM +0100, Hans Schultz wrote:
>> >> >> >> >> Does someone have an idea why there at this point is no option to add a
>> >> >> >> >> dynamic fdb entry?
>> >> >> >> >> 
>> >> >> >> >> The fdb added entries here do not age out, while the ATU entries do
>> >> >> >> >> (after 5 min), resulting in unsynced ATU vs fdb.
>> >> >> >> >
>> >> >> >> > I think the expectation is to use br_fdb_external_learn_del() if the
>> >> >> >> > externally learned entry expires. The bridge should not age by itself
>> >> >> >> > FDB entries learned externally.
>> >> >> >> >
>> >> >> >> 
>> >> >> >> It seems to me that something is missing then?
>> >> >> >> My tests using trafgen that I gave a report on to Lunn generated massive
>> >> >> >> amounts of fdb entries, but after a while the ATU was clean and the fdb
>> >> >> >> was still full of random entries...
>> >> >> >
>> >> >> > I'm no longer sure where you are, sorry..
>> >> >> > I think we discussed that you need to enable ATU age interrupts in order
>> >> >> > to keep the ATU in sync with the bridge FDB? Which means either to
>> >> >> > delete the locked FDB entries from the bridge when they age out in the
>> >> >> > ATU, or to keep refreshing locked ATU entries.
>> >> >> > So it seems that you're doing neither of those 2 things if you end up
>> >> >> > with bridge FDB entries which are no longer in the ATU.
>> >> >> 
>> >> >> Any idea why G2 offset 5 ATUAgeIntEn (bit 10) is set? There is no define
>> >> >> for it, so I assume it is something default?
>> >> >
>> >> > No idea, but I can confirm that the out-of-reset value I see for
>> >> > MV88E6XXX_G2_SWITCH_MGMT on 6190 and 6390 is 0x400. It's best not to
>> >> > rely on any reset defaults though.
>> >> 
>> >> I see no age out interrupts, even though the ports Age Out Int is on
>> >> (PAV bit 14) on the locked port, and the ATU entries do age out (HoldAt1
>> >> is off). Any idea why that can be?
>> >> 
>> >> I combination with this I think it would be nice to have an ability to
>> >> set the AgeOut time even though it is not per port but global.
>> >
>> > Sorry, I just don't know. Looking at the documentation for IntOnAgeOut,
>> > I see it says that for an ATU entry to trigger an age out interrupt, the
>> > port it's associated with must have IntOnAgeOut set.
>> > But your locked ATU entries aren't associated with any port, they have
>> > DPV=0, right? So will they never trigger any age out interrupt according
>> > to this? I'm not clear.
>> 
>> I think that's absolutely right. That leaves two options. Either "port
>> 10" if it has IntOnAgeOut setting, or the reason why I wrote my comments
>> in this part of the code, that it should be able to add a dynamic entry
>> in the bridge module from the driver.
>
> I'm sorry, I wasn't fully aware of the implications of the fact that
> your 'locked' FDB entries have a DPV of all zeroes in hardware.
> Practically, this means that while the locked bridge FDB entry is
> associated with a bridge port, the ATU entry is associated with no port.
>
> In turn, the hardware cannot ever true detect station migrations,
> because it doesn't know which port this station migrates _from_ (you're
> not telling it that). Every packet with this MAC SA is a station
> migration, in effect, which you (for good reason) choose to ignore to
> avoid denial of service.
>
> Mark the locked (DPV=0) ATU entry as static, and you'll keep your CPU
> clean of any ATU miss or member violation of this MAC SA. Read this as
> "you'll need to call IT to ask them to remove it". Undesirable IMHO.
>
> Mark the locked entry as non-static, and the entry will eventually
> expire, with no interrupt to signal that - because any ATU age interrupt,
> as mentioned, is fundamentally linked to a port.
>
> You see this as a negative, and you're looking for ways to inform the
> bridge driver that the locked FDB entry went away. But you aren't
> looking at this the right way, I think. Making the mv88e6xxx driver
> remove the locked FDB entry from the bridge seems like a non-goal now.
>
> If you'd cache the locked ATU entry in the mv88e6xxx driver, and you'd
> notify switchdev only if the entry is new to the cache, then you'd
> actually still achieve something major. Yes, the bridge FDB will contain
> locked FDB entries that aren't in the ATU. But that's because your
> printer has been silent for X seconds. The policy for the printer still
> hasn't changed, as far as the mv88e6xxx, or bridge, software drivers are
> concerned. If the unauthorized printer says something again after the
> locked ATU entry expires, the mv88e6xxx driver will find its MAC SA
> in the cache of denied addresses, and reload the ATU. What this
> achieves

The driver will in this case just trigger a new miss violation and add
the entry again I think.
The problem with all this is that a malicious attack that spams the
switch with random mac addresses will be able to DOS the device as any
handling of the fdb will be too resource demanding. That is why it is
needed to remove those fdb entries after a time out, which dynamic
entries would serve.

> is that the number of ATU violation interrupts isn't proportional to the
> number of packets sent by the printer, but with the ageing time you
> configure for this ATU entry. You should be able to play with an
> entry->state in the range of 1 -> 7 and get a good compromise between
> responsiveness on station migrations and number of ATU interrupts to
> service once the locked ATU entry is invalidated. In my opinion even the
> quickest-to-expire entry->state of 1 is way better than letting every
> packet spam the CPU. And you can always keep your cached locked ATU
> entry in sync with the port that triggered the violation interrupt, and
> figure out station migrations in software this way.
>
> I hope I understood the hardware behavior correctly, I don't have any
> direct experience with 802.1X as I mentioned, and only limited and
> non-expert experience with Marvell hardware. This is just my
> interpretation of some random documentation I found online.
