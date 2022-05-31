Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 679F4539441
	for <lists.bridge@lfdr.de>; Tue, 31 May 2022 17:49:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A456C61002;
	Tue, 31 May 2022 15:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JLTPtMTM5vu; Tue, 31 May 2022 15:49:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 5515E61282;
	Tue, 31 May 2022 15:49:44 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06EFFC0081;
	Tue, 31 May 2022 15:49:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CF472C002D
 for <bridge@lists.linux-foundation.org>; Tue, 31 May 2022 15:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A51BF40B27
 for <bridge@lists.linux-foundation.org>; Tue, 31 May 2022 15:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iLhH95Rb9Wm7 for <bridge@lists.linux-foundation.org>;
 Tue, 31 May 2022 15:49:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com
 [IPv6:2a00:1450:4864:20::229])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7D0A40104
 for <bridge@lists.linux-foundation.org>; Tue, 31 May 2022 15:49:41 +0000 (UTC)
Received: by mail-lj1-x229.google.com with SMTP id q1so15137204ljb.5
 for <bridge@lists.linux-foundation.org>; Tue, 31 May 2022 08:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=A44GayFxXseGVVD0HVJY3qkIMetyjm2M3KFYhOBPZao=;
 b=Lc2SkHq0n+vROccbAbpL/H+0Dgf53+UBnImyq5CgM9VVRWDpx10kq2qoKeRy5CiiNv
 FpYqx7RLrPfzOXP1dLFMNnKOMJjfs0j3CllR2+GJRAa+xeBU5+JbMkHbXZorezgexw5d
 HGgZ4udmYbVkujDnMOIolsGQ7yZ9Um0MhApXuj0MmHNdk/aseo7VgnbONDaDGCgKVE3c
 FuTyGFUkXda1QvJT4RQyWKfbQAi8S/iBAKCnvKjFKVSRdK55tF/42d80eLGIxnVHMeV9
 i67I3EIzPReqjqpeR0xbzcuj79b5DdwnddziDXHyUbsQumSonS/xMlSxLAb4ToZY3hR+
 QdzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=A44GayFxXseGVVD0HVJY3qkIMetyjm2M3KFYhOBPZao=;
 b=t6ENPPxQ3e6mlt90VIe8VA7rATovxryBV7PiB5RA+C05DxjM/n3TDgnB4ZKQrqQu9u
 1IU7bk9LyUxXfcCN488tus6Dbk354XOYEF2OxviGxar2PAAzLCTb8T2Yj++PDMDr1YwP
 t3kqhrbjCpus43LQcpr4DuoTLRAiz971GT0coRi7bU5NBbj2sW25l+wdI72Pqt4eOQYv
 W5v9OfL4KjbOQJ09jnUHOXG5TOofSumN0owRQMIS270xT4NNYG6AxQFyC8WWZfmo65u3
 ujzFB/4/qtWt7Pkt5wQkhwkxqrJiUq2sguuMW80kq6+mAawxgFS1cuhV9qVXA39VA7FA
 FePg==
X-Gm-Message-State: AOAM5300lkY4a4+f+7GxN7N/HkrJ/6HJMZJc5LCLSEwWvl4sVyBwKx6G
 WoSb/LlzVzl8U/U9DZyLjrY=
X-Google-Smtp-Source: ABdhPJyayYqbFsxb0MdWRwSCpz3NUX9pwUjHVkmGzVQskq93loEB+jvYxlRiwE+Ww+vF4RZ2rUjS3w==
X-Received: by 2002:a05:651c:1a22:b0:255:61fc:4645 with SMTP id
 by34-20020a05651c1a2200b0025561fc4645mr1543446ljb.99.1654012179713; 
 Tue, 31 May 2022 08:49:39 -0700 (PDT)
Received: from wse-c0127 (2-104-116-184-cable.dk.customer.tdc.net.
 [2.104.116.184]) by smtp.gmail.com with ESMTPSA id
 p16-20020a2e9ad0000000b002556428fcb6sm233597ljj.61.2022.05.31.08.49.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 May 2022 08:49:39 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>, Hans Schultz <schultz.hans@gmail.com>
In-Reply-To: <YpYk4EIeH6sdRl+1@shredder>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder> <86sfov2w8k.fsf@gmail.com>
 <YpCgxtJf9Qe7fTFd@shredder> <86sfoqgi5e.fsf@gmail.com>
 <YpYk4EIeH6sdRl+1@shredder>
Date: Tue, 31 May 2022 17:49:32 +0200
Message-ID: <868rqh3do3.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@idosch.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On tis, maj 31, 2022 at 17:23, Ido Schimmel <idosch@nvidia.com> wrote:
> On Tue, May 31, 2022 at 11:34:21AM +0200, Hans Schultz wrote:
>> > Just to give you another data point about how this works in other
>> > devices, I can say that at least in Spectrum this works a bit
>> > differently. Packets that ingress via a locked port and incur an FDB
>> > miss are trapped to the CPU where they should be injected into the Rx
>> > path so that the bridge will create the 'locked' FDB entry and notify it
>> > to user space. The packets are obviously rated limited as the CPU cannot
>> > handle billions of packets per second, unlike the ASIC. The limit is not
>> > per bridge port (or even per bridge), but instead global to the entire
>> > device.
>> 
>> Btw, will the bridge not create a SWITCHDEV_FDB_ADD_TO_DEVICE event
>> towards the switchcore in the scheme you mention and thus add an entry
>> that opens up for the specified mac address?
>
> It will, but the driver needs to ignore FDB entries that are notified
> with locked flag. I see that you extended 'struct
> switchdev_notifier_fdb_info' with the locked flag, but it's not
> initialized in br_switchdev_fdb_populate(). Can you add it in the next
> version?

Yes, definitely. I have only had focus on it in the messages coming up
from the driver, and neglected it the other way.
