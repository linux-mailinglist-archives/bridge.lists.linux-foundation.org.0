Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5824E9161
	for <lists.bridge@lfdr.de>; Mon, 28 Mar 2022 11:31:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DEC1824A4;
	Mon, 28 Mar 2022 09:31:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vA6nR65VQs3o; Mon, 28 Mar 2022 09:31:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0792B82A5D;
	Mon, 28 Mar 2022 09:31:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A772CC0082;
	Mon, 28 Mar 2022 09:31:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 151A0C0012
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 09:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEDA3404B4
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 09:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jWIr5qFo7Z60 for <bridge@lists.linux-foundation.org>;
 Mon, 28 Mar 2022 09:31:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD62840186
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 09:31:47 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 p26-20020a05600c1d9a00b0038ccbff1951so5205917wms.1
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 02:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=DOqednLGB8t08Df3i9IpZkKnH+REoeIWIVPkLjVkZpg=;
 b=LLl6Mw2ucGvnYTSSzeWSCVkwBzl2eQE8d8UIziJLLCoDBfOKwLBVAFrFjPObd9mc9U
 8DhApGTwmZpbN9R9T1YEXps5pJ6kTl+ILEMnBLgdVnk4yGANJxYePgzCDzOctvoj5m1Y
 v5rejfpqG6ECwQH7T8CNeHHSJOdNQumygzP5oWeYijGu9Ei/jAQmNFeTREe+4fVsClpT
 SRzcTXeCGVVgxBw6+GWOWRpP+Vy2OdRRGUyqUHqWwMngqXDeUBGwRX0zhlIkV2Z28S5J
 RRgS7XGWCenUCuPBaM3x0sKYkYQDYKtRtxPEijgMWLabr0r7Mjcur+N51Bh1/G+mbm7K
 y08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=DOqednLGB8t08Df3i9IpZkKnH+REoeIWIVPkLjVkZpg=;
 b=XZWo4CArKEd8AMCYdsBEKpETuU83dLR48g43zgvvCVDHFjkngGGY8cAk35HXW5KlAu
 eC2t4doprhUSAwm0wrIgHkwd92QNePhSJVQ4jr0IXX/TpHczK0uXWpTqnf6PqQ8I8PoZ
 j4UpCY7MOwUlRIwKbNzIho8HLe5SfAvToq18FeotZPzHp41aqtI/xQkx3/R0ncXsUWCb
 L5CaoPg9KiLeqEdI6s1aqsG1t8gqhzMNhaBepOpui0/8REPYnLxa3ZGkJ/J27tUkwqNk
 eGN9GeLbvPnfSqWz09tSy0irdoNXzeVxZget+fcCHEmMOc604sngMybVPuPm82SZJGwU
 71Rg==
X-Gm-Message-State: AOAM532Z+DcNOwD3myrqL9q/BNLhxxNL7Kck/RuBW/VG/dOeuqsONxJj
 xKGo0PiVpLT8A8lDWBwXHwU=
X-Google-Smtp-Source: ABdhPJwLQAiypaCS1CAb4ErEyp4LPU+63fk1hDWuiADXzJXBo0LF2ISrWYUJx8HgD27T9aoqDDMwxA==
X-Received: by 2002:a7b:c14c:0:b0:381:32fb:a128 with SMTP id
 z12-20020a7bc14c000000b0038132fba128mr34711645wmi.116.1648459905906; 
 Mon, 28 Mar 2022 02:31:45 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 h9-20020a5d4309000000b00205b90434e2sm4779658wrq.114.2022.03.28.02.31.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 02:31:45 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220328084828.ergz2h64p7ugebwl@skbuf>
References: <20220324110959.t4hqale35qbrakdu@skbuf>
 <86v8w3vbk4.fsf@gmail.com> <20220324142749.la5til4ys6zva4uf@skbuf>
 <86czia1ned.fsf@gmail.com> <20220325132102.bss26plrk4sifby2@skbuf>
 <86fsn6uoqz.fsf@gmail.com> <20220325140003.a4w4hysqbzmrcxbq@skbuf>
 <86tubmt408.fsf@gmail.com> <20220325203057.vrw5nbwqctluc6u3@skbuf>
 <86ee2m8r2e.fsf@gmail.com> <20220328084828.ergz2h64p7ugebwl@skbuf>
Date: Mon, 28 Mar 2022 11:31:43 +0200
Message-ID: <86h77ijudc.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On m=C3=A5n, mar 28, 2022 at 11:48, Vladimir Oltean <olteanv@gmail.com> wro=
te:
> On Mon, Mar 28, 2022 at 09:38:33AM +0200, Hans Schultz wrote:
>> On fre, mar 25, 2022 at 22:30, Vladimir Oltean <olteanv@gmail.com> wrote:
>> > On Fri, Mar 25, 2022 at 05:01:59PM +0100, Hans Schultz wrote:
>> >> > An attacker sweeping through the 2^47 source MAC address range is a
>> >> > problem regardless of the implementations proposed so far, no?
>> >>=20
>> >> The idea is to have a count on the number of locked entries in both t=
he
>> >> ATU and the FDB, so that a limit on entries can be enforced.
>> >
>> > I can agree with that.
>> >
>> > Note that as far as I understand regular 802.1X, these locked FDB
>> > entries are just bloatware if you don't need MAC authentication bypass,
>> > because the source port is already locked, so it drops all traffic from
>> > an unknown MAC SA except for the link-local packets necessary to run
>> > EAPOL, which are trapped to the CPU.
>>=20
>> 802.1X and MAC Auth can be completely seperated by hostapd listning
>> directly on the locked port interface before entering the bridge.
>
> I don't understand this, sorry. What do you mean "before entering the
> bridge"?
>
RAW socket on network slave device.

>> > So maybe user space should opt into the MAC authentication bypass
>> > process, really, since that requires secure CPU-assisted learning, and
>> > regular 802.1X doesn't. It's a real additional burden that shouldn't be
>> > ignored or enabled by default.
>> >
>> >> > If unlimited growth of the mv88e6xxx locked ATU entry cache is a
>> >> > concern (which it is), we could limit its size, and when we purge a
>> >> > cached entry in software is also when we could emit a
>> >> > SWITCHDEV_FDB_DEL_TO_BRIDGE for it, right?
>> >>=20
>> >> I think the best would be dynamic entries in both the ATU and the FDB
>> >> for locked entries.
>> >
>> > Making locked (DPV=3D0) ATU entries be dynamic (age out) makes sense.
>> > Since you set the IgnoreWrongData for source ports, you suppress ATU
>> > interrupts for this MAC SA, which in turn means that a station which is
>> > unauthorized on port A can never redeem itself when it migrates to por=
t B,
>> > for which it does have an authorization, since software never receives
>> > any notice that it has moved to a new port.
>> >
>> > But making the locked bridge FDB entry be dynamic, why does it matter?
>> > I'm not seeing this through. To denote that it can migrate, or to deno=
te
>> > that it can age out? These locked FDB entries are 'extern_learn', so
>> > they aren't aged out by the bridge anyway, they are aged out by whomev=
er
>> > added them =3D> in our case the SWITCHDEV_FDB_DEL_TO_BRIDGE that I men=
tioned.
>> >
>> I think the FDB and the ATU should be as much in sync as possible, and
>> the FDB definitely should not keep stale entries that only get removed
>> by link down. The SWITCHDEV_FDB_DEL_TO_BRIDGE route would requre an
>> interrupt when a entry ages out in the ATU, but we know that that cannot
>> happen with DPV=3D0. Thus the need to add dynamic entries with
>> SWITCHDEV_FDB_ADD_TO_BRIDGE.=20
>
> So what is your suggestion exactly? You want the driver to notify the
> locked FDB entry via FDB_ADD_TO_BRIDGE with the dynamic flag, and then
> rely on the bridge's software ageing timer to delete it? How does that
> deletion propagate back to the driver then? I'm unclear on the ownership
> model you propose.
>

As the FDB and the ATU will age out the entry with the same timeout,
they will stay relatively in sync compared to the situation where the
switchcore driver will not be able to notify the bridge that a zero DPV
entry has aged out as it has no port association.

>> >> How the two are kept in sync is another question, but if there is a
>> >> switchcore, it will be the 'master', so I don't think the bridge
>> >> module will need to tell the switchcore to remove entries in that
>> >> case. Or?
>> >
>> > The bridge will certainly not *need* to tell the switch to delete a
>> > locked FDB entry, but it certainly *can* (and this is in fact part of
>> > the authorization process, replace an ATU entry with DPV=3D0 with an A=
TU
>> > entry with DPV=3DBIT(port)).
>>=20
>> Yes you are right, but I was implicitly only regarding internal
>> mechanisms in the 'bridge + switchcore', and not userspace netlink
>> commands.
>> >
>> > I feel as if I'm missing the essence of your reply.
