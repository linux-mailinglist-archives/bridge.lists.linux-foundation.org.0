Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC1D58675C
	for <lists.bridge@lfdr.de>; Mon,  1 Aug 2022 12:25:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B058E82B08;
	Mon,  1 Aug 2022 10:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B058E82B08
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=fQs7W0id
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yig98akl0XlM; Mon,  1 Aug 2022 10:25:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C542F827FD;
	Mon,  1 Aug 2022 10:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C542F827FD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5ABE3C007D;
	Mon,  1 Aug 2022 10:25:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1F7ABC002D
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:48:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE2C9832DC
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE2C9832DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OboIwl_LZiYs for <bridge@lists.linux-foundation.org>;
 Sat, 30 Jul 2022 16:48:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0980831F1
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0980831F1
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 16:48:22 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id a13so8116514ljr.11
 for <bridge@lists.linux-foundation.org>; Sat, 30 Jul 2022 09:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lx39+48xs+QrEXdefGJWcbwB1k+hspd/NoATXGR9qyI=;
 b=fQs7W0idr3E+3WnRUded1LPamtZKuryRCbirEjzF53u4oNcwPnOdogFKZgwQ7qg6NG
 08QY1rjL0vxaz8VFy8CE02TvEcivR5iGGhpmWfSbsMaMbn0tHA0r/I0vRBPD7xbtpOeD
 m5vnXXrVFqdh2PhurvMneZKfdWKmpWQOzyj1WyHsKTW0sD2J418llMShs9bed0+AAKDY
 +UvBwo8knJjVWV37oijcua2rUkNyn2oH1yPaQ71142PJFx1gxdi6isXJ39btgaZNmalb
 ukdU/sqkwznO5Z6rYrXmFFYFqQgMxPxXI4ROSU7T1bogsUAWtIzQeEAJk5pciUyWs9po
 P2gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lx39+48xs+QrEXdefGJWcbwB1k+hspd/NoATXGR9qyI=;
 b=HFf4Uedk0amL06GBwesXfvBe0zCpLT1fi8+aNXrE+QO3S6Tx6TJXLs2Dvs98lp6T7+
 gqvqjPgvfK9SVnazmBGMTAbQAa/krHhmQ4v9jpUPHqb5oNzRwB8zB2giCqB/ESiCZ827
 xNnoKGr7kcChLQvqnQlxiuPoqQmVGWw5lE6Hy8mSsfkvKTE8Ug+Sri3ZAvxcKi4QLYP3
 5On7t9ui48q0OwMXN8ESalcUpq+bOybnvcZHde4uND045znTUeQMoeqCKcp8NXFPFfKi
 fMxr26ChvGrX1jJzRFv5rNEy9rGm+K0geGFvv43jh7VgcTX0R7Jdq+dv6oi60YtQn/FY
 BM8g==
X-Gm-Message-State: AJIora/H0XTUhvu4b4VNeIZTx3rhBfiQW8ul+Zct0UhTu4BEZCkB80Aq
 5bpvCssS+o9RrbfRgxHjyuUForKK+Kmlwz5DVH0=
X-Google-Smtp-Source: AGRyM1uxJfWKpElfwIL6riCm9sX5RNmGf0gGkj8UNsfyjTrNaQPaLedh+OzCpZA1RpZyiMSWISzNy0MexrEgDqGW3FM=
X-Received: by 2002:a05:651c:b23:b0:25e:e2d:9e40 with SMTP id
 b35-20020a05651c0b2300b0025e0e2d9e40mr2917219ljr.38.1659199700406; Sat, 30
 Jul 2022 09:48:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1659195179.git.sevinj.aghayeva@gmail.com>
 <f7ede054-f0b3-558a-091f-04b4f7139564@blackwall.org>
 <CAMWRUK5j4UAwjw4UGN=SVbbDbut0zWg5e03wupAXCPwT8K8zzQ@mail.gmail.com>
In-Reply-To: <CAMWRUK5j4UAwjw4UGN=SVbbDbut0zWg5e03wupAXCPwT8K8zzQ@mail.gmail.com>
From: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>
Date: Sat, 30 Jul 2022 12:48:08 -0400
Message-ID: <CAMWRUK5TZ5iZWZJO7Bbn-b43ZbT7mRzUDr4LdseLCne8qvG6pw@mail.gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 01 Aug 2022 10:25:24 +0000
Cc: aroulin@nvidia.com, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, Eric Dumazet <edumazet@google.com>, roopa@nvidia.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 0/3] net: vlan: fix bridge binding
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

(Resending this because the first email was rejected due to being in HTML.)


On Sat, Jul 30, 2022 at 12:46 PM Sevinj Aghayeva
<sevinj.aghayeva@gmail.com> wrote:
>
>
>
> On Sat, Jul 30, 2022 at 12:22 PM Nikolay Aleksandrov <razor@blackwall.org> wrote:
>>
>> On 7/30/22 19:03, Sevinj Aghayeva wrote:
>> > When bridge binding is enabled for a vlan interface, it is expected
>> > that the link state of the vlan interface will track the subset of the
>> > ports that are also members of the corresponding vlan, rather than
>> > that of all ports.
>> >
>> > Currently, this feature works as expected when a vlan interface is
>> > created with bridge binding enabled:
>> >
>> >    ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>> >          bridge_binding on
>> >
>> > However, the feature does not work when a vlan interface is created
>> > with bridge binding disabled, and then enabled later:
>> >
>> >    ip link add link br name vlan10 type vlan id 10 protocol 802.1q \
>> >          bridge_binding off
>> >    ip link set vlan10 type vlan bridge_binding on
>> >
>> > After these two commands, the link state of the vlan interface
>> > continues to track that of all ports, which is inconsistent and
>> > confusing to users. This series fixes this bug and introduces two
>> > tests for the valid behavior.
>> >
>> > Sevinj Aghayeva (3):
>> >    net: bridge: export br_vlan_upper_change
>> >    net: 8021q: fix bridge binding behavior for vlan interfaces
>> >    selftests: net: tests for bridge binding behavior
>> >
>> >   include/linux/if_bridge.h                     |   9 ++
>> >   net/8021q/vlan.h                              |   2 +-
>> >   net/8021q/vlan_dev.c                          |  21 ++-
>> >   net/bridge/br_vlan.c                          |   7 +-
>> >   tools/testing/selftests/net/Makefile          |   1 +
>> >   .../selftests/net/bridge_vlan_binding_test.sh | 143 ++++++++++++++++++
>> >   6 files changed, 176 insertions(+), 7 deletions(-)
>> >   create mode 100755 tools/testing/selftests/net/bridge_vlan_binding_test.sh
>> >
>>
>> Hmm.. I don't like this and don't think this bridge function should be
>> exported at all.
>>
>> Calling bridge state changing functions from 8021q module is not the
>> proper way to solve this. The problem is that the bridge doesn't know
>> that the state has changed, so you can process NETDEV_CHANGE events and
>> check for the bridge vlan which got its state changed and react based on
>> it. I haven't checked in detail, but I think it should be doable. So all
>> the logic is kept inside the bridge.
>
>
> Hi Nik,
>
> Can please elaborate on where I should process NETDEV_CHANGE events? I'm doing this as part of outreachy project and this is my first kernel task, so I don't know the bridging code that well.
>
> Thanks!
>
>>
>>
>> Cheers,
>>   Nik
>
>
>
> --
>
> Sevinj.Aghayeva



-- 

Sevinj.Aghayeva
