Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F324E8F23
	for <lists.bridge@lfdr.de>; Mon, 28 Mar 2022 09:38:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE89F40123;
	Mon, 28 Mar 2022 07:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kdDueaiGBWoR; Mon, 28 Mar 2022 07:38:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4D344400EB;
	Mon, 28 Mar 2022 07:38:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EEB7DC0082;
	Mon, 28 Mar 2022 07:38:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 77CE7C0012
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 07:38:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5548460F6F
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 07:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvgXF6jz0ids for <bridge@lists.linux-foundation.org>;
 Mon, 28 Mar 2022 07:38:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E46360F6B
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 07:38:38 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id r7so17933046wrc.0
 for <bridge@lists.linux-foundation.org>; Mon, 28 Mar 2022 00:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ZGgY4ugwWH/2hsjBN3Oyi9qQcKXFArqdIzAWmPvr9nI=;
 b=GCOuo35vnRS7u5Ydo1MREMDiIjABMrAhyb/kARxBn3RT5X+NvQ34pvRoTsgxJxcTDC
 pN2ve8Xa+yXdNt22LGrUxARo/2cRBIxcJyJEdIsgEYrclDTm6eLSoY+mFkIvHzOsDQn2
 H9fu4dTDTnRGce3wQcX9LnFRk7vaZoAQQ4CjoJI6wWqhxepDCto93XzPvZ6u4Oj0aKOT
 Yd1tmxrnC52QeGCFnZWmAfPfx7UpxCGbBrtGe7FhtlsPkax4RAubPCtYnIvnjvY7QLwI
 W0IbN8Ig3qECdSCT2BWWJ7bHCL4tjhU8ghLwQUK98ZXyS2gFHc6THKwaEEL6h0hB3LMW
 diwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ZGgY4ugwWH/2hsjBN3Oyi9qQcKXFArqdIzAWmPvr9nI=;
 b=XYnaGW90Rqqil/rzglVhY9MqWxprd1YRoCktdFxcuRLsXdcsAHXattD2YsBbmCwc1N
 kCE7yD2mrW/CNwwtLEvYkB7T5dxnf2ZpuJVvlcKSpYgp7nabiHgY1Ng18Ox7pgbkASEK
 3PSggpqWc6VW6t7vJSUdqwAp14Y1zz2emBECzAAw42zB7Mf90cgK9DzL5IL0HM8fLMX+
 m9/2haUGCPvLy3Z0FPlTxPstI5UCaw1TReEPi3WkEwNRQ5fEFJMmFVoC55oWNeNhjKVv
 vixmsHp03TFmrU49vxJHLLrXUo1GJyN1EBAFCpAKsyJG3VvzPKGbJfWhkfYCBqGfAvOV
 Glqw==
X-Gm-Message-State: AOAM532Zuft49LQmuK8RyD5J8v6ktF/REzhjnJ5oGzr1WI2Fty9aEy/b
 vXHzry/5Cfr3+ikO/nDnxjo=
X-Google-Smtp-Source: ABdhPJzGvphoXH2utUv2XMoaCJgzDmSCXjq8T3Jq51P+jmVpWm4mJE3i0TNctPzeecybvsH/sbKbJw==
X-Received: by 2002:a5d:5849:0:b0:205:85cb:baaf with SMTP id
 i9-20020a5d5849000000b0020585cbbaafmr21879767wrf.442.1648453116632; 
 Mon, 28 Mar 2022 00:38:36 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 p8-20020a5d59a8000000b00204178688d3sm12622464wrr.100.2022.03.28.00.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 00:38:35 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <20220325203057.vrw5nbwqctluc6u3@skbuf>
References: <20220323144304.4uqst3hapvzg3ej6@skbuf>
 <86lewzej4n.fsf@gmail.com> <20220324110959.t4hqale35qbrakdu@skbuf>
 <86v8w3vbk4.fsf@gmail.com> <20220324142749.la5til4ys6zva4uf@skbuf>
 <86czia1ned.fsf@gmail.com> <20220325132102.bss26plrk4sifby2@skbuf>
 <86fsn6uoqz.fsf@gmail.com> <20220325140003.a4w4hysqbzmrcxbq@skbuf>
 <86tubmt408.fsf@gmail.com> <20220325203057.vrw5nbwqctluc6u3@skbuf>
Date: Mon, 28 Mar 2022 09:38:33 +0200
Message-ID: <86ee2m8r2e.fsf@gmail.com>
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

On fre, mar 25, 2022 at 22:30, Vladimir Oltean <olteanv@gmail.com> wrote:
> On Fri, Mar 25, 2022 at 05:01:59PM +0100, Hans Schultz wrote:
>> > An attacker sweeping through the 2^47 source MAC address range is a
>> > problem regardless of the implementations proposed so far, no?
>> 
>> The idea is to have a count on the number of locked entries in both the
>> ATU and the FDB, so that a limit on entries can be enforced.
>
> I can agree with that.
>
> Note that as far as I understand regular 802.1X, these locked FDB
> entries are just bloatware if you don't need MAC authentication bypass,
> because the source port is already locked, so it drops all traffic from
> an unknown MAC SA except for the link-local packets necessary to run
> EAPOL, which are trapped to the CPU.

802.1X and MAC Auth can be completely seperated by hostapd listning
directly on the locked port interface before entering the bridge.

>
> So maybe user space should opt into the MAC authentication bypass
> process, really, since that requires secure CPU-assisted learning, and
> regular 802.1X doesn't. It's a real additional burden that shouldn't be
> ignored or enabled by default.
>
>> > If unlimited growth of the mv88e6xxx locked ATU entry cache is a
>> > concern (which it is), we could limit its size, and when we purge a
>> > cached entry in software is also when we could emit a
>> > SWITCHDEV_FDB_DEL_TO_BRIDGE for it, right?
>> 
>> I think the best would be dynamic entries in both the ATU and the FDB
>> for locked entries.
>
> Making locked (DPV=0) ATU entries be dynamic (age out) makes sense.
> Since you set the IgnoreWrongData for source ports, you suppress ATU
> interrupts for this MAC SA, which in turn means that a station which is
> unauthorized on port A can never redeem itself when it migrates to port B,
> for which it does have an authorization, since software never receives
> any notice that it has moved to a new port.
>
> But making the locked bridge FDB entry be dynamic, why does it matter?
> I'm not seeing this through. To denote that it can migrate, or to denote
> that it can age out? These locked FDB entries are 'extern_learn', so
> they aren't aged out by the bridge anyway, they are aged out by whomever
> added them => in our case the SWITCHDEV_FDB_DEL_TO_BRIDGE that I mentioned.
>
I think the FDB and the ATU should be as much in sync as possible, and
the FDB definitely should not keep stale entries that only get removed
by link down. The SWITCHDEV_FDB_DEL_TO_BRIDGE route would requre an
interrupt when a entry ages out in the ATU, but we know that that cannot
happen with DPV=0. Thus the need to add dynamic entries with
SWITCHDEV_FDB_ADD_TO_BRIDGE. 

>> How the two are kept in sync is another question, but if there is a
>> switchcore, it will be the 'master', so I don't think the bridge
>> module will need to tell the switchcore to remove entries in that
>> case. Or?
>
> The bridge will certainly not *need* to tell the switch to delete a
> locked FDB entry, but it certainly *can* (and this is in fact part of
> the authorization process, replace an ATU entry with DPV=0 with an ATU
> entry with DPV=BIT(port)).

Yes you are right, but I was implicitly only regarding internal
mechanisms in the 'bridge + switchcore', and not userspace netlink
commands.
>
> I feel as if I'm missing the essence of your reply.
