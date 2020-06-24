Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52670207750
	for <lists.bridge@lfdr.de>; Wed, 24 Jun 2020 17:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E707E20358;
	Wed, 24 Jun 2020 15:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0O-U1oJ33e0V; Wed, 24 Jun 2020 15:24:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A650A2034C;
	Wed, 24 Jun 2020 15:24:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 82B02C016F;
	Wed, 24 Jun 2020 15:24:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EA7A6C016F
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 15:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D67D420346
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 15:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5jL414TeOFLv for <bridge@lists.linux-foundation.org>;
 Wed, 24 Jun 2020 15:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id F32E12026D
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 15:24:19 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id w16so2870048ejj.5
 for <bridge@lists.linux-foundation.org>; Wed, 24 Jun 2020 08:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D5fcBmctUqkWRaCAlEquaCo151xfdRO5uLvWNbrg/T4=;
 b=lneLGurgH4ESLltEQrI6RKR+MKIH5cMowieW6nb3PawBpUTe8dVgXXy8oMVUK4D+zC
 61WQaa5yJ1WzosFIDyQOD1CeZNhfkijfHCaT6mJAdif+JAeN342vfOojjhY8ewmYPOzq
 I4kosKQDArhuQ2/XphencidtJupidiJX+nZ5H6E7oaqCqRewZQ3U+4o3EzmxXdA3Rr7j
 4qmsbilXgqZ0HMl8Ur1ZL0mPzVIuxqRV1viDITxeKOkGQl11bsqz6AevPORWx6Bp15Vr
 TjnOlBl9Mn2pzwKcOnHs6/3+0411yKC2rOwo5wP78mP9XfNzXPI6N131Rmc32t+nTZth
 gmeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D5fcBmctUqkWRaCAlEquaCo151xfdRO5uLvWNbrg/T4=;
 b=av8liqnMX2W404GNk02w4B7SyeQePVBqVsR5+wV2LcUsKJsJccZXqFkp41DA9oUoGI
 hH3SkgMAOD4O2aWZpVzsaUubdvSCELgwupQxF5fB7VRY0/G6dR/x34M3MUdtmMTYzPlC
 efROQmyMGcYUOnj8rtMdrV0sjoIAgroDAz3rAe7tb7VemG0ikZSduE9+A4vur2ACrr3u
 ErBoRNOxJ6DMrvLp6hR8aVIKOySkpZ6oCpjsoHghyygKi4whINjlQnbDKFRk2NEkjg/+
 3VpODcgFEsMZOJlFEtWv80ZVAtvYzKqtRujS9E9bN0tp76ca02+Wjo1eSGjt2WRJdjl6
 LrVg==
X-Gm-Message-State: AOAM533Bj30VL/xvNIMZW+5t2Djl+xuGduh9LYBcYnQCsXHhHALg6f/l
 iZe7eJzYPbROKaAeVx+A/mb+aKfqWF/hJRp/pC4=
X-Google-Smtp-Source: ABdhPJxXGFYEUDzodXY4S+pGgiGRko+o5hHsygS3MwblQ/K5dQVLFwuQYt/iX5NoNFt1e3/nk2D1FtPqKZ2S2whWJAI=
X-Received: by 2002:a17:906:5949:: with SMTP id
 g9mr7426231ejr.305.1593012258194; 
 Wed, 24 Jun 2020 08:24:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200623090541.2964760-1-horatiu.vultur@microchip.com>
 <20200623.143821.491798381160245817.davem@davemloft.net>
 <20200624113156.hsutqewk4xntmkld@soft-dev3.localdomain>
In-Reply-To: <20200624113156.hsutqewk4xntmkld@soft-dev3.localdomain>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 24 Jun 2020 18:24:07 +0300
Message-ID: <CA+h21hogZsJZUksYY66_=-qkdG3kDA+byfX0tV=C-80M6mfYMA@mail.gmail.com>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, lkml <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net v2 0/2] bridge: mrp: Update MRP_PORT_ROLE
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

Hi Horatiu,

On Wed, 24 Jun 2020 at 14:34, Horatiu Vultur
<horatiu.vultur@microchip.com> wrote:
>
> The 06/23/2020 14:38, David Miller wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > From: Horatiu Vultur <horatiu.vultur@microchip.com>
> > Date: Tue, 23 Jun 2020 11:05:39 +0200
> >
> > > This patch series does the following:
> > > - fixes the enum br_mrp_port_role_type. It removes the port role none(0x2)
> > >   because this is in conflict with the standard. The standard defines the
> > >   interconnect port role as value 0x2.
> > > - adds checks regarding current defined port roles: primary(0x0) and
> > >   secondary(0x1).
> > >
> > > v2:
> > >  - add the validation code when setting the port role.
> >
> > Series applied, thank you.
>
> Thanks. Will these patches be applied also on net-next?
> Because if I start now to add support for the interconnect port, these
> patches are needed on net-next. Or do I need to add these patches to the
> patch series for the interconnect port?
> What is the correct way of doing this?
>
> --
> /Horatiu

The "net" tree is merged weekly (or so) by David into "net-next". So,
your patches should be available at the beginning of the next week.

Cheers,
-Vladimir
