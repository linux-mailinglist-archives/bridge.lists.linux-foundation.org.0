Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBB85982D1
	for <lists.bridge@lfdr.de>; Thu, 18 Aug 2022 14:00:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 128F641BC5;
	Thu, 18 Aug 2022 12:00:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 128F641BC5
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=gNGJcUbZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UHY_qVY-JOXO; Thu, 18 Aug 2022 12:00:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id A48CB41C0A;
	Thu, 18 Aug 2022 12:00:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A48CB41C0A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4754DC0078;
	Thu, 18 Aug 2022 12:00:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0CC41C002D
 for <bridge@lists.linux-foundation.org>; Thu, 18 Aug 2022 12:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB60A83E47
 for <bridge@lists.linux-foundation.org>; Thu, 18 Aug 2022 12:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB60A83E47
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=gNGJcUbZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yywaRCarlc67 for <bridge@lists.linux-foundation.org>;
 Thu, 18 Aug 2022 12:00:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C41C783E1D
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C41C783E1D
 for <bridge@lists.linux-foundation.org>; Thu, 18 Aug 2022 12:00:26 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id a7so2839635ejp.2
 for <bridge@lists.linux-foundation.org>; Thu, 18 Aug 2022 05:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=HK82LSxIMPc36pF31OFj9tkttn9EAAbGZ7Ls5L+6umc=;
 b=gNGJcUbZZ65YkBC2hD+Vb1sGsl6fdD/kKhe/eV3iUZnQVC5QubgMwVcmK38rnLso+r
 /d27g2Lp6lCH+1bgtmH+dWcGNJqKXLMxnE6Ee2eRx8zEwG991/N6UuL3fsXHwF85fv6a
 sanAV2Gxmx5Jiib75buiGJD7HC0T4ZUrNRQfTL7msoK/2bW+os+DfSLLoKwaJTZ8Xoio
 0lINQ1y0RV7LdkoG2bf91yikIlNUNlJ+ag61oe1ofG9iHXaFrpObPwgJ1U/hNSYP5xIb
 Jla8rEwZOu/2RipliAJyRbbeFoOH0McXzYbFC+MkVF6xqpw/pWf91MWrcf8s7yCLigRw
 4RxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=HK82LSxIMPc36pF31OFj9tkttn9EAAbGZ7Ls5L+6umc=;
 b=3hUyzFindcSuhquz6acdB/U1g/GBFAFZ2f64VK+/GEbP6FkayNwfqgDKrpmWPvOIks
 V1n1YUQsVOf2rA8Vy/hgkFKuEqqYRJhSknJfnypY4QsW0E2txY1+7591if/wLIGy3oPV
 lOhKL7DL/Vsp6ThJeKRArbP0JQ/Hkp6lW850zLVhcq5VEdflfAjbHcDi/dUwHCQbJrsf
 D2oSC7rmzOibMMSt8bkJ6bGJdGC27wp697xtIiIbmaUDPoz0+SJ7rQTGzG0fPuxokinO
 CGtJKHs5BBlZUBzoa6H0ieFf2G3sQayR7HZol7nP5o7ZUyYgTRZyY3yjOYQps/UVjB7I
 5EeA==
X-Gm-Message-State: ACgBeo2GKdNiBxgpmEIvCaF2muOz2tRRZqhOmZ7QdgWq71IOlqNTwoEl
 H3FyBPpHsOAVJd8P2AZjX5VlBA==
X-Google-Smtp-Source: AA6agR5Tp2UH5b6yBEtluC99nXSOtSY8d2UdOmSm71wKoAXN8nhGrDfB/061D6hZq/diyYbOlV6SjA==
X-Received: by 2002:a17:907:9710:b0:731:67b1:dc3b with SMTP id
 jg16-20020a170907971000b0073167b1dc3bmr1682690ejc.709.1660824024686; 
 Thu, 18 Aug 2022 05:00:24 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 n22-20020aa7d056000000b0043bbf79b3ebsm1036238edo.54.2022.08.18.05.00.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Aug 2022 05:00:24 -0700 (PDT)
Message-ID: <46deef15-a67b-91ad-bc47-1b1306d1d654@blackwall.org>
Date: Thu, 18 Aug 2022 15:00:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
 <94ec6182-0804-7a0e-dcba-42655ff19884@blackwall.org>
 <CAMWRUK4Mo2KHfa-6Z4Ka+ZLx8TtmzSvq9CLmMmEwE5S7Yp7-Kw@mail.gmail.com>
 <34228958-081d-52b5-f363-d2df6ecf251d@blackwall.org>
 <CAMWRUK43+NG63J2YCiKijREjUg5zjii=_2knN6ZCL6PHMP3q8w@mail.gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <CAMWRUK43+NG63J2YCiKijREjUg5zjii=_2knN6ZCL6PHMP3q8w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: aroulin@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH RFC net-next 0/3] net: vlan: fix bridge binding
 behavior and add selftests
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

On 18/08/2022 14:50, Sevinj Aghayeva wrote:
> On Sun, Aug 14, 2022 at 3:38 AM Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>
>> On 12/08/2022 18:30, Sevinj Aghayeva wrote:
>>> On Wed, Aug 10, 2022 at 4:54 AM Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>>>
>>>> On 10/08/2022 06:11, Sevinj Aghayeva wrote:
>>>>> When bridge binding is enabled for a vlan interface, it is expected
>>>>> that the link state of the vlan interface will track the subset of the
>>>>> ports that are also members of the corresponding vlan, rather than
>>>>> that of all ports.
>>>>>
>>>>> Currently, this feature works as expected when a vlan interface is
>>>>> created with bridge binding enabled:
>>>>>
>>>>>   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>>>>>         bridge_binding on
>>>>>
>>>>> However, the feature does not work when a vlan interface is created
>>>>> with bridge binding disabled, and then enabled later:
>>>>>
>>>>>   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>>>>>         bridge_binding off
>>>>>   ip link set vlan10 type vlan bridge_binding on
>>>>>
>>>>> After these two commands, the link state of the vlan interface
>>>>> continues to track that of all ports, which is inconsistent and
>>>>> confusing to users. This series fixes this bug and introduces two
>>>>> tests for the valid behavior.
>>>>>
>>>>> Sevinj Aghayeva (3):
>>>>>   net: core: export call_netdevice_notifiers_info
>>>>>   net: 8021q: fix bridge binding behavior for vlan interfaces
>>>>>   selftests: net: tests for bridge binding behavior
>>>>>
>>>>>  include/linux/netdevice.h                     |   2 +
>>>>>  net/8021q/vlan.h                              |   2 +-
>>>>>  net/8021q/vlan_dev.c                          |  25 ++-
>>>>>  net/core/dev.c                                |   7 +-
>>>>>  tools/testing/selftests/net/Makefile          |   1 +
>>>>>  .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
>>>>>  6 files changed, 172 insertions(+), 8 deletions(-)
>>>>>  create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh
>>>>>
>>>>
>>>> Hi,
>>>> NETDEV_CHANGE event is already propagated when the vlan changes flags,
>>>> NETDEV_CHANGEUPPER is used when the devices' relationship changes not their flags.
>>>> The only problem you have to figure out is that the flag has changed. The fix itself
>>>> must be done within the bridge, not 8021q. You can figure it out based on current bridge
>>>> loose binding state and the vlan's changed state, again in the bridge's NETDEV_CHANGE
>>>> handler. Unfortunately the proper fix is much more involved and will need new
>>>> infra, you'll have to track the loose binding vlans in the bridge. To do that you should
>>>> add logic that reflects the current vlans' loose binding state *only* for vlans that also
>>>> exist in the bridge, the rest which are upper should be carrier off if they have the loose
>>>> binding flag set.
>>>>
>>>> Alternatively you can add a new NETDEV_ notifier (using something similar to struct netdev_notifier_pre_changeaddr_info)
>>>> and add link type-specific space (e.g. union of link type-specific structs) in the struct which will contain
>>>> what changed for 8021q and will be properly interpreted by the bridge. The downside is that we'll generate
>>>> 2 notifications when changing the loose binding flag, but on the bright side won't have to track anything
>>>> in the bridge, just handle the new notifier type. This might be the easiest path, the fix is still in
>>>> the bridge though, the 8021q module just needs to fill in the new struct and emit the notification on
>>>> any loose binding changes, the bridge must decide if it should process it (i.e. based on upper/lower
>>>> relationship). Such notifier can be also re-used by other link types to propagate link-type specific
>>>> changes.
>>
>> Hi,
>>
>>>
>>> Hi Nik,
>>>
>>> Can you please clarify the following?
>>>
>>> 1) should the new NETDEV_ notifier be about the vlan device and not
>>> the bridge? That is, should I handle it in br_device_event?
>>
>> Yes, it should be about the vlan device (i.e. the target device that changes its state).
> 
> Hi Nik,
> 
> I implemented this and tried to handle NETDEV_CHANGE_DETAILS in
> br_device_event, but there's a check there that performs early return
> if the device is not a bridge port:
> 
> https://github.com/torvalds/linux/blob/master/net/bridge/br.c#L55-L57
> 
> Should I add a new function before that check, e.g.
> br_vlan_device_event, and handle vlan device events there, similar to
> br_vlan_bridge_event? Or do you have a better idea?
> 
> Thanks
> 

Hi,
Handling all vlan device-related changes in br_vlan_device_event() sounds good to me.
Please add it to br_vlan.c.

Thanks,
 Nik


