Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4548F6B93AC
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 13:24:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9123E81E0D;
	Tue, 14 Mar 2023 12:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9123E81E0D
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=QT6d/8fs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T2wijj4q2SW2; Tue, 14 Mar 2023 12:24:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D8F1881E0E;
	Tue, 14 Mar 2023 12:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8F1881E0E
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 77658C008A;
	Tue, 14 Mar 2023 12:24:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 433A2C0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FBD0403C7
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FBD0403C7
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=QT6d/8fs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SZ9OzRZQu5_j for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 12:24:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2C95400B8
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2C95400B8
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 12:24:32 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id j2so14143828wrh.9
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 05:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678796671;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yes7QEaOi79y6U8Z5dhSkT9SxmbIBFirhjY5n/2F+XM=;
 b=QT6d/8fsy65eJA1Yf4vpCTO36EWCWaDL2H1NFl0C1cJVlMDBafH5itEV4D0aLg0uVJ
 fHzId/68SRkeRveCrIUeNcYWMLGqSusyfJO/Kjv+swe9/ahi5es68FtzugfEhDWB6RNS
 ihou2CKBrXQxRXcHQk3wlAFIWcxu4xrEiKN+AWYFnHffP1X5V2pZpolWyfDWbiO6HKx/
 6KjNU53i/257nsZbV6PBfoIyOZcfjXn/mqI6eUoY6TVMwCzj3cqrhpdromCmVV8ND6on
 KuiaDr1V/xULLa+Q3xhT4+vRVSMDPkTDHjeVqiN+nfoA/H07zRKs/YW5y+F0xQuaefZ0
 t6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678796671;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yes7QEaOi79y6U8Z5dhSkT9SxmbIBFirhjY5n/2F+XM=;
 b=SHQkcWIg2T7/ukHvlZk11GwrFJbYq7oh1TNDp91LmrOyh2euS94YHbPH2sdOHkFhyK
 B//JJvwMAV//pztHYqlqkCAR7wTyUsqTz20lKVqXYDReoie2uAD2w+YInIfJIxZcyUvV
 fhW06mkueXvgxK4tkS9sBdWjLKlZ/VQtUq7kBVtQoMHqxrFcJBZb0twCqtlQzdHmp2x7
 j3lUL4KgtoNTv6JyzcVWuAc2KiT05/hv2w9znv0BvdGV2yqumO7Ug7yZb0ShNWx4MejQ
 6qMd7Fl0YDezZrgfr3OI8OBjljYMVMjx7YSg5FD793/tGLvu0rEjynod6GZnXFfL+1kR
 vk7g==
X-Gm-Message-State: AO0yUKWjNJkPdQwJC4ghAAt3dP3Lqrv3bxmfc+aeOksD8ZcrUhKXEVck
 0zJXx2sweOVGjz3f+1w6nxw0FA==
X-Google-Smtp-Source: AK7set+fYF8Q8u+N96L/zMmlualW1akSY9RXnyPjsvBz+jAOMXrQMrout7b0eNafXpUOLyCsMEn1rA==
X-Received: by 2002:a5d:4ed0:0:b0:2ce:aeb1:91a4 with SMTP id
 s16-20020a5d4ed0000000b002ceaeb191a4mr5967034wrv.60.1678796670938; 
 Tue, 14 Mar 2023 05:24:30 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 v15-20020a5d678f000000b002cda9aa1dc1sm1969434wru.111.2023.03.14.05.24.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 05:24:30 -0700 (PDT)
Message-ID: <ea099909-a205-ed4c-5382-64a01435c23a@blackwall.org>
Date: Tue, 14 Mar 2023 14:24:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-8-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-8-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 07/11] vxlan: mdb: Add MDB control
	path support
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

On 13/03/2023 16:53, Ido Schimmel wrote:
> Implement MDB control path support, enabling the creation, deletion,
> replacement and dumping of MDB entries in a similar fashion to the
> bridge driver. Unlike the bridge driver, each entry stores a list of
> remote VTEPs to which matched packets need to be replicated to and not a
> list of bridge ports.
> 
> The motivating use case is the installation of MDB entries by a user
> space control plane in response to received EVPN routes. As such, only
> allow permanent MDB entries to be installed and do not implement
> snooping functionality, avoiding a lot of unnecessary complexity.
> 
> Since entries can only be modified by user space under RTNL, use RTNL as
> the write lock. Use RCU to ensure that MDB entries and remotes are not
> freed while being accessed from the data path during transmission.
> 
> In terms of uAPI, reuse the existing MDB netlink interface, but add a
> few new attributes to request and response messages:
> 
> * IP address of the destination VXLAN tunnel endpoint where the
>   multicast receivers reside.
> 
> * UDP destination port number to use to connect to the remote VXLAN
>   tunnel endpoint.
> 
> * VXLAN VNI Network Identifier to use to connect to the remote VXLAN
>   tunnel endpoint. Required when Ingress Replication (IR) is used and
>   the remote VTEP is not a member of originating broadcast domain
>   (VLAN/VNI) [1].
> 
> * Source VNI Network Identifier the MDB entry belongs to. Used only when
>   the VXLAN device is in external mode.
> 
> * Interface index of the outgoing interface to reach the remote VXLAN
>   tunnel endpoint. This is required when the underlay destination IP is
>   multicast (P2MP), as the multicast routing tables are not consulted.
> 
> All the new attributes are added under the 'MDBA_SET_ENTRY_ATTRS' nest
> which is strictly validated by the bridge driver, thereby automatically
> rejecting the new attributes.
> 
> [1] https://datatracker.ietf.org/doc/html/draft-ietf-bess-evpn-irb-mcast#section-3.2.2
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * Remove restrictions regarding mixing of multicast and unicast remote
>       destination IPs in an MDB entry. While such configuration does not
>       make sense to me, it is no forbidden by the VXLAN FDB code and does
>       not crash the kernel.
>     * Fix check regarding all-zeros MDB entry and source.
> 
>  drivers/net/vxlan/Makefile        |    2 +-
>  drivers/net/vxlan/vxlan_core.c    |    8 +
>  drivers/net/vxlan/vxlan_mdb.c     | 1341 +++++++++++++++++++++++++++++
>  drivers/net/vxlan/vxlan_private.h |   31 +
>  include/net/vxlan.h               |    5 +
>  include/uapi/linux/if_bridge.h    |   10 +
>  6 files changed, 1396 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/vxlan/vxlan_mdb.c


Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>

