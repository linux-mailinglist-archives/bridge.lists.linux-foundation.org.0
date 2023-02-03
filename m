Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1FF6892FC
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 10:02:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8655A401D5;
	Fri,  3 Feb 2023 09:02:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8655A401D5
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=Bvy2tDpD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GcmUW9EH2fe0; Fri,  3 Feb 2023 09:02:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1D1B741058;
	Fri,  3 Feb 2023 09:02:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D1B741058
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA399C002B;
	Fri,  3 Feb 2023 09:02:16 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A10D0C0080
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 09:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F8F360E84
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 09:02:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F8F360E84
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Bvy2tDpD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bn3BT-qJo4co for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 09:02:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B051A600BB
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B051A600BB
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 09:02:14 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id m2so13448125ejb.8
 for <bridge@lists.linux-foundation.org>; Fri, 03 Feb 2023 01:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5MQHO8EKwJIsLFg/g3UDWTz/OV1D9yhCMi3EQYhYwsY=;
 b=Bvy2tDpDM7BPHd0pjF/vFeJDhNGndCGkHd2Ms3/ge60h+Jkj90CVosOIR4WCV2+AV8
 gA0F+UI+2mOJKmrSsm/Y6KHNR6j+EXIlsscMk3FMbkNvqBmjKfu+na/NgO2JVKQ5CwmF
 QZYepNxfiJQc2cD9lVLHRTHvFMU5e8tOvwcdDnii+VqTxVy4geLUNir3DvvcpNZ/gclz
 5oOKFAsAmByvg1EoEZ8fvZZWX3y9QSEE+HMLL76feba8p2S8Q0smk6M+TqdoGFYB0MzX
 fCD9+oqapEmkl+0/Jm/GhSTFXgRZ6m5WyQqXTxuqbgUhMt2xQaOvMzejArkmGfiaoZVj
 zAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5MQHO8EKwJIsLFg/g3UDWTz/OV1D9yhCMi3EQYhYwsY=;
 b=UBWe0FK7QK/QL6Qtf6uHDDOOHuxzpWGIn0rJbBvwOwkdV2gopBAuqDi5O8zJ/ARDEh
 cOd/2WjotJ5LTgjPF9R30gJn/6UdVfubV1FEkYTC9Ott8H3UrTcy5FqCCmtQyJtuPm6S
 5I0rPqIjFGvjnsXv+pgeknW2gwARuJKgRKf+rGh1iMPMpy/18Lf+qJQtP/Q8pphAPxfi
 B12ogTadJCBUkUXMZy+xcO8VSLrPgaJdORrkJ+s4kbGsEIzzYraP07OhcMh5ElQKGdEf
 rT8gCPlZBA5p9VVHMdL8A/OfWVuK1ys8/s3xIX+J8argvMbxel/4OCQaqP9YSy7I9Frw
 ZseA==
X-Gm-Message-State: AO0yUKUS6vYfIB4433vDSFtKQxzqMpmpBkx6aiBRBu/epUpjBQNa3kfB
 g4A+8mANdv+AtR4GavfY1oIPcg==
X-Google-Smtp-Source: AK7set8i9W1eVLgP1NwUzguoUoDCmMC0ppgYX5yfRdFSp2qI0Y808uExcngzQO/WTFmbsRZvzsaJgA==
X-Received: by 2002:a17:906:e20a:b0:878:6da5:bf75 with SMTP id
 gf10-20020a170906e20a00b008786da5bf75mr9035312ejb.35.1675414932851; 
 Fri, 03 Feb 2023 01:02:12 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 t4-20020a170906268400b0087bda70d3efsm1065754ejc.118.2023.02.03.01.02.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Feb 2023 01:02:12 -0800 (PST)
Message-ID: <6a8a5a6f-a5f2-976d-e747-362e44222a1d@blackwall.org>
Date: Fri, 3 Feb 2023 11:02:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1675359453.git.petrm@nvidia.com>
 <ad5b9a4a971f7a38951cb8475ca3c9a16057b0fd.1675359453.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ad5b9a4a971f7a38951cb8475ca3c9a16057b0fd.1675359453.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next v3 08/16] net: bridge: Add netlink
 knobs for number / maximum MDB entries
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

On 02/02/2023 19:59, Petr Machata wrote:
> The previous patch added accounting for number of MDB entries per port and
> per port-VLAN, and the logic to verify that these values stay within
> configured bounds. However it didn't provide means to actually configure
> those bounds or read the occupancy. This patch does that.
> 
> Two new netlink attributes are added for the MDB occupancy:
> IFLA_BRPORT_MCAST_N_GROUPS for the per-port occupancy and
> BRIDGE_VLANDB_ENTRY_MCAST_N_GROUPS for the per-port-VLAN occupancy.
> And another two for the maximum number of MDB entries:
> IFLA_BRPORT_MCAST_MAX_GROUPS for the per-port maximum, and
> BRIDGE_VLANDB_ENTRY_MCAST_MAX_GROUPS for the per-port-VLAN one.
> 
> Note that the two new IFLA_BRPORT_ attributes prompt bumping of
> RTNL_SLAVE_MAX_TYPE to size the slave attribute tables large enough.
> 
> The new attributes are used like this:
> 
>  # ip link add name br up type bridge vlan_filtering 1 mcast_snooping 1 \
>                                       mcast_vlan_snooping 1 mcast_querier 1
>  # ip link set dev v1 master br
>  # bridge vlan add dev v1 vid 2
> 
>  # bridge vlan set dev v1 vid 1 mcast_max_groups 1
>  # bridge mdb add dev br port v1 grp 230.1.2.3 temp vid 1
>  # bridge mdb add dev br port v1 grp 230.1.2.4 temp vid 1
>  Error: bridge: Port-VLAN is already in 1 groups, and mcast_max_groups=1.
> 
>  # bridge link set dev v1 mcast_max_groups 1
>  # bridge mdb add dev br port v1 grp 230.1.2.3 temp vid 2
>  Error: bridge: Port is already in 1 groups, and mcast_max_groups=1.
> 
>  # bridge -d link show
>  5: v1@v2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 master br [...]
>      [...] mcast_n_groups 1 mcast_max_groups 1
> 
>  # bridge -d vlan show
>  port              vlan-id
>  br                1 PVID Egress Untagged
>                      state forwarding mcast_router 1
>  v1                1 PVID Egress Untagged
>                      [...] mcast_n_groups 1 mcast_max_groups 1
>                    2
>                      [...] mcast_n_groups 0 mcast_max_groups 0
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
> 
> Notes:
>     v3:
>     - Move the br_multicast_port_ctx_vlan_disabled() check
>       out to the _vlan_ helpers callers. Thus these helpers
>       cannot fail, which makes them very similar to the
>       _port_ helpers. Have them take the MC context directly
>       and unify them.
>     
>     v2:
>     - Drop locks around accesses in
>       br_multicast_{port,vlan}_ngroups_{get,set_max}(),
>     - Drop bounces due to max<n in
>       br_multicast_{port,vlan}_ngroups_set_max().
> 
>  include/uapi/linux/if_bridge.h |  2 ++
>  include/uapi/linux/if_link.h   |  2 ++
>  net/bridge/br_multicast.c      | 15 +++++++++++++++
>  net/bridge/br_netlink.c        | 17 ++++++++++++++++-
>  net/bridge/br_private.h        |  6 +++++-
>  net/bridge/br_vlan.c           | 11 +++++++----
>  net/bridge/br_vlan_options.c   | 27 ++++++++++++++++++++++++++-
>  net/core/rtnetlink.c           |  2 +-
>  8 files changed, 74 insertions(+), 8 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


