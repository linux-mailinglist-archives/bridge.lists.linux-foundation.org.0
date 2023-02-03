Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8B26892EA
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 09:59:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1197B820E0;
	Fri,  3 Feb 2023 08:59:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1197B820E0
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=lzyKKlVf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x46nSnWKRBTg; Fri,  3 Feb 2023 08:59:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8CC65820CD;
	Fri,  3 Feb 2023 08:59:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CC65820CD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 314CBC007C;
	Fri,  3 Feb 2023 08:59:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 98D5EC002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:59:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 80C03429CF
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80C03429CF
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=lzyKKlVf
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id db9pMSmfG3y1 for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 08:59:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57BBF429CA
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57BBF429CA
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 08:59:28 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id lu11so13500112ejb.3
 for <bridge@lists.linux-foundation.org>; Fri, 03 Feb 2023 00:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ni5qRfYvZFsymzma6ZOjk3L3LwaxH0Q0qj+WSjXryNg=;
 b=lzyKKlVfBtu4E19a5HXbvOlfH03T7LO7t0w24toNmp+P5tRXo/J1JTSr666Si1hjeu
 QewnfPtAIwMewEUWV5YSdGUJ+xbY7n6PNYkU5VJW0zg2eO/LlqMREb1nYLOMZ6MIAakH
 ETaHXxw+26Guc/nf1Ppv4PSsLXC464TCdE+OV74e3X/nLcBOX6MmmncTtPkhX2WqzwGP
 9PeJdp0+cptUGcZKEunPL7SZPKLafezyvnAWWmELGlmqCJvBXGRB05cAGK0DqifrfIOO
 q2JH+p2td6gCBElGkavGzvMZJD7dxAQCyobfMqvL4KiYj74mYZXqh0zRHN9xjPUMx19U
 a2+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ni5qRfYvZFsymzma6ZOjk3L3LwaxH0Q0qj+WSjXryNg=;
 b=uHlrOMHKNqgmaoPOaENN70yI+JV618xwB0wrU0UM2XrNZaFWM7Lg0o/zy0OHT+SCEl
 Gcw03YrLg/LrMuNNcDhLSOZQCcyzxJKI4gyURwOC30RjCFcY2YW5Dki/55AKUrMjJH6x
 JYQitGuY0AFh/tmn5x7D6x30OX0wsNt1G2c03oMvQAhqpWqYVUdtahEl+4+AFt4U3HfR
 6mF1rQH+9zH/ZG7DEH4pKhtQNR+WXjPButpWwjo7//NXz6Od+CWFvbDGTmpY4VGfvm+K
 /XyE8srlZQmsejDd38macg9yq+2dgvplya0DcmhHb53Y3eKFgcSuhByTn/aVZwc9LiF2
 mPjA==
X-Gm-Message-State: AO0yUKXb5wDa5K50QQSJ/eADpe/NsfiN8tNxavnFVjXNA2hu6lWg9zbf
 llKY5nKGsdhHIu8Y1Y7iZGD2GQ==
X-Google-Smtp-Source: AK7set9g432vmHMY9Ns9HgsIN+8sKJ+ZB53CcXne2Im12s/0JaCR62pSSz2IqOkNuruiFUscCjEG1g==
X-Received: by 2002:a17:906:230f:b0:844:d342:3566 with SMTP id
 l15-20020a170906230f00b00844d3423566mr8840529eja.22.1675414767094; 
 Fri, 03 Feb 2023 00:59:27 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 u10-20020a1709063b8a00b0088b93bfa782sm1075535ejf.176.2023.02.03.00.59.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Feb 2023 00:59:26 -0800 (PST)
Message-ID: <fb2a9ee9-ff66-3590-9aa9-88f5b037d786@blackwall.org>
Date: Fri, 3 Feb 2023 10:59:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1675359453.git.petrm@nvidia.com>
 <8bd6e90beed928790059134471ecbb9c3d327894.1675359453.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <8bd6e90beed928790059134471ecbb9c3d327894.1675359453.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next v3 07/16] net: bridge: Maintain number
 of MDB entries in net_bridge_mcast_port
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
> The MDB maintained by the bridge is limited. When the bridge is configured
> for IGMP / MLD snooping, a buggy or malicious client can easily exhaust its
> capacity. In SW datapath, the capacity is configurable through the
> IFLA_BR_MCAST_HASH_MAX parameter, but ultimately is finite. Obviously a
> similar limit exists in the HW datapath for purposes of offloading.
> 
> In order to prevent the issue of unilateral exhaustion of MDB resources,
> introduce two parameters in each of two contexts:
> 
> - Per-port and per-port-VLAN number of MDB entries that the port
>   is member in.
> 
> - Per-port and (when BROPT_MCAST_VLAN_SNOOPING_ENABLED is enabled)
>   per-port-VLAN maximum permitted number of MDB entries, or 0 for
>   no limit.
> 
> The per-port multicast context is used for tracking of MDB entries for the
> port as a whole. This is available for all bridges.
> 
> The per-port-VLAN multicast context is then only available on
> VLAN-filtering bridges on VLANs that have multicast snooping on.
> 
> With these changes in place, it will be possible to configure MDB limit for
> bridge as a whole, or any one port as a whole, or any single port-VLAN.
> 
> Note that unlike the global limit, exhaustion of the per-port and
> per-port-VLAN maximums does not cause disablement of multicast snooping.
> It is also permitted to configure the local limit larger than hash_max,
> even though that is not useful.
> 
> In this patch, introduce only the accounting for number of entries, and the
> max field itself, but not the means to toggle the max. The next patch
> introduces the netlink APIs to toggle and read the values.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
> 
> Notes:
>     v3:
>     - Access mdb_max_/_n_entries through READ_/WRITE_ONCE
>     - Move extack setting to br_multicast_port_ngroups_inc_one().
>       Since we use NL_SET_ERR_MSG_FMT_MOD, the correct context
>       (port / port-vlan) can be passed through an argument.
>       This also removes the need for more READ/WRITE_ONCE's
>       at the extack-setting site.
>     
>     v2:
>     - In br_multicast_port_ngroups_inc_one(), bounce
>       if n>=max, not if n==max
>     - Adjust extack messages to mention ngroups, now that
>       the bounces appear when n>=max, not n==max
>     - In __br_multicast_enable_port_ctx(), do not reset
>       max to 0. Also do not count number of entries by
>       going through _inc, as that would end up incorrectly
>       bouncing the entries.
> 
>  net/bridge/br_multicast.c | 136 +++++++++++++++++++++++++++++++++++++-
>  net/bridge/br_private.h   |   2 +
>  2 files changed, 137 insertions(+), 1 deletion(-)

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


