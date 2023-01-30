Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD466807FB
	for <lists.bridge@lfdr.de>; Mon, 30 Jan 2023 09:56:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43D7460E48;
	Mon, 30 Jan 2023 08:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43D7460E48
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=MT/c60Dl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBy4upX9PxXX; Mon, 30 Jan 2023 08:56:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id AEA4F60E8A;
	Mon, 30 Jan 2023 08:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEA4F60E8A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4C307C007C;
	Mon, 30 Jan 2023 08:56:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C81F9C002B
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 08:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B4C94077D
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 08:56:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B4C94077D
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=MT/c60Dl
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rDo0zCr_2M7 for <bridge@lists.linux-foundation.org>;
 Mon, 30 Jan 2023 08:56:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72D9840357
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72D9840357
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 08:56:26 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id m8so994048edd.10
 for <bridge@lists.linux-foundation.org>; Mon, 30 Jan 2023 00:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4cF2CUyB3EHElg6yX0gxnuKTPhQUwF623r8IcXZaqUs=;
 b=MT/c60DlHRoBcmKOVwmsagcuIlX7cDJIaX7jE4v7/P9h38PKU0H5yVv1a98QpCNlXT
 DG9arSSwrQdb3okg0Ui+r8GYqcCAqp/zOqIbskfNgShpAwfR+Ik+NKVFAiMtlfwb2jUx
 /wcfXjLIx1L0UTrHCD7h7m19tLO+azfkD0WFn+YXNr3ihJp5N9omDUy0SFeiyuL468xj
 2macfjQJ2zevE0accDboLJ711tWga8yMHWW35fg6clQIpErw5O9BwBFWeunJxt3E4MXE
 KfQGsQaAr6I0JiwWEpd+RVHiHk7TchncP6cZ/fdbUJYc14vj47PVilb8rVg0G92JK0/+
 bN3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4cF2CUyB3EHElg6yX0gxnuKTPhQUwF623r8IcXZaqUs=;
 b=RqAEcr4iaZidf8hZaf1+2yCaA4sHB+qP+PgmFfIq47El/UJc/jgYf4TN7j5CAE7+Xz
 vCDObkowy48UvZQs2Nblvlz+5p83laXfi1QPidXER/cFdBLFF/Zvmtm435Bjgs9dtFu4
 dQwVcDEW6rdbwUhaohC/BklavQFh5ahG48y5gfInYYbptLBH8Xb/YnV8J897FyskSJpX
 sfxGL5EqQA02L0r1V0XMNQ4R/STcJ7Zz9biOyXo//jRNAFM9nUNl+Ujpoxo2bx6VGuzu
 IHVJNz3dyUuZ2+V+CCVbvHF1/57o2nQ2DCPO0Yp3haWU3QtZyrkV5q37NKey/206XAS7
 y0wA==
X-Gm-Message-State: AFqh2krA4LPEpVadvHxJQq+dnlhBT+HmZO56lmkC8Fqy5X8m0ADEiH1p
 jsDelGgBqli5XkB+TKTHwEEbDQ==
X-Google-Smtp-Source: AMrXdXurtv7iREqNupd3p+TJzkQIkaM36NTVFjMv3wJNpAhDN11ivvBCeWYPPSzDv3Vb/ybhTWSTtw==
X-Received: by 2002:a05:6402:4496:b0:49e:ca5:244a with SMTP id
 er22-20020a056402449600b0049e0ca5244amr55236340edb.1.1675068984316; 
 Mon, 30 Jan 2023 00:56:24 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 pv5-20020a170907208500b00888fddc4eb2sm1082347ejb.164.2023.01.30.00.56.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Jan 2023 00:56:23 -0800 (PST)
Message-ID: <cacda0ed-5590-f059-3461-fb670ee9cf07@blackwall.org>
Date: Mon, 30 Jan 2023 10:56:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>
References: <cover.1674752051.git.petrm@nvidia.com>
 <1dcd4638d78c469eaa2f528de1f69b098222876f.1674752051.git.petrm@nvidia.com>
 <81821548-4839-e7ba-37b0-92966beb7930@blackwall.org>
 <Y9d69bP7tzp/2reQ@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <Y9d69bP7tzp/2reQ@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Petr Machata <petrm@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 07/16] net: bridge: Maintain number of
 MDB entries in net_bridge_mcast_port
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

On 30/01/2023 10:08, Ido Schimmel wrote:
> On Sun, Jan 29, 2023 at 06:55:26PM +0200, Nikolay Aleksandrov wrote:
>> On 26/01/2023 19:01, Petr Machata wrote:
>>> The MDB maintained by the bridge is limited. When the bridge is configured
>>> for IGMP / MLD snooping, a buggy or malicious client can easily exhaust its
>>> capacity. In SW datapath, the capacity is configurable through the
>>> IFLA_BR_MCAST_HASH_MAX parameter, but ultimately is finite. Obviously a
>>> similar limit exists in the HW datapath for purposes of offloading.
>>>
>>> In order to prevent the issue of unilateral exhaustion of MDB resources,
>>> introduce two parameters in each of two contexts:
>>>
>>> - Per-port and per-port-VLAN number of MDB entries that the port
>>>   is member in.
>>>
>>> - Per-port and (when BROPT_MCAST_VLAN_SNOOPING_ENABLED is enabled)
>>>   per-port-VLAN maximum permitted number of MDB entries, or 0 for
>>>   no limit.
>>>
>>> The per-port multicast context is used for tracking of MDB entries for the
>>> port as a whole. This is available for all bridges.
>>>
>>> The per-port-VLAN multicast context is then only available on
>>> VLAN-filtering bridges on VLANs that have multicast snooping on.
>>>
>>> With these changes in place, it will be possible to configure MDB limit for
>>> bridge as a whole, or any one port as a whole, or any single port-VLAN.
>>>
>>> Note that unlike the global limit, exhaustion of the per-port and
>>> per-port-VLAN maximums does not cause disablement of multicast snooping.
>>> It is also permitted to configure the local limit larger than hash_max,
>>> even though that is not useful.
>>>
>>> In this patch, introduce only the accounting for number of entries, and the
>>> max field itself, but not the means to toggle the max. The next patch
>>> introduces the netlink APIs to toggle and read the values.
>>>
>>> Note that the per-port-VLAN mcast_max_groups value gets reset when VLAN
>>> snooping is enabled. The reason for this is that while VLAN snooping is
>>> disabled, permanent entries can be added above the limit imposed by the
>>> configured maximum. Under those circumstances, whatever caused the VLAN
>>> context enablement, would need to be rolled back, adding a fair amount of
>>> code that would be rarely hit and tricky to maintain. At the same time,
>>> the feature that this would enable is IMHO not interesting: I posit that
>>> the usefulness of keeping mcast_max_groups intact across
>>> mcast_vlan_snooping toggles is marginal at best.
>>>
>>
>> Hmm, I keep thinking about this one and I don't completely agree. It would be
>> more user-friendly if the max count doesn't get reset when mcast snooping is toggled.
>> Imposing order of operations (first enable snooping, then config max entries) isn't necessary
>> and it makes sense for someone to first set the limit and then enable vlan snooping.
>> Also it would be consistent with port max entries, I'd prefer if we have the same
>> behaviour for port and vlan pmctxs. If we allow to set any maximum at any time we
>> don't need to rollback anything, also we already always lookup vlans in br_multicast_port_vid_to_port_ctx()
>> to check if snooping is enabled so we can keep the count correct regardless, the same as
>> it's done for the ports. Keeping both limits with consistent semantics seems better to me.
>>
>> WDYT ?
> 
> The current approach is strict and prevents user space from performing
> configuration that does not make a lot of sense:
> 
> 1. Setting the maximum to be less than the current count.
> 
> 2. Increasing the port-VLAN count above port-VLAN maximum when VLAN
> snooping is disabled (i.e., maximum is not enforced) and then enabling
> VLAN snooping.
> 
> However, it is not consistent with similar existing behavior where the
> kernel is more liberal. For example:
> 
> 1. It is possible to set the global maximum to be less than the current
> number of entries.
> 
> 2. Other port-VLAN attributes are not reset when VLAN snooping is
> toggled.
> 

Right, 2) is my main concern and could be surprising. I'd also like to
have consistent behaviour for both limits - port and vlan.

> And it also results in order of operations problems like you described.
> 
> So, it seems to me that we have more good reasons to not reset the
> maximum than to reset it. Regardless of which path we take, it is
> important to document the behavior in the man page (and in the commit
> message, obviously) to avoid "bug reports" later on.

+1
Absolutely agree.

Thanks,
 Nik

