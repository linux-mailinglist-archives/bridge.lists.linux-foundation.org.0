Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DE74DC368
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:56:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AC9D41899;
	Thu, 17 Mar 2022 09:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2AN6K9xpApxv; Thu, 17 Mar 2022 09:56:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 97EB141895;
	Thu, 17 Mar 2022 09:56:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D250C0082;
	Thu, 17 Mar 2022 09:56:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 732ECC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 591664059B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xaJheM3fkEae for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:56:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D05034000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:56:31 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id ja24so4128655ejc.11
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=LKI5osEQPlJQ9O41BUKV52XR7DzjpxsT1kue581cMEE=;
 b=wtF2cm1chUMImmLChI8MkXLIoXzRJv/4c2ZfBPQXNLIW3gztpjO9Vus4qB80F9/9Ac
 UfctFxEEUiedV5c74UYBUcZbTl7TAnqIDK/81wFUViIAyzwtnGBDk/nEfWIu4dOZq3UY
 dU772LEIPywn+CzvVwK16LoMS8QaDRouGG8Ra7DddwEVLt3oRdY1hvMUB8H9AIXtgvwj
 v+laEHqfmmio6d79AWCPC9XC9JU2ad1QjY1he8lLN/UplsOA70S56ox/4B+pz62Dgp3L
 3UKH4xjoixBzd2DeF+Z3lSqd6kkiE+ouS+Y1reWWY2fTs+L5B4x9E6PUniJymHyX+99H
 2pIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=LKI5osEQPlJQ9O41BUKV52XR7DzjpxsT1kue581cMEE=;
 b=c1zWHRzEAVFo7sgWnktRSmQylT9kTwPIkJRI9UCwEpWn8K4XsJqL4s9qFLcsXRj0x5
 S81/pcgZqkuH3L2BfAyx3wvZvAdjkgUjU1Smwn7+lTjzfjalxVL6TNpSlTB105bdSejY
 RYAs1cxEQUWCryp6AWjOE3FgFuVCTd2tPqqIimLdl2K3oW8EsF0f5QodN1Y1tFtm0trv
 EJfKB37d2AcBSF74DYpdJfyBv//sgwXoSKSZyj5aQGuTCstXDLlcrg1f3200SsZfc/i3
 H8pCE3jOhrABi/gmfao+7AKojuCMI/KwLF27Gr5k5Q55j96sjOryQO4HTMt6xlkd+kc9
 WJrA==
X-Gm-Message-State: AOAM533EQ6SB8fYb/2g0QotSTrutGlDd4gkxlRUizJm6eEsdDI+lxyId
 a0zXSqBlvFhwzfyTr0eVvLW7GQ==
X-Google-Smtp-Source: ABdhPJzruCPaoIxNIBvpP+LfzFl7/FwTivyoElXEcL44kAFVVQxza9J2S8xYas7tVKVC8JIZgQmL6w==
X-Received: by 2002:a17:907:9910:b0:6d5:acd6:8d02 with SMTP id
 ka16-20020a170907991000b006d5acd68d02mr3560951ejc.173.1647510989856; 
 Thu, 17 Mar 2022 02:56:29 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 n6-20020aa7c786000000b00410d2403ccfsm2382081eds.21.2022.03.17.02.56.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 02:56:29 -0700 (PDT)
Message-ID: <65f72950-8cfa-132d-f455-06213dae4327@blackwall.org>
Date: Thu, 17 Mar 2022 11:56:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Waldekranz <tobias@waldekranz.com>, davem@davemloft.net,
 kuba@kernel.org
References: <20220316150857.2442916-1-tobias@waldekranz.com>
 <610eb6cc-4df4-f0fc-462a-b33145334a12@blackwall.org>
 <87tubwkiw2.fsf@waldekranz.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <87tubwkiw2.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Cooper Lees <me@cooperlees.com>, Roopa Prabhu <roopa@nvidia.com>,
 Matt Johnston <matt@codeconstruct.com.au>, Vladimir Oltean <olteanv@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v5 net-next 00/15] net: bridge: Multiple
	Spanning Trees
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

On 17/03/2022 11:50, Tobias Waldekranz wrote:
> On Thu, Mar 17, 2022 at 11:00, Nikolay Aleksandrov <razor@blackwall.org> wrote:
>> On 16/03/2022 17:08, Tobias Waldekranz wrote:
>>> The bridge has had per-VLAN STP support for a while now, since:
>>>
>>> https://lore.kernel.org/netdev/20200124114022.10883-1-nikolay@cumulusnetworks.com/
>>>
>>> The current implementation has some problems:
>>>
>>> - The mapping from VLAN to STP state is fixed as 1:1, i.e. each VLAN
>>>   is managed independently. This is awkward from an MSTP (802.1Q-2018,
>>>   Clause 13.5) point of view, where the model is that multiple VLANs
>>>   are grouped into MST instances.
>>>
>>>   Because of the way that the standard is written, presumably, this is
>>>   also reflected in hardware implementations. It is not uncommon for a
>>>   switch to support the full 4k range of VIDs, but that the pool of
>>>   MST instances is much smaller. Some examples:
>>>
>>>   Marvell LinkStreet (mv88e6xxx): 4k VLANs, but only 64 MSTIs
>>>   Marvell Prestera: 4k VLANs, but only 128 MSTIs
>>>   Microchip SparX-5i: 4k VLANs, but only 128 MSTIs
>>>
>>> - By default, the feature is enabled, and there is no way to disable
>>>   it. This makes it hard to add offloading in a backwards compatible
>>>   way, since any underlying switchdevs have no way to refuse the
>>>   function if the hardware does not support it
>>>
>>> - The port-global STP state has precedence over per-VLAN states. In
>>>   MSTP, as far as I understand it, all VLANs will use the common
>>>   spanning tree (CST) by default - through traffic engineering you can
>>>   then optimize your network to group subsets of VLANs to use
>>>   different trees (MSTI). To my understanding, the way this is
>>>   typically managed in silicon is roughly:
>>>
>>>   Incoming packet:
>>>   .----.----.--------------.----.-------------
>>>   | DA | SA | 802.1Q VID=X | ET | Payload ...
>>>   '----'----'--------------'----'-------------
>>>                         |
>>>                         '->|\     .----------------------------.
>>>                            | +--> | VID | Members | ... | MSTI |
>>>                    PVID -->|/     |-----|---------|-----|------|
>>>                                   |   1 | 0001001 | ... |    0 |
>>>                                   |   2 | 0001010 | ... |   10 |
>>>                                   |   3 | 0001100 | ... |   10 |
>>>                                   '----------------------------'
>>>                                                              |
>>>                                .-----------------------------'
>>>                                |  .------------------------.
>>>                                '->| MSTI | Fwding | Lrning |
>>>                                   |------|--------|--------|
>>>                                   |    0 | 111110 | 111110 |
>>>                                   |   10 | 110111 | 110111 |
>>>                                   '------------------------'
>>>
>>>   What this is trying to show is that the STP state (whether MSTP is
>>>   used, or ye olde STP) is always accessed via the VLAN table. If STP
>>>   is running, all MSTI pointers in that table will reference the same
>>>   index in the STP stable - if MSTP is running, some VLANs may point
>>>   to other trees (like in this example).
>>>
>>>   The fact that in the Linux bridge, the global state (think: index 0
>>>   in most hardware implementations) is supposed to override the
>>>   per-VLAN state, is very awkward to offload. In effect, this means
>>>   that when the global state changes to blocking, drivers will have to
>>>   iterate over all MSTIs in use, and alter them all to match. This
>>>   also means that you have to cache whether the hardware state is
>>>   currently tracking the global state or the per-VLAN state. In the
>>>   first case, you also have to cache the per-VLAN state so that you
>>>   can restore it if the global state transitions back to forwarding.
>>>
>>> This series adds a new mst_enable bridge setting (as suggested by Nik)
>>> that can only be changed when no VLANs are configured on the
>>> bridge. Enabling this mode has the following effect:
>>>
>>> - The port-global STP state is used to represent the CST (Common
>>>   Spanning Tree) (1/15)
>>>
>>> - Ingress STP filtering is deferred until the frame's VLAN has been
>>>   resolved (1/15)
>>>
>>> - The preexisting per-VLAN states can no longer be controlled directly
>>>   (1/15). They are instead placed under the MST module's control,
>>>   which is managed using a new netlink interface (described in 3/15)
>>>
>>> - VLANs can br mapped to MSTIs in an arbitrary M:N fashion, using a
>>>   new global VLAN option (2/15)
>>>
>>> Switchdev notifications are added so that a driver can track:
>>> - MST enabled state
>>> - VID to MSTI mappings
>>> - MST port states
>>>
>>> An offloading implementation is this provided for mv88e6xxx.
>>>
>>> A proposal for the corresponding iproute2 interface is available here:
>>>
>>> https://github.com/wkz/iproute2/tree/mst
>>>
>>
>> Hi Tobias,
>> One major missing thing is the selftests for this new feature. Do you
>> have a plan to upstream them?
> 
> 100% agree. I have an internal test that I plan to adapt to run as a
> kselftest. There's a bootstrapping problem here though. I can't send the
> iproute2 series until the kernel support is merged - and until I know
> how the iproute2 support ends up looking I can't add a kselftest.
> 

That's ok, some people choose to send the iproute2 with the set, others
send the iproute2 patches separately and add selftests after those are
accepted (that's my personal preference for the same reasons above).
Personally I don't mind either way as long as the tests end up materializing. :)

Just in case you've missed it - most of the bridge tests reside in
tools/testing/selftests/net/forwarding.

> Ideally, tools/iproute2 would be a thing in the kernel. Then you could
> send the entire implementation as one series. I'm sure that's probably
> been discussed many times already, but my Google-fu fails me.

Cheers,
 Nik
