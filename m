Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA46A3D5BCA
	for <lists.bridge@lfdr.de>; Mon, 26 Jul 2021 16:37:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AFDC402A9;
	Mon, 26 Jul 2021 14:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4QASr8UUgyL; Mon, 26 Jul 2021 14:37:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id B22C8402DF;
	Mon, 26 Jul 2021 14:37:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D984C001F;
	Mon, 26 Jul 2021 14:37:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9D44DC000E
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jul 2021 14:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85E7182A8F
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jul 2021 14:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAd0VptIxtv3 for <bridge@lists.linux-foundation.org>;
 Mon, 26 Jul 2021 14:37:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9114282A0B
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jul 2021 14:37:04 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id gn26so10657499ejc.3
 for <bridge@lists.linux-foundation.org>; Mon, 26 Jul 2021 07:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nnXH9OEkX6/64CRIXpm2q4YcE5R0RLwwDJpdnIFDAWY=;
 b=a46eeZbS67P014IPIYYEuugVBwQdVkgc3xe0nHoGpHa+CLu7h3/0rDHMm1C9u0Vaqa
 GG6yKIfhXq34B2c+8u8MmZz/P8VknqBLIWzPDzPE5/00VCC4jSFXgeTKTC2wGXJFy4po
 chD8bkSL5cNkfThbloN9qTqGuQWNoVdPsm6e0ey1QHpVLG6oAxNjaLNpThgTzEHom8O3
 rlR5IsNd9LSI3RhMjDl0t54xClnANAGUaIY+79MwKaKe9CAoBzAEPbX7sz5Dq3JuoZjW
 XJLk4RjT0csljKhvY94qUxjlJ53IISuVPtHFebdaSySPN9o7sgHspaWRzl0/RrZs8zdI
 3kTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nnXH9OEkX6/64CRIXpm2q4YcE5R0RLwwDJpdnIFDAWY=;
 b=mXqKWHSuZb/pjn2aUu+D3IcAQCxiwy+vgpRU9ECkfIHaEtpGDsovoSv8qoLQLZTw5C
 +XhAlt57n+i5x3ZOTa3EdqIGZ3eAYhly52jYuvRj/x/PFBGj3+PU3Mqbx5DVbPeSe1MR
 0PSfO+CeG7bhJu+mbWOaezUC81jMdzJy3XC2+Hm1tvVyKVnaOihycemvZSTS7YhjCpPB
 VqhxedkIl98ewOcB57pJrwFDZHDEIJyZJYLUAgykgOhP5dfdRyXA5Hq2gV1EvLFxZ4ub
 Cq7/A682qHwKBq6iFoEfjo3PMPGtKTBchBTUJg2vDKQlH7MUtjwYYfhRzcRGhKZVvtFG
 iWxQ==
X-Gm-Message-State: AOAM533BbR8LO2yK9hJzgvkaAMAt3dPlBUEUcMh0URD/FSZAthgNUe1J
 KOGCAsPM57cyaswK+QYUSOE=
X-Google-Smtp-Source: ABdhPJzWjQjZmVeAk8PLFry/T+D+4zv8qYEjpty4byCCB34i8VAjKq0MnJQSS8SoToMzbNYfSvQY0g==
X-Received: by 2002:a17:906:8158:: with SMTP id
 z24mr17367464ejw.359.1627310222797; 
 Mon, 26 Jul 2021 07:37:02 -0700 (PDT)
Received: from skbuf ([82.76.66.29])
 by smtp.gmail.com with ESMTPSA id t15sm14213464ejf.119.2021.07.26.07.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 07:37:02 -0700 (PDT)
Date: Mon, 26 Jul 2021 17:37:00 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20210726143700.6lszvah4jqde3o54@skbuf>
References: <20210721162403.1988814-1-vladimir.oltean@nxp.com>
 <20210721162403.1988814-6-vladimir.oltean@nxp.com>
 <CA+G9fYtaM=hexrmMvDXzeHZKuLCp53kRYyyvbBXZzveQzgDSyA@mail.gmail.com>
 <YP7ByrIz4LvrvIY5@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YP7ByrIz4LvrvIY5@lunn.ch>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Ido Schimmel <idosch@idosch.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Marek Behun <kabel@blackhole.sk>, Florian Fainelli <f.fainelli@gmail.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, bridge@lists.linux-foundation.org,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Jiri Pirko <jiri@resnulli.us>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Vadym Kochan <vkochan@marvell.com>,
 DENG Qingfang <dqfext@gmail.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, Netdev <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Taras Chornyi <tchornyi@marvell.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
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

Hello Naresh,

On Mon, Jul 26, 2021 at 04:08:10PM +0200, Andrew Lunn wrote:
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

I agree with what Andrew said.
I've sent this patch to address the build issue you reported. Thanks.
https://patchwork.kernel.org/project/netdevbpf/patch/20210726142536.1223744-1-vladimir.oltean@nxp.com/
