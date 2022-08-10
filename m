Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA3358EEC6
	for <lists.bridge@lfdr.de>; Wed, 10 Aug 2022 16:50:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20E3C6104C;
	Wed, 10 Aug 2022 14:50:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20E3C6104C
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=MuyQbiTU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hUOhcOc0wG5n; Wed, 10 Aug 2022 14:50:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 88A7D61044;
	Wed, 10 Aug 2022 14:50:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88A7D61044
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1C6CEC007B;
	Wed, 10 Aug 2022 14:50:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 300B5C002D
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 14:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12771416BA
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 14:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12771416BA
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=MuyQbiTU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UqnlsGahSwYB for <bridge@lists.linux-foundation.org>;
 Wed, 10 Aug 2022 14:50:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99093410DC
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99093410DC
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 14:50:38 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id r4so19375207edi.8
 for <bridge@lists.linux-foundation.org>; Wed, 10 Aug 2022 07:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=r4FpLYfUs7tX4DLeiy0sj/1t8j21OoA6g793iTCGiF8=;
 b=MuyQbiTUTET9fzrBqJrVL6Ql0nSXUtWfMkTeV0mBDzSdpEipm6LSkDAk2TRRbHhcFY
 wVXtGIvSLp1zX+ayyhX9X9Vs+G2gYlKwvu7a0380tbAKcuP1OMT0qzWuHj78nZ6s+5MV
 t7/FErcC+guIKzh+XsumAfNKFOBs5o98HzCcm86P6Pb7sPlqjHuwEAFyORUJ/mWGU2Q4
 tMlLXdYAJp+1RoMLB7y3vb09dzb4EQ8j1WhNkiMxxY35xsjpbBAxJEJn1GI8y/2KAxrJ
 1lmT/LXOZ1+yOgsNG4F02V5uDcBUPxy4GJFG4mXV4sXABfGskmeZY1ccjVG3XET/SiJP
 TJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=r4FpLYfUs7tX4DLeiy0sj/1t8j21OoA6g793iTCGiF8=;
 b=fCAUtHNK1tx++A5bccNoMRxcbLKhqjsu5rYxrq8NUm1KD2xk1Ac8sTk6I3siIHfEO0
 B7Bdzah5JY3HyEORCY/OPAHTfqcEOWhSUcrPk64KUhO9iLayrry7MK7ZUv+H78UTUl3C
 7PCR2s3MUdRqZNXKZDJAybNSt9En0djakdJxDI80bFdiUeMNZiwQgjeLq5VqJnTn1Lw8
 4Ifu4yARqjCoAN7S442foEheYJEzvjgcph3Zp+d6yyvZR1Rz8SS7xJBYGJfStfjjMj7y
 0nmHar7umbnvy0hsla+Bg7jpqEN0Zchj/uok8xswyeV7/U9Ut9SW/yN6E7Ok/rpk+zyz
 1GWQ==
X-Gm-Message-State: ACgBeo1XG2kdQvvozl/LI+66vJGhoG3AOOJ1eX3hHulshtj13mAuYywU
 exFBq8V8TEFQKtoJgdyQWjksnw==
X-Google-Smtp-Source: AA6agR56aM67PHK/+ONTl8BroEWue4HRkKqPBqbKMvQMV90VH3pqrryFs0RWIE536XgLpzL4WCoa1A==
X-Received: by 2002:a05:6402:43c4:b0:43b:c5eb:c9dd with SMTP id
 p4-20020a05640243c400b0043bc5ebc9ddmr26620352edc.402.1660143036615; 
 Wed, 10 Aug 2022 07:50:36 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 x7-20020a170906440700b00730cc173c6asm2369268ejo.43.2022.08.10.07.50.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Aug 2022 07:50:36 -0700 (PDT)
Message-ID: <49f933c3-7430-a133-9add-ed76c395023b@blackwall.org>
Date: Wed, 10 Aug 2022 17:50:34 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
References: <cover.1660100506.git.sevinj.aghayeva@gmail.com>
 <94ec6182-0804-7a0e-dcba-42655ff19884@blackwall.org>
 <CAMWRUK45nbZS3PeSLR1X=Ko6oavrjKj2AWeh2F1wckMPrz_dEg@mail.gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <CAMWRUK45nbZS3PeSLR1X=Ko6oavrjKj2AWeh2F1wckMPrz_dEg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

On 10/08/2022 17:42, Sevinj Aghayeva wrote:
> 
> 
> On Wed, Aug 10, 2022 at 4:54 AM Nikolay Aleksandrov <razor@blackwall.org <mailto:razor@blackwall.org>> wrote:
> 
>     On 10/08/2022 06:11, Sevinj Aghayeva wrote:
>     > When bridge binding is enabled for a vlan interface, it is expected
>     > that the link state of the vlan interface will track the subset of the
>     > ports that are also members of the corresponding vlan, rather than
>     > that of all ports.
>     >
>     > Currently, this feature works as expected when a vlan interface is
>     > created with bridge binding enabled:
>     >
>     >   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>     >         bridge_binding on
>     >
>     > However, the feature does not work when a vlan interface is created
>     > with bridge binding disabled, and then enabled later:
>     >
>     >   ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>     >         bridge_binding off
>     >   ip link set vlan10 type vlan bridge_binding on
>     >
>     > After these two commands, the link state of the vlan interface
>     > continues to track that of all ports, which is inconsistent and
>     > confusing to users. This series fixes this bug and introduces two
>     > tests for the valid behavior.
>     >
>     > Sevinj Aghayeva (3):
>     >   net: core: export call_netdevice_notifiers_info
>     >   net: 8021q: fix bridge binding behavior for vlan interfaces
>     >   selftests: net: tests for bridge binding behavior
>     >
>     >  include/linux/netdevice.h                     |   2 +
>     >  net/8021q/vlan.h                              |   2 +-
>     >  net/8021q/vlan_dev.c                          |  25 ++-
>     >  net/core/dev.c                                |   7 +-
>     >  tools/testing/selftests/net/Makefile          |   1 +
>     >  .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
>     >  6 files changed, 172 insertions(+), 8 deletions(-)
>     >  create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh
>     >
> 
>     Hi,
>     NETDEV_CHANGE event is already propagated when the vlan changes flags,
> 
> 
> I'm not sure if NETDEV_CHANGE is actually propagated when the vlan changes flags. The two functions in the bridge module that handle NETDEV_CHANGE are br_vlan_port_event  and br_vlan_bridge_event. I've installed probes for both, and when I'm changing flags using "sudo ip link set vlan10 type vlan bridge_binding on", I don't see any of those functions getting called, although I do see vlan_dev_change_flags getting called. I think there may be a bug in core/dev.c:__dev_notify_flags.

are both vlan and bridge interfaces up?
what exactly are you probing for?

I can see the NETDEV_CHANGE event go through when changing the loose binding.




