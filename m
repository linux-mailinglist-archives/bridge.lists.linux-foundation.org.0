Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2177726863E
	for <lists.bridge@lfdr.de>; Mon, 14 Sep 2020 09:40:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4E3A5203D8;
	Mon, 14 Sep 2020 07:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ys-7nqNAzgGW; Mon, 14 Sep 2020 07:40:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 2CB0720336;
	Mon, 14 Sep 2020 07:40:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1EB3DC0859;
	Mon, 14 Sep 2020 07:40:27 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ADC20C0859
 for <bridge@lists.linux-foundation.org>; Mon, 14 Sep 2020 07:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A9DD687018
 for <bridge@lists.linux-foundation.org>; Mon, 14 Sep 2020 07:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djMxE2KbK6mN for <bridge@lists.linux-foundation.org>;
 Mon, 14 Sep 2020 07:40:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B595C87004
 for <bridge@lists.linux-foundation.org>; Mon, 14 Sep 2020 07:40:24 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id x19so16893361oix.3
 for <bridge@lists.linux-foundation.org>; Mon, 14 Sep 2020 00:40:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9OcnKlqgAuX3lmvtPjQSY28ozZnq3T65wzBJcbrmz6o=;
 b=HjtzRkCzJmG5Qgb75eWL1rDlMxN7eQKzSkcqydQMx4s7xCpmiZOTCQlGixxzMZ1ixq
 MAQyOb18cMtOwLDc6JUVhhQvtYeJxpnrP6zMzLVBiKimhVIC6g58W53Pl1DSWEf78Eul
 MQ1PqtpX9QKAKr0K7P9wLIa8uLtzj+Zsc0QwDWyD62L3z+KiIPaYwFz60sMHSuh9WHIH
 iw9dLvS9rz8uKkGs+wPWiDAn6GTT/x30NZkw+ZBwP/ZVL4YzgFBgejZaEeeqdgVWDL2L
 HG5Z7bku5iQzSWYm72x92bzAA0NMYcZdxVg/JxYIdvZ5MTeZ2t3fvW3goHpUMRnYB4tO
 qWjw==
X-Gm-Message-State: AOAM530cmUhqu8ZFUE3St/rMhL47TWm+2dNCnW3mXu3BK4wiR3GXJFHX
 h9ttDfOkJneHoy9D9EfzjBV3SNN6IwXiT+8MXfU=
X-Google-Smtp-Source: ABdhPJxXogF7NIvZqnQWeKTAcrQdTHdknQa9lnRLmhrjpxySJACyegBgSKyjuAW6Zz1mxStR+JFEXOpyVLi/baGaT9s=
X-Received: by 2002:aca:52d6:: with SMTP id g205mr8014808oib.54.1600069223913; 
 Mon, 14 Sep 2020 00:40:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAMuHMdUd4VtpOGr26KAmF22N32obNqQzq3tbcPxLJ7mxUtSyrg@mail.gmail.com>
 <20200911.174400.306709791543819081.davem@davemloft.net>
 <CAMuHMdW0agywTHr4bDO9f_xbQibCxDykdkcAmuRJQO90=E6-Zw@mail.gmail.com>
 <20200912.183437.1205152743307947529.davem@davemloft.net>
In-Reply-To: <20200912.183437.1205152743307947529.davem@davemloft.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 14 Sep 2020 09:40:12 +0200
Message-ID: <CAMuHMdXGmKYKWtkFCV0WmYnY4Gn--Bbz-iSX76oc-UNNrzCMuw@mail.gmail.com>
To: David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev <netdev@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 bridge@lists.linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Gaku Inami <gaku.inami.xh@renesas.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [Bridge] [PATCH] Revert "net: linkwatch: add check for
 netdevice being present to linkwatch_do_dev"
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

Hi David,

CC bridge

On Sun, Sep 13, 2020 at 3:34 AM David Miller <davem@davemloft.net> wrote:
> From: Geert Uytterhoeven <geert@linux-m68k.org>
> Date: Sat, 12 Sep 2020 14:33:59 +0200
>
> > "dev" is not the bridge device, but the physical Ethernet interface, which
> > may already be suspended during s2ram.
>
> Hmmm, ok.
>
> Looking more deeply NETDEV_CHANGE causes br_port_carrier_check() to run which
> exits early if netif_running() is false, which is going to be true if
> netif_device_present() is false:
>
>         *notified = false;
>         if (!netif_running(br->dev))
>                 return;
>
> The only other work the bridge notifier does is:
>
>         if (event != NETDEV_UNREGISTER)
>                 br_vlan_port_event(p, event);
>
> and:
>
>         /* Events that may cause spanning tree to refresh */
>         if (!notified && (event == NETDEV_CHANGEADDR || event == NETDEV_UP ||
>                           event == NETDEV_CHANGE || event == NETDEV_DOWN))
>                 br_ifinfo_notify(RTM_NEWLINK, NULL, p);
>
> So some vlan stuff, and emitting a netlink message to any available
> listeners.
>
> Should we really do all of this for a device which is not even
> present?
>
> This whole situation seems completely illogical.  The device is
> useless, it logically has no link or other state that can be managed
> or used, while it is not present.
>
> So all of these bridge operations should only happen when the device
> transitions back to present again.

Thanks for your analysis!
I'd like to defer this to the bridge people (CC).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
