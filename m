Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93C53D6D15
	for <lists.bridge@lfdr.de>; Tue, 27 Jul 2021 06:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11E54400CA;
	Tue, 27 Jul 2021 04:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7mlUPTom_NlT; Tue, 27 Jul 2021 04:03:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9E6FB40389;
	Tue, 27 Jul 2021 04:03:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 528A6C001F;
	Tue, 27 Jul 2021 04:03:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7E534C000E
 for <bridge@lists.linux-foundation.org>; Tue, 27 Jul 2021 04:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57EEF83046
 for <bridge@lists.linux-foundation.org>; Tue, 27 Jul 2021 04:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rlLXahcGSwhl for <bridge@lists.linux-foundation.org>;
 Tue, 27 Jul 2021 04:03:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F43A82F76
 for <bridge@lists.linux-foundation.org>; Tue, 27 Jul 2021 04:03:23 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id x15so13633099oic.9
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jul 2021 21:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fTzo6vxMfYlgbUOwSMawZfNKJyreGjClP9wAsvVTm1E=;
 b=UD6VtD2nxoM4yb0LGkCOvaX/zF9yrw4fA6tqSCoTSL82aBwK6yqzv0t2Hz5VkIh/da
 U7yhPJqRFbxApmj84K1i+pXiVe6aku3GXsqXD1Gr0E24zeni9vl8X2Ft59zum4tg7ABv
 RrVdeW5K4K/YjAP3pmiafa7WtuBsVd0+fZX5olSmVMK1nHp8tsPBxPm6G7+7eGn9ZFlP
 7QR+rmk3sAqSdk47QNGEv0p5waWj28vyuS07t6VnIvCCZr3ShLf4G62vnrE7edmJgc/L
 Gcwk1m4LZIpMUGOrRG4xWX95uINhn33c5huopzBpkKNnX1oTDbgg4cVNeuZjHsHCufPR
 57SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fTzo6vxMfYlgbUOwSMawZfNKJyreGjClP9wAsvVTm1E=;
 b=h2NZ8LX6yO/ziDZY/p0/FO4bWeQC7sKelkLf7UAREUnABFHQzq+87GdfM+4oZOxEkk
 7LPLwKp8NneT2+hc5ioAVxnzj5oyVXNb7mB64ncT8lxiUTauTJWMwdlRhAKUKPOJ/HL3
 J0FtwZ3rY8vxzbSnldgfTpYeLcCnHQSJT5In1xw5Dx2bzhi7bBDJBysRF8RxuU29lJtA
 N1DGm8+lMaH9WnPrfDWjgScqo0k+DIW8HyFmhC7653hi3ay8s2zdAXkJMojYB62FgpHA
 vytkl2O3kg/Aw2TBgfhQV3zZofa16njbNIefkijMOC9TQBneTs2Mmm1lN65f2+YJUS3v
 zYeQ==
X-Gm-Message-State: AOAM532KWi8P0N93WvZ16ghR0F7q+CIBt1nA3YBQB/zSifIkXjpL1969
 O1GmUOS/dvQbWNHcn92qQhs+0Px/Ap4DMIiwHIfLBA==
X-Google-Smtp-Source: ABdhPJw+jVLOBD8BsPXzGNdeDNl26ZITTDr1jQEW6mn0yo21vve5G56PdP7KPn7IkR9wNjAU5XZ6SguuPw+dYD0C/Eo=
X-Received: by 2002:aca:abd4:: with SMTP id u203mr13772228oie.13.1627358602134; 
 Mon, 26 Jul 2021 21:03:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210721162403.1988814-1-vladimir.oltean@nxp.com>
 <20210721162403.1988814-6-vladimir.oltean@nxp.com>
 <CA+G9fYtaM=hexrmMvDXzeHZKuLCp53kRYyyvbBXZzveQzgDSyA@mail.gmail.com>
 <YP7ByrIz4LvrvIY5@lunn.ch>
In-Reply-To: <YP7ByrIz4LvrvIY5@lunn.ch>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 27 Jul 2021 09:33:10 +0530
Message-ID: <CA+G9fYtxDUJLRG7sv0aHox=+i7fFaCnLEjA0aaDRXPh+3h57hA@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Ido Schimmel <idosch@idosch.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Marek Behun <kabel@blackhole.sk>, Florian Fainelli <f.fainelli@gmail.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 bridge@lists.linux-foundation.org,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Vadym Kochan <vkochan@marvell.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, Netdev <netdev@vger.kernel.org>,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [Bridge] [PATCH v6 net-next 5/7] net: bridge: switchdev: let
 drivers inform which bridge ports are offloaded
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

On Mon, 26 Jul 2021 at 19:38, Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, Jul 26, 2021 at 07:21:20PM +0530, Naresh Kamboju wrote:
> > On Wed, 21 Jul 2021 at 21:56, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> > >
> > > On reception of an skb, the bridge checks if it was marked as 'already
> > > forwarded in hardware' (checks if skb->offload_fwd_mark == 1), and if it
> > > is, it assigns the source hardware domain of that skb based on the
> > > hardware domain of the ingress port. Then during forwarding, it enforces
> > > that the egress port must have a different hardware domain than the
> > > ingress one (this is done in nbp_switchdev_allowed_egress).
>
> > [Please ignore if it is already reported]
> >
> > Following build error noticed on Linux next 20210723 tag
> > with omap2plus_defconfig on arm architecture.
>
> Hi Naresh
>
> Please trim emails when replying. It is really annoying to have to
> page down and down and down to find your part in the email, and you
> always wonder if you accidentally jumped over something when paging
> down at speed.

It was my bad,
I will follow your suggestions in future reports.
Thank you !

>
>      Andrew

- Naresh
