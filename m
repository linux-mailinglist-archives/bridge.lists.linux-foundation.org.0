Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBF5373517
	for <lists.bridge@lfdr.de>; Wed,  5 May 2021 08:52:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82BE583EF6;
	Wed,  5 May 2021 06:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JODCxv4fFR3H; Wed,  5 May 2021 06:52:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DC9F83F4E;
	Wed,  5 May 2021 06:52:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9AF1C0024;
	Wed,  5 May 2021 06:52:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BFFB1C0001
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 06:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A65BD401D1
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 06:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=waldekranz-com.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YoX1ValAknCh for <bridge@lists.linux-foundation.org>;
 Wed,  5 May 2021 06:52:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BA00401CA
 for <bridge@lists.linux-foundation.org>; Wed,  5 May 2021 06:52:24 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id o16so1091228ljp.3
 for <bridge@lists.linux-foundation.org>; Tue, 04 May 2021 23:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=62PGV1ntLHcFrK8R3fn9bwofSB8WQ8ONs4MbDgqcgWA=;
 b=jqm0tU/MIFsWCpV7rnxR73yZf3VxvZT60kdj48JeA+fdSSzL4bge1cQtd9SFBUeuT5
 BqzrbCos7DEewkrqg6CcZZVK07D2rQBbx6W8lNxm9I/QkRZqIVLP9o2aZ4DUjG61q+3G
 QN2MIaBBINUjzV4sP7l8k+E7UtHi2Mu7pQb3wxTKBNSAdDfhFfYTcbi+qbsJzz2geu8B
 X/C01LYo6q+s5xLq0+hd3LId1ITFenTNJ8YpqUQzOD3g/BCZGbsReC/GERHvxslEXoMT
 W4NTJ7qqdlZs7qlcKSLNlwcIXqmYibFK0UDJzsgQX6Aa7N+jvvY8YAToujLHM+xuXd24
 bqbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=62PGV1ntLHcFrK8R3fn9bwofSB8WQ8ONs4MbDgqcgWA=;
 b=Rt8k8wMs9hzlb9AkceRPC3vxdbnrqjfZ9rFysed2SxVhKs0y2elC75S3o54C49Q1G/
 IrCeDMY/EL+unP+9PKo7bzwK8tnWZkgp4PYsMpvsZdSn71GCECNw4tLRuhxR58+3igAX
 GT3oLDnircJ9IRxToYSP4WTWKYL/MrI/1WKSWr+gEv9q6jlf5XwpNG0WUHLjiYOsfH8T
 Qr+01NbuN+whrZ7dPyicbSUvtPwDfLsu7+/2snh9RX06VIJs8evPyPNGu3A1EO24qRVI
 sHxIb/N1is6t+KfvbQEfBR9wUvEN/aThfefj9+4Iaexw2aLz7N+MNo0hIgAYCOMNB6Ul
 zu1Q==
X-Gm-Message-State: AOAM530fZ2M5c9TyFl5ZiNScCIzSBaZYL6rcuwN51oJeI8OxwGG0KgVf
 wx16BUCZlxr2o/cbzyfC/DQkKQ==
X-Google-Smtp-Source: ABdhPJzZ737Ds58PIKRt4bXzoWoZCcf/3qgLDESEcSlbThe9T/HDlvOCPZ0cmM1kuUoHXkQAMbVd8g==
X-Received: by 2002:a2e:8891:: with SMTP id k17mr20543496lji.11.1620197542341; 
 Tue, 04 May 2021 23:52:22 -0700 (PDT)
Received: from wkz-x280 (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
 by smtp.gmail.com with ESMTPSA id w20sm1965683ljj.97.2021.05.04.23.52.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 May 2021 23:52:21 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: "Huang\, Joseph" <Joseph.Huang@garmin.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "bridge\@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "netdev\@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ido Schimmel <idosch@idosch.org>
In-Reply-To: <82693dbedd524f94b5a6223f0287525c@garmin.com>
References: <20210504182259.5042-1-Joseph.Huang@garmin.com>
 <6fd5711c-8d53-d72b-995d-1caf77047ecf@nvidia.com>
 <685c25c2423c451480c0ad2cf78877be@garmin.com> <87v97ym8tc.fsf@waldekranz.com>
 <82693dbedd524f94b5a6223f0287525c@garmin.com>
Date: Wed, 05 May 2021 08:52:21 +0200
Message-ID: <87sg31n04a.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Bridge] [PATCH net 0/6] bridge: Fix snooping in multi-bridge
	config with switchdev
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

On Tue, May 04, 2021 at 23:26, "Huang, Joseph" <Joseph.Huang@garmin.com> wrote:
>> If I may make a suggestion: I also work with mv88e6xxx systems, and we
>> have the same issues with known multicast not being flooded to router
>> ports. Knowing that chipset, I see what you are trying to do.
>> 
>> But other chips may work differently. Imagine for example a switch where
>> there is a separate vector of router ports that the hardware can OR in after
>> looking up the group in the ATU. This implementation would render the
>> performance gains possible on that device useless. As another example, you
>> could imagine a device where an ATU operation exists that sets a bit in the
>> vector of every group in a particular database; instead of having to update
>> each entry individually.
>> 
>> I think we (mv88e6xxx) will have to accept that we need to add the proper
>> scaffolding to manage this on the driver side. That way the bridge can stay
>> generic. The bridge could just provide some MDB iterator to save us from
>> having to cache all the configured groups.
>> 
>> So basically:
>> 
>> - In mv88e6xxx, maintain a per-switch vector of router ports.
>> 
>> - When a ports router state is toggled:
>>   1. Update the vector.
>>   2. Ask the bridge to iterate through all applicable groups and update
>>      the corresponding ATU entries.
>> 
>> - When a new MDB entry is updated, make sure to also OR in the current
>>   vector of router ports in the DPV of the ATU entry.
>> 
>> 
>> I would be happy to help out with testing of this!
>
> Thanks for the suggestion/offer!
>
> What patch 0002 does is that:
>
> - When an mrouter port is added/deleted, it iterates over the list of mdb's
>   to add/delete that port to/from the group in the hardware (I think this is
>   what your bullet #2 does as well, except that one is done in the bridge,
>   and the other is done in the driver)
>
> - When a group is added/deleted, it iterates over the list of mrouter ports
>   to add/delete the switchdev programming
>
> I think what Nik is objecting to is that with this approach, there's now
> a for-loop in the call paths (thus it "increases the complexity with 1 order
> of magnitude), however I can't think of a way to avoid the looping (whether
> done inside the bridge or in the driver) but still achieve the same result
> (for Marvell at least).

(I will stop trying to read Nikolay's mind and go forward with my own
opinions now :))

The problem with solving this at the bridge layer is that you miss out
on optimizations that are available at lower layers. As an example:

      br0
    /  |  \
swp0 swp1 swp2
     (R)  (R)

With two router ports, any new group added/removed to/from swp0 would
incur 3 individual ATU operations: First adding swp0, then each router
port individually in your loop. If you have the vector prepared in the
driver, you can batch them together in one operation.

This also atomically transitions the group from unknown to known without
disrupting any streams towards a router. In the bridge-layer solution,
flows will still be blocked in the (admittedly small) window between
adding swp0 and swp{1,2}.

> I suspect that other SOHO switches might have this problem as well (Broadcom
> comes to mind).

I suspect you are right. That is why I suggested implementing the
iterator in the bridge that can be reused by all drivers. Something
along the lines of br_fdb_replay. The rest should mostly be hardware
specific anyway.
