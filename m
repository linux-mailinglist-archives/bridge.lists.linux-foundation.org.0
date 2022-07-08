Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8B756B52C
	for <lists.bridge@lfdr.de>; Fri,  8 Jul 2022 11:16:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB1FC84676;
	Fri,  8 Jul 2022 09:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB1FC84676
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=XW4Jdvdo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hz8IB4pfGGrJ; Fri,  8 Jul 2022 09:15:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 4565E84673;
	Fri,  8 Jul 2022 09:15:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4565E84673
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D2E54C0078;
	Fri,  8 Jul 2022 09:15:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ECF33C002D
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 09:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B792140370
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 09:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B792140370
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=XW4Jdvdo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jV5pwHd3X6NJ for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jul 2022 09:15:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0BF140155
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0BF140155
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jul 2022 09:15:54 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id y8so20399000eda.3
 for <bridge@lists.linux-foundation.org>; Fri, 08 Jul 2022 02:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=wHmLJrl8JY97pnJUtLPIqF5xTBqgcIZw7/C7kgtVgmQ=;
 b=XW4JdvdoO4/ukQzjguzcwAFZARJjsB7wnX/kVEl/FoFJqcjoxjFBmJU3E+DKU5yjcI
 uS8+U2O1U+Wd/Shh2mWrWXeFj6aejm2IuOFAEpdlLwgBMUpEwYa/Ha+rHVfVdUye7MbU
 yp/UwGkIAThZZnoo7vBAbi0ayyqjTVt9hjHj14puCSQ+fKIvqOL8rLkPjYtyrU6t387T
 XCnDs5ii8osrZSMqQ9LnOXS+iEHQwbT/b3jKW7d5qhTH9WOJcoQWa/G9zK4Le7UUYjHl
 j5tNxVmKwJdKvM60nRbTBAkbnO72NjcW1jKsCFgoaI6sZRgW/qBhaxDWlrD35wKjfRcO
 LVPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wHmLJrl8JY97pnJUtLPIqF5xTBqgcIZw7/C7kgtVgmQ=;
 b=kVJICACgUDaQIC4LZTxwvUMkO/zNXxyWAhuFtTLDzL7CAlHlsILa0WmQrba9c709dS
 N/FVOptOEi3puV51k538qWdKCagU4kqDrYPKuWXv4kIfhSBQCqQzWtuwDrNwSz21aBDt
 2PyTl8+GKkNwJ7WMGIVSOa7+9s7Z+vz+xT014IcZFLBRqq22/KxRUtvwA2NPMhtUznyV
 9tQHqKR5kpip6IuLU7MUlYzd5AtZOazjXRE3JJO9fOX8J7gtYWdtePR4mNJhdaMgx2RD
 wirNC7xJ0bdS8ewikHZMumMPltAdrZITnh55qzN11oe5161JK99LjQleWy9SMbZElWXi
 dr7g==
X-Gm-Message-State: AJIora+hBS6Uw9y1qkDpAkFWe0rd/3Or0W+9mHNP3W3KPHQJidW4QXPe
 qJnNamZ6N1nTmwm3K2tOem4=
X-Google-Smtp-Source: AGRyM1skmIdMzLZUsxTOPXC0kET1dz3xxxMCUtpXOANF3SanR+/KfstqosHOYFDOwfKcyGqUrBuw8A==
X-Received: by 2002:a05:6402:f08:b0:43a:b202:1f63 with SMTP id
 i8-20020a0564020f0800b0043ab2021f63mr207749eda.207.1657271752890; 
 Fri, 08 Jul 2022 02:15:52 -0700 (PDT)
Received: from skbuf ([188.25.231.143]) by smtp.gmail.com with ESMTPSA id
 q25-20020a17090676d900b0072ab06bf296sm8523911ejn.23.2022.07.08.02.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jul 2022 02:15:52 -0700 (PDT)
Date: Fri, 8 Jul 2022 12:15:50 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220708091550.2qcu3tyqkhgiudjg@skbuf>
References: <20220707152930.1789437-1-netdev@kapio-technology.com>
 <20220707152930.1789437-4-netdev@kapio-technology.com>
 <20220708084904.33otb6x256huddps@skbuf>
 <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6f418705e19df370c8d644993aa9a6f@kapio-technology.com>
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

On Fri, Jul 08, 2022 at 11:06:24AM +0200, netdev@kapio-technology.com wrote:
> On 2022-07-08 10:49, Vladimir Oltean wrote:
> > Hi Hans,
> > 
> > On Thu, Jul 07, 2022 at 05:29:27PM +0200, Hans Schultz wrote:
> > > Ignore locked fdb entries coming in on all drivers.
> > > 
> > > Signed-off-by: Hans Schultz <netdev@kapio-technology.com>
> > > ---
> > 
> > A good patch should have a reason for the change in the commit message.
> > This has no reason because there is no reason.
> > 
> > Think about it, you've said it yourself in patch 1:
> > 
> > | Only the kernel can set this FDB entry flag, while userspace can read
> > | the flag and remove it by replacing or deleting the FDB entry.
> > 
> > So if user space will never add locked FDB entries to the bridge,
> > then FDB entries with is_locked=true are never transported using
> > SWITCHDEV_FDB_ADD_TO_DEVICE to drivers, and so, there is no reason at
> > all to pass is_locked to drivers, just for them to ignore something that
> > won't appear.
> 
> Correct me if I am wrong, but since the bridge can add locked entries, and
> the ensuring fdb update will create a SWITCHDEV_FDB_ADD_TO_DEVICE, those
> entries
> should reach the driver. The policy to ignore those in the driver can be
> seen as either the right thing to do, or not yet implemented.
> 
> I remember Ido wrote at a point that the scheme they use is to trap various
> packets to the CPU and let the bridge add the locked entry, which I then
> understand is sent to the driver with a SWITCHDEV_FDB_ADD_TO_DEVICE event.

Well, yes, but if I'm correct, the bridge right now can't create locked
FDB entries, so is_locked will always be false in the ADD_TO_DEVICE
direction.

When the possibility for it to be true will exist, _all_ switchdev
drivers will need to be updated to ignore that (mlxsw, cpss, ocelot,
rocker, prestera, etc etc), not just DSA. And you don't need to
propagate the is_locked flag to all individual DSA sub-drivers when none
care about is_locked in the ADD_TO_DEVICE direction, you can just ignore
within DSA until needed otherwise.

> > 
> > You just need this for SWITCHDEV_FDB_ADD_TO_BRIDGE, so please keep it
> > only in those code paths, and remove it from net/dsa/slave.c as well.
> > 
> > >  drivers/net/dsa/b53/b53_common.c       | 5 +++++
> > >  drivers/net/dsa/b53/b53_priv.h         | 1 +
> > >  drivers/net/dsa/hirschmann/hellcreek.c | 5 +++++
> > >  drivers/net/dsa/lan9303-core.c         | 5 +++++
> > >  drivers/net/dsa/lantiq_gswip.c         | 5 +++++
> > >  drivers/net/dsa/microchip/ksz9477.c    | 5 +++++
> > >  drivers/net/dsa/mt7530.c               | 5 +++++
> > >  drivers/net/dsa/mv88e6xxx/chip.c       | 5 +++++
> > >  drivers/net/dsa/ocelot/felix.c         | 5 +++++
> > >  drivers/net/dsa/qca8k.c                | 5 +++++
> > >  drivers/net/dsa/sja1105/sja1105_main.c | 5 +++++
> > >  include/net/dsa.h                      | 1 +
> > >  net/dsa/switch.c                       | 4 ++--
> > >  13 files changed, 54 insertions(+), 2 deletions(-)
