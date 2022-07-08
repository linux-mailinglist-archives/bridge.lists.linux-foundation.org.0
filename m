Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4819256B4BD
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 10:49:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D2E474119A;
	Fri,  8 Jul 2022 08:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2E474119A
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=gHiNAIzw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TVmVmR1ZJn_z; Fri,  8 Jul 2022 08:49:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 53C524158F;
	Fri,  8 Jul 2022 08:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53C524158F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E92A6C0033;
	Fri,  8 Jul 2022 08:49:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 707D5C002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 08:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D4396135B
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 08:49:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D4396135B
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=gHiNAIzw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ZHhyy6XhEJ4 for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 08:49:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79AE66134B
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79AE66134B
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 08:49:08 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id d2so36634560ejy.1
 for <bridge@lists.linux-foundation.org>; Fri, 08 Jul 2022 01:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9d07Y8B9hW/YK4FdVwqna0EC5kCeABlM1GESgsdV3qE=;
 b=gHiNAIzwdN+JoHOkRq1S10c9X8e7xkFXbnXduv9//hQbLAE2ZUtsAVfggdlFAg4wUu
 6/CE6XPRQu1qfoMQJpFEUw6B1Gw1T2fmrzkr8Q47dVmmniPm21DvCE0uVqaXUhrVlms2
 oGakDf2RW5pztTCtvTDSr5QeOYmASWFF0sHlK+xxTfO3EM6NcjrnlnaZwreqrvWJaFbm
 5+sm2eZr4BrNevPHorokPFNHQJLcFdq5cELRn8RBvnp8CulnRjCfinXbSd4cepmU6NkM
 +tnVjqI42b5ZUHwYMIXnvz6hTg5ZNmJ8AnSU1hIbMAzd87LyWZR+gaEw/37RkDmLcpq7
 69zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9d07Y8B9hW/YK4FdVwqna0EC5kCeABlM1GESgsdV3qE=;
 b=FeXlAajY4K60UCineiQMyBFpDURO/AXI07Z8vIQ5Nx2KciZ2oSuHU7jEfGD+xg6ZSU
 cuEyKORTRqSYsyOVeGRyKWb27xzeUadiVRMJkFX5CFyKqHJOkIujK1bHb6da1m3FEyw6
 LyXD/RgtS3AdajCv7ut2uZawAshtgaLnayuc/dANskWavE+JoCzkRnjM5+RGReJ+bV4k
 dh+zrqzjXfc/3KP9pMI7kq5rDcJSCZZehJr88TJ/s9BaP+sIhu8nFRjr42jg0FMs6fLO
 6ZSVkJh7Pvpmhl2F8j03lzhAl1cv3SDSzYzi4uENucOjzuCczCaGTSbdBi9bW5KnPdCI
 IUsQ==
X-Gm-Message-State: AJIora9g9bEisPz8yKp+6oB/b7bEUKUFAyMGLONpM93FhlmBEMBMb/aM
 dMiZoHJQ0htkkPcR2E2b6TU=
X-Google-Smtp-Source: AGRyM1vGQ+JxnW1/f9ERcoeH3wHX7kTQAW2ACV5QEuHg+XAeS3YAK+b1gKaR6BVkpav8213+/dv1dA==
X-Received: by 2002:a17:907:1c09:b0:726:b834:1a21 with SMTP id
 nc9-20020a1709071c0900b00726b8341a21mr2375623ejc.518.1657270146684; 
 Fri, 08 Jul 2022 01:49:06 -0700 (PDT)
Received: from skbuf ([188.25.231.143]) by smtp.gmail.com with ESMTPSA id
 9-20020a170906210900b0072af56103casm3847130ejt.220.2022.07.08.01.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jul 2022 01:49:06 -0700 (PDT)
Date: Fri, 8 Jul 2022 11:49:04 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20220708084904.33otb6x256huddps@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-4-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220707152930.1789437-4-netdev@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

Hi Hans,

On Thu, Jul 07, 2022 at 05:29:27PM +0200, Hans Schultz wrote:
> Ignore locked fdb entries coming in on all drivers.
> 
> Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
> ---

A good patch should have a reason for the change in the commit message.
This has no reason because there is no reason.

Think about it, you've said it yourself in patch 1:

| Only the kernel can set this FDB entry flag, while userspace can read
| the flag and remove it by replacing or deleting the FDB entry.

So if user space will never add locked FDB entries to the bridge,
then FDB entries with is_locked=true are never transported using
SWITCHDEV_FDB_ADD_TO_DEVICE to drivers, and so, there is no reason at
all to pass is_locked to drivers, just for them to ignore something that
won't appear.

You just need this for SWITCHDEV_FDB_ADD_TO_BRIDGE, so please keep it
only in those code paths, and remove it from net/dsa/slave.c as well.

>  drivers/net/dsa/b53/b53_common.c       | 5 +++++
>  drivers/net/dsa/b53/b53_priv.h         | 1 +
>  drivers/net/dsa/hirschmann/hellcreek.c | 5 +++++
>  drivers/net/dsa/lan9303-core.c         | 5 +++++
>  drivers/net/dsa/lantiq_gswip.c         | 5 +++++
>  drivers/net/dsa/microchip/ksz9477.c    | 5 +++++
>  drivers/net/dsa/mt7530.c               | 5 +++++
>  drivers/net/dsa/mv88e6xxx/chip.c       | 5 +++++
>  drivers/net/dsa/ocelot/felix.c         | 5 +++++
>  drivers/net/dsa/qca8k.c                | 5 +++++
>  drivers/net/dsa/sja1105/sja1105_main.c | 5 +++++
>  include/net/dsa.h                      | 1 +
>  net/dsa/switch.c                       | 4 ++--
>  13 files changed, 54 insertions(+), 2 deletions(-)
