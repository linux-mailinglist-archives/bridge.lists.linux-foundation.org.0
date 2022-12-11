Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BC664934B
	for <lists.bridge@lfdr.de>; Sun, 11 Dec 2022 10:26:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1766E40227;
	Sun, 11 Dec 2022 09:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1766E40227
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=WkJ0nrMo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bfaoq0n0HYrB; Sun, 11 Dec 2022 09:26:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3AD4F40928;
	Sun, 11 Dec 2022 09:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AD4F40928
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D528AC007C;
	Sun, 11 Dec 2022 09:26:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 38B3FC002D
 for <bridge@lists.linux-foundation.org>; Sun, 11 Dec 2022 09:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3D4B60692
 for <bridge@lists.linux-foundation.org>; Sun, 11 Dec 2022 09:26:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3D4B60692
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=WkJ0nrMo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBBNW4fb3RbL for <bridge@lists.linux-foundation.org>;
 Sun, 11 Dec 2022 09:26:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DCA66068D
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DCA66068D
 for <bridge@lists.linux-foundation.org>; Sun, 11 Dec 2022 09:26:06 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id b2so21104262eja.7
 for <bridge@lists.linux-foundation.org>; Sun, 11 Dec 2022 01:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gVdahFE3VCsg1gB9d5/Q9u5eE8BPZK+mrYotqg2hIQI=;
 b=WkJ0nrMo5rkcmbC0jEiEUWoe+lpYz8LMT2g3ETIXKai3ipMja/7APKVLpqDQ5mlCgl
 HbexCGvC3+l/2WAvq+hJGNVrlSU4kAEDjh0deqWj++gGyme0xfljRvk1lWnXDqu4UZ0T
 963d3O8QHVnzwC8G75/oReE1enUiEwJl3vWuZ3MIKv06V4uNRc8FsnW9gRyG1B6vg41I
 36NAbQgBKtUJIpzlX1latn1u/kEmjiQu8w+5mZW0sLZGKIPUCX1VxYil6UgtLMsFhaCM
 2r60v+u0HaNUdGNFyCnzGnBuDKzVS9viPwSCAuKKbVsH5d0GiV2G0HiQgPu8nnLRSf0U
 Dn1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gVdahFE3VCsg1gB9d5/Q9u5eE8BPZK+mrYotqg2hIQI=;
 b=vR5A2Sn3x43Kae1zr9x/n0mFb1DGLVgPH7OqNbzPZCt5BiXDEHFPB1MJaCaFZSqaIE
 V4mGZGKTUMiPybiPMHDo3vzHA0iEq2ICXQVc+4lhoEJ+sLFAB0c1c+qpA4E/LiukY3lS
 fng0NIVxJubvEv9L5mxzwApVLJ+XZrgvFR2DmAww7F8oIWF2eAmHfg92JwxI2n+0QpOk
 wlk2eGvBlFcuGxrawO5rz2N0yXoRGxF97JS6+ZwBnAaW8D9pWMmhksGNN820VlJYBmGT
 TyOmOdwediy3hBriOW++wXI0ImBXo/ubC9L4ggIjTT6iGtoGND7Wdms+jo8lVwTJvVWp
 K2gA==
X-Gm-Message-State: ANoB5plnbKNnPrw8/U0F7e1qbC/wUtdMRPMGV1pZyrpp4Mi+ZypfzwfX
 Uxdwty/rRZE15W0aZR9RcgxQbg==
X-Google-Smtp-Source: AA0mqf4QXZSjWDGz+Kl+7wOpCymcZnKpCnewBJSQ2/IG7stzl3vTV/T0TqdkYkqkFLmtYTqc5RnYQg==
X-Received: by 2002:a17:907:2dab:b0:7c0:eba9:cf0f with SMTP id
 gt43-20020a1709072dab00b007c0eba9cf0fmr14222739ejc.30.1670750764415; 
 Sun, 11 Dec 2022 01:26:04 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 23-20020a170906329700b00770812e2394sm1884703ejw.160.2022.12.11.01.26.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Dec 2022 01:26:03 -0800 (PST)
Message-ID: <90216c45-ce6d-8502-9158-636fbe247ebe@blackwall.org>
Date: Sun, 11 Dec 2022 11:26:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221210145633.1328511-1-idosch@nvidia.com>
 <20221210145633.1328511-13-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221210145633.1328511-13-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 12/14] bridge: mcast: Support
 replacement of MDB port group entries
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

On 10/12/2022 16:56, Ido Schimmel wrote:
> Now that user space can specify additional attributes of port group
> entries such as filter mode and source list, it makes sense to allow
> user space to atomically modify these attributes by replacing entries
> instead of forcing user space to delete the entries and add them back.
> 
> Replace MDB port group entries when the 'NLM_F_REPLACE' flag is
> specified in the netlink message header.
> 
> When a (*, G) entry is replaced, update the following attributes: Source
> list, state, filter mode, protocol and flags. If the entry is temporary
> and in EXCLUDE mode, reset the group timer to the group membership
> interval. If the entry is temporary and in INCLUDE mode, reset the
> source timers of associated sources to the group membership interval.
> 
> Examples:
> 
>  # bridge mdb replace dev br0 port dummy10 grp 239.1.1.1 permanent source_list 192.0.2.1,192.0.2.2 filter_mode include
>  # bridge -d -s mdb show
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.2 permanent filter_mode include proto static     0.00
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.1 permanent filter_mode include proto static     0.00
>  dev br0 port dummy10 grp 239.1.1.1 permanent filter_mode include source_list 192.0.2.2/0.00,192.0.2.1/0.00 proto static     0.00
> 
>  # bridge mdb replace dev br0 port dummy10 grp 239.1.1.1 permanent source_list 192.0.2.1,192.0.2.3 filter_mode exclude proto zebra
>  # bridge -d -s mdb show
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.3 permanent filter_mode include proto zebra  blocked    0.00
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.1 permanent filter_mode include proto zebra  blocked    0.00
>  dev br0 port dummy10 grp 239.1.1.1 permanent filter_mode exclude source_list 192.0.2.3/0.00,192.0.2.1/0.00 proto zebra     0.00
> 
>  # bridge mdb replace dev br0 port dummy10 grp 239.1.1.1 temp source_list 192.0.2.4,192.0.2.3 filter_mode include proto bgp
>  # bridge -d -s mdb show
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.4 temp filter_mode include proto bgp     0.00
>  dev br0 port dummy10 grp 239.1.1.1 src 192.0.2.3 temp filter_mode include proto bgp     0.00
>  dev br0 port dummy10 grp 239.1.1.1 temp filter_mode include source_list 192.0.2.4/259.44,192.0.2.3/259.44 proto bgp     0.00
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     * Remove extack from br_mdb_replace_group_sg().
>     * Change 'nlflags' to u16 and move it after 'filter_mode' to pack the
>       structure.
> 
>  net/bridge/br_mdb.c     | 102 ++++++++++++++++++++++++++++++++++++++--
>  net/bridge/br_private.h |   1 +
>  2 files changed, 98 insertions(+), 5 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


