Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B1958EF02
	for <lists.bridge@lfdr.de>; Wed, 10 Aug 2022 17:10:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F25941770;
	Wed, 10 Aug 2022 15:10:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F25941770
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=kDqaOrUd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGBMrX-Vy4Qh; Wed, 10 Aug 2022 15:10:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5B5494175B;
	Wed, 10 Aug 2022 15:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B5494175B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 00961C007B;
	Wed, 10 Aug 2022 15:10:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F1D7C002D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 15:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14B2F4175B
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 15:10:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14B2F4175B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rifgAvFbXXc1 for <bridge@lists.linux-foundation.org>;
 Wed, 10 Aug 2022 15:10:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28490410DC
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28490410DC
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 15:10:44 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id uj29so28385924ejc.0
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 08:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=QvWgi4bapgJrNQFkQQ/ZI8kSbG7GnXbksaof+b0rmLc=;
 b=kDqaOrUd0p917w2v+d7X2KGqQbhozVosVzex2g0KecOPP4HWnCyfpVycR36/m83PkC
 r/hVZZMqfEpfB7mKxkEPtcyPiqS1KgwmZdOduWmZgbmbXoFP0xMdRxrP2+IRLOL+gj+G
 a/bob2EBbCfku/BjYYbmzh4nD1gUsYEhfM6st88Co6+JheB1J5myX7YsP+kxmieOtbH0
 uXjeJ34pA12v4Ap3fRnc/M+VHnE8FQTkIIw+3vQwguJFVxBiSvfTZpJFZ3r48T8VlXhr
 UxMW5Kw+ZDGmbp9LSMUOBGDLTLxf/D6w/gHE1XFb728KVwkDCNQ2f5LasZ+e5dPa9vZi
 acow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=QvWgi4bapgJrNQFkQQ/ZI8kSbG7GnXbksaof+b0rmLc=;
 b=P6WqFtb72+GGgLrfquCNmkcsoQYTKrU8+btn8kiXe+h0jip0HzOlUdWAsufriy9xGu
 gFbSbBbJplLTixq37ukGkI8nWialdtL/40aruWsOeZto44ZI5P6jWTNpYiVhS+b6fyPg
 JbHrNAch+p6WGZ45mmn9L9QVNDW/XBmC9h0bnX/FuaYppp/CiLYR0AVrwoYKCOkkiieN
 WwYfAFRj7d3wv2B8MANzeB8kdvJMftpr8803TpJbivJsZcvWPns0DIxgJL9mJ7LvLWUJ
 oMi6bo1umU4tUwRWYmT5AsNaXbdx2xwjxPSuW77efA8h8ZiTkUpnH6MvBhfq/a0VogOu
 Q1Aw==
X-Gm-Message-State: ACgBeo0QwgFu1GaDR9C7fRegG7u3T2co5KfXQBUovevevI0rf2P0MhYn
 2Jt1RWQFK0qtwkGrHuSDzp9qWQ==
X-Google-Smtp-Source: AA6agR6Aze/QbsmhHuigbbQINd3adGnoFr4Q79ghohdECe7s8FeuljsSPzsyr2Iapj6rrFDG5/vvkA==
X-Received: by 2002:a17:907:8687:b0:730:7c7b:b9ce with SMTP id
 qa7-20020a170907868700b007307c7bb9cemr20093525ejc.656.1660144242092; 
 Wed, 10 Aug 2022 08:10:42 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 ku19-20020a170907789300b00730b5a35288sm2368814ejc.214.2022.08.10.08.10.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Aug 2022 08:10:41 -0700 (PDT)
Message-ID: <74b69521-0d40-5e2f-4d1b-76e9697d7471@blackwall.org>
Date: Wed, 10 Aug 2022 18:10:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
 <94ec6182-0804-7a0e-dcba-42655ff19884@blackwall.org>
 <CAMWRUK45nbZS3PeSLR1X=Ko6oavrjKj2AWeh2F1wckMPrz_dEg@mail.gmail.com>
 <49f933c3-7430-a133-9add-ed76c395023b@blackwall.org>
 <CAMWRUK4J6Dp7Cff=pN9iw6OwDN8g61dd4S=OVKQ75vBch-PxXQ@mail.gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <CAMWRUK4J6Dp7Cff=pN9iw6OwDN8g61dd4S=OVKQ75vBch-PxXQ@mail.gmail.com>
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

On 10/08/2022 18:00, Sevinj Aghayeva wrote:
> On Wed, Aug 10, 2022 at 10:50 AM Nikolay Aleksandrov
> <razor@blackwall.org> wrote:
>>
>> On 10/08/2022 17:42, Sevinj Aghayeva wrote:
>>>
>>>
>>> On Wed, Aug 10, 2022 at 4:54 AM Nikolay Aleksandrov <razor@blackwall.org <mailto:razor@blackwall.org>> wrote:
>>>
>>>     On 10/08/2022 06:11, Sevinj Aghayeva wrote:
>>>     > When bridge binding is enabled for a vlan interface, it is expected
>>>     > that the link state of the vlan interface will track the subset of the
>>>     > ports that are also members of the corresponding vlan, rather than
>>>     > that of all ports.
>>>     >
>>>     > Currently, this feature works as expected when a vlan interface is
>>>     > created with bridge binding enabled:
>>>     >
>>>     >   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>>>     >         bridge_binding on
>>>     >
>>>     > However, the feature does not work when a vlan interface is created
>>>     > with bridge binding disabled, and then enabled later:
>>>     >
>>>     >   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>>>     >         bridge_binding off
>>>     >   ip link set vlan10 type vlan bridge_binding on
>>>     >
>>>     > After these two commands, the link state of the vlan interface
>>>     > continues to track that of all ports, which is inconsistent and
>>>     > confusing to users. This series fixes this bug and introduces two
>>>     > tests for the valid behavior.
>>>     >
>>>     > Sevinj Aghayeva (3):
>>>     >   net: core: export call_netdevice_notifiers_info
>>>     >   net: 8021q: fix bridge binding behavior for vlan interfaces
>>>     >   selftests: net: tests for bridge binding behavior
>>>     >
>>>     >  include/linux/netdevice.h                     |   2 +
>>>     >  net/8021q/vlan.h                              |   2 +-
>>>     >  net/8021q/vlan_dev.c                          |  25 ++-
>>>     >  net/core/dev.c                                |   7 +-
>>>     >  tools/testing/selftests/net/Makefile          |   1 +
>>>     >  .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
>>>     >  6 files changed, 172 insertions(+), 8 deletions(-)
>>>     >  create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh
>>>     >
>>>
>>>     Hi,
>>>     NETDEV_CHANGE event is already propagated when the vlan changes flags,
>>>
>>>
>>> I'm not sure if NETDEV_CHANGE is actually propagated when the vlan changes flags. The two functions in the bridge module that handle NETDEV_CHANGE are br_vlan_port_event  and br_vlan_bridge_event. I've installed probes for both, and when I'm changing flags using "sudo ip link set vlan10 type vlan bridge_binding on", I don't see any of those functions getting called, although I do see vlan_dev_change_flags getting called. I think there may be a bug in core/dev.c:__dev_notify_flags.
>>
>> are both vlan and bridge interfaces up?
>> what exactly are you probing for?
> 
> 
> I first run the attached pre.sh script that sets up the environment
> and creates a vlan interface with bridge binding off. I then start
> recording with perf, and here's the list of probes:
> 
> $ sudo ./k/linux/tools/perf/perf probe -l
>   probe:br_vlan_bridge_event (on br_vlan_bridge_event in bridge with event dev)
>   probe:br_vlan_port_event (on br_vlan_port_event in bridge with event)
>   probe:br_vlan_set_vlan_dev_state (on br_vlan_set_vlan_dev_state in
> bridge with br vlan_dev)
>   probe:register_vlan_dev (on register_vlan_dev in 8021q with dev)
>   probe:vlan_changelink (on vlan_changelink in 8021q with dev)
>   probe:vlan_dev_change_flags (on vlan_dev_change_flags in 8021q with dev)
>   probe:vlan_dev_fix_features (on vlan_dev_fix_features in 8021q with dev)
>   probe:vlan_dev_init  (on vlan_dev_init in 8021q with dev)
>   probe:vlan_dev_ioctl (on vlan_dev_ioctl in 8021q with dev)
>   probe:vlan_dev_open  (on vlan_dev_open in 8021q with dev)
>   probe:vlan_dev_stop  (on vlan_dev_stop in 8021q with dev)
>   probe:vlan_dev_uninit (on vlan_dev_uninit in 8021q with dev)
>   probe:vlan_newlink   (on vlan_newlink in 8021q with dev)
> 
> I then run the following command to turn the bridge binding flag on:
> 
> $ sudo ip link set vlan10 type vlan bridge_binding on
> 
> Then I stop the recording and print out the events, and I see this. I
> don't see br_vlan_port_event or br_vlan_bridge_event getting called.
> 
>               ip  5933 [003]  2204.722470:
> probe:vlan_changelink: (ffffffffc1042b50) dev="vlan10"
>               ip  5933 [003]  2204.722476:
> probe:vlan_dev_change_flags: (ffffffffc1042600) dev="vlan10"
> 
> Am I doing something wrong?
> 
> Thanks
> 
> 

You can't expect to see br_vlan_bridge_event() called because the notification
target device is vlan10 and not the bridge. See br_device_event():
...
        if (netif_is_bridge_master(dev)) {
                err = br_vlan_bridge_event(dev, event, ptr);
                if (err)
                        return notifier_from_errno(err);
...


Try probing for br_device_event(), you'll see it gets called every time you change the flag.

