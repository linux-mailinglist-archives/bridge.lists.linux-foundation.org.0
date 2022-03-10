Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 545114D496B
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 15:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB46860E48;
	Thu, 10 Mar 2022 14:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lUuc3kyJCNim; Thu, 10 Mar 2022 14:26:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6367B60881;
	Thu, 10 Mar 2022 14:26:46 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2FBCDC0073;
	Thu, 10 Mar 2022 14:26:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ED385C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6CCA84737
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5uKlGBpelrDr for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 14:26:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19F0B84736
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 14:26:42 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id r7so9746135lfc.4
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 06:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=aOR4hwC/LyUI0jjOxT3n02PFkMoRNv160vr8ERq5R5M=;
 b=TLmdcYdLOXvPkXN9lzSvK+qd50RETYsuhCjwfouchXQvEMmBtGFGKFXlQFT4XjefXR
 IQpovEbCoHIfttXXAA94M4q+vbatxV4BvpyFSYobDNDTViPh9MJjXheBb8evLNaGNm1N
 Qt7uCkdRljkUOSX6YC2pU8n8/BAYdqs7DYr+zsNr9lpo3xRnPLrgyog6EaFrsar6ZIQH
 n5kCTBiudP3pCaM9NEIejnj+QRgKJ+A0lu1kRzusD+MnB/Mgagj3RBbpz+XxMO4ZIv+M
 m5Zgv+01Urk72PAF+/yLNKdKG/tzpq8FKZzguQVsG6ppY0IDGKafSCGU7k5wsZLvNrUm
 SYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=aOR4hwC/LyUI0jjOxT3n02PFkMoRNv160vr8ERq5R5M=;
 b=RWjU1VVgpB/gfmdlvGOQ/FQdp05uYewW0IN49PzRO7Ostm9Okj125cd3U+YC2q4lT6
 9n7Pj1QRtAUOp7BKO/7zSZQCFT+rHzbl2j8tkN3KUei2sFGms0k4Qfxz2BLy8Qs0cWhm
 zlVvq26PhqyvtDjC407Bj3jUTSb6BQ8XG9mYrHgvVu2YMUgHh3yxggH7Ojt4WZjR+2UK
 OVHv3gOR4HWPYbjmyX6W4jU9vyLIAnGAVzIhGguNPs5V19XZUlbnvdAwlAC5F+Wf6trX
 jswYTE7yxUZlzqPgWeHtsZql4j7er5IwReZmTU6UcAJlSTDCV3H5QEJnLIr4GJMG6DMl
 V1CA==
X-Gm-Message-State: AOAM531zZamFsQT36dQa65tXStV7yqHXmUNqCAY0oPAoeQmNYFcvHDnL
 O+xFFJhbFQzAyQ8fyyyMFVAS8oEoNj3BUg==
X-Google-Smtp-Source: ABdhPJxdb48xfM1I6A57NBB+0VE33vTP/hLoecV0tRu2EiQR4i3oGYbQDIazvv4DmJhtp+HspEJ/lQ==
X-Received: by 2002:a05:6512:3ba6:b0:448:23de:ca79 with SMTP id
 g38-20020a0565123ba600b0044823deca79mr3227383lfv.400.1646922400073; 
 Thu, 10 Mar 2022 06:26:40 -0800 (PST)
Received: from wse-c0127 ([208.127.141.29]) by smtp.gmail.com with ESMTPSA id
 r22-20020a2e9956000000b00247f5d1c457sm1090247ljj.126.2022.03.10.06.26.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 06:26:39 -0800 (PST)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>, Hans Schultz
 <schultz.hans@gmail.com>, davem@davemloft.net, kuba@kernel.org
In-Reply-To: <7ed798dd-49c1-171b-4b72-4e2b2c9c660d@blackwall.org>
References: <20220310133617.575673-1-schultz.hans+netdev@gmail.com>
 <7ed798dd-49c1-171b-4b72-4e2b2c9c660d@blackwall.org>
Date: Thu, 10 Mar 2022 15:26:36 +0100
Message-ID: <86y21hc28z.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Vladimir Oltean <olteanv@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH iproute2-next 0/3] Extend locked port feature
 with FDB locked flag (MAC-Auth/MAB)
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

On tor, mar 10, 2022 at 16:18, Nikolay Aleksandrov <razor@blackwall.org> wrote:
> On 10/03/2022 15:36, Hans Schultz wrote:
>> This patch set extends the locked port feature for devices
>> that are behind a locked port, but do not have the ability to
>> authorize themselves as a supplicant using IEEE 802.1X.
>> Such devices can be printers, meters or anything related to
>> fixed installations. Instead of 802.1X authorization, devices
>> can get access based on their MAC addresses being whitelisted.
>> 
>> For an authorization daemon to detect that a device is trying
>> to get access through a locked port, the bridge will add the
>> MAC address of the device to the FDB with a locked flag to it.
>> Thus the authorization daemon can catch the FDB add event and
>> check if the MAC address is in the whitelist and if so replace
>> the FDB entry without the locked flag enabled, and thus open
>> the port for the device.
>> 
>> This feature is known as MAC-Auth or MAC Authentication Bypass
>> (MAB) in Cisco terminology, where the full MAB concept involves
>> additional Cisco infrastructure for authorization. There is no
>> real authentication process, as the MAC address of the device
>> is the only input the authorization daemon, in the general
>> case, has to base the decision if to unlock the port or not.
>> 
>> With this patch set, an implementation of the offloaded case is
>> supplied for the mv88e6xxx driver. When a packet ingresses on
>> a locked port, an ATU miss violation event will occur. When
>> handling such ATU miss violation interrupts, the MAC address of
>> the device is added to the FDB with a zero destination port
>> vector (DPV) and the MAC address is communicated through the
>> switchdev layer to the bridge, so that a FDB entry with the
>> locked flag enabled can be added.
>> 
>> Hans Schultz (3):
>>    net: bridge: add fdb flag to extent locked port feature
>>    net: switchdev: add support for offloading of fdb locked flag
>>    net: dsa: mv88e6xxx: mac-auth/MAB implementation
>> 
>>   drivers/net/dsa/mv88e6xxx/Makefile            |  1 +
>>   drivers/net/dsa/mv88e6xxx/chip.c              | 10 +--
>>   drivers/net/dsa/mv88e6xxx/chip.h              |  5 ++
>>   drivers/net/dsa/mv88e6xxx/global1.h           |  1 +
>>   drivers/net/dsa/mv88e6xxx/global1_atu.c       | 29 +++++++-
>>   .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c   | 67 +++++++++++++++++++
>>   .../net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h   | 20 ++++++
>>   drivers/net/dsa/mv88e6xxx/port.c              | 11 +++
>>   drivers/net/dsa/mv88e6xxx/port.h              |  1 +
>>   include/net/switchdev.h                       |  3 +-
>>   include/uapi/linux/neighbour.h                |  1 +
>>   net/bridge/br.c                               |  3 +-
>>   net/bridge/br_fdb.c                           | 13 +++-
>>   net/bridge/br_input.c                         | 11 ++-
>>   net/bridge/br_private.h                       |  5 +-
>>   15 files changed, 167 insertions(+), 14 deletions(-)
>>   create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.c
>>   create mode 100644 drivers/net/dsa/mv88e6xxx/mv88e6xxx_switchdev.h
>> 
>
> This doesn't look like an iproute2 patch-set. I think you've messed the target
> in the subject.

Sorry, complete bummer!
I have resent it with the correct header.
