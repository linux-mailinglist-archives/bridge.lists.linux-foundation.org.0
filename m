Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C7458E918
	for <lists.bridge@lfdr.de>; Wed, 10 Aug 2022 10:54:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBE2A4092D;
	Wed, 10 Aug 2022 08:54:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBE2A4092D
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=lJGO5Vxi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dc1fajkIeSYP; Wed, 10 Aug 2022 08:54:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id F18164092E;
	Wed, 10 Aug 2022 08:54:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F18164092E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 88EDEC007B;
	Wed, 10 Aug 2022 08:54:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 085CEC002D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 08:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C9CD34010D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 08:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9CD34010D
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=lJGO5Vxi
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ltDzInkBzDb0 for <bridge@lists.linux-foundation.org>;
 Wed, 10 Aug 2022 08:54:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2A3C400CB
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2A3C400CB
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 08:54:23 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 p12-20020a7bcc8c000000b003a5360f218fso656641wma.3
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 01:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=OxCbcCWGfon4bvlq9gWd6W8FYVADnZR0/olFVEKpB04=;
 b=lJGO5Vxidp/ZjUm/SaGCGiFCBGj5kSEZm8zQT0epBTT1vBvjDBVON472HQ2jlRB7P8
 zNzScp6uwd7StEBcbixPUFMEUFO42l0/k6u2FvdefI7AVw35XAIhWS2sD5FCeUJWXa6j
 rXO9E/TODHxyWj7urvnBizUcYcOoKtsdvRo9WSdoprqPF9ZPbdM7qA7y6a+ulHRkXN8S
 ykbhEZUkA+4O8yWNk8ZSDzE6Do7n+nYV0UnM7qvB8OFzw02CilTrMRZyadjOuRsSBBls
 P1ruKkNrHCbDezvKV7H1A+vHiJ46ioxYvvuZtqd/l3q9xXA9+7Tp7qgRdxPa+raz8X1g
 r9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=OxCbcCWGfon4bvlq9gWd6W8FYVADnZR0/olFVEKpB04=;
 b=6+ZkH9D3ecu8gHYRFibxawBIeTp7Zuf+/1nGhcNUlQZS6kA1MuAciJg6vRALRmLwL9
 /D/HcPZfEQSn+08GQBZwqc8SdcAnkPdgMHFqE48P2o4S6Uxf0DUpFd7fg2dzNURozsmF
 uMHPQ84IwZWeHiu3nbkhsadJ7EWQ3yxFgY6EcnGI/e32daHA2WPpim0Lezkzp5m0rNrQ
 /lAaJbtPAoROsxQLkCJ8dinVsLCltEO2rSVSVxhLlxBWvAcRFNLqs/LWN/9VLaXq121i
 gZvnj0xm77W52tlm3egO13AmLzG+atBmw5uk7NNE1eDUqrVG6jRbYYDFCtor7ubDEMcl
 C0Bg==
X-Gm-Message-State: ACgBeo2pA6KR47YQc9a9zxOAkYyik2IlP1ypiQXAKdI6JIofsSd+yajz
 0E02KbyZVe8rMUsFmGNyL8v+CQ==
X-Google-Smtp-Source: AA6agR57vle/oX1Qxyyj3wAZXXMuDCFMj1bScTi5b4IUuxVBxafpO7JkfdKPBQO+EFTHfxbAmzQLug==
X-Received: by 2002:a05:600c:4fcf:b0:3a3:40f6:4c4d with SMTP id
 o15-20020a05600c4fcf00b003a340f64c4dmr1587491wmq.60.1660121661833; 
 Wed, 10 Aug 2022 01:54:21 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 p13-20020a05600c358d00b003a4c6e67f01sm1607396wmq.6.2022.08.10.01.54.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Aug 2022 01:54:21 -0700 (PDT)
Message-ID: <94ec6182-0804-7a0e-dcba-42655ff19884@blackwall.org>
Date: Wed, 10 Aug 2022 11:54:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, netdev@vger.kernel.org
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: aroulin@nvidia.com, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, sbrivio@redhat.com,
 Eric Dumazet <edumazet@google.com>, roopa@nvidia.com,
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

On 10/08/2022 06:11, Sevinj Aghayeva wrote:
> When bridge binding is enabled for a vlan interface, it is expected
> that the link state of the vlan interface will track the subset of the
> ports that are also members of the corresponding vlan, rather than
> that of all ports.
> 
> Currently, this feature works as expected when a vlan interface is
> created with bridge binding enabled:
> 
>   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>         bridge_binding on
> 
> However, the feature does not work when a vlan interface is created
> with bridge binding disabled, and then enabled later:
> 
>   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>         bridge_binding off
>   ip link set vlan10 type vlan bridge_binding on
> 
> After these two commands, the link state of the vlan interface
> continues to track that of all ports, which is inconsistent and
> confusing to users. This series fixes this bug and introduces two
> tests for the valid behavior.
> 
> Sevinj Aghayeva (3):
>   net: core: export call_netdevice_notifiers_info
>   net: 8021q: fix bridge binding behavior for vlan interfaces
>   selftests: net: tests for bridge binding behavior
> 
>  include/linux/netdevice.h                     |   2 +
>  net/8021q/vlan.h                              |   2 +-
>  net/8021q/vlan_dev.c                          |  25 ++-
>  net/core/dev.c                                |   7 +-
>  tools/testing/selftests/net/Makefile          |   1 +
>  .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
>  6 files changed, 172 insertions(+), 8 deletions(-)
>  create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh
> 

Hi,
NETDEV_CHANGE event is already propagated when the vlan changes flags, 
NETDEV_CHANGEUPPER is used when the devices' relationship changes not their flags.
The only problem you have to figure out is that the flag has changed. The fix itself
must be done within the bridge, not 8021q. You can figure it out based on current bridge
loose binding state and the vlan's changed state, again in the bridge's NETDEV_CHANGE
handler. Unfortunately the proper fix is much more involved and will need new
infra, you'll have to track the loose binding vlans in the bridge. To do that you should
add logic that reflects the current vlans' loose binding state *only* for vlans that also
exist in the bridge, the rest which are upper should be carrier off if they have the loose
binding flag set.

Alternatively you can add a new NETDEV_ notifier (using something similar to struct netdev_notifier_pre_changeaddr_info)
and add link type-specific space (e.g. union of link type-specific structs) in the struct which will contain
what changed for 8021q and will be properly interpreted by the bridge. The downside is that we'll generate
2 notifications when changing the loose binding flag, but on the bright side won't have to track anything
in the bridge, just handle the new notifier type. This might be the easiest path, the fix is still in
the bridge though, the 8021q module just needs to fill in the new struct and emit the notification on
any loose binding changes, the bridge must decide if it should process it (i.e. based on upper/lower
relationship). Such notifier can be also re-used by other link types to propagate link-type specific
changes.

Both of these avoid any direct dependencies between the bridge and 8021q. Any other suggestions that
are simpler, avoid direct dependencies and solve the issue in a generic way would be appreciated.

Just be careful about introducing too much unnecessary processing because we
can have lots of vlan devices in a system.

Cheers,
 Nik
